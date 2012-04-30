%% ============================================================================
%%
%% grthesis.cls - A LaTeX document class for Greek University Dissertations.
%%
%% (c) 2012 Pantelis Koukousoulas <pktoss@gmail.com>
%%
%% LPPL LaTeX Public Project License
%%
%% ============================================================================

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{grthesis}[2009/05/20 v1.0
 A Thesis Style]

%% ============================================================================
%
%% Get some useful information when errors occur.
\setcounter{errorcontextlines}{25}

%% ============================================================================
%%
%% We build upon the book class. Pass all our options to it
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax %% <-- Change this if we decide to declare some
                      %%     options for this class!

%% Load the book class with some default options.
\LoadClass[openright,a4paper,11pt]{book}

%% ==========================================================================
%% Load Required Packages
%% ==========================================================================

\RequirePackage{ifthen}

\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
\RequirePackage{xgreek}

\RequirePackage{ucs}
\RequirePackage[utf8x]{inputenc}

\setmainfont[Mapping=tex-text]{GFS Neohellenic}

\setlanguage{monogreek}

\RequirePackage[left=3.4cm,right=3cm,top=3cm,bottom=3cm]{geometry}

\RequirePackage{graphicx}


%% ============================================================================
%% Commands for filling-in global data
%% ============================================================================

\newcommand{\coverimage}{\gdef\@coverimage}
\coverimage{}                                   % No cover image by default

\newcommand{\university}{\gdef\@university}
\university{Πολυτεχνείο Κρήτης}

\newcommand{\UNIVERSITY}{\gdef\@UNIVERSITY}
\UNIVERSITY{ΠΟΛΥΤΕΧΝΕΙΟ ΚΡΗΤΗΣ}

\newcommand{\unilogo}{\gdef\@unilogo}
\unilogo{}

\newcommand{\dept}{\gdef\@dept}
\newcommand{\DEPT}{\gdef\@DEPT}
\newcommand{\advisor}{\gdef\@advisor}
\newcommand{\secondreader}{\gdef\@secondreader}
\newcommand{\thirdreader}{\gdef\@thirdreader}
\newcommand{\degree}{\gdef\@degree}

% "Διπλωματική εργασία", "Μεταπτυχιακή Διατριβή", "Διδακτορική Διατριβή"
\newcommand{\thesistype}{\gdef\@thesistype}

\newcommand{\thesismonth}{\gdef\@thesismonth}
\newcommand{\thesisyear}{\gdef\@thesisyear}

\newcommand{\dedication}{\gdef\@dedication}
\dedication{}                                   % No dedication by default

\endinput
%% ============================================================================
%% End of file `grthesis.cls'.
