# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all
#User.destroy_all

100.times { |n| Post.create title: "Post por Seed #{n}"  }


# #Providencias de Chile
# pro = Province.create
# pro.cod_country = CL

# pro([{name: "Los Lagos", cod_province: "LL"},
# 	{name: "Valparaiso", cod_province: "VS"},
# 	{name: "Region Metropolitana de Santiago", cod_province: "RM"},
# 	{name: "Biobio", cod_province: "BI"},
# 	{name: "Atacama", cod_province: "AT"},
# 	{name: "Tarapaca", cod_province: "TA"},
# 	{name: "Aysen", cod_province: "AI"},
# 	{name: "Maule", cod_province: "ML"},
# 	{name: "Coquimbo", cod_province: "CO"},
# 	{name: "Araucania", cod_province: "AR"},
# 	{name: "Antofagasta", cod_province: "AN"},
# 	{name: "Arica y Parinacota", cod_province: "AP"},
# 	{name: "Magallanes", cod_province: "MA"},
# 	{name: "Caleta Patillos", cod_province: "CAL"},
# 	{name: "Libertador General Bernardo O'Higgins", cod_province: "LI"},
# 	{name: "Los Rios", cod_province: "LR"},
# 	{name: "Punta Padrones", cod_province: "PPD"},
# 	{name: "Punta Patache", cod_province: "PPC"},
# 	])
