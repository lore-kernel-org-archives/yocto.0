Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 055BEE00995; Tue,  4 Apr 2017 08:40:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C884E0095F
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 08:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491320426; x=1522856426;
	h=from:to:subject:date:message-id:mime-version;
	bh=ZQdnCw8RiZEQBrbnAtp7q3YQzQ/fntsobhGlpI+O2lU=;
	b=BBgqHzBmulKnjdTfIQ0cUk3D5jdxn66ejozpGvtq4WQKOCXBRibmQe8B
	rKQJAy8SGyhbXmkeY6UMtxYogWrAUQ==;
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Apr 2017 08:40:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,275,1486454400"; 
	d="scan'208,217";a="1130809583"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2017 08:40:25 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
	fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 4 Apr 2017 08:40:25 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.19]) by
	fmsmsx120.amr.corp.intel.com ([169.254.15.77]) with mapi id
	14.03.0319.002; Tue, 4 Apr 2017 08:40:24 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting
Thread-Index: AdKtWbwMokvHRUUrQnmf8qT10kd6zw==
Date: Tue, 4 Apr 2017 15:40:24 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155E8EDB2FB1@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmRjYjc3YWYtODRjYS00ZTkxLWFhYjAtMGFiZTQ4Mzc5NTIzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6IjI0eVdhZUlKZm5kSXlKRERVM0lCNDZ5bDJLMjVIVFNcLzBqVHFsK2V2MEJzPSJ9
x-originating-ip: [10.1.200.108]
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
X-List-Received-Date: Tue, 04 Apr 2017 15:40:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155E8EDB2FB1fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E8EDB2FB1fmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Stephen, Armin, Richard, Stephano, Joshua, Mark, Saul, Randy, Ro=
ss, TLwoerner, Svein,

Agenda:

* Opens collection - 5 min (Stephen)
* Yocto Project status - 5 min (Stephen/team)
YP 2.3 M3 rc2 is in QA - https://wiki.yoctoproject.org/wiki/2.3_QA_Status#S=
ummary_Report.  We believe we have a work around for the blocking issue, st=
ill TBD.
YP 2.3 M4 cut off is 4/10.
YP 2.4 Planning is underway.  Please enter you enhancement requests into Bu=
gzilla.
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features
* Opens - 10 min
Discussed plans for YP 2.4. Parallel builds and reproducible builds are und=
er discussion.  Removing dependencies on Python 2.x. Better layer support. =
 A number of improvements for ease of use and reliability are being conside=
red.
* Team Sharing - 10 min
Stephano - Started a page on the wiki for newcomers.  Links and pointers to=
 presentations given about YP.  Discussed how to get new people into suppor=
ting YP. We agreed to start with a white board entry of NEWCOMERS to key th=
ese items in bugzilla.  Mostly Bugzilla enchantments should be targeted.

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:     (503) 712-0534
*    Cell:              (208) 244-4460
* Email:                stephen.k.jolley@intel.comYP


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E8EDB2FB1fmsmsx111amrcor_
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
endees: Stephen, Armin, Richard, Stephano, Joshua, Mark, Saul, Randy, Ross,=
 TLwoerner, Svein, </span></font></div>
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
2.3 M3 rc2 is in QA - <a href=3D"https://wiki.yoctoproject.org/wiki/2.3_QA_=
Status#Summary_Report"><font color=3D"blue"><u>https://wiki.yoctoproject.or=
g/wiki/2.3_QA_Status#Summary_Report</u></font></a><font color=3D"#1F497D">.=
</font><font color=3D"#1F497D">
</font> We believe we have a work around for the blocking issue, still TBD.=
</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.3 M4 cut off is 4/10.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">YP =
2.4 Planning is underway.&nbsp; Please enter you enhancement requests into =
Bugzilla.</span></font></div>
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
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* O=
pens - 10 min </span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Dis=
cussed plans for YP 2.4. Parallel builds and reproducible builds are under =
discussion.&nbsp; Removing dependencies on Python 2.x. Better layer support=
.  A number of improvements for ease of use
and reliability are being considered.&nbsp; </span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* T=
eam Sharing - 10 min</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Ste=
phano &#8211; Started a page on the wiki for newcomers.&nbsp; Links and poi=
nters to presentations given about YP.&nbsp; Discussed how to get new peopl=
e into supporting YP. We agreed to start with a white
board entry of NEWCOMERS to key these items in bugzilla.&nbsp; Mostly Bugzi=
lla enchantments should be targeted. &nbsp; </span></font></div>
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

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155E8EDB2FB1fmsmsx111amrcor_--
