# Slack_Data_Visualisation
Slack data visualization using Processing and Gephi graph files
Visualisation is created in Processing and can be executed after downloading all the files and Processing. Run the main file named
SlackNetworkViz_Sarfaraz.

The data set is transformed using Excel and python before being used by processing.
Gephi graph files are also generated before being visualised by Processing.

The data set is syntehtically created and do not correspond to any real dataset. It is used just to describe the concept of 
network visulaisation


## 1. Research Question(s):

Social network visualization is becoming an important aspect for organizations in order to discover new insights. Such explored phenomena could help the organization in better resource management. My research question is encouraged by how a start-up can utilize such employee’s communication data for deriving important decisions.
•	Are there any observable patterns in the way individuals communicate and collaborate in an organization?
•	Who should be approached for circulating information in an efficient manner?
•	Can we identifying important individuals in an organization?
•	In which channels/projects is the individual most active?
•	What is a typical activity pattern of an employee over a day?
•	How employees interact in an overall slack public channel versus in any one particular public slack channel?
These research questions have derived the design choices for visualization. Later on the visualization is evaluated on the basis of its ability to answer these research questions.

## 2. Data Source(s):

Slack Public Channel Data containing 11714 messages between 99 individuals over 10 slack channels is created to explain the concept (synthetic data). 
The data is preprocessed in Python to avoid complicated parsing in Processing. 11 graph files (.GEXF) were generated using Gephi with all basic network metrics. Although a CSV file could be extracted from Slack API but is not done here to avoid data confidentiality and privacy.

## 3. User Instructions:

On running the sketch, initial screen shows the overall slack communication network of how employees interact based on all the public channels. Further details would be displayed once the user clicks on any node as shown in Figure 1.
![fig1](https://cloud.githubusercontent.com/assets/26718866/26689600/180e4fee-46ee-11e7-8132-c08edb497c37.jpg)
Figure 1: Sketch after the selection of node
1.	Once the node is selected it highlights with grey color and show its links in black. Elements 3-6 show the details corresponding to the selected node.
2.	It shows a network based on all slack channel communication, user can select on any other node in the network and elements 3-6 would automatically update.
3.	The label of the node is shown (in our case it corresponds to employee’s username).
4.	Line graph shows the variation of average message frequency over a 24 hour period.
Blue line shows the selected node’s message frequency and grey line is the average frequency line. On hovering a mouse over the blue line, x and y axis values of that point would be displayed on top of the line chart.
5.	Basic network metrics (betweeness centrality, degree centrality and modularity) are shown. This is also embedded in the visuals and would be explained in visual encoding section.
6.	Bar chart shows the activity strength of the selected node in different slack channels.
If a mouse is hovered over any blue bar a list would be shown of all the people the selected node has communicated with, in that particular slack channel, as shown in Figure 2A. Selecting any blue bar would open the node-link diagram of that particular channel as shown in Figure 2B.
7.	Clicking anywhere on the background would clear the selection.
  ![fig2](https://cloud.githubusercontent.com/assets/26718866/26689682/6454ddbe-46ee-11e7-8590-03a75d0d2f6c.jpg)
![fig2b](https://cloud.githubusercontent.com/assets/26718866/26689726/92ef10e0-46ee-11e7-95d3-128386a831f7.jpg)

Figure 2A: Left-Selecting Optimization Bar in bar chart, Figure 2B: Right- Network of selected bar
8.	A network for selected channel is shown only; selecting any node would display elements 3-6. However, user must be aware element 4 and 6 display the statistics based on all channels, not for just the selected one. 
9.	Clicking on this element would take back to the initial sketch that has the complete network.




