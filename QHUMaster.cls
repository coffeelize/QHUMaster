\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{QHUMaster}
\LoadClass[cs4size,UTF8,noindent,openany]{ctexbook}

%%% 页边距
\RequirePackage[top=2.54cm, bottom=2.54cm, left=3.17cm, right=3.17cm]{geometry}

%%% 常用宏包
\RequirePackage{graphicx}
\RequirePackage{setspace} %调整行间距
\RequirePackage{fancyhdr} %设置页眉页码
\RequirePackage{lastpage} %记录最后一页
\RequirePackage{etoolbox} %appto命令
\pagestyle{fancy} %开启fancyhdr

%%% 前言部分页面样式
\fancypagestyle{frontmatterstyle}{% 定义页面样式frontmatterstyle
	% 即前言部分内容，仅显示页码，页码为大写罗马格式
	\fancyhf{} %清空页眉
	\renewcommand{\headrulewidth}{0pt}
	\fancyfoot{} %清空页脚
	\cfoot{\thepage}
	\renewcommand{\thepage}{\Roman{page}}
}
\appto\frontmatter{\pagestyle{frontmatterstyle}}

%%% 正文部分页面设置
\fancypagestyle{mainmatterstyle}{
	\fancyhf{} %清空页眉
	\lhead{\songti\zihao{5}青海大学硕士学位论文}
	% \leftmark为当前的章节号；\rightmark为当前的小结号
	\rhead{\songti\zihao{5} \leftmark} 
	\fancyfoot{} %清空页脚
	\cfoot{\thepage}
	\renewcommand\headrule{\hrule width \hsize height 0.8pt \kern 0.8pt \hrule width \hsize height 0.4pt} %横线
}
\appto\mainmatter{\pagestyle{mainmatterstyle}}
\appto\mainmatter{\linespread{1.3889}\selectfont}   %行距
\fancypagestyle{plain}{
	\thispagestyle{mainmatterstyle}
}
\AtBeginDocument{\addtocontents{toc}{\protect\thispagestyle{frontmatterstyle}}}


\renewcommand{\title}{A thesis class for Jinan University} %默认英文标题
\newcommand{\biaoti}{青海大学硕士生论文模板} %默认中文标题
\newcommand{\xueyuan}{机械工程学院}
\newcommand{\zhuanye}{机械电子工程}
\newcommand{\xingming}{coffeelize}
\newcommand{\xuehao}{YS210802020148}
\newcommand{\daoshi}{高大大}
\newcommand{\grade}{2020}
\newcommand{\research}{研究方向}
\newcommand{\dateOfGrant}{2021年5月20日}
\newcommand{\startAndFinish}{2020.11-2023.03}
\newcommand{\classification}{}
\newcommand{\secret}{公开}
\newcommand{\udc}{}
\newcommand{\paperNum}{}

\newcommand{\underspace}[1]{\kern0pt\underline{\hspace{#1}}\kern0pt\relax}
\newcommand{\underbox}[2]{\kern0pt\underline{\makebox[#1]{#2}}\kern0pt\relax}
\newcommand{\underparbox}[2]{\kern0pt\underline{\parbox[b]{#1}{#2}}\kern0pt\relax}

%%% 定义加强下划线
\def\QHU@underline[#1]#2{\underline{\hbox to #1{\hfill#2\hfill}}}
\def\QHUunderline{\@ifnextchar[\QHU@underline\underline}

%%%%
%
%  中文封面
%
%%%%
\renewcommand{\titlepage}{%
	\thispagestyle{empty}
	
\begin{flushleft}
	\begin{minipage}{4cm}
		\includegraphics[width=3.5cm]{imgs/QHULogo}
	\end{minipage}
	\hspace{0.1cm}
	\begin{minipage}{0.6\linewidth}
		\songti \zihao{5}
		\begin{tabular}{@{}ll@{}}
			\makebox[3em][l]{分类号}： & \underbox{5em}{\classification} \\
			\makebox[3em][l]{密\hfill 级}： & \underbox{5em}{\secret} \\
			\makebox[3em][l]{U\hfill D\hfill C}： & \underbox{5em}{\udc} \\
			\makebox[3em][l]{编\hfill 号}： & \underbox{5em}{\paperNum} \\
		\end{tabular}
	\end{minipage}
\end{flushleft}

	\vspace{1em}

	\centerline{\includegraphics[width=7.24cm]{imgs/QHU.jpg}}
	\begin{center}
		\zihao{2}\heiti
		\grade 级攻读硕士学位研究生毕业论文
	\end{center}
	
	\vspace{0.8em}
	
	%%% 中英文标题
	\begin{center}
	\zihao{2}\heiti
	\noindent \biaoti \\
	\vspace{0.5em}
	\zihao{-2}
	\noindent \title
	\end{center}
	\vfill
	\begin{center}
		\heiti \zihao{3}
		\makebox[6em][l]{指\hfill 导\hfill 教\hfill 师}：\underbox{11em}{\daoshi}\\[0.6em]
		\makebox[6em][l]{学\hfill 生 \hfill 姓\hfill 名}：\underbox{11em}{\xingming}\\[0.6em]
		\makebox[6em][l]{学科专业名称}：\underbox{11em}{\zhuanye}\\[0.6em]
		\makebox[6em][l]{研\hfill 究\hfill 方\hfill 向}：\underbox{11em}{\research}\\[0.6em]
		\makebox[6em][l]{学院(系、部)}：\underbox{11em}{\xueyuan}\\[0.6em]
		\makebox[6em][l]{授予学位日期}：\underbox{11em}{\dateOfGrant}\\[0.6em]
	\end{center}

	\vfill
	
	\heiti \zihao{3}
	\centerline{论文起止时间：\startAndFinish}
	\newpage
}

%%%
%
% 英文封面
%
%%%

\newcommand{\enMentorName}{Dedong Gao}
\newcommand{\enAuthor}{Zhipeng Wu}
\newcommand{\enMajor}{Master of Engineering}
\newcommand{\enSpecificMajor}{Mechanical and Electronic Engineering}
\newcommand{\enDepartment}{College of Mechanical Engineering}
\newcommand{\enStartAndFinish}{November, 2020—March, 2023}

\newcommand{\enTitlepage}{%
	\thispagestyle{empty}

	\zihao{2} %\vspace{1.5cm}%
	\centerline{\textbf{Qinghai University}}%
	\centerline{\textbf{Master Dissertation}}%
	\vspace{3em}
	
	\begin{center}
		\noindent \zihao{2} \textbf{\title}
	\end{center}
	
	\vspace{3cm}%
	
	\par
	\setstretch{1.5} % 设置行间距为 1.5 倍
	\zihao{3} \noindent
	\textbf{Supervisor: } \enMentorName \\
	\textbf{Candidate: } \enAuthor \\
	\textbf{Academic Major Applied for:} \enMajor \\
	\textbf{Specific Major:} \enSpecificMajor \\
	\textbf{College (Department):}  \enDepartment \\
	\par

	\vfill

	\zihao{4}\centerline{\textbf{\enStartAndFinish}}%

	\newpage
	\vspace{2em}
}

%%%
%
% 中文摘要
%
%%%

\newenvironment{zhAbsract}[1]{%
	\addcontentsline{toc}{chapter}{摘\quad 要}
	\def \zhKeyword{#1}
	\clearpage
	\begin{center}
		{\heiti \zihao{3} 摘 \quad 要} 
	\end{center}
	\vspace*{1em}
	\songti\zihao{-4}\setlength{\parindent}{2em}
	
}
{ %结束部分定义
	\par \noindent {\songti\zihao{-4}\textbf{关键词：}} \zhKeyword
}

%%%
%
% 英文摘要
%
%%%

\newenvironment{enAbsract}[1]{%
	\def \enKeyword{#1}
	\clearpage
	\fancyhf{}
	\addcontentsline{toc}{chapter}{Abtract}
	\begin{center}
		{\zihao{3}\textbf{Abstract}} 
	\end{center}
	\vspace*{1em}
	\zihao{-4}\setlength{\parindent}{2em}
	
}
{ %结束部分定义
	\par \noindent {\zihao{-4}\textbf{Key words:}} \enKeyword
}

%%%
%
% 目录设置
%
%%%

\renewcommand{\contentsname}{\heiti\zihao{3} 目\quad 录}
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}
\RequirePackage[titles]{tocloft}
\renewcommand\cftchapdotsep{0.5} %虚线间隔
\renewcommand\cftdotsep{0.5} %虚线间隔
\setlength{\cftbeforesecskip}{0pt}  %6pt
\setlength{\cftbeforechapskip}{0pt} %6pt
\setlength{\cftbeforesubsecskip}{0pt} %6pt

\renewcommand\cftchapfont{\zihao{-4}\songti}  % 目录中一级标题
\renewcommand\cftsecfont{\zihao{-4} \songti}
\renewcommand\cftsubsecfont{\zihao{-4} \songti}
\renewcommand\cftchappagefont{\mdseries}
\setlength\cftbeforetoctitleskip{0pt} %24
\setlength\cftaftertoctitleskip{0pt} %18

%%%
%
% 章节标题设置
% 一级标题字体为黑体三号加粗
% 二级标题字体为黑体四号
% 三级标题字体为黑体小四
%
%%%

\RequirePackage{titlesec}

% 章节(一级)标题
\def\CTEX@chapter@nameformat{\heiti\zihao{3}} %\bfseries
\def\CTEX@chapter@titleformat{\heiti\zihao{3}}
\def\CTEX@chapter@beforeskip{24pt}
\def\CTEX@chapter@afterskip{18pt}

% 二级标题
\def\CTEX@section@format{\heiti\zihao{4}}
\def\CTEX@section@beforeskip{24pt}
\def\CTEX@section@afterskip{6pt}

% 三级标题
\def\CTEX@subsection@format{\heiti\zihao{-4}}
\def\CTEX@subsection@beforeskip{12pt}
\def\CTEX@subsection@afterskip{6pt}

\def\CTEX@subsubsection@format{\heiti\zihao{-4}}
\def\CTEX@subsubsection@beforeskip{2ex \@plus 1ex \@minus .2ex}
\def\CTEX@subsubsection@afterskip{1.0ex \@plus .2ex}

%%%
%
%参考文献
%
%%%
\RequirePackage[sort&compress]{gbt7714}
\newtoks\bibdatabase
\newcommand{\printbib}{
	\zihao{5}
	\bibliographystyle{gbt7714-numerical}
%	\cleardoublepage 
	\phantomsection
	\addcontentsline{toc}{chapter}{参考文献}
	\bibliography{\the \bibdatabase}
}

%%%
%
%科研成果
%
%%%

\newcommand{\blank}{%
	\hspace*{\fill}
}

\newcommand{\Achievements}{%
%	\cleardoublepage
	\phantomsection
	\setcounter{section}{0}
	\setcounter{chapter}{1}
	\renewcommand{\thechapter}{O}%
%	\addcontentsline{toc}{chapter}{\texorpdfstring{作者在读期间科研成果简介}{作者在读期间科研成果简介}}
%	\chapter*{作者在读期间科研成果简介}
	\chapter{作者在读期间科研成果简介}
	\zihao{-4}\fangsong
}

%%%
%超链接
%%%
\RequirePackage[unicode,psdextra]{hyperref}
\hypersetup{hidelinks,breaklinks=true,bookmarksopen=false}
%自动写入pdf信息
\AtBeginDocument{
	\hypersetup{
		pdftitle = {\@title},
		pdfauthor = {\@author},
		pdfsubject = {青海大学硕士毕业论文}
	}
}

\RequirePackage[nameinlink]{cleveref}
\crefformat{equation}{#2式(#1)#3}
\crefformat{figure}{#2图#1#3}
\crefformat{table}{#2表#1#3}
\crefformat{chapter}{#2第\zhnumber{#1}章#3}
\crefformat{section}{#2#1节#3}
\crefformat{subsection}{#2#1小节#3}
\crefformat{subsubsection}{#2#1小节#3}



\endinput
%%
%% End of file `QHUMaster.cls'.
