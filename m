Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0FBA44C81065
	for <yocto@yoctoproject.org>; Fri, 21 Jan 2011 01:38:15 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0L7cD9J017531;
	Thu, 20 Jan 2011 23:38:14 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 20 Jan 2011 23:38:13 -0800
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 20 Jan 2011 23:38:12 -0800
Message-ID: <4D393668.2040002@windriver.com>
Date: Fri, 21 Jan 2011 15:31:52 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: yocto@linux.intel.com, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginalArrivalTime: 21 Jan 2011 07:38:13.0127 (UTC)
	FILETIME=[28A60170:01CBB93E]
Subject: Status for lsb test (2011.1.16-2011.1.21)
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
X-List-Received-Date: Fri, 21 Jan 2011 07:38:15 -0000
Content-Type: multipart/alternative;
	boundary="------------040104040704060407060308"

--------------040104040704060407060308
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,
The next table is for the latest lsb test result.(2011.1.16-2011.1.21)


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
	Passed 	submit 	6 	2011-1-4 	2011-1-11 	In Progress 	90% 	
	Jingdong Lu 	
Command Check 	4.0.0-2 	Passed 	Lsb 	3 	2011-1-12 	2011-1-14 	In 
Progress 	90% 	BUG 520(Closed) 	Jingdong Lu 	
Tcl Tests 	8.5.7-6 	Passed 	None 	5 	2011-1-17 	2011-1-21 	Done 	100% 	
	Jingdong Lu 	
Library Check 	4.0.2-1 	Failures: 2 	qt3 	5 	2011-1-12 	2011-1-18 	In 
Progress 	80% 	
	Jingdong Lu 	Query if we need to handle any QT3 issues

	
	
	
	
	
	
	
	
	
	
	
Desktop Tests 	
	Passed 	submit 	4 	2010-12-20 	2010-12-29 	In Progress 	90% 	BUG 
567(Closed)
BUG 569(Closed)
BUG 570(Closed) 	Xiaofeng Yan 	
Desktop-T2C Tests 	4.0.2-1 	Failures: 1 	fix failures 	4 	2010-12-20 
2010-12-29 	Block 	90% 	BUG 571(Accepted) 	Xiaofeng Yan 	Test suite led 
to these failed items.
http://bugs.linuxbase.org/show_bug.cgi?id=3153
Qt4-Azov Tests 	4.0.2-1 	Failures:3 	fix failures 	4 	2010-12-30 
2011-1-5 	Block 	90% 	
	Xiaofeng Yan 	Test suite led to these failed items.
(Qlocale)
http://bugs.linuxbase.org/show_bug.cgi?id=3125
(QmenBar)
http://bugs.linuxbase.org/show_bug.cgi?id=3124
Http://bugs.linuxbase.org/show_bug.cgi?id=3067
Xts5 Tests 	5.1.5-19 	Passed 	submit 	5 	2011-1-6 	2010-1-12 	In 
Progress 	90% 	
	Xiaofeng Yan 	
Core Tests 	4.0.5-1 	Failures: 62 	fix failures 	5 	2011-1-19 
2011-1-25 	In Progress 	20% 	
	Xiaofeng Yan 	
Qt3-Azov Tests 	4 	
	
	
	2011-1-26 	N/A 	Not Start Yet 	
	
	N/A 	
LSB Test Suite 	
	
	creat-lsb-image
LSB_Setup.sh 	0 	
	
	Done 	100% 	
	Xiaofeng Yan 	

	
	
	
	
	
	
	
	
	
	
	
X86_32 LSB Finish Date 	2011-2-11 	
	
	
	
	
	
	
	
	
	
Re-test on X86_64 & ppc Finish Date 	2011-3-11 	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
Yocto M3 Stabilize Finish Date 	2011-2-11 	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
Tested on: (self built LSB image) 	
	
	
	
	
	
	
	
	
	
	



--------------040104040704060407060308
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body text="#000000" bgcolor="#ffffff">
    Hi all,<br>
    The next table is for the latest lsb test
    result.(2011.1.16-2011.1.21)<br>
    <br>
    <br>
    <style>body, div, table, thead, tbody, tfoot, tr, th, td, p { font-family: "DejaVu Sans"; font-size: x-small; }</style>
    <table cols="12" frame="VOID" rules="NONE" border="0"
      cellspacing="0">
      <colgroup><col width="162"><col width="78"><col width="109"><col
          width="148"><col width="95"><col width="109"><col width="117"><col
          width="88"><col width="206"><col width="178"><col width="102"><col
          width="343"></colgroup> <tbody>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="40"
            valign="TOP" width="162" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">LSB Test Suite</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="78" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Version</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="109" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Result</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="148" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Left work</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="95" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">May/Days</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="109" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Start Date</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="117" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Finish Date</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="88" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Status</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="206" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Completed Percentage</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="178" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Defects filed</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="102" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Developer</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="343" align="CENTER" bgcolor="#c0c0c0"><b><font
                face="Lucida Sans" size="3">Risk/Issue</font></b></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Cpp-T2C
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-20</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-21</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Libstdc++
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.1.0-7</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-22</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-24</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Perl
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.7-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">None</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-27</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-28</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#99cc00"><font face="FreeSerif"
              size="3">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Python
              Runtime Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-29</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-31</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Bug 614(Open)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Python
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">2.4.5-2</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">0</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">OLVER
              Core Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">6</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-11</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="39"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Command
              Check</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.0-2</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">Lsb</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-12</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-14</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">BUG 520(Closed)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" height="21" valign="TOP" align="LEFT"><font
              face="FreeSerif" size="3">Tcl Tests</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" align="LEFT"><font face="FreeSerif"
              size="3">8.5.7-6</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">None</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">5</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-17</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-21</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#99cc00"><font face="FreeSerif"
              size="3">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="36"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Library
              Check</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font face="FreeSerif"
              size="3">Failures: 2</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"> qt3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">5</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-12</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-18</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">80%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Query if we
              need to handle any QT3 issues</font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="20"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="51"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Desktop
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-20</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-29</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">BUG
              567(Closed)<br>
              BUG 569(Closed)<br>
              BUG 570(Closed)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-bottom: 1px solid rgb(26, 26, 26);
            border-left: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" height="71" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">Desktop-T2C
              Tests</font></td>
          <td style="border-bottom: 1px solid rgb(26, 26, 26);
            border-left: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="TOP" align="LEFT"><font
              face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font face="FreeSerif"
              size="3">Failures: 1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-20</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-29</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Block</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">BUG
              571(Accepted)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td valign="MIDDLE" align="LEFT">Test suite led to these
            failed items. <br>
            <a class="moz-txt-link-freetext" href="http://bugs.linuxbase.org/show_bug.cgi?id=3153">http://bugs.linuxbase.org/show_bug.cgi?id=3153</a></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="113"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Qt4-Azov
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">4.0.2-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font face="FreeSerif"
              size="3">Failures:3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-12-30</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-5</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Block</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td align="LEFT">Test suite led to these failed items.<br>
            (Qlocale)<br>
            <a class="moz-txt-link-freetext" href="http://bugs.linuxbase.org/show_bug.cgi?id=3125">http://bugs.linuxbase.org/show_bug.cgi?id=3125</a><br>
            (QmenBar)<br>
            <a class="moz-txt-link-freetext" href="http://bugs.linuxbase.org/show_bug.cgi?id=3124">http://bugs.linuxbase.org/show_bug.cgi?id=3124</a><br>
            <a class="moz-txt-link-freetext" href="Http://bugs.linuxbase.org/show_bug.cgi?id=3067">Http://bugs.linuxbase.org/show_bug.cgi?id=3067</a></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="21"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">Xts5
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font face="FreeSerif" size="3">5.1.5-19</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font color="#000000" face="FreeSerif"
              size="3">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">5</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-1-6</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2010-1-12</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" height="21" valign="TOP" align="LEFT"><font
              face="FreeSerif" size="3">Core Tests</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" align="LEFT"><font face="FreeSerif"
              size="3">4.0.5-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font face="FreeSerif"
              size="3">Failures: 62</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">fix failures</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">5</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">2011-1-19</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">2011-1-25</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font face="FreeSerif"
              size="3">20%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" height="40" valign="TOP" align="LEFT"><font
              face="FreeSerif" size="3"> Qt3-Azov Tests</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" align="LEFT"><font face="FreeSerif"
              size="3">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ffffff"><font face="FreeSerif"
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">2011-1-26</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">N/A</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              face="FreeSerif" size="3">Not Start Yet</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ffffff"><font face="FreeSerif"
              size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">N/A</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" height="40"
            valign="TOP" align="LEFT"><font face="FreeSerif" size="3">LSB
              Test Suite</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">creat-lsb-image
              <br>
              LSB_Setup.sh</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">0</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#94bd5e"><font face="FreeSerif"
              size="3">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font face="FreeSerif" size="3"><br>
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
          <td valign="MIDDLE" align="CENTER"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="CENTER"><font size="3"><br>
            </font></td>
          <td valign="MIDDLE" align="CENTER"><font size="3"><br>
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
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-2-11</font></td>
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
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-3-11</font></td>
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
          <td valign="MIDDLE" align="CENTER"><font size="3"><br>
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
            valign="MIDDLE" align="LEFT"><font face="FreeSerif" size="3">Yocto
              M3 Stabilize Finish Date</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font face="FreeSerif" size="3">2011-2-11</font></td>
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

--------------040104040704060407060308--
