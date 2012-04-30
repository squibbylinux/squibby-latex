%% ============================================================================
%%
%% skel.cls - A skeleton document class
%%
%% (c) 2012 Pantelis Koukousoulas <pktoss@gmail.com>
%%
%% LPPL LaTeX Public Project License
%%
%% ============================================================================

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{skel}[2009/05/20 v1.0
 A skeleton document class file]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax %% <-- Change this if we decide to declare some
                      %%     options for this class!

\LoadClass{article}

\endinput
%% ============================================================================
%% End of file `skel.cls'.
