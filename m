Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C329E009CB; Tue,  7 Nov 2017 08:28:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ED1FE00928
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 08:28:14 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Nov 2017 08:28:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,359,1505804400"; d="scan'208,217";a="4558423"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2017 08:28:12 -0800
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
	fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 7 Nov 2017 08:28:12 -0800
Received: from fmsmsx112.amr.corp.intel.com ([169.254.5.121]) by
	fmsmsx116.amr.corp.intel.com ([169.254.2.135]) with mapi id
	14.03.0319.002; Tue, 7 Nov 2017 08:28:11 -0800
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting
Thread-Index: AdKtWbwMokvHRUUrQnmf8qT10kd6zw==
Date: Tue, 7 Nov 2017 16:28:11 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155EC71B5760@FMSMSX112.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 07 Nov 2017 16:28:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC71B5760FMSMSX112amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC71B5760FMSMSX112amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Stephen, Joshua L., Armin, Stephano, Michael, Brian, Richard, Jo=
shua W., Mark, Patrick, Pascal, Randy, Saul, Manju,

Agenda:

* Yocto Project status - 5 min (Stephen/team)
*       YP 2.4 (Rocko) Final was released on Thursday Oct. 26th.  It provid=
es a number of key new features including upgrades to the kernel, gcc, glib=
c, and many new recipes.  It also includes improvements to Python 3, go sup=
port, wic, devtool, Bitbake server and significant improvements to automate=
d QA testing, both in coverage and performance.
*       YP 2.5 planning is in process, please get you enhancement requests =
into bugzilla.
*       YP 2.2.3 (Morty) is planned to be built and sent to QA shortly.

* Opens - 10 min
*       Richard - Discussed issues of intermittent failures on the AutoBuil=
der.  See Weekly Status report for details. Removed Fedora 25 build machine=
s since it is EOL shortly and was failing. May have a fix for the SUSE buil=
ders' intermittent failures.  Master and the other branches are not frozen,=
 but it is making merging patches quite slow.

* Team Sharing - 10 min
*       Richard - Discussed focus for YP 2.5 but not yet finalized the them=
es yet.  Container improvements, YP compatible V2, Layer Setup efforts, Tes=
t automation improvements, software update tools.
*       Richard - Discussed removing gcc 6 from YP 2.5.
*       Randy - Discuss limiting supported kernels to 2 per release, but so=
me have had 3 and Pyro had 4 which produced a lot of support issues.
*       Richard - Discussed distributed builds, but multi-config needs to b=
e finished and we don't have the resources to complete at this time and don=
't want to do an incomplete job.
*       Richard - Would like to add more layers to our QA testing, but not =
sure we have the bandwidth at this time to do it.

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:             (503) 712-0534
*    Cell:                                      (208) 244-4460
* Email:                                stephen.k.jolley@intel.com


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC71B5760FMSMSX112amrcor_
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
endees: Stephen, Joshua L., Armin, Stephano, Michael, Brian, Richard, Joshu=
a W., Mark, Patrick, Pascal, Randy, Saul, Manju, </span></font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Age=
nda:</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">&nb=
sp;</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* Y=
octo Project status - 5 min (Stephen/team)</span></font></div>
<ul style=3D"margin:0;padding-left:36pt;">
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<li>YP 2.4 (Rocko) Final was released on Thursday Oct. 26th.&nbsp; It provi=
des a number of key new features including upgrades to the kernel, gcc, gli=
bc, and many new recipes.&nbsp; It also includes improvements to Python 3, =
go support, wic, devtool, Bitbake server and
significant improvements to automated QA testing, both in coverage and perf=
ormance.</li><li>YP 2.5 planning is in process, please get you enhancement =
requests into bugzilla.</li><li>YP 2.2.3 (Morty) is planned to be built and=
 sent to QA shortly. </li></span></font>
</ul>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* O=
pens - 10 min </span></font></div>
<ul style=3D"margin:0;padding-left:36pt;">
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<li>Richard &#8211; Discussed issues of intermittent failures on the AutoBu=
ilder.&nbsp; See Weekly Status report for details. Removed Fedora 25 build =
machines since it is EOL shortly and was failing. May have a fix for the SU=
SE builders&#8217; intermittent failures.&nbsp; Master
and the other branches are not frozen, but it is making merging patches qui=
te slow. </li></span></font>
</ul>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* T=
eam Sharing - 10 min</span></font></div>
<ul style=3D"margin:0;padding-left:36pt;">
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<li>Richard &#8211; Discussed focus for YP 2.5 but not yet finalized the th=
emes yet.&nbsp; Container improvements, YP compatible V2, Layer Setup effor=
ts, Test automation improvements, software update tools. </li><li>Richard &=
#8211; Discussed removing gcc 6 from YP 2.5. </li><li>Randy &#8211; Discuss=
 limiting supported kernels to 2 per release, but some have had 3 and Pyro =
had 4 which produced a lot of support issues.</li><li>Richard &#8211; Discu=
ssed distributed builds, but multi-config needs to be finished and we don&#=
8217;t have the resources to complete at this time and don&#8217;t want to =
do an incomplete job.</li><li>Richard &#8211; Would like to add more layers=
 to our QA testing, but not sure we have the bandwidth at this time to do i=
t. </li></span></font>
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

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC71B5760FMSMSX112amrcor_--
