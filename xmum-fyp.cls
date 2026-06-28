\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xmum-fyp}[2026/06/28 XMUM final year project thesis class]

\LoadClass[12pt,a4paper,oneside]{report}

\RequirePackage{iftex}
\ifXeTeX\else
  \ifLuaTeX\else
    \ClassError{xmum-fyp}{Use XeLaTeX or LuaLaTeX}{This template uses fontspec for Times New Roman and Arial Narrow.}
  \fi
\fi

\RequirePackage{fontspec}
\RequirePackage[a4paper,left=4cm,right=2.5cm,top=2.5cm,bottom=2.5cm,footskip=1.2cm]{geometry}
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{caption}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}

\defaultfontfeatures{Ligatures=TeX}
\IfFontExistsTF{Times New Roman}
  {\setmainfont{Times New Roman}}
  {\setmainfont{TeX Gyre Termes}}

% Arial Narrow is required by the guideline, but it is not present on all
% Windows installations. Use Arial with a narrow stretch to avoid noisy font
% probing failures while keeping the cover visually close to the template.
\newfontfamily\xmumarialnarrow{Arial}[FakeStretch=0.82]

\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\setlength{\emergencystretch}{3em}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[C]{\thepage}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\fancypagestyle{emptychapter}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}

\assignpagestyle{\chapter}{emptychapter}

\titleformat{\chapter}[display]
  {\normalfont\bfseries\centering}
  {CHAPTER \thechapter}
  {1.5\baselineskip}
  {\MakeUppercase}
\titlespacing*{\chapter}{0pt}{0pt}{1.5\baselineskip}

\titleformat{name=\chapter,numberless}[display]
  {\normalfont\bfseries\centering}
  {}
  {0pt}
  {\MakeUppercase}
\titlespacing*{name=\chapter,numberless}{0pt}{0pt}{1.5\baselineskip}

\titleformat{\section}
  {\normalfont\bfseries}
  {\thesection}
  {1em}
  {}
\titlespacing*{\section}{0pt}{1.5\baselineskip}{0.75\baselineskip}

\titleformat{\subsection}
  {\normalfont\bfseries}
  {\thesubsection}
  {1em}
  {}
\titlespacing*{\subsection}{0pt}{1.25\baselineskip}{0.5\baselineskip}

\titleformat{\subsubsection}
  {\normalfont\bfseries}
  {\thesubsubsection}
  {1em}
  {}
\titlespacing*{\subsubsection}{0pt}{1.0\baselineskip}{0.5\baselineskip}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\listfigurename}{LIST OF FIGURES}

\renewcommand{\cfttoctitlefont}{\hfill\normalfont\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftlottitlefont}{\hfill\normalfont\bfseries}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\cftloftitlefont}{\hfill\normalfont\bfseries}
\renewcommand{\cftafterloftitle}{\hfill}
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{1.5\baselineskip}
\setlength{\cftbeforelottitleskip}{0pt}
\setlength{\cftafterlottitleskip}{1.5\baselineskip}
\setlength{\cftbeforeloftitleskip}{0pt}
\setlength{\cftafterloftitleskip}{1.5\baselineskip}
\renewcommand{\cftchapfont}{\bfseries}
\renewcommand{\cftchappagefont}{\bfseries}
\renewcommand{\cftdotsep}{1}

\captionsetup{
  font=normalsize,
  labelfont=normalfont,
  labelsep=colon,
  justification=centering
}

\renewcommand{\arraystretch}{1.2}

\newcommand{\xmum@title}{TITLE IN CAPITAL LETTERS}
\newcommand{\xmum@student}{NAME OF STUDENT}
\newcommand{\xmum@studentid}{STUDENT ID}
\newcommand{\xmum@school}{SCHOOL/FACULTY}
\newcommand{\xmum@programme}{PROGRAMME}
\newcommand{\xmum@degree}{Bachelor of XXXXXX}
\newcommand{\xmum@intake}{20XX/XX}
\newcommand{\xmum@supervisor}{Supervisor Name}
\newcommand{\xmum@supervisortitle}{Title}
\newcommand{\xmum@cosupervisor}{}
\newcommand{\xmum@cosupervisortitle}{}
\newcommand{\xmum@submissiondate}{MONTH YEAR}
\newcommand{\xmum@submissionyear}{YEAR}
\newcommand{\xmum@reporttype}{FINAL YEAR PROJECT REPORT/ THESIS OF DEGREE}
\newcommand{\xmum@logo}{}

\newcommand{\xmumtitle}[1]{\renewcommand{\xmum@title}{#1}}
\newcommand{\xmumstudent}[1]{\renewcommand{\xmum@student}{#1}}
\newcommand{\xmumstudentid}[1]{\renewcommand{\xmum@studentid}{#1}}
\newcommand{\xmumschool}[1]{\renewcommand{\xmum@school}{#1}}
\newcommand{\xmumprogramme}[1]{\renewcommand{\xmum@programme}{#1}}
\newcommand{\xmumdegree}[1]{\renewcommand{\xmum@degree}{#1}}
\newcommand{\xmumintake}[1]{\renewcommand{\xmum@intake}{#1}}
\newcommand{\xmumsupervisor}[1]{\renewcommand{\xmum@supervisor}{#1}}
\newcommand{\xmumsupervisortitle}[1]{\renewcommand{\xmum@supervisortitle}{#1}}
\newcommand{\xmumcosupervisor}[1]{\renewcommand{\xmum@cosupervisor}{#1}}
\newcommand{\xmumcosupervisortitle}[1]{\renewcommand{\xmum@cosupervisortitle}{#1}}
\newcommand{\xmumsubmissiondate}[1]{\renewcommand{\xmum@submissiondate}{#1}}
\newcommand{\xmumsubmissionyear}[1]{\renewcommand{\xmum@submissionyear}{#1}}
\newcommand{\xmumreporttype}[1]{\renewcommand{\xmum@reporttype}{#1}}
\newcommand{\xmumlogo}[1]{\renewcommand{\xmum@logo}{#1}}

\newcommand{\xmumThesisTitle}{\xmum@title}
\newcommand{\xmumStudentName}{\xmum@student}
\newcommand{\xmumStudentId}{\xmum@studentid}
\newcommand{\xmumSchool}{\xmum@school}
\newcommand{\xmumProgramme}{\xmum@programme}
\newcommand{\xmumDegree}{\xmum@degree}
\newcommand{\xmumIntake}{\xmum@intake}
\newcommand{\xmumSupervisor}{\xmum@supervisor}
\newcommand{\xmumSupervisorTitle}{\xmum@supervisortitle}
\newcommand{\xmumSubmissionDate}{\xmum@submissiondate}
\newcommand{\xmumSubmissionYear}{\xmum@submissionyear}

\newcommand{\xmum@maybeprintlogo}{%
  \ifx\xmum@logo\@empty
    \vspace*{1.0cm}%
  \else
    \IfFileExists{\xmum@logo}{%
      \includegraphics[height=2.2cm]{\xmum@logo}\par\vspace{0.8cm}%
    }{%
      \vspace*{1.0cm}%
    }%
  \fi
}

\newcommand{\makefrontcover}{%
  \begin{titlepage}
    \thispagestyle{empty}
    \centering
    \vspace*{3.6cm}
    {\xmumarialnarrow\fontsize{18}{22}\selectfont\bfseries\MakeUppercase{\xmum@title}\par}
    \vfill
    {\xmumarialnarrow\fontsize{18}{22}\selectfont\bfseries\MakeUppercase{\xmum@student}\par}
    \vspace{1.4cm}
    {\xmumarialnarrow\fontsize{18}{22}\selectfont\bfseries XIAMEN UNIVERSITY MALAYSIA\par}
    \vspace{1.4cm}
    {\xmumarialnarrow\fontsize{18}{22}\selectfont\bfseries \xmum@submissionyear\par}
    \vspace*{2.0cm}
  \end{titlepage}
}

\newcommand{\maketitlepage}{%
  \clearpage
  \pagenumbering{roman}
  \setcounter{page}{1}
  \thispagestyle{empty}
  \begin{center}
    \xmum@maybeprintlogo
    {\fontsize{14}{17}\selectfont \xmum@reporttype\par}
    \vspace{1.6cm}
    {\fontsize{16}{19}\selectfont\bfseries\MakeUppercase{\xmum@title}\par}
    \vspace{1.8cm}
    {\fontsize{12}{18}\selectfont
    \begin{tabular}{@{}p{4.3cm}@{\hspace{0.25cm}: }p{8.5cm}@{}}
      NAME OF STUDENT & \xmum@student \\
      STUDENT ID & \xmum@studentid \\
      SCHOOL/ FACULTY & \xmum@school \\
      PROGRAMME & \xmum@programme \\
      INTAKE & \xmum@intake \\
      SUPERVISOR & \xmum@supervisor \\
                 & \xmum@supervisortitle \\
    \end{tabular}\par}
    \vfill
    {\fontsize{14}{17}\selectfont \MakeUppercase{\xmum@submissiondate}\par}
  \end{center}
  \clearpage
}

\newcommand{\xmumfrontmatterpage}[1]{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{#1}
  \thispagestyle{plain}
  \begin{center}
    {\bfseries #1\par}
  \end{center}
  \vspace{1.5\baselineskip}
}

\newcommand{\xmumfrontmatterpagenotoc}[1]{%
  \clearpage
  \thispagestyle{plain}
  \begin{center}
    {\bfseries #1\par}
  \end{center}
  \vspace{1.5\baselineskip}
}

\newcommand{\xmumtableofcontents}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{TABLE OF CONTENTS}
  \tableofcontents
  \thispagestyle{plain}
}

\newcommand{\xmumlistoftables}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{LIST OF TABLES}
  \listoftables
  \thispagestyle{plain}
}

\newcommand{\xmumlistoffigures}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{LIST OF FIGURES}
  \listoffigures
  \thispagestyle{plain}
}

\newcommand{\startmainmatter}{%
  \clearpage
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \pagestyle{fancy}
}

\newcommand{\xmumbackmatterchapter}[1]{%
  \clearpage
  \phantomsection
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
}

\newcommand{\startappendices}{%
  \clearpage
  \appendix
  \titleformat{\chapter}[display]
    {\normalfont\bfseries\centering}
    {APPENDIX \thechapter}
    {1.5\baselineskip}
    {\MakeUppercase}
}

\newcommand{\xmumcosupervisorapprovalblock}{%
  \ifx\xmum@cosupervisor\@empty
  \else
    \vspace{2\baselineskip}
    Signature: \rule{6cm}{0.4pt}\par
    Co-Supervisor: \xmum@cosupervisor\par
    Date: \rule{6cm}{0.4pt}\par
  \fi
}
