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
\ProvidesClass{examsgr}[2012/06/24 v2.0
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

%Πακέτο αρίθμησης με λατινικούς χαρακτήρες (i. ii. iii. κ.τ.λ.)
\RequirePackage{enumerate}
\renewcommand{\labelenumi}{\roman{enumi}.}

%------------------------Βασικά στοιχεία κεφαλίδας---------------------------------------------
\newcommand{\school}[1]{
							\ifthenelse{\equal{#1}{}}{\def\@school{ΛΥΚΕΙΟ}}{\def\@school{#1}}
							}
							
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
			\large{\ifthenelse{\equal{\@lesson}{ΑΛΓΕΒΡΑ}}{ΣΤΗΝ}{\ifthenelse{\equal{\@lesson}{ΓΕΩΜΕΤΡΙΑ}}{ΣΤΗ}{\ifthenelse{\equal{\@lesson}							{ΣΤΑΤΙΣΤΙΚΗ}}{ΣΤΗ}{ΣΤΑ}}} \@lesson}\\
			\ifthenelse{\equal{\@school}{ΓΥΜΝΑΣΙΟ}}{\vspace{1cm}\large\textbf{Θεωρία} \\ \normalsize}{}
			\end{table}
			}

%------------------------Βασικά στοιχεία Θεμάτων & υποθεμάτων Λυκείου---------------------------
\newcounter{themanumber}
\setcounter{themanumber}{1}
\newcommand{\themata}[1]{\noindent \large \textbf{Θέμα} \ifthenelse{\equal{\arabic{themanumber}}{1}}{\textbf{Α}}{\ifthenelse{\equal{\arabic{themanumber}}{2}}{\textbf{B}}{\ifthenelse{\equal{\arabic{themanumber}}{3}}{\textbf{Γ}}{\ifthenelse{\equal{\arabic{themanumber}}{4}}{\textbf{Δ}}{\ifthenelse{\equal{\arabic{themanumber}}{5}}{\textbf{Ε}}{}}}}} \addtocounter{themanumber}{1}\\ \normalsize \setcounter{sub}{1}}

\newcounter{sub}
\newcommand{\subthemata}[1]{\ifthenelse{\equal{\arabic{themanumber}}{2}}{\textbf{Α}}{\ifthenelse{\equal{\arabic{themanumber}}{3}}{\textbf{B}}{\ifthenelse{\equal{\arabic{themanumber}}{4}}{\textbf{Γ}}{\ifthenelse{\equal{\arabic{themanumber}}{5}}{\textbf{Δ}}{\ifthenelse{\equal{\arabic{themanumber}}{6}}{\textbf{Ε}}{}}}}}\textbf{\arabic{sub}}. \addtocounter{sub}{1}}

\newcommand{\monades}[1]{\noindent \hfill \scriptsize \textbf{#1 Μονάδες} \normalsize}

%------------------------Βασικά στοιχεία Θεμάτων Γυμνασίου---------------------------
\newcounter{gthemanumber}
\setcounter{gthemanumber}{1}
\newcommand{\gthemata}[1]{\ifthenelse{\equal{\arabic{gthemanumber}}{1}}{\noindent \large \textbf{Θεωρία} \textbf{Α}}{\ifthenelse{\equal{\arabic{gthemanumber}}{2}}{\noindent \large \textbf{Θεωρία} \textbf{B}}{\ifthenelse{\equal{\arabic{gthemanumber}}{3}}{
\begin{table}[h]
\centering
\large\textbf{Ασκήσεις}
\end{table}
\noindent \large \textbf{Άσκηση} \textbf{Α}}{\ifthenelse{\equal{\arabic{gthemanumber}}{4}}{\noindent \large \textbf{Άσκηση} \textbf{Β}}{\ifthenelse{\equal{\arabic{gthemanumber}}{5}}{\noindent \large \textbf{Άσκηση} \textbf{Γ}}{}}}}} \addtocounter{gthemanumber}{1}\\ \normalsize \setcounter{gsub}{1}}

\newcounter{gsub}
\newcommand{\gsubthemata}[1]{\ifthenelse{\equal{\arabic{gthemanumber}}{2}}{\textbf{Α}}{\ifthenelse{\equal{\arabic{gthemanumber}}{3}}{\textbf{B}}{\ifthenelse{\equal{\arabic{gthemanumber}}{4}}{\textbf{Α}}{\ifthenelse{\equal{\arabic{gthemanumber}}{5}}{\textbf{Β}}{\ifthenelse{\equal{\arabic{gthemanumber}}{6}}{\textbf{Γ}}{}}}}}\textbf{\arabic{gsub}}. \addtocounter{gsub}{1}}

%------------------------Βασικά στοιχεία Θεμάτων & υποθεμάτων---------------------------


%------------------------Δημιουργία Θεμάτων & υποθεμάτων--------------------------------
\newcommand{\thema}[2]{
\ifthenelse{\equal{\@school}{ΓΥΜΝΑΣΙΟ}}{
					
					\gthemata
					
					#1 
					
					\ifthenelse{\equal{#2}{}}{}{\noindent \monades{#2}}
					
					\vspace{0.5cm}}{
					
					\themata
					
					#1	
					
					\ifthenelse{\equal{#2}{}}{}{\noindent \monades{#2}}

					\vspace{0.5cm}}				
					}

\newcommand{\subthema}[2]{
\ifthenelse{\equal{\@school}{ΓΥΜΝΑΣΙΟ}}{\noindent \gsubthemata

					#1 
					
					\ifthenelse{\equal{#2}{}}{}{\noindent \monades{#2}}		
					
					\vspace{0.3cm}}{\noindent \subthemata 
					
					#1 
					
					\ifthenelse{\equal{#2}{}}{}{\noindent \monades{#2}}		
					
					\vspace{0.3cm}}		
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
			\ifthenelse{\equal{\@school}{ΓΥΜΝΑΣΙΟ}}{Από τα δύο θέματα θεωρίας, να απαντήσετε \textbf{ΜΟΝΟ} στο ένα \\ και από τα τρία θέματα των 					ασκήσεων να απαντήσετε \textbf{ΜΟΝΟ} στα δύο. \\ \vspace{0.5cm} ΚΑΛΗ ΕΠΙΤΥΧΙΑ}{Να απαντήσετε σε \textbf{ΟΛΑ} τα θέματα. \\ 	
			\vspace{0.5cm} ΚΑΛΗ ΕΠΙΤΥΧΙΑ}						
			\end{center}				
			\vspace{.1in}
			\begin{minipage}[b][1.5cm][t]{5.5cm}			
			\centering			
			Ο Διευθυντής \\
			\vspace{0.6cm}
			\@principal
			\end{minipage}
			\hfill	
			\begin{minipage}[b][1.5cm][t]{5.5cm}
			\centering			
			Οι εισηγητές \\
			\vspace{0.2cm}
			\@teachername
			\end{minipage}
			}

\endinput
%% ============================================================================
%% End of file `examsgr.cls'.
