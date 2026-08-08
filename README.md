<body>
<div class="container">

  <h1>🎯 HR ANALYTICS</h1>

  <div class="card">
    <p>The <strong>HR Analytics Project</strong> is a data-driven solution that combines SQL database management with Power BI dashboarding to analyze workforce data. It provides actionable insights into employee attrition, departmental performance, compensation trends, and workforce demographics to support strategic HR decision-making.</p>
  </div>

  <h2>📝 Project Overview</h2>
  <ul>
    <li><strong>SQL Server</strong> for structured data management and analysis</li>
    <li><strong>Power BI</strong> for interactive visualization and real-time dashboarding</li>
    <li><strong>HR Data</strong> covering employee demographics, performance, compensation, and attrition</li>
  </ul>
  <p>The system enables HR departments to identify patterns, predict attrition risks, and optimize workforce planning strategies.</p>

  <h2>✨ Problem Statement</h2>
  <p><strong>Challenge:</strong> HR departments struggle to gain actionable insights from employee data scattered across multiple systems.</p>
  <p>✅ <strong>Goal:</strong> Create a unified analytics platform to:</p>
  <ul>
    <li>Track employee attrition and retention metrics</li>
    <li>Analyze departmental performance and compensation trends</li>
    <li>Identify high-risk turnover areas</li>
    <li>Support data-driven HR decision-making</li>
    <li>Provide real-time workforce visibility</li>
  </ul>

  <h2>📊 Dataset</h2>
  <p><strong>Employee Records Table (Employees)</strong></p>
  <table>
    <tr><th>Column</th><th>Type</th><th>Description</th></tr>
    <tr><td>EmpID</td><td>INT</td><td>Unique employee identifier</td></tr>
    <tr><td>Name</td><td>VARCHAR(50)</td><td>Employee full name</td></tr>
    <tr><td>Gender</td><td>VARCHAR(10)</td><td>Male/Female</td></tr>
    <tr><td>Age</td><td>INT</td><td>Employee age</td></tr>
    <tr><td>Department</td><td>VARCHAR(50)</td><td>IT, HR, Finance, Sales</td></tr>
    <tr><td>JobRole</td><td>VARCHAR(50)</td><td>Developer, Manager, Analyst, etc.</td></tr>
    <tr><td>Salary</td><td>FLOAT</td><td>Annual compensation</td></tr>
    <tr><td>Experience</td><td>INT</td><td>Years of work experience</td></tr>
    <tr><td>Attrition</td><td>VARCHAR(10)</td><td>Yes/No</td></tr>
    <tr><td>HireDate</td><td>DATE</td><td>Date of employment</td></tr>
    <tr><td>PerformanceRating</td><td>INT</td><td>1–5 scale rating</td></tr>
  </table>
  <p><em>Sample Data:</em> 10 employee records with various attributes and NULL value handling.</p>

  <h2>⚒️ Tools and Technologies</h2>
  <table>
    <tr><th>Category</th><th>Tools</th></tr>
    <tr><td>Database</td><td>Microsoft SQL Server 2019+</td></tr>
    <tr><td>Database Admin</td><td>SQL Server Management Studio (SSMS)</td></tr>
    <tr><td>Query Language</td><td>T-SQL (Transact-SQL)</td></tr>
    <tr><td>Visualization</td><td>Power BI Desktop</td></tr>
    <tr><td>Version Control</td><td>Git/GitHub</td></tr>
    <tr><td>Operating System</td><td>Windows</td></tr>
  </table>

  <h2>Ⓜ️ Methods</h2>
  <h3>✅ Data Processing Pipeline</h3>
  <ul>
    <li><strong>Data Creation</strong> — Create HR_Analytics database and Employees table</li>
    <li><strong>Data Insertion</strong> — Load 10 sample employee records</li>
    <li><strong>NULL Handling</strong> — Use <code>ISNULL()</code> function to handle missing values</li>
    <li><strong>Data Validation</strong> — Verify data integrity</li>
    <li><strong>Analytical Queries</strong> — Extract key metrics</li>
    <li><strong>Visualization</strong> — Create Power BI dashboard for visual representation</li>
  </ul>

  <h3>Key Analytical Queries</h3>
  <pre><code>-- Total Employee Count
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- Attrition Analysis
SELECT Attrition, COUNT(*) AS Count FROM Employees GROUP BY Attrition;

-- Department-wise Average Salary
SELECT Department, AVG(Salary) AS AvgSalary FROM Employees GROUP BY Department;

-- Experience vs Salary Correlation
SELECT Experience, AVG(Salary) AS AvgSalary FROM Employees GROUP BY Experience;</code></pre>

  <h2>📊 Key Insights</h2>
  <table>
    <tr><th>Metric</th><th>Value</th><th>Insight</th></tr>
    <tr><td>Total Employees</td><td>10</td><td>Small workforce sample</td></tr>
    <tr><td>Avg Experience</td><td>4.40 years</td><td>Moderate experience level</td></tr>
    <tr><td>Avg Salary</td><td>₹59,500</td><td>Competitive compensation</td></tr>
    <tr><td>Avg Performance</td><td>3.60/5</td><td>Room for performance improvement</td></tr>
    <tr><td>Attrition Rate</td><td>30% (3 out of 10)</td><td>Moderate turnover risk</td></tr>
    <tr><td>Department Distribution</td><td>IT, HR, Finance, Sales</td><td>Balanced across departments</td></tr>
  </table>

  <h2>💨 Dashboard Overview</h2>
  <img class="dashboard-img" width="1003" height="403" alt="HR Analytics Dashboard" src="https://github.com/user-attachments/assets/e8327ffc-3f85-474c-96e3-0f6e28632772" />

  <h3>📊 Key Dashboard Components</h3>

  <p><strong>1. KPI Cards (Top Row)</strong></p>
  <div class="metrics-grid">
    <div class="kpi-item"><div class="kpi-value">4.40 yrs</div><div class="kpi-label">Avg Experience</div></div>
    <div class="kpi-item"><div class="kpi-value">₹59.50K</div><div class="kpi-label">Avg Salary</div></div>
    <div class="kpi-item"><div class="kpi-value">10</div><div class="kpi-label">Total Employees</div></div>
    <div class="kpi-item"><div class="kpi-value">3.60/5</div><div class="kpi-label">Avg Performance</div></div>
  </div>
<ul>
  <li><strong>Avg Experience:</strong> 4.40 years</li>
  <li><strong>Avg Salary:</strong> ₹59.50K</li>
  <li><strong>Total Employees:</strong> 10</li>
  <li><strong>Avg Performance:</strong> 3.60/5</li>
</ul>

  <p><strong>2. Sum of Salary by Department (Bar Chart)</strong></p>
  <ul>
@@ -141,11 +141,12 @@

  <h2>🧑‍💼 Model / Output</h2>
  <p><strong>Output Files Generated:</strong></p>
  <div class="tree">HR-ANALYTICS-PROJECT/
├── HR ANALYTICS.sql (Database &amp; Query Script)
├── HR ANALYTICS DASHBOARD.pbix (Power BI Dashboard)
├── README.md (Documentation)
└── Sample Data (10 employee records)</div>
 <pre><code>HR-ANALYTICS-PROJECT/
├── HR ANALYTICS.sql <em>(Database &amp; Query Script)</em>
├── HR ANALYTICS DASHBOARD.pbix <em>(Power BI Dashboard)</em>
├── README.md <em>(Documentation)</em>
└── Sample Data <em>(10 employee records)</em>
</code></pre>

  <p>✅ <strong>Analytical Outputs:</strong></p>
  <ul>
@@ -293,4 +294,3 @@

</div>
</body>
</html>
