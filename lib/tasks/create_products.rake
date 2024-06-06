namespace :cad do
    desc 'Criação de Produtos no banco de dados'
    task product: :environment do
        puts 'Cadastrando produto...'

        Category.create(
            description: 'Laticineos'
        )

        10.times do
            Product.create(
                description: Faker::Commerce.product_name,
                price: Faker::Commerce.price(range: 10.0..100.00),
                category_id: 1,
            )
        end
        puts 'Produto cadastro com sucesso!'
    end
end
