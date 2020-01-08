const knex = require('knex')
require('dotenv').config()

const knexInstance = knex({
  client: 'pg',
  connection: process.env.DB_URL
})


function searchByName(searchTerm) {
    knexInstance
        .select('name')
        .from('shopping_list')
        .where('name', 'ILIKE', `%${searchTerm}%`)
        .then(result => {
        console.log(result)
        })
    }

// searchByName('fish');


function paginateList(page) {
    const productsPerPage = 6
    const offset = productsPerPage * (page - 1)
    knexInstance
      .select('name', 'price', 'date_added', 'checked', 'category')
      .from('shopping_list')
      .limit(productsPerPage)
      .offset(offset)
      .then(result => {
        console.log(result)
      })
  }

// paginateList(3);

function sortByDateAdded(daysAgo) {
    knexInstance
      .select('name', 'date_added')
      .where(
        'date_added',
        '>',
        knexInstance.raw(`now() - '?? days'::INTERVAL`, daysAgo)
      )
      .from('shopping_list')
      .then(result => {
        console.log(result)
      })
  }

//   sortByDateAdded(1)

function getTotalCost() {
    knexInstance
        .select('category')
        .sum('price AS total')
        .from('shopping_list')
        .groupBy('category')
        // .orderBy([
        //     { column: 'region', order: 'ASC' },
        //     { column: 'views', order: 'DESC' },
        // ])
        .then(result => {
            console.log(result)
        })
}

getTotalCost();