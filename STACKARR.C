//3.1 Stack operations using array
#include <stdio.h>
int stack[100],i,choice=0,n,top=-1;
void push();
void pop();
void show();
peek();
void main ()
{
 clrscr();
    printf("Enter the number of elements in the stack ");
    scanf("%d",&n);
    printf("*********Stack operations using array*********");

printf("\n----------------------------------------------\n");
    while(choice != 5)
    {
	printf("\nChose one from the below options...\n");
	printf("\n1.Push\n2.Pop\n3.Show\n4.peek\n5.Exit");
	printf("\nEnter your choice: ");
	scanf("%d",&choice);
	switch(choice)
	{
	    case 1:
	    {
		push();
		break;
	    }
	    case 2:
	    {
		pop();
		break;
	    }
	    case 3:
	    {
		show();
		break;
	    }
	    case 4:
	    {
		peek();
		break;
	    case 5:
	    {
		printf("Exiting....");
		break;
	    }
	    default:
	    {
		printf("Please Enter valid choice ");
		break;
	    }
	}
    }
}
}

void push ()
{
    int val;
    if (top == (n- 1))
    printf("\n Overflow");
    else
    {
	printf("\nEnter the value: ");
	scanf("%d",&val);
	top = top +1;
	stack[top] = val;
    }
}

void pop ()
{
    if(top == -1)
    printf("Underflow");
    else
    {	printf(" pop value=%d",stack[top]);
    top = top -1;
    }
}
void show()
{
    for (i=top;i>=0;i--)
    {
	printf("%d\n",stack[i]);
    }
    if(top == -1)
    {
	printf("Stack is empty");
    }
}
peek()
{
 if(top==-1)
 {
  printf("\nStack is empty");
 }
 printf("\ntopmost element of the stack is: %d ",stack[top]);
}
