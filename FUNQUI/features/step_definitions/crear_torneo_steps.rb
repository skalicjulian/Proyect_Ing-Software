Given(/^Estoy en la pagina de crear torneos$/) do
  	visit '/'
end

When(/^Ingreso el nombre del torneo "(.*?)"$/) do |nombre|
  	fill_in('torneo[nombre]', :with => nombre )
end

When(/^Ingreso la fecha "(.*?)"$/) do |fecha|
  	fill_in('torneo[fecha]', :with => fecha )
end

When(/^Ingreso un comentario "(.*?)"$/) do |comentario|
  	fill_in('torneo[comentario]', :with => comentario )
end

When(/^Apreto el boton crear$/) do
	click_button('Crear')
end

Then(/^Veo el torneo creado en la lista$/) do
  	@torneos = Torneo.all
  	expect(@torneos.size).to eq(1)
end

