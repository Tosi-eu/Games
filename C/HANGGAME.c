#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

char wordChosen[20];
char tries[26];
int attempts = 0;

void startANDchoose();
void attempt();
void Hang();
int Hanged();
int triedYet(char character);
int won();
void AddMoreWords();
int WrongTries();

int main(){

  startANDchoose();

  do {

    Hang();
    attempt();

    }while(!won() && !Hanged());

    AddMoreWords();

  return 0;
}

void startANDchoose(){

  FILE *arq = fopen("words.txt", "r");
  int count;

  srand(time(NULL));
  
  if(arq == NULL){
    exit(-1);
  }

  fscanf(arq, "%d", &count);
 
  int random = rand() % count;

  for(int i = 0; i <= random; i++){
    fscanf(arq, "%s", wordChosen);
  }

  printf("---------------------\n");
  printf("    HANGMAN GAME\n");
  printf("---------------------\n");

  printf("  __________          \n");
  printf(" |/         |         \n");
  printf(" |         (_)        \n");
  printf(" |         \\|/       \n");
  printf(" |          |         \n");
  printf(" |         / \\       \n");
  printf(" |                    \n");
  printf(" |                    \n");
  printf("_|____                \n");
  printf("\n\n");
  
  printf("\nPRESS ANY KEY TO START\n");

  char start = getchar();

  sleep(2);
  system("cls");
  fclose(arq);

}

void Hang(){

  int found = 0;
  int errors = WrongTries();

  printf("  __________        \n");
  printf(" |/         |       \n");
  printf(" |         %c%c%c   \n", (errors >= 1 ? '(' : ' '), (errors >= 1 ? '_' : ' '), (errors >= 1 ? ')' : ' '));
  printf(" |         %c%c%c   \n", (errors >= 3 ? '\\' : ' '), (errors >= 2 ? '|' : ' '), (errors >= 3 ? '/' : ' '));
  printf(" |          %c      \n", (errors >= 4 ? '|' : ' '));
  printf(" |         %c %c    \n", (errors >= 5 ? '/' : ' '), (errors >= 5 ? '\\' : ' '));
  printf(" |                  \n");
  printf(" |                  \n");
  printf("_|____              \n");
  printf("\n\n");

  for(int i = 0; i < strlen(wordChosen); i++){
          
    found = triedYet(wordChosen[i]);

    if(found == 1){
      printf("%c ", wordChosen[i]);
    }else
         printf("_ ");
  }
    printf("\n\n");

}

void attempt(){

  char try;
  scanf(" %c", &try);

  tries[attempts] = try;
  attempts++;

}

int WrongTries(){

  int errors = 0;
  for(int i = 0; i < attempts; i++){
    int exist = 0;
    for(int j = 0; j < strlen(wordChosen); j++){
          if(tries[i] == wordChosen[j]){
            exist = 1;
            break;
      }
    }
    if(exist == 0){
      errors++;
    }
  }

  return errors;
}

int triedYet(char character){

    int found = 0;

    for(int j = 0; j < attempts; j++){
      if(tries[j] == character){
        found = 1;
        break;
    }
  }
  return found;
}

int Hanged(){

  int errors = 0;
  for(int i = 0; i < attempts; i++){
    int exist = 0;
    for(int j = 0; j < strlen(wordChosen); j++){
          if(tries[i] == wordChosen[j]){
            exist = 1;
            break;
      }
    }
    if(exist == 0){
      errors++;
    }
  }

  return errors >= 5;
}

int won(){

  for(int i = 0; i < strlen(wordChosen); i++){
    if(!triedYet(wordChosen[i])){
      return 0;
    }
  }
  return 1;
}

void AddMoreWords(){

  setbuf(stdin, NULL);
  char op, NewWord[20];
  FILE *arq = fopen("words.txt", "r+"); // r+ -> read and write

  if(won()){
   printf("                      |     \n");
   printf("                     ooo    \n");
   printf("                  - ooooo - \n");
   printf("                     ooo    \n");
   printf("          (_)         |     \n");
   printf("         \\ | /              \n");
   printf("          \\|/               \n");
   printf("           |                \n");
   printf("           |                \n");
   printf("           |                \n");
   printf("          / \\              \n");
   printf("        _/   \\_           \n\n");
   printf("YOU'RE GOOD IN IT, YOU WIN!\n\n");

  }else{
   
   printf("          _________________            \n");
   printf("         (                  )          \n");
   printf("        (                    )         \n");
   printf("       (   XX           XX    )        \n"); 
   printf("      (   XXXX         XXXX    )       \n");
   printf("     (     XX           XX      )      \n");
   printf("     (           ooo            )      \n");
   printf("     (                          )      \n");
   printf("      (       _________        )       \n");
   printf("       (                      )        \n");
   printf("        (____________________)         \n\n"); 
   printf("     THIS ISN'T DARK BUT YOU DIED    \n\n");
  }

  printf("\nDo you want to add a new word to our Database[Y/N]? ");
  scanf("%c", &op);

  while(op != 'Y' && op != 'N'){
    printf("\nInvalid Operator, please type again...");
    scanf("%c", &op);
  }

  if(op == 'Y'){

  int WordsAmount;

  printf("Type the word you want: ");
  setbuf(stdin, NULL);
  fgets(NewWord, 20, stdin);
  printf("\n");

  fscanf(arq, "%d", &WordsAmount);
  WordsAmount++;

  fseek(arq, 0, SEEK_SET);
  fprintf(arq, "%d", WordsAmount);

  fseek(arq, 0, SEEK_END);
  fprintf(arq, "%s", NewWord);

  fclose(arq);

  }
}
