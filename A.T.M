import time

def english_menu( ):
    corent_money = float(0.00)    #by default value
    while True:
        print("""\nPlase select the right option :
        Deposit         : 1 (Press 1 for "Deposit".)
        Withdrawal      : 2 (Press 2 for "Withdrawal money".)
        Exit            : 3 (Press 3 for "Exit".)\n""")

        option = int(input("Your select option : "))

        if option == 1:
            print("Please enter the deposit amount with a minimum of 100.""\n")
            deposit_money = float(input("₹          "))
            if (deposit_money >= 100):
                corent_money = deposit_money
                t = 5
                while (t > 0):
                    second = 5
                    count = "{:02d}".format(second)
                    print("TRANSACTION IN PROGRESS. PLEASE WAIT", end="\r")
                    time.sleep(1)
                    t -= 1
                print("Transaction is successful.")
                print(f"Your balence is {corent_money:.3f}")
                
            else :
                print("The deposit amount should be a minimum of 100. Please try again.")
                continue

        elif option == 2:
            print("Please enter the withdrawal amount.""\n")
            withdrawal_money = float(input("₹          "))
            if (withdrawal_money >= 100) and (withdrawal_money <= corent_money):
                corent_money -= withdrawal_money
                t = 5
                while (t > 0):
                    second = 5
                    count = "{:02d}".format(second)
                    print("TRANSACTION IN PROGRESS. PLEASE WAIT", end="\r")
                    time.sleep(1)
                    t -= 1
                print("Transaction is successful.""\n")
                print(f"Your balence is {corent_money:.3f}")
            
            else :
                print("""You don'n have that much money.
                Please Try Again\n""")
        
        elif option == 3:
            print("Thank you for using my A.T.M ")
            exit ( )

        else:
            while True:
                print("Enter valid option.")
                print("""Plase select the right option :
                Manu    : 1 (Press 1 for "Menu".)
                Exit    : 2/Other key (Press 2/Other for "Exit".)\n""")

                back_in_menu = int(input("Your select option : "))
        
                if back_in_menu == 1:
                    continue
                
                else :
                    print("Thank you for using my A.T.M ")
                    exit ( )

def hindi_menu( ):
    corent_money = float(0)    #by default value
    while True:
        print("""\nकृपया सही विकल्प चुनें :
        जमा             : 1 (दबाएं 1 "जमा" के लिए)
        निकासी          : 2 (दबाएं 2 "निकासी" के लिए)
        बाहर जाएं       : 3 (दबाएं 3 "बाहर जाने के लिए"))\n""")

        option = int(input("आपका चयन विकल्प : "))

        if option == 1:
            print("कृपया जमा राशि डालें।""\n")
            deposit_money = float(input("₹          "))
            if (deposit_money >= 100):
                corent_money = deposit_money
                t = 5
                while (t > 0):
                    second = 5
                    count = "{:02d}".format(second)
                    print("लेन-देन प्रक्रिया हो रही है। कृपया इंतजार करें।", end="\r")
                    time.sleep(1)
                    t -= 1
                print("लेन-देन सफल रहा।")
                print(f"आपका बैलेंस है {corent_money:.3f}")
                
            else :
                print("जमा राशि कम से कम 100 होनी चाहिए। कृपया पुनः प्रयास करें।")
                continue

        elif option == 2:
            print("कृपया निकासी राशि डालें।""\n")
            withdrawal_money = float(input("₹          "))
            if (withdrawal_money <= corent_money):
                corent_money -= withdrawal_money
                t = 5
                while (t > 0):
                    second = 5
                    count = "{:02d}".format(second)
                    print("लेन-देन प्रक्रिया हो रही है। कृपया इंतजार करें।", end="\r")
                    time.sleep(1)
                    t -= 1
                print("लेन-देन सफल रहा।""\n")
                print(f"आपका बैलेंस है {corent_money:.3f}")
            
            else :
                print("""आपके पास उतना पैसा नहीं है।
                कृपया फिर से कोशिश करें।\n""")
        
        elif option == 3:
            print("हमारे ए.टी.एम का उपयोग करने के लिए धन्यवाद। ")
            exit ( )

        else:
            while True:
                print("सही विकल्प डालें।")
                print("""कृपया सही विकल्प चुनें :
                मेनू    : 1 (दबाएं 1 "मेनू" के लिए)
                बाहर जाएं : 2/कोई अन्य कुंजी (दबाएं 2/कोई अन्य "बाहर जाने के लिए"))\n""")

                back_in_menu = int(input("आपका चयन विकल्प : "))
        
                if back_in_menu == 1:
                    continue
                
                else :
                    print("मेरे ए.टी.एम का उपयोग करने के लिए धन्यवाद। ")
                    exit ( )


def select_language(language):
    match (language):
        case 1:
            english_language( )

        case 2:
            hindi_language( )
        
        case _:
            while True:
                print("""Plase select valide option :
                
                English : 1 (Press 1 for "English".)
                Hindi   : 2 (Press 2 for "Hindi".)\n""")
                retry_language = int(input("Your select language : "))

                match (retry_language):
                    case 1:
                        english_language( )
                        return True

                    case 2:
                        hindi_language( )
                        return True

def english_language( ):
    print("""Plase select the right option :
    ENTER PIN               : 1 (Press 1 for "Enter PIN".)
    GREEN PIN(CREATE PIN)   : 2 (Press 2 for "Green PIN".)\n""")

    option = int(input("Your select option : "))

    match (option):
        case 1 :
            print("Please enter PIN""\n")
            pin = int(input("Enter PIN : "))
            print("Plase enter valide PIN""\n")
            while True:
                print("""Please enter valide option :
                MAIN MENU               : 1 (Press 1 to go to Main Menu)")
                ENETER PIN              : 2 (Press 2 for "Enter PIN".)
                EXIT                    : 3 (Press 3 for "Enter PIN".)""")
                pin = int(input("Your select option : "))
                
                if pin == 1:
                    english_menu( )
                
                elif pin == 2:
                    print("Please enter PIN""\n")
                    pin = int(input("Enter PIN : "))
                    print("Plase enter valide PIN.")
                    
                elif pin == 3:
                    print("Thank you for using my A.T.M ")
                    exit ( )
                    
                else :
                    print("\n""Please press valide option""\n")
                    continue
                    

        case 2 :
            print("Please enter new PIN""\n")
            new_pin = int(input("Enter new PIN : "))
            pin_confirm = int(input("Re-enter PIN : "))
            if (new_pin == pin_confirm):
                t = 5
                while (t > 0):
                    second = 5
                    count = "{:02d}".format(second)
                    print("Please Waiting...", end="\r")
                    time.sleep(1)
                    t -= 1
                    print("\nYou have successfully careet PIN.""\n")
                    print("Welcome Back""\n")

                    pin1 = int(input("Please enter PIN : "))
                    if (pin1 == new_pin):
                        print("PIN is corect.")
                        english_menu( )
                        return True

            else :
                while True:
                    print("PINs do not match. Try again.""\n")
                    print("Please enter new PIN""\n")
                    new_pin = int(input("Enter new PIN : "))
                    pin_confirm = int(input("Re-enter PIN : "))
                    if (new_pin == pin_confirm):
                        print("\nYou have successfully careet PIN.")
                        t = 5
                        while (t > 0):
                            second = 5
                            count = "{:02d}".format(second)
                            print("Please Waiting...", end="\r")
                            time.sleep(1)
                            t -= 1
                        print("Welcome Back""\n")              # BUG this line.


                        pin1 = int(input("Please enter PIN : "))
                        if (pin1 == new_pin):
                            print("PIN is corect.""\n")
                            english_menu( )
                            return True

                        else:
                            while (True):
                                print("PIN is not corect.")
                                pin1 = int(input("Please enter valide PIN : "))
                                if (pin1 == new_pin):
                                    print("PIN is corect.")
                                    english_menu( )
                                    return True


def hindi_language( ):
    print("""कृपया सही विकल्प चुनें :
    पिन दर्ज करें               : 1 (पिन दर्ज करने के लिए '1' दबाएं।)
    ग्रीन पिन (नया पिन बनाएं)   : 2 (नया पिन बनाने के लिए '2' दबाएं।)\n""")

    option = int(input("आपका चयनित विकल्प : "))

    match (option):
        case 1 :
            print("कृपया पिन दर्ज करें\n")
            pin = int(input("पिन दर्ज करें : "))
            while True:
                print("""कृपया वैध विकल्प दर्ज करें :
                मुख्य मेनू                : 1 (मुख्य मेनू पर जाने के लिए 1 दबाएं)
                पिन दर्ज करें             : 2 ("पिन दर्ज करें" के लिए 2 दबाएं)
                बाहर निकलें               : 3 ("पिन दर्ज करें" के लिए 3 दबाएं)""")
                pin = int(input("आपका चयनित विकल्प : "))
                
                if pin == 1:
                    hindi_menu( )
                
                elif pin == 2:
                    print("कृपया पिन दर्ज करें""\n")
                    pin = int(input("पिन दर्ज करें : "))
                    print("कृपया वैध पिन दर्ज करें")
                    
                elif pin == 3:
                    print("मेरे ए.टी.एम. का उपयोग करने के लिए धन्यवाद। ")
                    exit ( )
                    
                else :
                    print("\n""कृपया वैध विकल्प दबाएं""\n")
                    continue

        case 2 :
            print("कृपया नया पिन दर्ज करें\n")
            new_pin = int(input("नया पिन दर्ज करें : "))
            pin_confirm = int(input("पिन फिर से दर्ज करें : "))
            if new_pin == pin_confirm:
                print("\nआपका पिन सफलतापूर्वक बनाया गया।")
                t = 5
                while (t > 0):
                    second = 5
                    count = "{:02d}".format(second)
                    print("कृपया इंतजार करें...", end="\r\n")
                    time.sleep(1)
                    t -= 1
                    print("स्वागत है!\n")

                    pin1 = int(input("कृपया पिन दर्ज करें : "))
                    if (pin1 == new_pin):
                        print("पिन सही है।")
                        hindi_menu( )
                        return True

            else :
                while True:
                    print("पिन मेल नहीं खा रहे हैं। कृपया फिर से प्रयास करें।\n")
                    print("कृपया नया पिन दर्ज करें\n")
                    new_pin = int(input("नया पिन दर्ज करें : "))
                    pin_confirm = int(input("पिन फिर से दर्ज करें : "))
                    if new_pin == pin_confirm:
                        print("\nआपका पिन सफलतापूर्वक बनाया गया।")
                        t = 5
                        while (t > 0):
                            second = 5
                            count = "{:02d}".format(second)
                            print("कृपया इंतजार करें...", end="\r\n")
                            time.sleep(1)
                            t -= 1
                            print("स्वागत है!\n")
                            pin1 = int(input("कृपया पिन दर्ज करें : "))
                            if pin1 == new_pin:
                                print("पिन सही है।\n")
                            hindi_menu( )
                            return True

                    else:
                        while True:
                            print("पिन सही नहीं है।")
                            pin1 = int(input("कृपया वैध पिन दर्ज करें : "))
                            if pin1 == new_pin:
                                print("पिन सही है।")
                                hindi_menu()
                                return True
 
# Start program

print("""Plase select the language : "
English : 1 (Press 1 for "English".)
Hindi   : 2 (Press 2 for "Hindi".)"\n""")

language = int(input("Your select language : "))

select_language(language)
