/// <reference types = 'Cypress' />

describe("Gel's second test suite", function() {
    it('Practice with popups, alerts and child windows', function() {

        cy.visit('https://rahulshettyacademy.com/AutomationPractice/')

        // Practice with alerts/popups
        // cy.get('#name').type('Gel')
        // cy.get('#alertbtn').click()
        // cy.on('window:alert', (str) => {
        //     expect(str).to.equal('Hello Gel, share this practice page and share your knowledge')
        // })
        // cy.get('#name').type('Gel')
        // cy.get('#confirmbtn').click()
        // cy.on('window:confirm', (str) => {
        //     expect(str).to.equal('Hello Gel, Are you sure you want to confirm?')
        // })

        //Handling new tabs
        // cy.get('#opentab').invoke('removeAttr', 'target').click()
        // cy.wait(3000);
        // cy.origin('https://www.qaclickacademy.com/', ()=> {
        //     cy.get('#navbarSupportedContent a[href*="about"]').click()
        //     cy.get('.section-title').should('contain', 'Welcome to QAClick Academy') 
        // })

        //Handling new windows
        cy.get('#openwindow').click()

    })
})