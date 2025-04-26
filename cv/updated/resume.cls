%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{resume}[2023/04/20 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage{hyperref}
\usepackage{fontawesome}
\usepackage{xcolor}

% Define custom colors
\definecolor{primary}{RGB}{0, 0, 112} % Dark blue
\definecolor{darkgray}{RGB}{70, 70, 70}
\definecolor{lightgray}{RGB}{230, 230, 230}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------
\usepackage{fontspec}
\setmainfont[
  Path=fonts/,
  BoldFont=Montserrat-Bold,
  ItalicFont=Montserrat-Italic,
  BoldItalicFont=Montserrat-BoldItalic
]{Montserrat-Regular}

\newfontfamily\headingfont[
  Path=fonts/,
  BoldFont=Montserrat-ExtraBold,
  ItalicFont=Montserrat-ExtraBoldItalic
]{Montserrat-Bold}

%----------------------------------------------------------------------------------------
%	CUSTOM COMMANDS
%----------------------------------------------------------------------------------------

% Command for printing the name at the top of the document
\newcommand{\name}[1]{
  \centerline{\Huge\headingfont\textcolor{primary}{#1}}
  \vspace{0.25cm}
}

% Command for printing the contact information
\newcommand{\address}[1]{
  \centerline{\large\textcolor{darkgray}{#1}}
}

% One thing per line
\newcommand{\datedsubsection}[2]{
  \item \textbf{#1} \hfill #2 \\
}

\newcommand{\dateditem}[2]{
  \item \textbf{#1} \hfill #2
}

% Creates a section with a horizontal line between it and the above content
\newcommand{\rSection}[1]{
  \vspace{0.3cm}
  {\large\headingfont\textcolor{primary}{\uppercase{#1}}}
  \vspace{-0.3cm}
  \hrule height 1pt
  \vspace{0.3cm}
}

% Creates a subsection
\newcommand{\rSubsection}[4]{
  \vspace{0.1cm}
  {\large\textbf{#1}} \hfill {\textit{#2}}\\
  {#3} \hfill {\textit{#4}}\\
  \vspace{0.1cm}
}
