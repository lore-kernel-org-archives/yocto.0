Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C898E00AB0; Mon,  1 Apr 2019 20:28:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 110D2E0049A
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 20:28:38 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Apr 2019 20:28:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,298,1549958400"; 
	d="scan'208,217";a="312351909"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by orsmga005.jf.intel.com with ESMTP; 01 Apr 2019 20:28:36 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.173]) by
	PGSMSX106.gar.corp.intel.com ([169.254.9.12]) with mapi id
	14.03.0415.000; Tue, 2 Apr 2019 11:28:36 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: Proposed new QA process
Thread-Index: AdTpA8p1v/O57UGcSFmNstkpN14rMA==
Date: Tue, 2 Apr 2019 03:28:35 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D043481A33CC@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWYwNmMzZjUtZWZlYS00NDdhLTk2ZDAtNTAyMzMyY2MxZTU2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoialZOTmV5dVwvdTRTcnpXbm9ocnhlalJRNEpoSEdrdDNMM0F6RzRqT0Z0Zk90Z2VzZVlhczE3VVwvQTQ1MmQrY0w3In0=
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Proposed new QA process
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
X-List-Received-Date: Tue, 02 Apr 2019 03:28:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9DDD2658D1FE414E99172D2DB1E4D043481A33CCPGSMSX109garcor_"

--_000_9DDD2658D1FE414E99172D2DB1E4D043481A33CCPGSMSX109garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Given the new QA tooling (resulttool) available to manage QA test results a=
nd reporting, here was the proposed new QA process.


The new QA process consists below:

*       Test Trigger

*       Test Planning

*       Test Execution

*       Test Result Store

*       Test Monitoring & Reporting

*       Release Decision


Test Trigger: Each QA team will subscribe to QA notification email (request=
 through Richard Purdie).


Test Planning: The lead QA team no longer need to setup Testopia and wiki p=
age.  Each QA team (eg. intel, windriver, etc) will perform planning on wha=
t extra tests they plan to run and when they'll send the results back, then=
 send these planning information as acknowledge email to QA stakeholders (e=
g. Richard Purdie, Stephen Jolley) and the lead QA team.  Each QA team can =
refer to OEQA for automated and manual test cases for their planning.


Test Execution: Each QA team will execute the planned extra tests. To make =
sure test result from the test execution could fully integrated to the new =
QA tooling (resulttool for test result management and reporting/regression)=
, execute OEQA automated tests and OEQA manual tests through resulttool (re=
fer https://wiki.yoctoproject.org/wiki/Resulttool#manualexecution).


Test Result Store: Each QA team will store test result to the remote yocto-=
testresults git repository using resulttool (refer https://wiki.yoctoprojec=
t.org/wiki/Resulttool#store), then send the QA completion email (include ne=
w defects information) to both QA stakeholder and the lead QA team.  Each Q=
A team will request write access to remote yocto-testresults git repository=
 (request through Richard Purdie).


Test Monitoring & Reporting: QA stakeholder will monitor testing progress f=
rom remote yocto-testresults git repository using resulttool (refer https:/=
/wiki.yoctoproject.org/wiki/Resulttool#report).  Once every QA team complet=
ed the test execution, the lead QA team will create QA test report and regr=
ession using resulttool. Send email report to QA stakeholder and public yoc=
to mailing list.


Release Decision: QA stakeholder will make the final decision for release.




--_000_9DDD2658D1FE414E99172D2DB1E4D043481A33CCPGSMSX109garcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1279996028;
	mso-list-template-ids:-1485525260;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
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
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Given the new QA t=
ooling (resulttool) available to manage QA test results and reporting, here=
 was the proposed new QA process.
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,sans-serif;color:black">The new QA process=
 consists below:</span><o:p></o:p></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1;vertical-align:baseline">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:black"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Arial&quot;,sans-serif;color:black">Test Trigger<o:p></o:p></span></p=
>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1;vertical-align:baseline">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:black"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Arial&quot;,sans-serif;color:black">Test Planning
<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1;vertical-align:baseline">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:black"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Arial&quot;,sans-serif;color:black">Test Execution<o:p></o:p></span><=
/p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1;vertical-align:baseline">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:black"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Arial&quot;,sans-serif;color:black">Test Result Store<o:p></o:p></spa=
n></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1;vertical-align:baseline">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:black"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Arial&quot;,sans-serif;color:black">Test Monitoring &amp; Reporting<o=
:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margi=
n-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0 level1 lfo=
1;vertical-align:baseline">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol;col=
or:black"><span style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt=
 &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Arial&quot;,sans-serif;color:black">Release Decision<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Test Trigger: Each=
 QA team will subscribe to QA notification email (request through Richard P=
urdie).
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Test Planning: The=
 lead QA team no longer need to setup Testopia and wiki page. &nbsp;Each QA=
 team (eg. intel, windriver, etc) will perform planning
 on what extra tests they plan to run and when they'll send the results bac=
k, then send these planning information as acknowledge email to QA stakehol=
ders (eg. Richard Purdie, Stephen Jolley) and the lead QA team. &nbsp;Each =
QA team can refer to OEQA for automated
 and manual test cases for their planning.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Test Execution: Ea=
ch QA team will execute the planned extra tests. To make sure test result f=
rom the test execution could fully integrated
 to the new QA tooling (resulttool for test result management and reporting=
/regression), execute OEQA automated tests and OEQA manual tests through re=
sulttool (refer
</span><a href=3D"https://wiki.yoctoproject.org/wiki/Resulttool#manualexecu=
tion"><span style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:#1155CC">https://wiki.yoctoproject.org/wiki/Resulttool#manualexec=
ution</span></a><span style=3D"font-size:11.0pt;font-family:&quot;Arial&quo=
t;,sans-serif;color:black">).
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Test Result Store:=
 Each QA team will store test result to the remote yocto-testresults git re=
pository using resulttool (refer
</span><a href=3D"https://wiki.yoctoproject.org/wiki/Resulttool#store"><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#1155CC">https://wiki.yoctoproject.org/wiki/Resulttool#store</span></a><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">),
 then send the QA completion email (include new defects information) to bot=
h QA stakeholder and the lead QA team. &nbsp;Each QA team will request writ=
e access to remote yocto-testresults git repository (request through Richar=
d Purdie).</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Test Monitoring &a=
mp; Reporting: QA stakeholder will monitor testing progress from remote yoc=
to-testresults git repository using resulttool (refer
</span><a href=3D"https://wiki.yoctoproject.org/wiki/Resulttool#report"><sp=
an style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color=
:#1155CC">https://wiki.yoctoproject.org/wiki/Resulttool#report</span></a><s=
pan style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;colo=
r:black">).
 &nbsp;Once every QA team completed the test execution, the lead QA team wi=
ll create QA test report and regression using resulttool. Send email report=
 to QA stakeholder and public yocto mailing list.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Release Decision: =
QA stakeholder will make the final decision for release.</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_9DDD2658D1FE414E99172D2DB1E4D043481A33CCPGSMSX109garcor_--
