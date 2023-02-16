#include <stdio.h>
#include <string.h>
int main()
{

    char name[100];
    char name2[100];
    char c;
    int i;
    int count = 0;
    int choice;
    int vc = 0; // vc= vowel count
    int cc = 0; // cc= constant count
    int nd = 0; // nd=number of digit (in 8 condition)
    int nc = 0; // ns=number of space (in 8 condition)
    int ns = 0;
    printf("Main Menu:\n");
    printf("\n1. Reverse a string..");
    printf("\n2. Concatenation..");
    printf("\n3. Palindrome..");
    printf("\n4. String copy..");
    printf("\n5. Length of the String..");
    printf("\n6. Frequency of character in s string..");
    printf("\n7. Find number of vowels and consonants..");
    printf("\n8. Find number of blank spaces and digits..\n");

    printf("\n Please enter your choice number..");
    scanf("%d", &choice);
    printf("enter name: ");
    getchar();
    gets(name);

    if (choice == 1)
    {
        strrev(name);
        printf("reverse string is: %s", name);
    }
    else if (choice == 2)
    {
        printf("enter name: ");
        scanf("%s",name2);
        strcat(name, name2);
        printf("Concatenation is :%s", name);
    }
    else if (choice == 3)
    {

        char temp[50];

        strcpy(temp, name);

        strrev(name);

        if (strcmp(name, temp) == 0)
        {
            printf("it is pelondrom");
        }
        else
        {
            printf("it is not pelindrom");
        }
    }
    else if (choice == 4)
    {
        printf("enter name: ");
        getchar();
        gets(name2);
        strcpy(name2, name);
        printf("name of 2 person is: %s", name);
    }
    else if (choice == 5)
    {
        printf("%d", strlen(name));
    }
    else if (choice == 6)
    {
        for (c = 'a'; c <= 'z'; c++)
        {
            count = 0;
            for (int i = 0; name[i] != 0; i++)
            {
                if (c == name[i])
                    count++;
            }
            if (count > 0)
                printf("%c found in %d times\n", c, count);
        }
    }
    else if (choice == 7)
    {
        for (int i = 0; i < strlen(name); i++)
        {
            if (name[i] == 'a' || name[i] == 'e' || name[i] == 'i' || name[i] == 'o' || name[i] == 'u' || name[i] == 'A' || name[i] == 'E' || name[i] == 'I' || name[i] == 'O' || name[i] == 'U')

                vc = vc + 1;

            else

                cc = cc + 1;
        }

        printf("\n vowel count is: %d", vc);
        printf("\n constant count is: %d", cc);
    }
    else if (choice == 8)
    {
        for (int i = 0; name[i] != '\0'; i++)
        {
            nc++;
            if (name[i] >= '0' && name[i] <= '9')
                nd++;
            if (name[i] == ' ' || name[i] == '\t')
                ns++;
        }

        printf("number of character is %d", nc);
        printf("\nnumber of blank space is %d", ns);
        printf("\nnumber of digit is %d", nd);
    }
}
