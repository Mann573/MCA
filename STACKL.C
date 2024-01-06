#include<stdio.h>
#include<conio.h>
#include<malloc.h>
struct node
{
 int data;
 struct node *link;
}*start;
int c=0;
void main()
{
 clrscr();
 int choice, m, i;
 printf("\n\n ***MENU FOR STACK USING LINKED LIST**");
 start=NULL;
 while(1)
 {
   printf("\n\n 1.push");
   printf("\n\n 2.pop");
   printf("\n\n 3.Count the no. of elements\n");
   printf("\n\n 4.display");
   printf("\n\n 5.exit");
   printf("\n Enter your choice:");
   scanf("%d",&choice);

   switch(choice)
   {
     case 1:printf("\n Enter the element to PUSH");
	    scanf("%d",&m);
	    add_end(m);
	    break;
     case 2:del_end();
	    break;
     case 3:printf("\n Total no.of node:%d",c);
	    break;
     case 4:display();
	    break;
     case 5:exit(0);
	    break;
     default:printf("\n Wrong choice");
    }  //end of switch
  }    //end of while
}      //end of main
add_end(int item)
{
 struct node *ptr,*newl;
 newl=malloc(sizeof(struct node));
 newl->data=item;
 newl->link=NULL;
 if(start==NULL)
 start=newl;
 else
 {
   ptr=start;
   while(ptr->link!=NULL)
   {
     ptr=ptr->link;
   }
   ptr->link=newl;
  }
  c++;
  return(item);
}
del_end()
{
 struct node *save,*ptr;
 if(start==NULL)
 {
   printf("\n Stack is empty");
 }
 if(start->link==NULL)
 {
 start=NULL;
 printf("\nStack is now empty");
 return;
 }
 else
 {
 ptr=start;
 while(ptr->link!=NULL)
 {
  save=ptr;
  ptr=ptr->link;
  }
  save->link=NULL;
  c--;
  }
  return(start);
  }
display()
{
  struct node *ptr;
  if(start==NULL)
  {
    printf("\n Stack is empty");
    return;
  }
  ptr=start;
  printf("\n \n *********Stack is ...............................");
  while(ptr!=NULL)
  {
    printf("%3d-->",ptr->data);
    ptr=ptr->link;
  }
}