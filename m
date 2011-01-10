Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8267B4C80039
	for <yocto@yoctoproject.org>; Sun,  9 Jan 2011 20:33:19 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0A2XIWY000096
	for <yocto@yoctoproject.org>; Sun, 9 Jan 2011 18:33:18 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 9 Jan 2011 18:33:18 -0800
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 9 Jan 2011 18:33:17 -0800
Message-ID: <4D2A6F13.4090808@windriver.com>
Date: Mon, 10 Jan 2011 10:29:39 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Thunderbird/3.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-OriginalArrivalTime: 10 Jan 2011 02:33:17.0698 (UTC)
	FILETIME=[BD2DD620:01CBB06E]
Subject: The lsb fixing bugs status
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Jan 2011 02:33:24 -0000
Content-Type: multipart/alternative;
	boundary="------------030204070208060306060905"

--------------030204070208060306060905
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi All

The latest LSB status is below:
*LSB Test Suite* 	*Version* 	*Result* 	*Left work* 	*May/Days* 	*Start 
Date* 	*Finish Date* 	*Status* 	*Completed Percentage* 	*Defects 
filed* 	*Developer* 	*Risk/Issue*
Cpp-T2C Tests 	4.0.2-1 	Passed 	submit 	2 	2010-12-20 	2010-12-21 	In 
Progress 	90% 	
	Jingdong Lu 	
Libstdc++ Tests 	4.1.0-7 	Passed 	submit 	3 	2010-12-22 	2010-12-24 	In 
Progress 	90% 	
	Jingdong Lu 	
Perl Tests 	4.0.7-1 	Passed 	None 	2 	2010-12-27 	2010-12-28 	Done 	100% 	
	Jingdong Lu 	
Python Runtime Tests 	4.0.2-1 	Passed 	submit 	3 	2010-12-29 
2010-12-31 	In Progress 	90% 	Bug 614(Open) 	Jingdong Lu 	
Python Tests 	2.4.5-2 	Passed 	submit 	0 	
	
	In Progress 	90% 	
	Jingdong Lu 	
OLVER Core Tests 	
	Failures:16 	fix failures 	6 	2011-1-4 	2011-1-11 	In Progress 	50% 	
	Jingdong Lu 	
Command Check 	4.0.0-2 	Failures: 5 	Lsb, cups, mailx, sendmail 	3 
2011-1-12 	2011-1-14 	Not started Yet 	
	BUG 520(Open) 	Jingdong Lu 	
Tcl Tests 	8.5.7-6 	Failures: 126 	fix failures 	5 	2011-1-17 
2011-1-21 	Not started Yet 	
	
	Jingdong Lu 	
Library Check 	4.0.2-1 	Failures: 10+ 	Need package: cups, qt3 	5 
2011-1-12 	2011-1-18 	In Progress 	50% 	
	Jingdong Lu 	Query if we need to handle any QT3 issues

	
	
	
	
	
	
	
	
	
	
	
Desktop Tests 	
	Failures:8 	fix failures 	4 	2010-12-20 	2010-12-29 	Delay 	70% 	BUG 
567(Accepted)
BUG 569(Accepted)
BUG 570(Accepted) 	Xiaofeng Yan 	
Desktop-T2C Tests 	4.0.2-1 	Failures: 1 	fix failures 	4 	2010-12-20 
2010-12-29 	Delay 	70% 	BUG 571(Accepted) 	Xiaofeng Yan 	
Qt4-Azov Tests 	4.0.2-1 	Failures:2 	fix failures 	4 	2010-12-30 
2011-1-5 	Delay 	50% 	
	Xiaofeng Yan 	
Xts5 Tests 	5.1.5-19 	Failures: 11 	fix failures 	5 	2011-1-6 
2010-1-12 	In Progress 	70% 	
	Xiaofeng Yan 	
Core Tests 	4.0.5-1 	Failures: N/A 	fix failures 	7 (?) 	2011-1-21 
2011-1-31 	Not started Yet 	
	
	Xiaofeng Yan 	Blocked by POSIX rename test case
LSB Test Suite 	
	
	creat-lsb-image
LSB_Setup.sh 	0 	
	
	Done 	100% 	
	Xiaofeng Yan 	

	
	
	
	
	
	
	
	
	
	
	
X86_32 LSB Finish Date 	2011-2-11 	
	
	
	
	
	
	
	
	
	
Re-test on X86_64 & ppc Finish Date 	2011-3-11 	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
Yocto M3 Stabilize Finish Date 	2011-2-11 	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
Tested on: (self built LSB image) 	
	
	
	
	
	
	
	
	
	
	



--------------030204070208060306060905
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
</head>
<body text="#000000" bgcolor="#ffffff">
Hi All<br>
<br>
The latest LSB status is below:<br>
<meta http-equiv="CONTENT-TYPE" content="text/html; charset=ISO-8859-1">
<title></title>
<meta name="GENERATOR" content="OpenOffice.org 3.2  (Linux)">
<style>
		<!-- 
		BODY,DIV,TABLE,THEAD,TBODY,TFOOT,TR,TH,TD,P { font-family:"DejaVu Sans"; font-size:x-small }
		 -->
	</style>
<table frame="VOID" rules="NONE" border="0" cellspacing="0" cols="12">
  <colgroup><col width="162"><col width="78"><col width="109"><col
 width="148"><col width="88"><col width="98"><col width="111"><col
 width="88"><col width="206"><col width="178"><col width="92"><col
 width="176"></colgroup> <tbody>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="21"
 valign="TOP" width="162" align="CENTER" bgcolor="#c0c0c0"><b><font
 face="Lucida Sans" size="3">LSB Test Suite</font></b></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 width="78" align="CENTER" bgcolor="#c0c0c0"><b><font face="Lucida Sans"
 size="3">Version</font></b></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 width="109" align="CENTER" bgcolor="#c0c0c0"><b><font
 face="Lucida Sans" size="3">Result</font></b></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 width="148" align="CENTER" bgcolor="#c0c0c0"><b><font
 face="Lucida Sans" size="3">Left work</font></b></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 width="88" align="CENTER" bgcolor="#c0c0c0"><b><font face="&#27704;&#20013;&#23435;&#20307;"
 size="3">May/Days</font></b></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 width="98" align="CENTER" bgcolor="#c0c0c0"><b><font face="&#27704;&#20013;&#23435;&#20307;"
 size="3">Start Date</font></b></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 width="111" align="CENTER" bgcolor="#c0c0c0"><b><font face="&#27704;&#20013;&#23435;&#20307;"
 size="3">Finish Date</font></b></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 width="88" align="CENTER" bgcolor="#c0c0c0"><b><font face="&#27704;&#20013;&#23435;&#20307;"
 size="3">Status</font></b></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" width="206" align="CENTER" bgcolor="#c0c0c0"><b><font
 face="&#27704;&#20013;&#23435;&#20307;" size="3">Completed Percentage</font></b></td>
      <td valign="MIDDLE" width="178" align="CENTER" bgcolor="#c0c0c0"><b><font
 face="&#27704;&#20013;&#23435;&#20307;" size="3">Defects filed</font></b></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 width="92" align="CENTER" bgcolor="#c0c0c0"><b><font face="&#27704;&#20013;&#23435;&#20307;"
 size="3">Developer</font></b></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 width="176" align="CENTER" bgcolor="#c0c0c0"><b><font face="&#27704;&#20013;&#23435;&#20307;"
 size="3">Risk/Issue</font></b></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="21"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Cpp-T2C
Tests</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="CENTER" bgcolor="#339966"><font face="FreeSerif"
 size="3" color="#000000">Passed</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="2"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">2</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40532"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-20</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40533"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-21</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">In Progress</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.9"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#3366ff"><font
 face="FreeSerif" size="3">90%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="21"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Libstdc++
Tests</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font face="FreeSerif" size="3">4.1.0-7</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="CENTER" bgcolor="#339966"><font face="FreeSerif"
 size="3" color="#000000">Passed</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="3"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">3</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40534"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-22</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40536"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-24</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">In Progress</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.9"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#3366ff"><font
 face="FreeSerif" size="3">90%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="21"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Perl Tests</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font face="FreeSerif" size="3">4.0.7-1</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="CENTER" bgcolor="#339966"><font face="FreeSerif"
 size="3" color="#000000">Passed</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">None</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="2"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">2</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40539"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-27</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40540"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-28</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">Done</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="1"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#99cc00"><font
 face="FreeSerif" size="3">100%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="21"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Python
Runtime Tests</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="CENTER" bgcolor="#339966"><font face="FreeSerif"
 size="3" color="#000000">Passed</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="3"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">3</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40541"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-29</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40543"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-31</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">In Progress</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.9"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#3366ff"><font
 face="FreeSerif" size="3">90%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="CENTER"><font face="FreeSerif" size="3">Bug
614(Open)</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="21"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Python
Tests</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font face="FreeSerif" size="3">2.4.5-2</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="CENTER" bgcolor="#339966"><font face="FreeSerif"
 size="3" color="#000000">Passed</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">0</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">In Progress</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.9"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#3366ff"><font
 face="FreeSerif" size="3">90%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="21"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">OLVER
Core Tests</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER" bgcolor="#ff6060"><font face="FreeSerif" size="3">Failures:16</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="6"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">6</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40547"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-4</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40554"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-11</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">In Progress</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.5"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">50%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Command
Check</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font face="FreeSerif" size="3">4.0.0-2</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER" bgcolor="#ff6060"><font face="FreeSerif" size="3">Failures:
5</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">Lsb, cups, mailx,
sendmail</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="3"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">3</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40555"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-12</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40557"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-14</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">Not started Yet</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdnum="2052;0;0%"
 valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="CENTER"><font face="FreeSerif" size="3">BUG
520(Open)</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Tcl Tests</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26);"
 valign="TOP" align="LEFT"><font face="FreeSerif" size="3">8.5.7-6</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER" bgcolor="#ff6060"><font face="FreeSerif" size="3">Failures:
126</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="5"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">5</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40560"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-17</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40564"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-21</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">Not started Yet</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdnum="2052;0;0%"
 valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Library
Check</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER" bgcolor="#ff6060"><font face="FreeSerif" size="3">Failures:
10+</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">Need package: cups, qt3</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="5"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">5</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40555"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-12</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40561"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-18</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">In Progress</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.5"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#3366ff"><font
 face="FreeSerif" size="3">50%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Query if we need to
handle any QT3 issues</font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="20"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdnum="2052;0;0%"
 valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="58"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Desktop
Tests</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER" bgcolor="#ff6060"><font face="FreeSerif" size="3">Failures:8
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="4"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">4</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40532"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-20</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40541"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-29</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">Delay</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.7"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#ffcc99"><font
 face="FreeSerif" size="3">70%</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdnum="2052;0;0%"
 valign="MIDDLE" align="CENTER"><font face="FreeSerif" size="3">BUG
567(Accepted)<br>
BUG 569(Accepted)<br>
BUG 570(Accepted)</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Desktop-T2C
Tests</font></td>
      <td
 style="border-left: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="TOP" align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER" bgcolor="#ff6060"><font face="FreeSerif" size="3">Failures:
1</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="4"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">4</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40532"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-20</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40541"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-29</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">Delay</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.7"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#ffcc99"><font
 face="FreeSerif" size="3">70%</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">BUG 571(Accepted)</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Qt4-Azov
Tests</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER" bgcolor="#ff6060"><font face="FreeSerif" size="3">Failures:2</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="4"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">4</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40542"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-12-30</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40548"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-5</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">Delay</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.5"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#ffcc99"><font
 face="FreeSerif" size="3">50%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Xts5 Tests</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font face="FreeSerif" size="3">5.1.5-19</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER" bgcolor="#ff6060"><font face="FreeSerif" size="3">Failures:
11</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="5"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">5</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40549"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-6</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40190"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2010-1-12</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">In Progress</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0.7"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#3366ff"><font
 face="FreeSerif" size="3">70%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Core Tests</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26);"
 valign="TOP" align="LEFT"><font face="FreeSerif" size="3">4.0.5-1</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER" bgcolor="#ff6060"><font face="FreeSerif" size="3">Failures:
N/A</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="CENTER"><font face="FreeSerif" size="3">7 (?)</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26);"
 sdval="40564" sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-21</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26, 26, 26);"
 sdval="40574" sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-1-31</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">Not started Yet</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdnum="2052;0;0%"
 valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Blocked by POSIX rename
test case</font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">LSB Test
Suite</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
 align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="CENTER"><font face="FreeSerif" size="3">creat-lsb-image <br>
LSB_Setup.sh</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="0"
 sdnum="2052;" valign="MIDDLE" align="CENTER"><font face="FreeSerif"
 size="3">0</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">Done</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="1"
 sdnum="2052;0;0%" valign="MIDDLE" align="CENTER" bgcolor="#94bd5e"><font
 face="FreeSerif" size="3">100%</font></td>
      <td
 style="border-top: 1px solid rgb(26, 26, 26); border-left: 1px solid rgb(26, 26, 26); border-bottom: 1px solid rgb(26, 26, 26);"
 valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
 align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td height="45" valign="TOP" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="CENTER"><font size="3"><br>
      </font></td>
      <td sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 size="3"><br>
      </font></td>
      <td sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 size="3"><br>
      </font></td>
      <td sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">X86_32
LSB Finish Date</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40585"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-2-11</font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Re-test
on X86_64 &amp; ppc Finish Date</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40613"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-3-11</font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td height="20" valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Yocto M3
Stabilize Finish Date</font></td>
      <td style="border: 1px solid rgb(26, 26, 26);" sdval="40585"
 sdnum="2052;0;YYYY-M-D" valign="MIDDLE" align="CENTER"><font
 face="FreeSerif" size="3">2011-2-11</font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td height="20" valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
      <td align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
    <tr>
      <td style="border: 1px solid rgb(26, 26, 26);" height="40"
 valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Tested
on: (self built LSB image)</font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
      <td valign="MIDDLE" align="LEFT"><font size="3"><br>
      </font></td>
    </tr>
  </tbody>
</table>
<br>
</body>
</html>

--------------030204070208060306060905--
