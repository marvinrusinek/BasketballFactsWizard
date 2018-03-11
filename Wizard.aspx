<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Wizard.aspx.cs" Inherits="Wizard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Basketball Quiz</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Hello, <asp:Label ID="person" runat="server" Text="Label"></asp:Label>!</h1>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" HeaderText="Quiz: How well do you know your basketball facts?"
         HeaderStyle-BackColor="CadetBlue" HeaderStyle-Font-Bold="true" 
            HeaderStyle-Font-Size="20" DisplaySideBar="False" OnFinishButtonClick="score_quiz" OnNextButtonClick="Wizard1_OnNextButtonClick">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" AllowReturn="false">
                    <div class="box1"><img alt="image1" src="images/bball01.jpg" /></div>
                    <div class="box2"><span class="question">Question 1 of 10</span><br />
                    Basketball was created over 100 years ago. True or False?<br /><br />
                        <asp:RadioButtonList ID="Q1" runat="server">
                        <asp:ListItem text="A. True" Value="A" />
                        <asp:ListItem text="B. False" Value="B" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="rfvQ1" ControlToValidate="Q1" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image1ans" src="images/q1ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <p>James Naismith invented the game in 1891. He was a P.E. instructor who wanted a game people could play inside. Back then, basketball was plated with a soccer ball and two peach baskets.</p>
                </div>                    
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image2" src="images/bball02.jpg" /></div>
                <div class="box2"><span class="question">Question 2 of 10</span><br />
                Which NBA team has the most championships than any other team in NBA history?<br /><br />
                       <asp:RadioButtonList ID="Q2" runat="server">
                       <asp:ListItem text="A. The Chicago Bulls" Value="A" />
                       <asp:ListItem text="B. The Los Angeles Lakers" Value="B" />
                       <asp:ListItem text="C. The Boston Celtics" Value="C" />
                       <asp:ListItem text="D. The San Antonio Spurs" Value="D" />
                    </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvQ2" ControlToValidate="Q2" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image2ans" src="images/q2ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <p>The Celtics are the championship leaders with 17 championship seasons. They won 7 straight in a row from 1960 to 1966.</p>
                </div>
                </asp:WizardStep>                
                <asp:WizardStep ID="WizardStep5" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image3" src="images/bball03.jpg" /></div>
                <div class="box2"><span class="question">Question 3 of 10</span><br />
                Which NBA player scored 100 points in one game, the most anyone has ever made?<br /><br />
                       <asp:RadioButtonList ID="Q3" runat="server">
                       <asp:Listitem text="A. Kareem Abdul-Jabbar" Value="A" />
                       <asp:Listitem text="B. Michael Jordan" Value="B" />
                       <asp:Listitem text="C. Kobe Bryant" Value="C" />
                       <asp:Listitem text="D. Wilt Chamberlain" Value="D" />
                    </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvQ3" ControlToValidate="Q3" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep6" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image3ans" src="images/q3ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <p>Wilt Chamberlain who played for the Philadelphia Warriors scored 100 points against the New York Knicks on March 2, 1962. Almost 50 years later, no one has beaten the record.</p>
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep7" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image4" src="images/bball04.jpg" /></div>
                <div class="box2"><span class="question">Question 4 of 10</span><br />
                Who was the youngest NBA star to win Rookie of the Year?<br /><br />
                    <asp:RadioButtonList ID="Q4" runat="server">
                    <asp:ListItem text="A. Lebron James" Value="A" />
                    <asp:ListItem text="B. Tony Parker" Value="B" />
                    <asp:ListItem text="C. Tayshaun Prince" Value="C" />
                    <asp:ListItem text="D. Kobe Bryant" Value="D" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvQ4" ControlToValidate="Q4" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep8" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image4ans" src="images/q4ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <p>Lebron impressed everyone in his first season. He was a basketball sensation even back in high school. In fact, Lebron had a $90-million-dollar contract with Nike even before his first NBA game.</p>
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep9" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image5" src="images/bball05.jpg" /></div>
                <div class="box2"><span class="question">Question 5 of 10</span><br />
                Before being moved to Los Angeles, the Lakers started in which city?<br /><br />
                    <asp:RadioButtonList ID="Q5" runat="server">
                    <asp:ListItem text="A. New York" Value="A" />
                    <asp:ListItem text="B. Minneapolis" Value="B" />
                    <asp:ListItem text="C. Chicago" Value="C" />
                    <asp:ListItem text="D. Cleveland" Value="D" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvQ5" ControlToValidate="Q5" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                </div>
                </asp:WizardStep> 
                <asp:WizardStep ID="WizardStep10" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image5ans" src="images/q5ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <p>The Los Angeles Lakers used to be known as the Minneapolis Lakers. The team got their name because of all the lakes in Minneapolis. The team's owner moved them to Los Angeles in 1960.</p>
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep11" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image6" src="images/bball06.jpg" /></div>
                <div class="box2"><span class="question">Question 6 of 10</span><br />
                What can a player NOT do with the basketball while playing?<br /><br />
                    <asp:RadioButtonList ID="Q6" runat="server">
                    <asp:ListItem text="A. Spin it on their finger" Value="A" />
                    <asp:ListItem text="B. Bounce it" Value="B" />
                    <asp:ListItem text="C. Move without bouncing" Value="C" />
                    <asp:ListItem text="D. Give it a bath" Value="D" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvQ6" ControlToValidate="Q6" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep12" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image6ans" src="images/q6ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                <p>The only way you can move with the ball without throwing it is to bounce it on the ground. If you don't bounce the ball, that's called traveling.</p>
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep13" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image7" src="images/bball07.jpg" /></div>
                <div class="box2"><span class="question">Question 7 of 10</span><br />
                Which NBA player has won 7 championships in his career by playing with the Rockets, the Lakers and the Spurs?<br /><br />
                    <asp:RadioButtonList ID="Q7" runat="server">
                    <asp:ListItem text="A. Robert Horry" Value="A" />
                    <asp:ListItem text="B. Shaquille O'Neal" Value="B" />
                    <asp:ListItem text="C. Kenny Smith" Value="C" />
                    <asp:ListItem text="D. Tim Duncan" Value="D" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvQ7" ControlToValidate="Q7" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep14" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image7ans" src="images/q7ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <p>Robert Horry may be lucky or just that good. While most players don't even have 1 championship ring, Horry has 7.</p>
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep15" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image8" src="images/bball08.jpg" /></div>
                <div class="box2"><span class="question">Question 8 of 10</span><br />
                Can you guess the shoe size of Shaquille O'Neal?<br /><br />
                    <asp:RadioButtonList ID="Q8" runat="server">
                    <asp:ListItem text="A. 17" Value="A" />
                    <asp:ListItem text="B. 19" Value="B" />
                    <asp:ListItem text="C. 21" Value="C" />
                    <asp:ListItem text="D. 23" Value="D" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvQ8" ControlToValidate="Q8" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep16" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image8ans" src="images/q8ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                <p>At 7 feet and 1 inch tall, weighing 325 pounds, Shaquille O'Neal is not only one of the biggest players in the NBA, he has a gigantic foot. His shoe is half the size of a baseball bat.</p>
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep17" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image9" src="images/bball09.jpg" /></div>
                <div class="box2"><span class="question">Question 9 of 10</span><br />
                What is goaltending?<br /><br />
                    <asp:RadioButtonList ID="Q9" runat="server">
                    <asp:ListItem text="A. Missing a game" Value="A" />
                    <asp:ListItem text="B. Standing still too long under the goal" Value="B" />
                    <asp:ListItem text="C. Stopping the ball that's supposed to go in the basket" Value="C" />
                    <asp:ListItem text="D. Punching another player" Value="D" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvQ9" ControlToValidate="Q9" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep18" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image9ans" src="images/q9ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                <p>If goaltending is called, the team that shot the ball gets the points as if the ball went in the basket.</p>
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep19" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image10" src="images/bball10.jpg" /></div>
                <div class="box2"><span class="question">Question 10 of 10</span><br />
                At the 2008 Beijing Olympics, which team won gold for basketball?<br /><br />
                    <asp:RadioButtonList ID="Q10" runat="server">
                    <asp:ListItem text="A. China" Value="A" />
                    <asp:ListItem text="B. USA" Value="B" />
                    <asp:ListItem text="C. Argentina" Value="C" />
                    <asp:ListItem text="D. Brazil" Value="D" />
                    </asp:RadioButtonList>                   
                    <asp:RequiredFieldValidator ID="rfvQ10" ControlToValidate="Q10" CssClass="Error" Display="Dynamic" runat="server" ErrorMessage="Please answer the question" />
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep20" runat="server" AllowReturn="false">
                <div class="box1"><img alt="image10ans" src="images/q10ans.jpg" /></div>
                <div class="box2">
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                <p>The best of the NBA united to represent team USA at the Olympics, including Kobe Bryant and Lebron James. Many of the NBA's international players like Pau Gasol of Spain and Manu Ginobili of Argentina went to play for their country's teams.</p>
                </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep21" StepType="Complete" Title="Complete" runat="Server">
                <asp:Panel ID="Panel1" Style="padding:10px" runat="Server">
                        <span class="question">Quiz Completed</span><br />
                        Thank you for taking the quiz!<br />
                        <asp:Label id="finalScore" runat="Server" />
                        <asp:Label id="scoreCommentary" runat="Server" />
                    </asp:Panel>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
    </form>
</body>
</html>