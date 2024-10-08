# Tic-Tac-Toe-with-a-learning-system

This project implements a Tic-Tac-Toe game in MATLAB where two computer players compete against each other, showcasing the application of machine learning concepts inspired by Chapter 1 of "Machine Learning" by Tom M. Mitchell. The aim is to explore how learning algorithms can optimize gameplay strategies through self-play, allowing the AI to improve its decision-making over time.

In this implementation, the Tic-Tac-Toe board state is represented using six essential features that capture the dynamics of the game:

𝑥1 : The number of X's currently on the board. This feature helps assess the presence of player X. <br/>
𝑥2 : The number of O's currently on the board. This indicates the presence of player O.<br/>
𝑥3 : The count of X's in a winning line (which can be a row, column, or diagonal). This feature provides insight into how close player X is to winning.<br/>
𝑥4 : The count of O's in a winning line. This is critical for understanding the threat posed by player O.<br/>
𝑥5 : The number of potential winning lines for player X. This feature indicates how many ways player X can win in future moves.<br/>
𝑥6 : The number of potential winning lines for player O. Similar to x5, it assesses potential threats from player O.<br/>

The evaluation function 𝑉 is constructed as a linear combination of these features:<br/>
$$\hat{𝑉}$$=𝑤0 + 𝑤1𝑥1 + 𝑤2𝑥2 + 𝑤3𝑥3 + 𝑤4𝑥4 + 𝑤5𝑥5 + 𝑤6𝑥6<br/>
​
The weights 𝑤(i​) are iteratively adjusted based on the outcomes of the matches, with the AI learning to prioritize certain moves that lead to favorable outcomes.
After conducting 7000 matches of self-play, the algorithm converges, achieving an impressive 95% draw rate. This result highlights the effectiveness of the learning process, as both players become highly skilled at countering each other's strategies, demonstrating the potential of machine learning in game development.

Overall, this project serves as a practical exploration of machine learning principles in a controlled environment, providing valuable insights into how AI can learn and adapt through experience in a simple yet challenging game scenario.

# Instructions to Run the PC vs. PC Tic-Tac-Toe 
### Open the Repository:
Navigate to the PC vs. PC folder in the GitHub repository.
### Run main.m:
Open MATLAB (or any compatible environment).
Load the project by navigating to the PC vs. PC folder.
Open the main.m file.
### Set the Number of Matches:
In main.m, find the line where the number of matches is defined.
Change the value to a number greater than 5000 (e.g., numMatches = 7000;).
### Execute the Program:
Run the main.m script.
Observe the results after the matches conclude.

# Instructions to Run the PC vs. YOU Tic-Tac-Toe Edition
### Open the Repository:
Navigate to the PC vs. YOU folder in the GitHub repository.
### Run main.m:
Open MATLAB (or any compatible environment).
Load the project by navigating to the PC vs. YOU folder.
Open the main.m file.
### Start the Game:
Run the main.m script to start the game.
Follow the prompts to play against the PC.
### Make Your Moves:
Input your moves as prompted, and watch the PC respond.

<table>
  <tr>
    <td><img src="A1.gif" alt="Animation 1" width="200"></td>
    <td><img src="A2.gif" alt="Animation 2" width="200"></td>
  </tr>
</table>

### This project was completed in 2017 and uploaded to GitHub in 2024 for archival purposes.

### Timeline
- **Completed:** 2017
- **Uploaded:** 2024
