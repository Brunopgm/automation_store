class Login
    include Capybara::DSL

    def open(email, password)
        find("input[id=email]").set email
        find("input[id=passwd]").set password
        click_button "Sign in"
    end
end