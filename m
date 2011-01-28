Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECBFE4C81246
	for <yocto@yoctoproject.org>; Fri, 28 Jan 2011 03:51:22 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0S9pMam026585;
	Fri, 28 Jan 2011 01:51:22 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 28 Jan 2011 01:51:21 -0800
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 28 Jan 2011 01:51:20 -0800
Message-ID: <4D429139.4080007@windriver.com>
Date: Fri, 28 Jan 2011 17:49:45 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: yocto@linux.intel.com, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginalArrivalTime: 28 Jan 2011 09:51:20.0403 (UTC)
	FILETIME=[EA53DA30:01CBBED0]
Subject: Status for lsb test (2011.1.23-2011.1.28)
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
X-List-Received-Date: Fri, 28 Jan 2011 09:51:23 -0000
Content-Type: multipart/alternative;
	boundary="------------000104010309070905050608"

--------------000104010309070905050608
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,
The next table is for the latest lsb test result.

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
Desktop-T2C Tests 	4.0.2-1 	Failures: 1 	Lsb test suite 	4 	2010-12-20 
2010-12-29 	Block 	90% 	BUG 571(Accepted) 	Xiaofeng Yan 	Test suite led 
to these failed items.
http://bugs.linuxbase.org/show_bug.cgi?id=3153
Qt4-Azov Tests 	4.0.2-1 	Failures:3 	Lsb test suite 	4 	2010-12-30 
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
Core Tests 	4.0.5-1 	Failures: 25 	fix failures 	5 	2011-1-19 
2011-1-25 	Delay 	50% 	
	Xiaofeng Yan 	Test suite led to these failed items.
T.c_iflag
http://bugs.linuxbase.org/show_bug.cgi?id=3033
T.tcgetattr
http://bugs.linuxbase.org/show_bug.cgi?id=3033
http://bugs.linuxbase.org/show_bug.cgi?id=2071
Qt3-Azov Tests 	4 	
	
	
	N/A 	N/A 	Not Start Yet 	
	
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
	
	
	
	
	
	
	
	
	
	



--------------000104010309070905050608
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body text="#000000" bgcolor="#ffffff">
    Hi all,<br>
    The next table is for the latest lsb test result. <br>
    <br>
    <style>body, div, table, thead, tbody, tfoot, tr, th, td, p { font-family: "DejaVu Sans"; font-size: x-small; }</style>
    <table rules="NONE" cols="12" frame="VOID" border="0"
      cellspacing="0">
      <colgroup><col width="162"><col width="78"><col width="109"><col
          width="148"><col width="95"><col width="109"><col width="117"><col
          width="88"><col width="206"><col width="178"><col width="102"><col
          width="343"></colgroup> <tbody>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="162" height="40" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">LSB Test Suite</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="78" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Version</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="109" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Result</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="148" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Left work</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="95" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">May/Days</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="109" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Start Date</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="117" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Finish Date</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="88" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Status</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="206" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Completed Percentage</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="178" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Defects filed</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="102" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Developer</font></b></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            width="343" align="CENTER" bgcolor="#c0c0c0"><b><font
                size="3" face="Lucida Sans">Risk/Issue</font></b></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="21" align="LEFT"><font size="3" face="FreeSerif">Cpp-T2C
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif">4.0.2-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-20</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-21</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="21" align="LEFT"><font size="3" face="FreeSerif">Libstdc++
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif">4.1.0-7</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-22</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-24</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="21" align="LEFT"><font size="3" face="FreeSerif">Perl
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif">4.0.7-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">None</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-27</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-28</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#99cc00"><font size="3"
              face="FreeSerif">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="21" align="LEFT"><font size="3" face="FreeSerif">Python
              Runtime Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif">4.0.2-1</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-29</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-31</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">Bug 614(Open)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="21" align="LEFT"><font size="3" face="FreeSerif">Python
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif">2.4.5-2</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">0</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="21" align="LEFT"><font size="3" face="FreeSerif">OLVER
              Core Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">6</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-11</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="39" align="LEFT"><font size="3" face="FreeSerif">Command
              Check</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif">4.0.0-2</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">Lsb</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-12</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-14</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">BUG 520(Closed)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" height="21" align="LEFT"><font
              size="3" face="FreeSerif">Tcl Tests</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" align="LEFT"><font size="3"
              face="FreeSerif">8.5.7-6</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">None</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">5</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-17</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-21</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#99cc00"><font size="3"
              face="FreeSerif">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="36" align="LEFT"><font size="3" face="FreeSerif">Library
              Check</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif">4.0.2-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font size="3"
              face="FreeSerif">Failures: 2</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"> qt3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">5</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-12</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-18</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">80%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Jingdong Lu</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Query if we
              need to handle any QT3 issues</font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="20" align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="51" align="LEFT"><font size="3" face="FreeSerif">Desktop
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-20</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-29</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">BUG
              567(Closed)<br>
              BUG 569(Closed)<br>
              BUG 570(Closed)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-bottom: 1px solid rgb(26, 26, 26);
            border-left: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="TOP" height="71"
            align="LEFT"><font size="3" face="FreeSerif">Desktop-T2C
              Tests</font></td>
          <td style="border-bottom: 1px solid rgb(26, 26, 26);
            border-left: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="TOP" align="LEFT"><font
              size="3" face="FreeSerif">4.0.2-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font size="3"
              face="FreeSerif">Failures: 1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">Lsb test
              suite</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-20</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-29</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">Block</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">BUG
              571(Accepted)</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(0, 0, 0);" valign="MIDDLE"
            align="LEFT">Test suite led to these failed items. <br>
            <a class="moz-txt-link-freetext" href="http://bugs.linuxbase.org/show_bug.cgi?id=3153">http://bugs.linuxbase.org/show_bug.cgi?id=3153</a></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="113" align="LEFT"><font size="3" face="FreeSerif">Qt4-Azov
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif">4.0.2-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font size="3"
              face="FreeSerif">Failures:3</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">Lsb test
              suite</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-12-30</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-5</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">Block</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(0, 0, 0);" align="LEFT">Test
            suite led to these failed items.<br>
            (Qlocale)<br>
            <a class="moz-txt-link-freetext" href="http://bugs.linuxbase.org/show_bug.cgi?id=3125">http://bugs.linuxbase.org/show_bug.cgi?id=3125</a><br>
            (QmenBar)<br>
            <a class="moz-txt-link-freetext" href="http://bugs.linuxbase.org/show_bug.cgi?id=3124">http://bugs.linuxbase.org/show_bug.cgi?id=3124</a><br>
            <a class="moz-txt-link-freetext" href="Http://bugs.linuxbase.org/show_bug.cgi?id=3067">Http://bugs.linuxbase.org/show_bug.cgi?id=3067</a></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="21" align="LEFT"><font size="3" face="FreeSerif">Xts5
              Tests</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3" face="FreeSerif">5.1.5-19</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-right: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"
            bgcolor="#339966"><font size="3" color="#000000"
              face="FreeSerif">Passed</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">submit</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">5</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-1-6</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2010-1-12</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">In Progress</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#3366ff"><font size="3"
              face="FreeSerif">90%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" height="125" align="LEFT"><font
              size="3" face="FreeSerif">Core Tests</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" align="LEFT"><font size="3"
              face="FreeSerif">4.0.5-1</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ff6060"><font size="3"
              face="FreeSerif">Failures: 25</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">fix failures</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font size="3"
              face="FreeSerif">5</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font size="3"
              face="FreeSerif">2011-1-19</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font size="3"
              face="FreeSerif">2011-1-25</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">Delay</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ffcc99"><font size="3"
              face="FreeSerif">50%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Test suite led
              to these failed items.<br>
              T.c_iflag<br>
              <a class="moz-txt-link-freetext" href="http://bugs.linuxbase.org/show_bug.cgi?id=3033">http://bugs.linuxbase.org/show_bug.cgi?id=3033</a><br>
              T.tcgetattr<br>
              <a class="moz-txt-link-freetext" href="http://bugs.linuxbase.org/show_bug.cgi?id=3033">http://bugs.linuxbase.org/show_bug.cgi?id=3033</a><br>
              <a class="moz-txt-link-freetext" href="http://bugs.linuxbase.org/show_bug.cgi?id=2071">http://bugs.linuxbase.org/show_bug.cgi?id=2071</a><br>
            </font></td>
        </tr>
        <tr>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" height="43" align="LEFT"><font
              size="3" face="FreeSerif"> Qt3-Azov Tests</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="TOP" align="LEFT"><font size="3"
              face="FreeSerif">4</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ffffff"><font size="3"
              face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font size="3"
              face="FreeSerif"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font size="3"
              face="FreeSerif">N/A</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26); border-right: 1px solid rgb(26,
            26, 26);" valign="MIDDLE" align="CENTER"><font size="3"
              face="FreeSerif">N/A</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="CENTER"><font
              size="3" face="FreeSerif">Not Start Yet</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#ffffff"><font size="3"
              face="FreeSerif"><br>
            </font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26); border-left:
            1px solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">N/A</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            height="40" align="LEFT"><font size="3" face="FreeSerif">LSB
              Test Suite</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="TOP"
            align="LEFT"><font size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">creat-lsb-image
              <br>
              LSB_Setup.sh</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">0</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">Done</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER" bgcolor="#94bd5e"><font size="3"
              face="FreeSerif">100%</font></td>
          <td style="border-top: 1px solid rgb(26, 26, 26);
            border-bottom: 1px solid rgb(26, 26, 26); border-left: 1px
            solid rgb(26, 26, 26);" valign="MIDDLE" align="LEFT"><font
              size="3"><br>
            </font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif">Xiaofeng Yan</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="LEFT"><font size="3" face="FreeSerif"><br>
            </font></td>
        </tr>
        <tr>
          <td valign="TOP" height="45" align="LEFT"><font size="3"><br>
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
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            height="40" align="LEFT"><font size="3" face="FreeSerif">X86_32
              LSB Finish Date</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-2-11</font></td>
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
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            height="40" align="LEFT"><font size="3" face="FreeSerif">Re-test
              on X86_64 &amp; ppc Finish Date</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-3-11</font></td>
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
          <td valign="MIDDLE" height="20" align="LEFT"><font size="3"><br>
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
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            height="40" align="LEFT"><font size="3" face="FreeSerif">Yocto
              M3 Stabilize Finish Date</font></td>
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            align="CENTER"><font size="3" face="FreeSerif">2011-2-11</font></td>
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
          <td valign="MIDDLE" height="20" align="LEFT"><font size="3"><br>
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
          <td style="border: 1px solid rgb(26, 26, 26);" valign="MIDDLE"
            height="40" align="LEFT"><font size="3" face="FreeSerif">Tested
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

--------------000104010309070905050608--
