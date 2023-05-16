\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{QHUMaster}
\LoadClass[a4paper]{ctexbook}

%=======论文页边距要求：每一页的左边距为 30 mm，上、下和右边距为 25 mm
\RequirePackage[top=2.54cm, bottom=2.54cm, left=3.17cm, right=3.17cm]{geometry}

%%% 常用宏包
\RequirePackage{graphicx}


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
%  生成封面
%%%%
\renewcommand{\titlepage}{%
	\thispagestyle{empty}
	
\begin{flushleft}
	\begin{minipage}{3.5cm}
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

	\vspace{2em}

	\centerline{\includegraphics[width=7.24cm]{imgs/QHU.jpg}}
	\begin{center}
		\zihao{2}\heiti
		\grade 级攻读硕士学位研究生毕业论文
	\end{center}
	
	\vspace{2em}
	
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