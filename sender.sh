file='email.txt';

. ./conf.mk

for dotc in `cd $lab; ls; cd ..`; do
    ((i=i+1));
    tmp=$(mktemp)
    tmp=`echo $tmp | sed 's/\/tmp\/tmp.//'`
    roll=`echo $dotc | sed 's/\.awk//'`
    email="$roll@smail.iitm.ac.in";
    echo $i ": " $email ": " $tmp
    mv $lab/$dotc $lab/$tmp
    echo "" > $file;
    echo "Hello Student ($roll)," >> $file;
    echo "" >> $file
    echo "Your $lab submission is available at the url below. Please feel free to download for your learning / debugging / future use purposes." >> $file
    echo "https://cse.iitm.ac.in/~rupesh/teaching/ssad/jan26/$lab/$tmp" >> $file
    echo "" >> $file
    echo "Mentor TAs and Rupesh." >> $file
    echo "" >> $file
    # Send email from your account                                                                                                                                                            
    sendemail -f "$from" \
              -t "$email" \
              -o message-file=email.txt \
              -u "CS1234 Lab Submission" \
              -s $server \
              -xu $uname \
              -xp "$password" \
              -o tls=yes
    #sleep 20                                                                                                                                                                                 
done

