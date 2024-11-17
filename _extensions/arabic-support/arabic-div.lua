-- Add attributes for Arabic text in a span
function Div (el)
  if el.classes:includes 'ar' or el.classes:includes 'aralt' then
    text = pandoc.utils.stringify(el)
    --if FORMAT:match 'latex' and el.classes:includes 'aralt' then
    --  text = [[\altfamily ]] .. text
    --end
    contents = {pandoc.Str(text)}
    if FORMAT:match 'latex' then
      if el.classes:includes 'aralt' then
        table.insert(
          contents, 1,
          pandoc.RawInline('latex', '\\altfamily ')
        )
      end
      -- no dir needed for babel and throws error if it sees dir attribute. was previously needed for polyglossia
      return pandoc.Div(contents, {class='otherlanguage', data_latex="{arabic}", lang='ar'})
    elseif FORMAT:match 'html' then
      classval = 'reg-ar-text'
      if el.classes:includes 'aralt' then
        classval = 'alt-ar-text'
      end
      -- dir needed for html otherwise punctuation gets messed up
      return pandoc.Div(contents, {class=classval, lang='ar', dir='rtl'})
    end
  end
end

