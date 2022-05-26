def caesar_cipher(message_string, shift_code)
    #alphabet array variable declarations
    alphabet = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z"
    caps_alphabet_array = alphabet.upcase.split(",")
    alphabet_array = alphabet.split(",")
    
    message_array = message_string.split('')  # splits message argument string into array
    encrypted_message = [] # variable for message to return @ the end of the method
    
    message_array.each do |letter| # loop through message array by letter
        if alphabet_array.include?(letter) #if lowercase
            index_number = 0 
            index_number = (alphabet_array.index(letter) + shift_code) % 26
            encrypted_message.push(alphabet_array[index_number])
        elsif caps_alphabet_array.include?(letter) #if uppercase
            index_number = 0
            index_number = (caps_alphabet_array.index(letter) + shift_code) % 26
            encrypted_message.push(caps_alphabet_array[index_number])
        else #if punctuation or space
            encrypted_message.push(letter)
        end
    end
    encrypted_message.join 
end

p caesar_cipher("Zebras are so cool!", 5)