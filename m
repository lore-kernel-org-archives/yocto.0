Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4157FE00C7A; Tue, 11 Jul 2017 08:17:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E930E00B31
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 08:17:06 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jul 2017 08:17:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,347,1496127600"; 
	d="scan'208,217";a="123827245"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by orsmga005.jf.intel.com with ESMTP; 11 Jul 2017 08:17:04 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.210]) by
	fmsmsx107.amr.corp.intel.com ([169.254.6.4]) with mapi id
	14.03.0319.002; Tue, 11 Jul 2017 08:17:03 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting
Thread-Index: AdKtWbwMokvHRUUrQnmf8qT10kd6zw==
Date: Tue, 11 Jul 2017 15:17:02 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E9821CDDE@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
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
X-List-Received-Date: Tue, 11 Jul 2017 15:17:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E9821CDDEfmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E9821CDDEfmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Saul, Stephen, Joshua L., Richard, Paul, Stephano, Joshua W., Ro=
ss, Libby, Trevor, Christopher,

Agenda:

* Opens collection - 5 min (Stephen)
* Yocto Project status - 5 min (Stephen/team)
YP 2.4 M1 has been released
YP 2.1.3 has been released
YP 2.3.1 and YP 2.2.2 are still planned, but not yet ready to be built.
YP 2.4 M2 is planned to be built next week.

https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.4_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.4_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.4_Features

* Opens - 10 min

https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

* Team Sharing - 10 min
Richard - Continuing on with the project.  GCC upgrades and tools hardening=
.  Still debating Memory Resident Bitbake to be default in M2.
Paul - Discussed that no one has complained about Memres yet, but have peop=
le been testing it?  Discussed the pro's and con's of using Memres.

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:     (503) 712-0534
*    Cell:              (208) 244-4460
* Email:                stephen.k.jolley@intel.comYP


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E9821CDDEfmsmsx111amrcor_
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
endees: Saul, Stephen, Joshua L., Richard, Paul, Stephano, Joshua W., Ross,=
 Libby, Trevor, Christopher, </span></font></div>
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
2.4 M1 has been released</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.1.3 has been released</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.3.1 and YP 2.2.2 are still planned, but not yet ready to be built.</span>=
</font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.4 M2 is planned to be built next week.</span></font></div>
<div>&nbsp;</div>
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
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* O=
pens - 10 min </span></font></div>
<div>&nbsp;</div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/Stable_branch_maintenanc=
e"><font face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-si=
ze:11pt;"><u>https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance</=
u></span></font></a></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* T=
eam Sharing - 10 min</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Ric=
hard &#8211; Continuing on with the project.&nbsp; GCC upgrades and tools h=
ardening.&nbsp; Still debating Memory Resident Bitbake to be default in M2.=
 </span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Pau=
l &#8211; Discussed that no one has complained about Memres yet, but have p=
eople been testing it?&nbsp; Discussed the pro&#8217;s and con&#8217;s of u=
sing Memres.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">&nb=
sp;</span></font></div>
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

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E9821CDDEfmsmsx111amrcor_--
