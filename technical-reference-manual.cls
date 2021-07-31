
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{technical-reference-manual}

\RequirePackage{fullpage}
\RequirePackage{parskip}
\linespread{1}

\LoadClass[12pt,a4paper]{article}

\DeclareRobustCommand*{\logo}[1]{\gdef\@logoCMD{#1}}
\DeclareRobustCommand*{\subtitle}[1]{\gdef\@subtitleCMD{#1}}
\DeclareRobustCommand*{\source}[1]{\gdef\@sourceCMD{#1}}
\DeclareRobustCommand*{\contact}[1]{\gdef\@contactCMD{#1}}
\DeclareRobustCommand*{\version}[1]{\gdef\@versionCMD{#1}}
\DeclareRobustCommand*{\manualversion}[1]{\gdef\@technicalReferenceManualVersionCMD{#1}}

\renewcommand\maketitle
{
	\begin{titlepage}
		\@logoCMD
		
		\vfill
		{
			\begin{flushright}
				\huge{\@title \space \@subtitleCMD}
				\\
				\large{For}
				\huge{\@versionCMD}
				\\
				\large{Version \@technicalReferenceManualVersionCMD}
			\end{flushright}
		}
		\addvspace{10em}
	
		\pagebreak
	
		\vfill{~}
		\vfill
		{
			\begin{center}
				\@author
				\\
				last updated \@date
				\\
				\@sourceCMD
				\\
				\@contactCMD
			\end{center}
		}
		\vfill{~}
		\vfill{~}

	\end{titlepage}
}
