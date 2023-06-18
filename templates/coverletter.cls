% coverletter.cls
% Cover Letter Class File
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coverletter}[2023/06/18 Cover Letter Class]

% Define default font size and page layout
\LoadClass[12pt, oneside]{article}

\RequirePackage{titlesec}
\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading

\newcommand{\name}[1]{%
  \begin{center}
    \fontsize{28pt}{32pt}\selectfont\textbf{\scshape #1}
  \end{center}
  
  \begin{center}
    \small
    \faMobile\hspace{.5pt} \href{tel:919717861405}{+91 9717861405} \quad
    \faAt\hspace{.5pt} \href{mailto:srahulseth7@gmail.com}{srahulseth7@gmail.com} \quad
    \faMapMarker \hspace{.5pt} \href{}{Gurgaon, Haryana} \quad
    \faLinkedinSquare\hspace{.5pt} \href{https://www.linkedin.com/in/rahuls7}{LinkedIn} \quad
    \faGithub\hspace{.5pt} \href{https://github.com/sethr07}{GitHub} \quad
  \end{center}
  \hrule % Add a horizontal line after the details
  \vspace{10pt}
}

\newcommand{\companyname}[1]{\def\@companyname{#1}}

\newcommand{\subject}[2]{%
  \begin{flushleft}
    \textbf{RE:} Software Engineer Role @ Zomoato
  \end{flushleft}
}

\newcommand{\greeting}{%
  \begin{flushleft}
    \textbf{Dear Hiring Manager,}
  \end{flushleft}
}

\newcommand{\opening}[1]{%
  \begin{flushleft}
    #1
  \end{flushleft}
}

\newcommand{\conclusion}[1]{
  \begin{flushleft}
    #1
  \end{flushleft}
}

\newcommand{\workex}[1]{%
  \begin{flushleft}    
    #1
  \end{flushleft}
}

\newcommand{\closing}{%
  \begin{flushleft}
    Thank you for considering my application. I look forward to the possibility of contributing to your organization's success.
  \end{flushleft}
}

\renewcommand{\maketitle}{%
  \thispagestyle{empty}
  \begin{flushright}
    \today % Add the current date
  \end{flushright}
  \vspace{2em}
  \vspace{2em}
}

\newcommand{\signature}[1]{%
  \vfill
  \raggedright
  \fontsize{14pt}{17pt}\selectfont\textbf{Sincerely,}\\
  #1
}


% End of coverletter.cls
