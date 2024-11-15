-- Reformat all heading text 
function Span (el)
  if el.classes:includes 'ar' then
    --text = "احمد ضياء."
    text = pandoc.utils.stringify(el)
    --text = pandoc.Plain(el)
    contents = {pandoc.Str(text)}
    --return pandoc.Span(contents, {class='regartext', lang='ar', dir='rtl'})
    if FORMAT:match 'latex' then
      -- no dir needed for babel and throws error if it sees dir attribute. was previously needed for polyglossia
      return pandoc.Span(contents, {class='regartext', lang='ar'})
    elseif FORMAT:match 'html' then
      -- dir needed for html otherwise punctuation gets messed up
      return pandoc.Span(contents, {class='regartext', lang='ar', dir='rtl'})
    end
  end
end

