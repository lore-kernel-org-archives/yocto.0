Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67233E00D81; Tue,  2 Jan 2018 08:18:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B0DE00D24
	for <yocto@yoctoproject.org>; Tue,  2 Jan 2018 08:18:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jan 2018 08:18:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,498,1508828400"; d="scan'208,217";a="16925271"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by orsmga003.jf.intel.com with ESMTP; 02 Jan 2018 08:18:54 -0800
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.120]) by
	fmsmsx104.amr.corp.intel.com ([169.254.3.114]) with mapi id
	14.03.0319.002; Tue, 2 Jan 2018 08:18:53 -0800
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting
Thread-Index: AdKtWbwMokvHRUUrQnmf8qT10kd6zw==
Date: Tue, 2 Jan 2018 16:18:52 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155EC7210CA7@fmsmsx111.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 02 Jan 2018 16:18:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7210CA7fmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7210CA7fmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees: Stephen, Armin, Joshua W., Stephano, Joshua L., David, Richard, =
Aaron, Mark, Michael, Randy, Wmills,

Agenda:

* Yocto Project status - 5 min (Stephen/team)
*       The QA of YP 2.4.1 rc1 is complete.  See: https://wiki.yoctoproject=
.org/wiki/WW51_-_2017-12-21-_Full_Test_Cycle_-_2.4.1_rc1.
*       The QA of YP 2.3.3 rc1 is complete. See: https://wiki.yoctoproject.=
org/wiki/WW51_-_2017-12-20-_Full_Test_Cycle_-_2.3.3_rc1.
*       The QA of YP 2.5 M1 rc1 is about 68% complete.  See: https://wiki.y=
octoproject.org/wiki/2.5_QA_Status
*       The QA of YP 2.2.3 rc1 is about 24% complete. See: https://wiki.yoc=
toproject.org/wiki/2.2_QA_Status.

* Opens - 10 min
Richard - We are continuing to have a few autobuilder issues.  These are be=
ing documented in the weekly status.
Richard - Discussed the movement of some items from autobuilder into meta-d=
ata or a layer in oe-core on all stable releases to clean up some of the au=
tobuilder items.

* Team Sharing - 10 min
When will the Dev Day be for March ELC? - Still planned but date is not yet=
 to be scheduled.

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
*   Work Telephone:             (503) 712-0534
*    Cell:                                      (208) 244-4460
* Email:                                stephen.k.jolley@intel.com


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7210CA7fmsmsx111amrcor_
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
endees: Stephen, Armin, Joshua W., Stephano, Joshua L., David, Richard, Aar=
on, Mark, Michael, Randy, Wmills, </span></font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Age=
nda:</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">&nb=
sp;</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* Y=
octo Project status - 5 min (Stephen/team)</span></font></div>
<ul style=3D"margin:0;padding-left:36pt;">
<font face=3D"Arial" size=3D"2"><span style=3D"font-size:11pt;">
<li>The QA of YP 2.4.1 rc1 is complete. &nbsp;See: <a href=3D"https://wiki.=
yoctoproject.org/wiki/WW51_-_2017-12-21-_Full_Test_Cycle_-_2.4.1_rc1"><font=
 color=3D"#1155CC"><u>https://wiki.yoctoproject.org/wiki/WW51_-_2017-12-21-=
_Full_Test_Cycle_-_2.4.1_rc1</u></font></a>.
</li><li>The QA of YP 2.3.3 rc1 is complete. See: <a href=3D"https://wiki.y=
octoproject.org/wiki/WW51_-_2017-12-20-_Full_Test_Cycle_-_2.3.3_rc1"><font =
color=3D"#1155CC"><u>https://wiki.yoctoproject.org/wiki/WW51_-_2017-12-20-_=
Full_Test_Cycle_-_2.3.3_rc1</u></font></a>.
</li><li>The QA of YP 2.5 M1 rc1 is about 68% complete. &nbsp;See: <a href=
=3D"https://wiki.yoctoproject.org/wiki/2.5_QA_Status"><font color=3D"#1155C=
C"><u>https://wiki.yoctoproject.org/wiki/2.5_QA_Status</u></font></a></li><=
li>The QA of YP 2.2.3 rc1 is about 24% complete. See: <a href=3D"https://wi=
ki.yoctoproject.org/wiki/2.2_QA_Status"><font color=3D"#1155CC"><u>https://=
wiki.yoctoproject.org/wiki/2.2_QA_Status</u></font></a>.</li></span></font>
</ul>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* O=
pens - 10 min </span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Ric=
hard &#8211; We are continuing to have a few autobuilder issues.&nbsp; Thes=
e are being documented in the weekly status.&nbsp; </span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Ric=
hard &#8211; Discussed the movement of some items from autobuilder into met=
a-data or a layer in oe-core on all stable releases to clean up some of the=
 autobuilder items.</span></font></div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">* T=
eam Sharing - 10 min</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">Whe=
n will the Dev Day be for March ELC? - Still planned but date is not yet to=
 be scheduled.</span></font></div>
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

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7210CA7fmsmsx111amrcor_--
