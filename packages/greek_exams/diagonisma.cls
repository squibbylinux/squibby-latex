%% ============================================================================
%%
%% diagonisma.cls - A Greek exams document class
%%
%% (c) 2012 Evripidis Themelis <ethemelis@gmail.com>
%%
%% LPPL LaTeX Public Project License
%%
%% ============================================================================

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{examsgr}[2012/06/24 v1.0
 A Greek exams document class file]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax %% <-- Change this if we decide to declare some
                      %%     options for this class!

\LoadClass{article}

%Στοίχιση του κειμένου στο φύλλο Α4
\RequirePackage{geometry}
\geometry{left=2.54cm, top=2.18cm, right=2.54cm, bottom=2cm}

%Κεφαλίδα και υποσέλιδο
\RequirePackage{fancyhdr}
\pagestyle{fancy}

%Πακέτο για την συνθήκη if
\RequirePackage{ifthen}

%Πακέτο αρίθμησης με λατινικούς χαρακτήρες (i. ii. iii. κ.τ.λ.)
\RequirePackage{enumerate}
\renewcommand{\labelenumi}{\roman{enumi}.}

%------------------------Βασικά στοιχεία κεφαλίδας---------------------------------------------
\newcommand{\schoolclass}[1]{
							\ifthenelse{\equal{#1}{}}{\def\@schoolclass{}}{\def\@schoolclass{#1}}
							}

\newcommand{\schooldate}[1]{
							\ifthenelse{\equal{#1}{}}{\def\@schooldate{}}{\def\@schooldate{#1}}
							}
						
\newcommand{\schoolname}[1]{
							\ifthenelse{\equal{#1}{Λύκειο}}{\def\@schoolname{Λυκείου}}{
							\ifthenelse{\equal{#1}{Γυμνάσιο}}{\def\@schoolname{Γυμνασίου}}{\def\@schoolname{Λυκείου}}}
							}

\newcommand{\test}[1]{
					\ifthenelse{\equal{#1}{}}{\def\@test{Διαγώνισμα}}{\def\@test{#1}}
					}
							
\newcommand{\lesson}[1]{
						\ifthenelse{\equal{#1}{}}{\def\@lesson{}}{\def\@lesson{#1}}
						}

\newcommand{\seira}[1]{
						\ifthenelse{\equal{#1}{}}{\def\@seira{}}{\def\@seira{#1}}
						}

%------------------------Δημιουργία κεφαλίδας---------------------------------------------
\newcommand{\schoolbasic}[1]{
			\renewcommand{\headrulewidth}{0.3pt}
			\renewcommand{\footrulewidth}{0.3pt}  
			\lfoot{Επιμέλεια: \@teachername}
			\cfoot{}
			\rfoot{\thepage}
			\markright{\@lesson \hspace{0.05cm} \@schoolclass \hspace{0.05cm} \@schoolname
			\hfill \@test}
			\noindent
			\begin{table}[t]
			\centering
			\textbf{\Large{\@test}}
			\end{table}
			%Στοιχεία μαθητή και βαθμός
			\begin{table}[t]
			\noindent \hfill \textbf{\ifthenelse{\equal{\@seira}{}}{}{Σειρά: \@seira}}\\
			\noindent \textbf{Ονοματεπώνυμο:$\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots$ \hspace{4.4cm} Βαθμός:$\dots\dots$}\\
			\noindent \textbf{Τμήμα:$\dots\dots\dots$ \hfill \ifthenelse{\equal{\@schooldate}{}}{}{Ημερομηνία: \@schooldate}}
			\end{table}
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
							
%------------------------Δημιουργία τέλους---------------------------------------------
\newcommand{\schoolfinish}[1]{	
			\begin{table}[b]
			\centering
			\textit{\textbf{\Large{Καλή Επιτυχία}}}
			\end{table}
			}

\endinput
%% ============================================================================
%% End of file `diagonisma.cls'.
