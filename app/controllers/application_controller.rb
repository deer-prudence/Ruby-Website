class ApplicationController < ActionController::Base
    
    def hello
        render text: "¡Hola, mundo!"
    end
end
