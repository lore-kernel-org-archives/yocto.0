Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A154E00B5F; Tue,  5 Dec 2017 08:26:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEC7EE00AD7
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 08:26:43 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Dec 2017 08:26:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,364,1508828400"; 
	d="scan'208,217";a="183889648"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga005.fm.intel.com with ESMTP; 05 Dec 2017 08:26:43 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 5 Dec 2017 08:26:43 -0800
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.234]) by
	fmsmsx156.amr.corp.intel.com ([169.254.13.63]) with mapi id
	14.03.0319.002; Tue, 5 Dec 2017 08:26:42 -0800
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting
Thread-Index: AdKtWbwMokvHRUUrQnmf8qT10kd6zw==
Date: Tue, 5 Dec 2017 16:26:42 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155EC71E0500@fmsmsx111.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 05 Dec 2017 16:26:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC71E0500fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC71E0500fmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Stephen, Saul, Stephano, Aaron, Richard, Armin, Rob, Brian, Chin=
 Huat, Patrick, Randy, Mark, Ross, Christian, Joshua W., wmills, Michael,

Agenda:

* Yocto Project status - 5 min (Stephen/team)
*       YP 2.5 M1 is getting ready to build, but the build/test environment=
 is not stable. This has slowed the patch merging and so we haven't built i=
t yet.
*       YP 2.2.3 and YP 2.3.3 are also seeing build/test issues and have no=
t been sent to QA yet. If we root cause the issues we might get the milesto=
ne and/or dot releases into QA.
*       YP 2.4.1 should go into QA shortly if we get a successful build, we=
 has good builds recently.

* Opens - 10 min
*       Richard - Discussed issues with build environment and issues we are=
 seeing. See weekly status for details on these issues.

* Team Sharing - 10 min
*       Saul - Discussed that we should move the kernel from 4.12 to 4.14 i=
n YP 2.5.  Bruce will drive this update.
*       Armin - YP 2.4.1 (Rocko) is ready to build.  YP 2.3.3 (Pyro) is not=
 yet ready build failures. YP 2.2.3 (Morty) is also not ready yet due to a =
smart issue.
*       Richard - Discussed that YP Compatibility v2 is not ready to go int=
o YP 2.5 yet, due to the fact that Richard has focused the last few weeks o=
n getting the build/test environment stable.

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:             (503) 712-0534
*    Cell:                                      (208) 244-4460
* Email:                                stephen.k.jolley@intel.com


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC71E0500fmsmsx111amrcor_
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
endees: Stephen, Saul, Stephano, Aaron, Richard, Armin, Rob, Brian, Chin Hu=
at, Patrick, Randy, Mark, Ross, Christian, Joshua W., wmills, Michael, </sp=
an></font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Age=
nda:</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">&nb=
sp;</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* Y=
octo Project status - 5 min (Stephen/team)</span></font></div>
<ul style=3D"margin:0;padding-left:36pt;">
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<li>YP 2.5 M1 is getting ready to build, but the build/test environment is =
not stable. This has slowed the patch merging and so we haven&#8217;t built=
 it yet.</li><li>YP 2.2.3 and YP 2.3.3 are also seeing build/test issues an=
d have not been sent to QA yet. If we root cause the issues we might get th=
e milestone and/or dot releases into QA.</li><li>YP 2.4.1 should go into QA=
 shortly if we get a successful build, we has good builds recently.</li></s=
pan></font>
</ul>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* O=
pens - 10 min </span></font></div>
<ul style=3D"margin:0;padding-left:36pt;">
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<li>Richard &#8211; Discussed issues with build environment and issues we a=
re seeing. See weekly status for details on these issues. </li></span></fon=
t>
</ul>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* T=
eam Sharing - 10 min</span></font></div>
<ul style=3D"margin:0;padding-left:36pt;">
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<li>Saul &#8211; Discussed that we should move the kernel from 4.12 to 4.14=
 in YP 2.5.&nbsp; Bruce will drive this update. </li><li>Armin &#8211; YP 2=
.4.1 (Rocko) is ready to build.&nbsp; YP 2.3.3 (Pyro) is not yet ready buil=
d failures. YP 2.2.3 (Morty) is also not ready yet due to a smart issue. </=
li><li>Richard &#8211; Discussed that YP Compatibility v2 is not ready to g=
o into YP 2.5 yet, due to the fact that Richard has focused the last few we=
eks on getting the build/test environment stable.</li></span></font>
</ul>
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
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </fon=
t><font face=3D"MS Sans Serif" size=3D"2" color=3D"#1F497D"><span style=3D"=
font-size:9pt;">(503) 712-0534</span></font></span></font></div>
<div><font size=3D"2"><span style=3D"font-size:9pt;"><font face=3D"Wingding=
s">(</font><font face=3D"MS Sans Serif" color=3D"teal">&nbsp;&nbsp;&nbsp; <=
/font><font face=3D"Comic Sans MS" size=3D"1" color=3D"teal"><span style=3D=
"font-size:8pt;"><b>Cell</b></span></font><font face=3D"MS Sans Serif" colo=
r=3D"teal">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;
</font><font face=3D"MS Sans Serif" color=3D"#1F497D">(208) 244-4460</font>=
</span></font></div>
<div><font size=3D"2" color=3D"#1F497D"><span style=3D"font-size:9pt;"><fon=
t face=3D"Wingdings">* </font><font face=3D"Comic Sans MS" size=3D"1" color=
=3D"teal"><span style=3D"font-size:8pt;"><b>Email</b></span></font><font fa=
ce=3D"MS Sans Serif" color=3D"teal">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</font><font face=3D"MS Sans Serif" color=3D"blue"><u>stephen.k.jolley@inte=
l.com</u></font></span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
</span></font>
</body>
</html>

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC71E0500fmsmsx111amrcor_--
