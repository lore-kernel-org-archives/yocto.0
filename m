Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F42AE00CFF; Tue,  3 Oct 2017 08:16:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6B97E00CF5
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 08:16:16 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga105.jf.intel.com with ESMTP; 03 Oct 2017 08:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,474,1500966000"; 
	d="scan'208,217";a="158310920"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by fmsmga005.fm.intel.com with ESMTP; 03 Oct 2017 08:16:15 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.234]) by
	FMSMSX108.amr.corp.intel.com ([169.254.9.100]) with mapi id
	14.03.0319.002; Tue, 3 Oct 2017 08:16:15 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting
Thread-Index: AdKtWbwMokvHRUUrQnmf8qT10kd6zw==
Date: Tue, 3 Oct 2017 15:16:14 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E98CE7E8E@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.107]
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
X-List-Received-Date: Tue, 03 Oct 2017 15:16:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E98CE7E8Efmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E98CE7E8Efmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Stephen, Armin, Stephano, Saul, Mark, Michael, Joshua, Robin, Br=
ian, Ulf

Agenda:

* Opens collection - 5 min (Stephen)
* Yocto Project status - 5 min (Stephen/team)
YP 2.2.2 was released.
YP 2.3.2 was released.
YP 2.4 M4 is in QA and 81% complete.  See status at: https://wiki.yoctoproj=
ect.org/wiki/2.4_QA_Status
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.4_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.4_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.4_Features
YP 2.5 planning has begun, please get you enhancement requests into bugzill=
a.

* Opens - 10 min

* Team Sharing - 10 min
Michael - be moving poky contribute for old branches will move to archive. =
 See the e-mail for details.
Ross - Discussed that in the next cycle we will probably move to a better p=
rocess.  In future releases our policy regarding version upgrades will be t=
o identify anything that needs to change in M4 in advance (e.g. kernel or u=
-boot) so this issue becomes clearer and only known changes come in.  This =
process will be documented before we move to it.
Stephen - We introduced Robin who is a new PM for Yocto Project.
ELC-E status - OEDEM will be the Sunday before ELC-E.  We will have an YP T=
ech Day associated with ELC-E also.

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:     (503) 712-0534
*    Cell:              (208) 244-4460
* Email:                stephen.k.jolley@intel.com


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E98CE7E8Efmsmsx111amrcor_
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
endees: Stephen, Armin, Stephano, Saul, Mark, Michael, Joshua, Robin, Brian=
, Ulf</span></font></div>
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
2.2.2 was released.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.3.2 was released.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.4 M4 is in QA and 81% complete.&nbsp; See status at: <a href=3D"https://w=
iki.yoctoproject.org/wiki/2.4_QA_Status"><font face=3D"Arial" color=3D"#115=
5CC"><u>https://wiki.yoctoproject.org/wiki/2.4_QA_Status</u></font></a></sp=
an></font></div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.4_Statu=
s"><font face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-si=
ze:11pt;"><u>https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.4_Status</=
u></span></font></a></div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_2.4_Schedule"><fon=
t face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-size:11pt=
;"><u>https://wiki.yoctoproject.org/wiki/Yocto_2.4_Schedule</u></span></fon=
t></a></div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_2.4_Features"><fon=
t face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-size:11pt=
;"><u>https://wiki.yoctoproject.org/wiki/Yocto_2.4_Features</u></span></fon=
t></a><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.5 planning has begun, please get you enhancement requests into bugzilla.<=
/span></font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* O=
pens - 10 min </span></font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* T=
eam Sharing - 10 min</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Mic=
hael &#8211; be moving poky contribute for old branches will move to archiv=
e.&nbsp; See the e-mail for details.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Ros=
s &#8211; Discussed that in the next cycle we will probably move to a bette=
r process.&nbsp; In future releases our policy regarding version upgrades w=
ill be to identify anything that needs to change
in M4 in advance (e.g. kernel or u-boot) so this issue becomes clearer and =
only known changes come in.&nbsp; This process will be documented before we=
 move to it.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Ste=
phen &#8211; We introduced Robin who is a new PM for Yocto Project. </span>=
</font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">ELC=
-E status &#8211; OEDEM will be the Sunday before ELC-E.&nbsp; We will have=
 an YP Tech Day associated with ELC-E also.</span></font></div>
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
l.com</u></font></span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
</span></font>
</body>
</html>

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E98CE7E8Efmsmsx111amrcor_--
