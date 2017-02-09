Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28E88E009CF; Thu,  9 Feb 2017 08:17:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0443E006D8
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 08:17:58 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 09 Feb 2017 08:17:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,137,1484035200"; d="scan'208,217";a="63797395"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by fmsmga006.fm.intel.com with ESMTP; 09 Feb 2017 08:17:56 -0800
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 9 Feb 2017 08:17:56 -0800
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.198]) by
	FMSMSX102.amr.corp.intel.com ([169.254.10.201]) with mapi id
	14.03.0248.002; Thu, 9 Feb 2017 08:17:55 -0800
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Purdie, Richard" <richard.purdie@intel.com>
Thread-Topic: QA Test Report for Yocto Project  2.3 M2 rc3
Thread-Index: AdKC6hjESkkToVZKTHWpbSOaFEgoJg==
Date: Thu, 9 Feb 2017 16:17:54 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A020A5CF5@fmsmsx101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGJiZjBjMjktZjUzYy00ZmNhLWI0MDMtYjZlNGI3Mjc5ZTRiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6ImNwNWNcL1VrRlBqTE1cL3JaYWdublBaN0U1SWxyZzg5TlwvaHJBWXd0Q0pRQjg9In0=
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 10 Feb 2017 06:46:23 -0800
Cc: "Ylinen, Mikko" <mikko.ylinen@intel.com>, "Avery,
	Brian" <brian.avery@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>, "Khor,
	Chin Kooi" <chin.kooi.khor@intel.com>, "Bhattaram,
	Jyothi \(Wind River\)" <jyothi.bhattaram@windriver.com>,
	"Cobbley, David A" <david.a.cobbley@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>, "Sivosuo,
	Matti-Pekka" <matti-pekka.sivosuo@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: QA Test Report for Yocto Project 2.3 M2 rc3
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
X-List-Received-Date: Thu, 09 Feb 2017 16:17:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0A5D9A624DF90343892F8F3FE7DE525A020A5CF5fmsmsx101amrcor_"

--_000_0A5D9A624DF90343892F8F3FE7DE525A020A5CF5fmsmsx101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

Here is the report for Partial QA Cycle on 2.3 M2 rc3

Full Report :  https://wiki.yoctoproject.org/wiki/WW06_-_2017-02-03_-_Full_=
Test_Cycle_2.3_M2_rc3

Summary
The QA cycle for 2.3 M2 rc3 is complete, this was a partial test cycle focu=
sed on testimage, selftest and performance. Bug that was blocking testimage=
 on rc1 was resolved correctly and hence this unblocked the component to be=
 validated on this release candidate. There were 3 new issues found the mos=
t important one is for Build Appliance images not available to test on AB, =
the other 2 are related to parselogs and a failure in specific workers for =
selftest; none of this 3 seem to be a release blocker; there were also anot=
her 4 bugs that are still open from previous releases. Performance measurem=
ents  were improved compared to M2 rc1 but are still above compared to M1, =
bug 10844[1] was reopened to keep the investigation on degradations.

Bugs

      * New

-        11022 - Fail to build BA for 2.3 M2 rc3 [2]

-        11013 - parselogs: Is failing on Xorg with error " FBDEV(0): mode =
"640x480" test failed " [3]

-        11025 - selftest/devtool: Build mdadm failing on Centos7 and Ubunt=
u 1404 [4]

      * High / M+ Not New

-        10456 - X cannot launch on qemumips64 [5]

-        10473 - Fail to launch custom qemu image with runqemu [6]

Full bugs Report : https://wiki.yoctoproject.org/wiki/WW06_-_2017-02-03_-_F=
ull_Test_Cycle_2.3_M2_rc3#Bugs_Found_during_QA_Test

Performance
As bug 10844[1] was reopened Fedora machine is being used for debugging act=
ivities hence only results for Ubuntu machine are being analyzed for this M=
ilestone. There were improvements on the measurements against M2 rc1, but t=
he numbers are still above of the normal trend from the past releases/miles=
tones.

                     rc1         rc3            %
sato       1:14:59    1:11:47    -4.27
rootfs    4:14          4:02          -4.72
rmwork 1:08:02    1:05:56    -3.09
kernel      5:01         5:00          -0.33
eSDK        3:47         3:28          -8.37

Performance Charts : https://wiki.yoctoproject.org/charts/perf_milestone_GD=
C/performance_test.html

Links


1-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10844

2-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11022

3-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11013

4-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11025

5-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10456

6-     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10473


Regards,
Jos=E9


--_000_0A5D9A624DF90343892F8F3FE7DE525A020A5CF5fmsmsx101amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:818112617;
	mso-list-type:hybrid;
	mso-list-template-ids:-114361522 1718405112 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";
	mso-ansi-font-weight:bold;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:2087069369;
	mso-list-type:hybrid;
	mso-list-template-ids:-1200991238 104001188 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:%1-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the report for Partial QA Cycle on 2.3 M2 rc=
3<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Report :&nbsp; <a href=3D"https://wiki.yoctopro=
ject.org/wiki/WW06_-_2017-02-03_-_Full_Test_Cycle_2.3_M2_rc3">
https://wiki.yoctoproject.org/wiki/WW06_-_2017-02-03_-_Full_Test_Cycle_2.3_=
M2_rc3</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Summary <o:p></o=
:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">The QA cycle for 2.3 M2 r=
c3 is complete, this was a partial test cycle focused on testimage, selftes=
t and performance. Bug that was blocking testimage on rc1 was resolved corr=
ectly and hence this unblocked the component
 to be validated on this release candidate. There were 3 new issues found t=
he most important one is for Build Appliance images not available to test o=
n AB, the other 2 are related to parselogs and a failure in specific worker=
s for selftest; none of this 3 seem
 to be a release blocker; there were also another 4 bugs that are still ope=
n from previous releases. Performance measurements &nbsp;were improved comp=
ared to M2 rc1 but are still above compared to M1, bug 10844[1] was reopene=
d to keep the investigation on degradations.
<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Bugs <o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * New<o:p></o:p></=
b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>11022 - Fail to build BA for 2.3 M2 rc3 [2]<=
o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>11013 - parselogs: Is failing on Xorg with e=
rror &quot; FBDEV(0): mode &quot;640x480&quot; test failed &quot; [3]<o:p><=
/o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>11025 - selftest/devtool: Build mdadm failin=
g on Centos7 and Ubuntu 1404 [4]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>* High / M&#43; No=
t New<o:p></o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>10456 - X cannot launch on qemumips64 [5]<o:=
p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-size:14.0pt"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>10473 - Fail to launch custom qemu image wit=
h runqemu [6]<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal">Full bugs Report : <a href=3D"https://wiki.yoctoproj=
ect.org/wiki/WW06_-_2017-02-03_-_Full_Test_Cycle_2.3_M2_rc3#Bugs_Found_duri=
ng_QA_Test">
https://wiki.yoctoproject.org/wiki/WW06_-_2017-02-03_-_Full_Test_Cycle_2.3_=
M2_rc3#Bugs_Found_during_QA_Test</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Performance<o:p>=
</o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">As bug 10844[1] was reope=
ned Fedora machine is being used for debugging activities hence only result=
s for Ubuntu machine are being analyzed for this Milestone. There were impr=
ovements on the measurements against
 M2 rc1, but the numbers are still above of the normal trend from the past =
releases/milestones.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&nbsp; &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;rc1&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rc3&nbs=
p; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">sato&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 1:14:59 &nbsp;&nbsp;&nbsp;1:11:47 &nbsp;&nbsp;&nbsp;-4.27<o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">rootfs&nbsp;&nbsp;&nbsp; =
4:14&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 4:02&nbsp;&nbsp; &nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -4.72<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">rmwork 1:08:02&nbsp;&nbsp=
;&nbsp; 1:05:56&nbsp;&nbsp;&nbsp; -3.09<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">kernel&nbsp;&nbsp;&nbsp; =
&nbsp; 5:01&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 5:00&nbsp;&nbsp; &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -0.33<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">eSDK&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; &nbsp; 3:47&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 3:28&nbsp;=
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -8.37<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></b></=
p>
<p class=3D"MsoNormal">Performance Charts : <a href=3D"https://wiki.yoctopr=
oject.org/charts/perf_milestone_GDC/performance_test.html">
https://wiki.yoctoproject.org/charts/perf_milestone_GDC/performance_test.ht=
ml</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt">Links<o:p></o:p>=
</span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">1-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10844">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1084=
4</a> &nbsp;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">2-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11022">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1102=
2</a> &nbsp;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">3-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11013">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1101=
3</a>
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">4-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D11025">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1102=
5</a> &nbsp;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">5-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10456">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1045=
6</a> &nbsp;<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">6-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]><a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D10473">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1047=
3</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><b>Jos=E9</b><b><span style=3D"font-family:&quot;Ari=
al&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0A5D9A624DF90343892F8F3FE7DE525A020A5CF5fmsmsx101amrcor_--
