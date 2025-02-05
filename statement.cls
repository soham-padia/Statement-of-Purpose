\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{statement}[2024/02/04 Custom class for Personal Statement]

% Inherit from article class
\LoadClass[11pt]{article}

% --- Packages ---
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{parskip}    % adds space between paragraphs
\RequirePackage{xcolor}
\RequirePackage{hyperref}

% --- Page layout and spacing ---
\geometry{a4paper, margin=1in}
\onehalfspacing

% --- Define variables ---
\newcommand{\studentName}[1]{\def\@studentName{#1}}
\newcommand{\program}[1]{\def\@program{#1}}
\newcommand{\university}[1]{\def\@university{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\statement}[1]{\def\@statement{#1}}
\newcommand{\term}[1]{\def\@term{#1}}

% Default values
\providecommand{\@studentName}{Student Name}
\providecommand{\@program}{Program}
\providecommand{\@university}{University}
\providecommand{\@email}{email@example.com}
\providecommand{\@statement}{Personal Statement}
\providecommand{\@term}{Term}

% --- Public getters ---
\newcommand{\StudentName}{\@studentName}
\newcommand{\Program}{\@program}
\newcommand{\University}{\@university}
\newcommand{\Email}{\@email}
\newcommand{\StatementTitle}{\@statement}
\newcommand{\Term}{\@term}

% --- Custom title command ---
\renewcommand{\maketitle}{
    \begin{center}
        {\LARGE \textbf{\StatementTitle}}\\[1ex]
        {\large \Program, \University}\\[0.5ex]
        {\ttfamily \Email}\\[2ex]
    \end{center}
}

% --- Footer command ---
\newcommand{\printfooter}{
    \begin{flushright}
        \textbf{\StudentName}\\\Term
    \end{flushright}
}

% --- Header and footer configuration using fancyhdr ---
\fancyhf{} % clear all header and footer fields
\fancyhead[L]{\textbf{\StudentName}}
\fancyhead[R]{\textbf{\University}}
\fancyfoot[C]{\thepage}
\pagestyle{fancy}

\endinput
