#include <iostream>
#include <windows.h>
#include <chrono>
#include <vector>
#include <thread>
#include <conio.h>
#include <cstdlib>
#include <time.h>
#include <sys/stat.h>
#include <fstream>
const int MAX_UP = 3;
const int MAX_DOWN = 20;
const int MAX_LEFT = 2;
const int MAX_RIGHT =76;
const int SCORE_COORD_X = 15;
const int SCORE_COORD_Y = MAX_UP-2;
const std::string SCORE_TEXT = "SCORE : ";
const int PAUSE_COORD_X = 30;
const int PAUSE_COORD_Y = MAX_DOWN+2;
const std::string PAUSE_TEXT = "Press P to PAUSE ";
const std::string RESUME_TEXT = "Press P to RESUME ";
const int GAME_STATE_COORD_X = 40;
const int GAME_STATE_COORD_Y = MAX_UP-2;
const std::string GAME_STATE_TEXT = "GAME STATE : ";
const char appleShape = '¦';
const int KEYS_SENSIV = 10;
//-----SETTINGS-------------
int difficulty = 1 ;
bool COLLIDE_WITH_BOX = false;
//--Speed----
const int BASE_UP_DOWN_SPEED = 100;
const int BASE_LEFT_RIGHT_SPEED = 30;
int UP_DOWN_SPEED = difficulty*BASE_UP_DOWN_SPEED;
int LEFT_RIGHT_SPEED = (difficulty*UP_DOWN_SPEED) - BASE_LEFT_RIGHT_SPEED ;

//-------CLASSES_________
class Snake;
//-------STRUCTS_________
struct Coordination;
//-------INPUT ___OUTPUT FUNCTIONS________
void saveGame(const int &score ,const Coordination &apple,const char &direction,const Snake &snake );
bool readGame(int &score , Coordination &apple, char &direction , Snake &snake);
struct Coordination
{
	int x;
	int y;	
};

class Snake
{
	public:
	Coordination m_head;
	std::vector <Coordination> m_body ;
	int m_bodySize = m_body.size();
	Coordination m_tail;
	char m_headShape = 'O';
	char m_bodyShapeX = '*';
	char m_bodyShapeY = '*';
	char m_tailShapeX = '^';
	char m_tailShapeY = '^';
	std::vector <char> m_bodyShape;
	char m_tailShape = m_tailShapeX;
		createSnake(Coordination head , int bodyLength) 
		{
			//head
			m_head = {head.x, head.y};
			//body Size
			m_bodySize = bodyLength;
			//Body
			m_body.reserve(bodyLength);
			m_bodyShape.reserve(bodyLength);
			for (int i=1 ; i<=bodyLength;i++)
			{
				m_body.push_back({head.x-i , head.y});
				m_bodyShape.push_back(m_bodyShapeX);	
			}
			//Tail
			m_tail = {head.x-bodyLength-1 , head.y};					
		}
		Snake(){
		}
		void snakeCopy(const Coordination &head,const int bodyLength, const std::vector<Coordination> &body,const Coordination &tail)
		{
			//---Head
			m_head = {head.x, head.y};
			//---Body Size---
			m_body.reserve(bodyLength);
			m_bodyShape.reserve(bodyLength);
			//------Body
			for (int i=0 ; i<bodyLength;i++)
			{
				m_body.push_back( {body[i].x, body[i].y });
				m_bodyShape.push_back(m_bodyShapeX);	
			}
			m_bodySize = bodyLength;
			//------Tail
			m_tail = {tail.x, tail.y};
		}
		update(Coordination head)
		{
			//---Updating Tail shpae
			if(m_tail.x == m_body[m_bodySize-1].x)
			{
				m_tailShape = m_tailShapeY;
			}
			else if(m_tail.y == m_body[m_bodySize-1].y)
			{
				m_tailShape = m_tailShapeX;
			}
			//--Updating Tail Pos
			m_tail = m_body[m_bodySize-1];
			//--Updating Body
			for(int i=m_bodySize;i>0;i--)
			{
				//---Updating Body shpae
				if(m_body[i].x == m_body[i-1].x)
				{
					m_bodyShape[i] = m_bodyShapeY;
				}
				else if(m_body[i].y == m_body[i-1].y)
				{
					m_bodyShape[i] = m_bodyShapeX;
				}
				//Updating body Pos
				m_body[i] = m_body[i-1];
			}
			//---Updating Body[0] shpae
				if(m_body[0].x == m_head.x)
				{
					m_bodyShape[0] = m_bodyShapeY;
				}
				else if(m_body[0].y == m_head.y)
				{
					m_bodyShape[0] = m_bodyShapeX;
				}
			m_body[0] = m_head;
			m_head = head;
		}
		bool isCollided(const Coordination &collisionCoord)
		{
			if(m_head.x == collisionCoord.x and m_head.y == collisionCoord.y)
			{
				return true;
			}
			return false;
		}
		void updateBody()
		{
			m_body.push_back({m_tail});
			++m_bodySize;
		}
	
};
void startGame(const std::string &gameState)
{
	system("cls");
	// Generating Snake
	int score = 0;
	HANDLE hStdout;
	COORD destCoord;
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);
	//position cursor at start of window
	destCoord.X = 0;
	
//BORDERS
destCoord.Y = MAX_UP-1;
for(int i=MAX_LEFT-1; i<=MAX_RIGHT+1;i++) //Line 2
{
	destCoord.X = i;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << "-";
}
for(int i=MAX_UP; i<=MAX_DOWN;i++) //Line 3-22  //Coords start from 0 so 1 is 2
{
	destCoord.Y = i;
	destCoord.X = MAX_LEFT-1;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << "|";
	destCoord.X = MAX_RIGHT+1;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << "|";
}
destCoord.Y = MAX_DOWN+1;
for(int i=MAX_LEFT-1; i<=MAX_RIGHT+1;i++) //Line 1
{
	destCoord.X = i;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << "-";
}	
Coordination apple;
char direction = 'R';
Snake snake;
if(gameState == "RESUME_GAME")
{
	bool state = readGame(score, apple , direction , snake)  ;
	if(!state)
	{
		destCoord.X = 10;
		destCoord.Y = 10;
		SetConsoleCursorPosition(hStdout, destCoord);
		std::cout << "\n\n\t\tNo Game State to Resume. The Snake maybe Dead \n\t\t\tor you may have Changed Settings  ";
		getch();
		return;
	}
	goto INITIAL_START;
	
}
snake.createSnake({20,5} ,1);
// Generating Apple
srand(time(0));
while(1)
{
	apple.x = rand() % (MAX_RIGHT-MAX_LEFT) + MAX_LEFT;
	apple.y = rand() % (MAX_DOWN-MAX_UP)+ MAX_UP;
	bool pos = true;
	if(apple.x == snake.m_head.x and apple.y == snake.m_head.y)
	{
		pos =false;
	}
	else if(apple.x == snake.m_tail.x and apple.y == snake.m_tail.y)
	{
		pos = false;
	}
	else
	{
	for (int i=0; i<snake.m_bodySize;i++) //Body
		{
			if(apple.x == snake.m_body[i].x and apple.y == snake.m_body[i].y)
			{
				pos = false;
			}
		}
	}	
	if(pos)
	{
		break;
	}		
}
//Initial Start
INITIAL_START:
	//Printing Score
	destCoord.X = SCORE_COORD_X; 
	destCoord.Y = SCORE_COORD_Y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << SCORE_TEXT << score;
	//Printing GameState
	destCoord.X = GAME_STATE_COORD_X; 
	destCoord.Y = GAME_STATE_COORD_Y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << GAME_STATE_TEXT << "RUNNING";
	//Printing PAUSE 
	destCoord.X = PAUSE_COORD_X; 
	destCoord.Y = PAUSE_COORD_Y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << PAUSE_TEXT;
//Printing Snake
	destCoord.X = snake.m_head.x; //Head
	destCoord.Y = snake.m_head.y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << snake.m_headShape;
	
for (int i=0; i<snake.m_bodySize;i++) //Body
{
	destCoord.X = snake.m_body[i].x;
	destCoord.Y = snake.m_body[i].y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << snake.m_bodyShape[i];
}
	destCoord.X = snake.m_tail.x; //tail
	destCoord.Y = snake.m_tail.y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << snake.m_tailShape;
//  Printing Apple
	destCoord.X = apple.x;
	destCoord.Y = apple.y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << appleShape;

if(gameState=="RESUME_GAME")
{
	//----GAME_STATE_TEXT-------
				destCoord.X = GAME_STATE_COORD_X; 
				destCoord.Y = GAME_STATE_COORD_Y;
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << GAME_STATE_TEXT << "PAUSED  ";
				//------RESUME_TEXT---
				destCoord.X = PAUSE_COORD_X; 
				destCoord.Y = PAUSE_COORD_Y;
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << RESUME_TEXT;
				getch();
				//----GAME_STATE_TEXT-------
				destCoord.X = GAME_STATE_COORD_X; 
				destCoord.Y = GAME_STATE_COORD_Y;
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << GAME_STATE_TEXT << "RUNNING";
				//------PAUSE_TEXT---
				destCoord.X = PAUSE_COORD_X; 
				destCoord.Y = PAUSE_COORD_Y;
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << PAUSE_TEXT;
}
	
//Farmes Per second
//Speed is inverse beacause it is the time Delay
int speed = UP_DOWN_SPEED;
for(;;)
{	
	bool directionChanged = false;
	//Getting updationg Coords
	for(int i=0;i<KEYS_SENSIV;i++)
	{
		
		if(kbhit()) //Detecting Key Press by kbhit() in conio.h header file
		{
			char key;
			key = getch();
			if(key == 77 and direction != 'L' and !directionChanged) 
			{
				direction = 'R';
				directionChanged = true;
			}
			else if(key==72 and direction != 'D' and !directionChanged){
				direction = 'U';
				directionChanged = true;
			} 
			else if(key==75 and direction != 'R' and !directionChanged) 
			{
				direction = 'L';
				directionChanged = true;
			}
			else if(key==80 and direction != 'U' and !directionChanged)
			{
				direction = 'D';
				directionChanged = true;
			}
			else if(key==27) {
			goto END_RUNNING_GAME;
			}
			else if(key == 'p')
			{
				//----GAME_STATE_TEXT-------
				destCoord.X = GAME_STATE_COORD_X; 
				destCoord.Y = GAME_STATE_COORD_Y;
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << GAME_STATE_TEXT << "PAUSED  ";
				//------RESUME_TEXT---
				destCoord.X = PAUSE_COORD_X; 
				destCoord.Y = PAUSE_COORD_Y;
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << RESUME_TEXT;
				std::this_thread::sleep_for(std::chrono::milliseconds(speed/KEYS_SENSIV) );
				while(getch() != 'p')
				{
				}
				//----GAME_STATE_TEXT-------
				destCoord.X = GAME_STATE_COORD_X; 
				destCoord.Y = GAME_STATE_COORD_Y;
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << GAME_STATE_TEXT << "RUNNING  ";
				//------PAUSE_TEXT---
				destCoord.X = PAUSE_COORD_X; 
				destCoord.Y = PAUSE_COORD_Y;
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << PAUSE_TEXT;
			 } 
		}
		std::this_thread::sleep_for(std::chrono::milliseconds(speed/KEYS_SENSIV) );
	}
	
	Coordination prevTail {snake.m_tail.x, snake.m_tail.y};
	Coordination newHead;
	// updationg Coords
	switch(direction)
	{
		case 'R':
			speed = LEFT_RIGHT_SPEED;
			if(snake.m_head.x == MAX_RIGHT) 
				{
					if(COLLIDE_WITH_BOX)
					{
						destCoord.X = GAME_STATE_COORD_X; 
						destCoord.Y = GAME_STATE_COORD_Y;
						SetConsoleCursorPosition(hStdout, destCoord);
						std::cout << GAME_STATE_TEXT << "GAME OVER";
						remove("./Data/gameState.dat");
						getch();
						return ;
					}
					newHead.x = MAX_LEFT;	
					break;
				}
			newHead = {snake.m_head.x+ 1, snake.m_head.y};
			break;
		case 'L':
			{
				
				speed = LEFT_RIGHT_SPEED;
				if(snake.m_head.x == MAX_LEFT) 
				{
					if(COLLIDE_WITH_BOX)
					{
						destCoord.X = GAME_STATE_COORD_X; 
						destCoord.Y = GAME_STATE_COORD_Y;
						SetConsoleCursorPosition(hStdout, destCoord);
						std::cout << GAME_STATE_TEXT << "GAME OVER";
						remove("./Data/gameState.dat");
						getch();
						return ;
					}
					newHead.x = MAX_RIGHT;		
					break;
				}
				newHead ={snake.m_head.x- 1, snake.m_head.y};
				break;
			}			
		case 'U':
			speed = UP_DOWN_SPEED;
			if(snake.m_head.y == MAX_UP) 
				{
					if(COLLIDE_WITH_BOX)
					{
						destCoord.X = GAME_STATE_COORD_X; 
						destCoord.Y = GAME_STATE_COORD_Y;
						SetConsoleCursorPosition(hStdout, destCoord);
						std::cout << GAME_STATE_TEXT << "GAME OVER";
						remove("./Data/gameState.dat");
						getch();
						return ;
					}
					newHead.y = MAX_DOWN;		
					break;
				}
			newHead = {snake.m_head.x, snake.m_head.y-1};
			break;
		case 'D':
			speed = UP_DOWN_SPEED;
			if(snake.m_head.y == MAX_DOWN) 
				{
					if(COLLIDE_WITH_BOX)
					{
						destCoord.X = GAME_STATE_COORD_X; 
						destCoord.Y = GAME_STATE_COORD_Y;
						SetConsoleCursorPosition(hStdout, destCoord);
						std::cout << GAME_STATE_TEXT << "GAME OVER";
						remove("./Data/gameState.dat");
						getch();
						return ;
					}
					newHead.y = MAX_UP;	
					break;
				}
			newHead = {snake.m_head.x, snake.m_head.y+1};
			break;
	}
	//----------Updating Cords Snake class via update()--------
	snake.update(newHead);
	//Checking Collosion with Body ---If Yes the Game Over-------------
	if(snake.isCollided(snake.m_tail))
	{
		destCoord.X = GAME_STATE_COORD_X; 
		destCoord.Y = GAME_STATE_COORD_Y;
		SetConsoleCursorPosition(hStdout, destCoord);
		std::cout << GAME_STATE_TEXT << "GAME OVER";
		remove("./Data/gameState.dat");
		getch();
		return ;
	}
	for (int i=0;i<snake.m_bodySize;i++)
	{
		if(snake.isCollided(snake.m_body[i]))
		{
			destCoord.X = GAME_STATE_COORD_X; 
			destCoord.Y = GAME_STATE_COORD_Y;
			SetConsoleCursorPosition(hStdout, destCoord);
			std::cout << GAME_STATE_TEXT << "GAME OVER";
			remove("./Data/gameState.dat");
			getch();
			return ;
		}
	}
	
		
	//Printing Snake //----------------------------
		//Removing Tail
	destCoord.X =  prevTail.x;
	destCoord.Y =  prevTail.y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << " ";
	
	destCoord.X = snake.m_head.x; //Head
	destCoord.Y = snake.m_head.y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << snake.m_headShape;	
for (int i=0; i<snake.m_bodySize;i++) //Body
{
	destCoord.X = snake.m_body[i].x;
	destCoord.Y = snake.m_body[i].y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << snake.m_bodyShape[i];
}
	destCoord.X = snake.m_tail.x; //tail
	destCoord.Y = snake.m_tail.y;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << snake.m_tailShape;
	//Checking Collosion with Apple ----If yes the increase score by +1
	if(snake.isCollided(apple))
	{
		
		++score;
		//Printing Score
		destCoord.X = SCORE_COORD_X; 
		destCoord.Y = SCORE_COORD_Y;
		SetConsoleCursorPosition(hStdout, destCoord);
		std::cout << SCORE_TEXT << score;
		//Updating Body
		snake.updateBody();	
		//Generating new Apple
		while(1)
		{
			apple.x = rand() % (MAX_RIGHT-MAX_LEFT) + MAX_LEFT;
			apple.y = rand() % (MAX_DOWN-MAX_UP)+ MAX_UP;
			bool pos = true;
			if(apple.x == snake.m_head.x and apple.y == snake.m_head.y)
			{
				pos =false;
			}
			else if(apple.x == snake.m_tail.x and apple.y == snake.m_tail.y)
			{
				pos = false;
			}
			else
			{
				for (int i=0; i<snake.m_bodySize;i++) //Body
				{
					if(apple.x == snake.m_body[i].x and apple.y == snake.m_body[i].y)
					{
						pos = false;
					}
				}
			}	
			if(pos)
			{
				break;
			}		
		}
		//Printing New Apple
		destCoord.X = apple.x; 
		destCoord.Y = apple.y;
		SetConsoleCursorPosition(hStdout, destCoord);
		std::cout << appleShape;
		
	}
//------Frames per Second End	-----------------
destCoord.X = 0;
destCoord.Y = 0;
SetConsoleCursorPosition(hStdout, destCoord);
//_____Frames Per Second END__________________
}
END_RUNNING_GAME:
	saveGame( score , apple, direction, snake);
	return;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////
void startMenu();
void resumeGame();
void settingsMenu();
int main(int argc, char** argv) {
	mkdir("./Data");
	startMenu();
	
	return 0;
}
void startMenu()
{
	START_MENU:
	//------------
	HANDLE hStdout;
	COORD destCoord;
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);
	//--Variables------
	const int OPTIONS_COORD_X = 14;
	const int OPTIONS_COORD_Y = 10;
	const int MAX_OPTIONS = 4;
	system("cls");
	
	
	//position cursor at start of window
	destCoord.X = 0;
	destCoord.Y = 0;
	std::cout << "\n\n";
	std::cout << R"(
	¦¦¦¦¦¦¦ ¦¦¦    ¦¦  ¦¦¦¦¦  ¦¦   ¦¦ ¦¦¦¦¦¦¦ 
	¦¦      ¦¦¦¦   ¦¦ ¦¦   ¦¦ ¦¦  ¦¦  ¦¦      
	¦¦¦¦¦¦¦ ¦¦ ¦¦  ¦¦ ¦¦¦¦¦¦¦ ¦¦¦¦¦   ¦¦¦¦¦   
	     ¦¦ ¦¦  ¦¦ ¦¦ ¦¦   ¦¦ ¦¦  ¦¦  ¦¦      
	¦¦¦¦¦¦¦ ¦¦   ¦¦¦¦ ¦¦   ¦¦ ¦¦   ¦¦ ¦¦¦¦¦¦¦                                                                                                                          	
	)";
	std::cout << "\n\n\t\tSTART GAME";
	std::cout << "\n\n\t\tRESUME GAME";
	std::cout << "\n\n\t\tSETTINGS";
	std::cout << "\n\n\t\tEXIT";
	destCoord.X = OPTIONS_COORD_X + 22;
	destCoord.Y = OPTIONS_COORD_Y ;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout << "Developed By :";
	destCoord.X = OPTIONS_COORD_X + 30;
	destCoord.Y = OPTIONS_COORD_Y+2 ;
	SetConsoleCursorPosition(hStdout, destCoord);
	std::cout <<"Muhammad Jamshaid Ghaffar";
	{
		//-----LOADING SETTINGS---------------
		std::ifstream infile{ "./Data/Settings.dat" , std::ios::binary};
		if(!infile)
		{
			destCoord.X = OPTIONS_COORD_X;
			destCoord.Y = OPTIONS_COORD_Y + (MAX_OPTIONS *2)+4;
			SetConsoleCursorPosition(hStdout, destCoord);
			std::cout << "Failed to open Settings File";
		}
			infile.read((char*)&difficulty , sizeof(difficulty));
			infile.read((char*)&COLLIDE_WITH_BOX , sizeof(COLLIDE_WITH_BOX));
		//----Updating Settings---------
		if(difficulty == 1)
		{
			UP_DOWN_SPEED = difficulty*BASE_UP_DOWN_SPEED;
			LEFT_RIGHT_SPEED = (difficulty*UP_DOWN_SPEED) - BASE_LEFT_RIGHT_SPEED ;	
		}
		else{
			UP_DOWN_SPEED = difficulty*BASE_UP_DOWN_SPEED;
			LEFT_RIGHT_SPEED = (difficulty*UP_DOWN_SPEED/3) - BASE_LEFT_RIGHT_SPEED-20 ;	
		}
			
	}
	
	int option =1;
	while(1)
	{
		destCoord.X = OPTIONS_COORD_X;
		destCoord.Y = OPTIONS_COORD_Y + (option *2);
		SetConsoleCursorPosition(hStdout, destCoord);
		std::cout << "->";
		char key;
		key = getch();
		switch(key)
		{
			case 72:
				destCoord.X = OPTIONS_COORD_X;
				destCoord.Y = OPTIONS_COORD_Y + (option *2);
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << "  ";
				if(option==1)
				{
					
					option = MAX_OPTIONS;
				}
				else
				{
					--option;
				}
				
				destCoord.Y = option * 2; 
				break;
			case 80:
				destCoord.X = OPTIONS_COORD_X;
				destCoord.Y = OPTIONS_COORD_Y + (option *2);
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << "  ";
				if(option == MAX_OPTIONS)
				{
					option = 1;
				}
				else
				{
					++option;
				}
				destCoord.Y = option * 2;
				break;
			case 13 : //ENTER KEY
				{
					switch(option)
					{
						case 1:
							startGame("NEW_GAME");
							goto START_MENU;
							break;
						case 2:
							startGame("RESUME_GAME");
							goto START_MENU;
						case 3:
							{
								settingsMenu();
								goto START_MENU;
							}
							break;
						case 4:
							return;
					}
				} 
		}
	}
	
}

void saveGame(const int &score ,const Coordination &apple,const char &direction,const Snake &snake )
{
	std::ofstream outfile{"./Data/gameState.dat" , std::ios::binary};
	if(!outfile)
	{
		std::cout << "Failed to open the gameState.dat File to Save Game State";
		return;
	}
	//------------
	//----Score
	outfile.write((char*)&score,sizeof(int));
	//----Apple------
	outfile.write((char*)&apple,sizeof(Coordination));
	//----Direction----------
	outfile.write((char*)&direction,sizeof(direction));
	//-----Head----------
	outfile.write((char*)&snake.m_head,sizeof(Coordination));
	//-----BodySize---------
	outfile.write((char*)&snake.m_bodySize, sizeof(int));
	//------Body---------
	for(int i=0;i<snake.m_bodySize;i++)
	{
		outfile.write((char*)&snake.m_body[i],sizeof(Coordination));
	}
	//------Tail--------------
	outfile.write((char*)&snake.m_tail,sizeof(Coordination));
}
bool readGame(int &score , Coordination &apple, char &direction , Snake &snake)
{
	std::ifstream infile{"./Data/gameState.dat" , std::ios::binary};
	if(!infile)
	{
		return false;
	}
	int size = 0;
	//----Score
	infile.read((char*)&score,sizeof(int));
	//----Apple------
	infile.read((char*)&apple,sizeof(Coordination));
	//----Direction----------
	infile.read((char*)&direction,sizeof(direction));
	//-----Head----------
	Coordination head;
	infile.read((char*)&head,sizeof(Coordination));
	//-----BodySize---------
	int bodySize = 0;
	infile.read((char*)&bodySize,sizeof(int));
	//------Body---------
	std::vector<Coordination> body;
	body.reserve(bodySize);
	for(int i=0;i<bodySize;i++)
	{
		Coordination tempBody;
		infile.read((char*)&tempBody,sizeof(Coordination));
		body.push_back(tempBody);
	}
	//------Tail--------------
	Coordination tail;
	infile.read((char*)&tail,sizeof(Coordination));
	//----Calling File Copy Constructor------------
	snake.snakeCopy(head,bodySize,body,tail);
	return true;
}

void settingsMenu()
{
	system("cls");
	//--Variables------
	const int OPTIONS_COORD_X = 6;
	const int OPTIONS_COORD_Y = 3;
	const int MAX_OPTIONS = 3;
	std::string DIFFICULTY_TEXT[3] = {"HARD  ", "MEDIUM " , "EASY   "};
	//------------
	HANDLE hStdout;
	COORD destCoord;
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);
	//position cursor at start of window
	destCoord.X = 0;
	destCoord.Y = 0;
	std::cout << "\n\n\t\tSETTINGS MENU";
	std::cout << "\n\n\n\tDIFFICULTY";
	std::cout << "\n\n\tCOLLIDE WITH BOX";
	std::cout << "\n\n\tGO BACK";
	int option =1;
	while(1)
	{
		{
			//--------OUTPUT SETTINGS------TO A FILE------------
			std::ofstream outfile{ "./Data/Settings.dat" , std::ios::binary};
			if(!outfile)
			{
				destCoord.X = OPTIONS_COORD_X;
			destCoord.Y = OPTIONS_COORD_Y + (MAX_OPTIONS *2)+4;
			SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << "\tERROR! FAILED TO OPEN THE SETTINGS FILE TO SAVE ";
			}
			outfile.write((char*)&difficulty , sizeof(difficulty));
			outfile.write((char*)&COLLIDE_WITH_BOX , sizeof(COLLIDE_WITH_BOX));				
		}
		//Print Difficulty
		destCoord.X = OPTIONS_COORD_X+30;
		destCoord.Y = OPTIONS_COORD_Y + (1 *2);
		SetConsoleCursorPosition(hStdout, destCoord);
		std::cout << DIFFICULTY_TEXT[difficulty-1];
		//Print Difficulty
		destCoord.X = OPTIONS_COORD_X+30;
		destCoord.Y = OPTIONS_COORD_Y + (2 *2);
		SetConsoleCursorPosition(hStdout, destCoord);
		std::cout << (COLLIDE_WITH_BOX == false ? "NO " : "YES");
		
		destCoord.X = OPTIONS_COORD_X;
		destCoord.Y = OPTIONS_COORD_Y + (option *2);
		SetConsoleCursorPosition(hStdout, destCoord);
		std::cout << "->";
		char key;
		key = getch();	
		switch(key)
		{
			case 27:
				return;
			case 13:
				if(option == 3)
					return;
				break;
			case 72:
				destCoord.X = OPTIONS_COORD_X;
				destCoord.Y = OPTIONS_COORD_Y + (option *2);
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << "  ";
				if(option==1)
				{
					
					option = MAX_OPTIONS;
				}
				else
				{
					--option;
				}
				
				destCoord.Y = option * 2; 
				break;
			case 80:
				destCoord.X = OPTIONS_COORD_X;
				destCoord.Y = OPTIONS_COORD_Y + (option *2);
				SetConsoleCursorPosition(hStdout, destCoord);
				std::cout << "  ";
				if(option == MAX_OPTIONS)
				{
					option = 1;
				}
				else
				{
					++option;
				}
				destCoord.Y = option * 2;
				break;
			case 75 :
				switch(option)
					{
						case 1:
							if(difficulty>=3)
							{
								difficulty = 1;
							}
							else{
								++difficulty;
							}
							remove("./Data/gameState.dat");
							break;
						case 2:
							if(COLLIDE_WITH_BOX == false)
							{
								COLLIDE_WITH_BOX = true;
							}
							else{
								COLLIDE_WITH_BOX = false;
							}
							remove("./Data/gameState.dat");
							break;					
					}
				break;
			case 77 : 
				{
					switch(option)
					{
						case 1:
							if(difficulty<=1)
							{
								difficulty = 3;
							}
							else{
								--difficulty;
							}
							remove("./Data/gameState.dat");
							break;
						case 2:
							if(COLLIDE_WITH_BOX == false)
							{
								COLLIDE_WITH_BOX = true;
							}
							else{
								COLLIDE_WITH_BOX = false;
							}
							remove("./Data/gameState.dat");
							break;
					}
					break;
				} 
		}
	}
	
}


