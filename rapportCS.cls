\LoadClass[a4paper,12pt]{article} % Classe du document

%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caract�res sp�ciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des �quations et symboles math�matiques
\RequirePackage{siunitx} %Pour �crire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour ins�rer des images
\RequirePackage[justification=centering]{caption} %Pour les l�gendes centralis�es
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour ins�rer l�gendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=3cm,right=3cm,top=3cm,bottom=5cm]{geometry} %Configuration de la page


%-------------------- Informations sur le rapport ----------------------

\newcommand{\mention}[1]{\renewcommand{\mention}{#1}}
\newcommand{\trigrammemention}[1]{\renewcommand{\trigrammemention}{#1}}
\newcommand{\master}[1]{\renewcommand{\master}{#1}}
\newcommand{\filiere}[1]{\renewcommand{\filiere}{#1}}

\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}

\newcommand{\eleve}[1]{\renewcommand{\eleve}{#1}}

\newcommand{\tuteurecole}[1]{\renewcommand{\tuteurecole}{#1}}
\newcommand{\tuteurentreprise}[1]{\renewcommand{\tuteurentreprise}{#1}}

\newcommand{\logoentreprise}[1]{\renewcommand{\logoentreprise}{#1}}

\newcommand{\dates}[1]{\renewcommand{\dates}{#1}}

\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{0.6cm}

\lhead{\includegraphics[scale=0.13]{images/Logo_UT3.jpg} } %Affichage de l'image au top de la page
\rhead{\nouppercase{\leftmark}}
\rfoot{\thepage}
\cfoot{\textbf{Stage :\sujet{}}}
\lfoot{\trigrammemention}

}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

%logo de bordure
%\ThisLLCornerWallPaper{0.5}{logos/bordureECN.png}

\centering %Centraliser le contenu

% Logo Entreprise x ecole
\begin{figure}
    \begin{subfigure}{.5\textwidth}
        \centering
        \includegraphics[width=0.6\textwidth]{\logoentreprise}\par\vspace{1cm}
    \end{subfigure}%
    \begin{subfigure}{.5\textwidth}
        \centering
        \includegraphics[width=0.6\textwidth]{images/Logo_UT3.jpg}\par\vspace{1cm} %Insertion du logo Ecole
    \end{subfigure}
\end{figure}

% Titre du rapport
\rule{\linewidth}{0.2 mm} \\[0.4 cm]
{\huge\bfseries \titre \par}
{\huge\bfseries Sujet :\sujet \par}
\rule{\linewidth}{0.2 mm} \\[1.0 cm]

% Nom de l'�tudiant
{\scshape\LARGE \eleve \par} 
\vspace{1.0cm}

% Parcours de l'�tudiant
{\scshape \mention \\ \filiere \\ \master \par} 
\vspace{1cm}

% Dates
{\large \dates \par} 

\vspace{5cm}

% Repr�sentants de l'�tudiant
\begin{minipage}{0.4\textwidth}
	\begin{flushleft} 
	\emph{\textbf{Tuteur Universitaire :}}\\ 
    \tuteurecole
	\end{flushleft}
\end{minipage}
~
\begin{minipage}{0.4\textwidth}
	\begin{flushright} 
	\emph{\textbf{Tuteurs Entreprise :}} \\
	 \tuteurentreprise
	\end{flushright}
\end{minipage}\\[4cm]
    
	\vfill
	

\end{titlepage}
\newpage
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}



