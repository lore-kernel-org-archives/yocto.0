Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A32C9E00985; Tue,  2 May 2017 08:27:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DF7DE00852
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 08:27:23 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 May 2017 08:27:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,405,1491289200"; d="scan'208,217";a="82885155"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by orsmga004.jf.intel.com with ESMTP; 02 May 2017 08:27:22 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.19]) by
	FMSMSX103.amr.corp.intel.com ([169.254.2.246]) with mapi id
	14.03.0319.002; Tue, 2 May 2017 08:27:22 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting
Thread-Index: AdKtWbwMokvHRUUrQnmf8qT10kd6zw==
Date: Tue, 2 May 2017 15:27:21 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E8EDD5A67@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmRjYjc3YWYtODRjYS00ZTkxLWFhYjAtMGFiZTQ4Mzc5NTIzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6IjI0eVdhZUlKZm5kSXlKRERVM0lCNDZ5bDJLMjVIVFNcLzBqVHFsK2V2MEJzPSJ9
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 May 2017 15:27:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E8EDD5A67fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E8EDD5A67fmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Joshua Watt, David, Stephen, Patrick, Ross, Michael, Bill, Richa=
rd, Jefro, Brian, Randy, Juan, Joshua Lock, Stephano, Pascal, Jair, Zach, L=
eo,

Agenda:

* Opens collection - 5 min (Stephen)
* Yocto Project status - 5 min (Stephen/team)
YP 2.3 M4 rc4 is in QA - https://wiki.yoctoproject.org/wiki/2.3_QA_Status#S=
ummary_Report.

https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features

YP 2.4 Planning is underway.  Please enter you enhancement requests into Bu=
gzilla.
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.4_Status (Not yet avail=
able)
https://wiki.yoctoproject.org/wiki/Yocto_2.4_Schedule (Not yet available)
https://wiki.yoctoproject.org/wiki/Yocto_2.4_Features

* Opens - 10 min
Discussed Documentation status for YP 2.3.  It is still in process.
Discussed YP 2.4 high level tasks.  Currently planning a complete document =
review, new web site, and high level layer tool for bitbake support.  Theme=
s might be project public presentation and improved usability of the projec=
t. They are still under discussion.

* Team Sharing - 10 min
We discussed that we are considering doing an YP 2.1.3 and 2.2.2 soon.   YP=
 2.1.3 would be the last release in the 2.1.x series.
We discussed RSS (Recipe Specific Sysroots) and Gcc 7.x status. Gcc 7.x sho=
uldn't be a major issue and early in 2.4.

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:     (503) 712-0534
*    Cell:              (208) 244-4460
* Email:                stephen.k.jolley@intel.comYP


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E8EDD5A67fmsmsx111amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12pt;"><=
a name=3D"_MailEndCompose"></a>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Att=
endees: Joshua Watt, David, Stephen, Patrick, Ross, Michael, Bill, Richard,=
 Jefro, Brian, Randy, Juan, Joshua Lock, Stephano, Pascal, Jair, Zach, Leo,=
 </span></font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Age=
nda:</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">&nb=
sp;</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* O=
pens collection - 5 min (Stephen)</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* Y=
octo Project status - 5 min (Stephen/team)</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.3 M4 rc4 is in QA - <a href=3D"https://wiki.yoctoproject.org/wiki/2.3_QA_=
Status#Summary_Report"><font color=3D"blue"><u>https://wiki.yoctoproject.or=
g/wiki/2.3_QA_Status#Summary_Report</u></font></a><font color=3D"#1F497D">.
</font> </span></font></div>
<div>&nbsp;</div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Statu=
s"><font face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-si=
ze:11pt;"><u>https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status</=
u></span></font></a></div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule"><fon=
t face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-size:11pt=
;"><u>https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule</u></span></fon=
t></a></div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features"><fon=
t face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-size:11pt=
;"><u>https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features</u></span></fon=
t></a><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
</span></font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.4 Planning is underway.&nbsp; Please enter you enhancement requests into =
Bugzilla.</span></font></div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.4_Statu=
s"><font face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-si=
ze:11pt;"><u>https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.4_Status</=
u></span></font></a><font face=3D"Consolas" size=3D"2" color=3D"#1F497D"><s=
pan style=3D"font-size:11pt;">
(Not yet available)</span></font></div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_2.4_Schedule"><fon=
t face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-size:11pt=
;"><u>https://wiki.yoctoproject.org/wiki/Yocto_2.4_Schedule</u></span></fon=
t></a><font face=3D"Consolas" size=3D"2" color=3D"#1F497D"><span style=3D"f=
ont-size:11pt;">
(Not yet available)</span></font></div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_2.4_Features"><fon=
t face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-size:11pt=
;"><u>https://wiki.yoctoproject.org/wiki/Yocto_2.4_Features</u></span></fon=
t></a></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* O=
pens - 10 min </span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Dis=
cussed Documentation status for YP 2.3.&nbsp; It is still in process. </spa=
n></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Dis=
cussed YP 2.4 high level tasks.&nbsp; Currently planning a complete documen=
t review, new web site, and high level layer tool for bitbake support.&nbsp=
; Themes might be project public presentation and
improved usability of the project. They are still under discussion.</span><=
/font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* T=
eam Sharing - 10 min</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">We =
discussed that we are considering doing an YP 2.1.3 and 2.2.2 soon.&nbsp;&n=
bsp; YP 2.1.3 would be the last release in the 2.1.x series. </span></font>=
</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">We =
discussed RSS (Recipe Specific Sysroots) and Gcc 7.x status. Gcc 7.x should=
n&#8217;t be a major issue and early in 2.4.&nbsp;  </span></font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Tha=
nks,</span></font></div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#1F497D"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font size=3D"4" color=3D"purple"><span style=3D"font-size:16pt;"><b><=
i>Stephen K. Jolley</i></b></span></font></div>
<div><font face=3D"Courier New" size=3D"1" color=3D"blue"><span style=3D"fo=
nt-size:8pt;"><b>Yocto Project Program Manager</b></span></font></div>
<div><font face=3D"Courier New" size=3D"2" color=3D"fuchsia"><span style=3D=
"font-size:10pt;"><b>INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, O=
R 97124 </b></span></font></div>
<div><font size=3D"2"><span style=3D"font-size:11pt;"><font face=3D"Wingdin=
gs">(</font><font face=3D"MS Sans Serif" color=3D"teal"> </font><font face=
=3D"MS Sans Serif" size=3D"1" color=3D"teal"><span style=3D"font-size:8pt;"=
>&nbsp; </span></font><font face=3D"Comic Sans MS" size=3D"1" color=3D"teal=
"><span style=3D"font-size:8pt;"><b>Work
Telephone</b></span></font><font face=3D"MS Sans Serif" color=3D"teal">:&nb=
sp;&nbsp;&nbsp;&nbsp; </font><font face=3D"MS Sans Serif" size=3D"2" color=
=3D"#1F497D"><span style=3D"font-size:9pt;">(503) 712-0534</span></font></s=
pan></font></div>
<div><font size=3D"2"><span style=3D"font-size:9pt;"><font face=3D"Wingding=
s">(</font><font face=3D"MS Sans Serif" color=3D"teal">&nbsp;&nbsp;&nbsp; <=
/font><font face=3D"Comic Sans MS" size=3D"1" color=3D"teal"><span style=3D=
"font-size:8pt;"><b>Cell</b></span></font><font face=3D"MS Sans Serif" colo=
r=3D"teal">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;
</font><font face=3D"MS Sans Serif" color=3D"#1F497D">(208) 244-4460</font>=
</span></font></div>
<div><font size=3D"2" color=3D"#1F497D"><span style=3D"font-size:9pt;"><fon=
t face=3D"Wingdings">* </font><font face=3D"Comic Sans MS" size=3D"1" color=
=3D"teal"><span style=3D"font-size:8pt;"><b>Email</b></span></font><font fa=
ce=3D"MS Sans Serif" color=3D"teal">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</font><font face=3D"MS Sans Serif" color=3D"blue"><u>stephen.k.jolley@inte=
l.com</u></font><font face=3D"Arial" size=3D"3"><span style=3D"font-size:12=
pt;">YP</span></font></span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
</span></font>
</body>
</html>

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E8EDD5A67fmsmsx111amrcor_--
