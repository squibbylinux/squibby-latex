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

%Πακέτο για την συνθήκη if
\RequirePackage{ifthen}

%------------------------Βασικά στοιχεία κεφαλίδας---------------------------------------------
\newcommand{\schoolname}[1]{
							\ifthenelse{\equal{#1}{}}{\def\@schoolname{}}{\def\@schoolname{#1}}
							}

\newcommand{\schoolclass}[1]{
							\ifthenelse{\equal{#1}{}}{\def\@schoolclass{}}{\def\@schoolclass{#1}}
							}

\newcommand{\schooldate}[1]{
							\ifthenelse{\equal{#1}{}}{\def\@schooldate{}}{\def\@schooldate{#1}}
							}
							
\newcommand{\lesson}[1]{
						\ifthenelse{\equal{#1}{}}{\def\@lesson{}}{\def\@lesson{#1}}
						}

\newcommand{\schoolplace}[1]{
							\ifthenelse{\equal{#1}{}}{\def\@schoolplace{}}{\def\@schoolplace{#1}}
							}
							
%------------------------Δημιουργία κεφαλίδας---------------------------------------------
\def\Year{\expandafter\YEAR\the\year}
\def\YEAR#1#2#3#4{#1#2#3#4}

\newcounter{y}
\setcounter{y}{\Year \addtocounter{y}{-1}}
\newcommand{\schoolyear}{\arabic{y}} 

\newcommand{\schoolbasic}[1]{
			\noindent
			\begin{minipage}[b][1.4cm][t]{6cm}			
			\centering			
			ΕΛΛΗΝΙΚΗ ΔΗΜΟΚΡΑΤΙΑ \\
			\@schoolname \\
			\@schoolplace
			\end{minipage}
			\hfill			
			\begin{minipage}[b][1.4cm][t]{4.5cm}
			\centering			
			Σχολικό έτος \schoolyear - \Year \\
			Τάξη: \@schoolclass \\
			Ημερομηνία: \@schooldate
			\end{minipage}
			\begin{table}[h]
			\centering			
			\large{ΓΡΑΠΤΕΣ 
			\ifthenelse{\equal{\@schoolclass}{Γ}}{ΑΠΟΛΥΤΗΡΙΕΣ}{ΠΡΟΑΓΩΓΙΚΕΣ} ΕΞΕΤΑΣΕΙΣ} \\
			\large{ΠΕΡΙΟΔΟΥ ΜΑΙΟΥ - ΙΟΥΝΙΟΥ \Year} \\
			\large{\@lesson}
			\end{table}\\
			\\
			}

%------------------------Βασικά στοιχεία Θεμάτων & υποθεμάτων---------------------------
\newcounter{themanumber}
\setcounter{themanumber}{1}
\newcommand{\themata}[1]{\noindent \large \textbf{Θέμα} \ifthenelse{\equal{\arabic{themanumber}}{1}}{\textbf{Α}}{\ifthenelse{\equal{\arabic{themanumber}}{2}}{\textbf{B}}{\ifthenelse{\equal{\arabic{themanumber}}{3}}{\textbf{Γ}}{\ifthenelse{\equal{\arabic{themanumber}}{4}}{\textbf{Δ}}{\ifthenelse{\equal{\arabic{themanumber}}{5}}{\textbf{Ε}}{}}}}} \addtocounter{themanumber}{1}\\ \normalsize \setcounter{sub}{1}}

\newcounter{sub}
\newcommand{\subthemata}[1]{\ifthenelse{\equal{\arabic{themanumber}}{2}}{\textbf{Α}}{\ifthenelse{\equal{\arabic{themanumber}}{3}}{\textbf{B}}{\ifthenelse{\equal{\arabic{themanumber}}{4}}{\textbf{Γ}}{\ifthenelse{\equal{\arabic{themanumber}}{5}}{\textbf{Δ}}{\ifthenelse{\equal{\arabic{themanumber}}{6}}{\textbf{Ε}}{sdfgh}}}}}\textbf{\arabic{sub}}. \addtocounter{sub}{1}}

\newcommand{\monades}[1]{\noindent \hfill \scriptsize \textbf{#1 Μονάδες} \normalsize}

%------------------------Δημιουργία Θεμάτων & υποθεμάτων--------------------------------
\newcommand{\thema}[2]{\themata \\ #1

					\ifthenelse{\equal{#2}{}}{}{\noindent \monades{#2}}
					
					\vspace{1cm}				
					}

\newcommand{\subthema}[2]{
					\noindent \subthemata 
					
					#1

					\ifthenelse{\equal{#2}{}}{}{\noindent \monades{#2}}		
					
					\vspace{0.3cm}			
					}

%------------------------Βασικά στοιχεία καθηγητών---------------------------------------------
\newcommand{\teachername}[1]{
							\ifthenelse{\equal{#1}{}}{\def\@teachername{}}{\def\@teachername{#1}}
							}
							
\newcommand{\principal}[1]{
							\ifthenelse{\equal{#1}{}}{\def\@principal{}}{\def\@principal{#1}}
							}

%------------------------Δημιουργία καθηγητών---------------------------------------------
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
