\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{problemset}[2026/02/03 Custom Problem Set Template]

\LoadClass[11pt, a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage{amsmath}
\RequirePackage{listings}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{caption}

\tcbuselibrary{skins, breakable}

\newcommand{\@psetTitle}{Problem Set}
\newcommand{\@psetClass}{Class Name}

\definecolor{manilayellow}{RGB}{250, 245, 215} 
\definecolor{codebg}{gray}{0.9}     
\definecolor{headergray}{gray}{0.2}

\pagestyle{fancy}
\fancyhf{} 
\renewcommand{\headrulewidth}{0pt}
\setlength{\headheight}{14pt} 

\lhead{\large\color{headergray} \@psetTitle}

\rhead{\footnotesize\color{headergray} \@psetClass}

\cfoot{\thepage}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{codebg},   
    basicstyle=\ttfamily\small,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=none,        
    xleftmargin=0.5cm,   
    xrightmargin=0.5cm,  
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    frame=single,                     
    rulecolor=\color{black}           
}
\lstset{style=mystyle}

\newcommand{\makeheader}[4]{

    \renewcommand{\@psetTitle}{#1}
    \renewcommand{\@psetClass}{#2}

    \thispagestyle{empty} 
    \noindent
    {\Huge \textbf{#1}} \par 
    \vspace{20pt}
    \noindent
    \begin{minipage}[t]{0.5\textwidth}
        \textbf{#2} \\   
        \textit{#3}      
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.4\textwidth}
        \raggedleft 
        \scshape    
        \begin{tabular}[t]{@{}r@{}}
            #4
        \end{tabular}
    \end{minipage}
    \par
    \vspace{1cm} 
}

\newenvironment{problemblock}[3]
{
    \def\theAnswer{#3} 

    \noindent\fbox{
        \parbox{\dimexpr\linewidth-2\fboxsep-2\fboxrule}{
            \textbf{\textit{Problem #1:}}
        }
    }
    \par 
    
    \begin{tcolorbox}[
        enhanced,
        frame hidden,
        sharp corners,
        colback=manilayellow, 
        top=1mm, bottom=1mm,
        borderline north={1pt}{0pt}{black}, 
        borderline south={1pt}{0pt}{black}  
    ]
        \textit{#2}
    \end{tcolorbox}

    \vspace{0.5em}
    \noindent\textbf{\textit{Solution}}
    \par
    \vspace{0.2cm}
}
{
    \vspace{0.5cm} 

    \begin{tcolorbox}[
        blanker,       
        breakable,     
        left=0pt, right=0pt, top=0pt, bottom=0pt
    ]
        \noindent\textbf{\textit{Answer:}}
        \vspace{0.1cm}
        \hrule
        \vspace{0.2cm}
        \theAnswer
    \end{tcolorbox}
    
    \vspace{1cm}
}