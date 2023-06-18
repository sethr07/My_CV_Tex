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
    \Huge\textbf{\scshape #1}
  \end{center}
  \vspace{1em}
  \begin{center}
    \small
    \faLinkedinSquare\hspace{.5pt} \href{https://www.linkedin.com/in/rahuls7}{LinkedIn} \quad
    \faMapMarker \hspace{.5pt} \href{}{Gurgaon, Haryana} \quad
    \faGithub\hspace{.5pt} \href{https://github.com/sethr07}{GitHub} \quad
    \faMobile\hspace{.5pt} \href{tel:919717861405}{+353 9717861405} \quad
    \faAt\hspace{.5pt} \href{mailto:srahulseth7@gmail.com}{srahulseth7@gmail.com}
  \end{center}
  \hrule % Add a horizontal line after the details
}

\newcommand{\subject}[1]{%
  \begin{flushleft}
    \textbf{RE:} #1
  \end{flushleft}
}

\newcommand{\greeting}{%
  \begin{flushleft}
    \textbf{Dear Hiring Manager,}
  \end{flushleft}
}

\newcommand{\lettercontent}[1]{%
  \begin{flushleft}    
    #1
  \end{flushleft}
}

\newcommand{\conclusion}{%
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


\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ #4 \ \ #5%
        }%
    }%
}

\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill {\large\textperiodcentered}\hfill #2\hfill
    {\large\textperiodcentered}\hfill #3\\
    #4\hfill #5%
}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}

\newcommand{\signature}[1]{%
  \vfill
  \raggedright
  Sincerely,\\
  #1
}

% End of coverletter.cls
