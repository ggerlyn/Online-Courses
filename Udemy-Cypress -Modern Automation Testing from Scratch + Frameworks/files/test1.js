/// <reference types = 'Cypress' />

describe("Gel's first test suite", function() {
    it('First test case', function() {
        cy.visit('https://rahulshettyacademy.com/seleniumPractise/#/');
        cy.get('.search-keyword').type('ca');
        cy.wait(3000);
        // cy.get('.product:visible').should('have.length', 4);
        cy.get('.products').find('.product').should('have.length', 4);
        // cy.get('.products').find('.product').eq(1).contains('ADD TO CART').click();
        cy.get('.products').find('.product').each(($el, index, $list) => {
            const vegText = $el.find('h4.product-name').text()
            if(vegText.includes('Carrot')) {
                cy.wrap($el).find('button').click()
            }
        })
    })
})
