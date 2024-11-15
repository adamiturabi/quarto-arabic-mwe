-- Add attributes for Arabic text in a span
function Span (el)
  if el.classes:includes 'ar' then
    text = pandoc.utils.stringify(el)
    contents = {pandoc.Str(text)}
    if FORMAT:match 'latex' then
      -- no dir needed for babel and throws error if it sees dir attribute. was previously needed for polyglossia
      return pandoc.Span(contents, {class='regartext', lang='ar'})
    elseif FORMAT:match 'html' then
      -- dir needed for html otherwise punctuation gets messed up
      return pandoc.Span(contents, {class='regartext', lang='ar', dir='rtl'})
    end
  end
end

