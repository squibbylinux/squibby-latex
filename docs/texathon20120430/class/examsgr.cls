%% ============================================================================
%%
%% examsgr.cls - A Greek exams document class
%%
%% (c) 2012 Evripidis Themelis <ethemelis@gmail.com>
%%
%% LPPL LaTeX Public Project License
%%
%% ============================================================================

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{examsgr}[2009/05/20 v1.0
 A Greek exams document class file]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax %% <-- Change this if we decide to declare some
                      %%     options for this class!

\LoadClass{article}

%Στοίχιση του κειμένου στο φύλλο Α4
\RequirePackage{geometry}
\geometry{left=2.54cm, top=2.18cm, right=2.54cm, bottom=2cm}
\RequirePackage{ifthen}

%Βασικά στοιχεία κεφαλίδας
\newcommand{\schoolname}[1]{\def\@schoolname{#1}}
\newcommand{\schoolclass}[1]{\def\@schoolclass{#1}}
\newcommand{\schoolyear}[1]{\def\@schoolyear{#1}}
\newcommand{\schooldate}[1]{\def\@schooldate{#1}}
\newcommand{\syear}[1]{\def\@syear{#1}}
\newcommand{\lesson}[1]{\def\@lesson{#1}}

\newcommand{\schoolbasic}[1]{
			\noindent			
			\begin{minipage}[b][1.4cm][t]{6cm}			
			\centering			
			ΕΛΛΗΝΙΚΗ ΔΗΜΟΚΡΑΤΙΑ \\
			\@schoolname 
			\end{minipage}
			\hfill			
			\begin{minipage}[b][1.4cm][t]{4.5cm}
			\centering			
			Σχολικό έτος \@schoolyear \\
			Τάξη: \@schoolclass \\
			Ημερομηνία: \@schooldate
			\end{minipage}
			\begin{table}[h]
			\centering			
			\large{ΓΡΑΠΤΕΣ 
			\ifthenelse{\equal{\@schoolclass}{Γ}}{ΑΠΟΛΥΤΗΡΙΕΣ}{ΠΡΟΑΓΩΓΙΚΕΣ} ΕΞΕΤΑΣΕΙΣ} \\
			\large{ΠΕΡΙΟΔΟΥ ΜΑΙΟΥ - ΙΟΥΝΙΟΥ \@syear} \\
			\large{\@lesson}
			\end{table}\\
			\\
			}

%Βασικά στοιχεία θεμάτων
\newcounter{themanumber}
\setcounter{themanumber}{1}
\newcommand{\thema}{\noindent \large \textbf{Θέμα \arabic{themanumber}o} \addtocounter{themanumber}{1}\\ \normalsize}

\newcommand{\monades}[1]{\hfill \scriptsize \textbf{#1 Μονάδες} \normalsize}

%Βασικά στοιχεία καθηγητών
\newcommand{\teachername}[1]{\def\@teachername{#1}}
\newcommand{\principal}[1]{\def\@principal{#1}}

\newcommand{\schoolfinish}[1]{	
			\vspace{1cm}
			\begin{center}						
			ΚΑΛΗ ΕΠΙΤΥΧΙΑ
			\end{center}				
			\vspace{.1in}
			\begin{minipage}[b][1.5cm][t]{5.5cm}			
			\centering			
			Ο Διευθυντής \\
			\vspace{1cm}
			\@principal \\
			\end{minipage}
			\hfill	
			\begin{minipage}[b][1.5cm][t]{5.5cm}
			\centering			
			Οι καθηγητές \\
			\vspace{0.2cm}
			\@teachername
			\end{minipage}
			}

\endinput
%% ============================================================================
%% End of file `examsgr.cls'.
