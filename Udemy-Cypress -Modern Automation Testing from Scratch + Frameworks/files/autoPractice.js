/// <reference types = 'Cypress' />

describe("Gel's second test suite", function() {
    it('Practice with web controls UI', function() {

        cy.visit('https://rahulshettyacademy.com/AutomationPractice/')
        // Practice with checkboxes
        //cy.get('#checkBoxOption1').click()
        cy.get('#checkBoxOption1').check().should('be.checked').and('have.value','option1')
        cy.get('#checkBoxOption1').uncheck().should('not.be.checked')
        cy.get('input[type="checkbox"]').check(['option1','option3']).should('be.checked')

        // Practice with static dropdowns
        cy.get('select').select('option3').should('have.value', 'option3')

        // Practice with dynamic dropdowns
        cy.get('#autocomplete').type('Philippines')
        cy.get('.ui-menu-item div').each(($el, index, $list) => {
            if($el.text() === "Philippines") {
                cy.wrap($el).click()
            }
        })

        //Practice with invisible elements
        cy.get('#displayed-text').should('be.visible')
        cy.get('#hide-textbox').click()
        cy.get('#displayed-text').should('not.be.visible')
        cy.get('#show-textbox').click()
        cy.get('#displayed-text').should('be.visible')

        // Practice with radio buttons
        cy.get('input[value="radio1"]').check().should('be.checked').and('have.value', 'radio1')

    })
})