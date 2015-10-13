Return-Path: <dmulder@lasx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F388E00BDE; Tue, 13 Oct 2015 15:03:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 3590 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Oct 2015 15:02:55 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0132.outbound.protection.outlook.com [157.56.111.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 678A6E009B8
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 15:02:55 -0700 (PDT)
Received: from BLUPR10MB0739.namprd10.prod.outlook.com (10.163.215.152) by
	BLUPR10MB0740.namprd10.prod.outlook.com (10.163.215.153) with Microsoft
	SMTP Server (TLS) id 15.1.293.16; Tue, 13 Oct 2015 20:30:23 +0000
Received: from BLUPR10MB0739.namprd10.prod.outlook.com ([10.163.215.152]) by
	BLUPR10MB0739.namprd10.prod.outlook.com ([10.163.215.152]) with mapi id
	15.01.0293.007; Tue, 13 Oct 2015 20:30:22 +0000
From: Dave Mulder <dmulder@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Updating NIC drivers in older Yocto
Thread-Index: AdEF8pCQNAjBJSeaSNaYBXligY+Zgg==
Date: Tue, 13 Oct 2015 20:30:22 +0000
Message-ID: <BLUPR10MB073931FBD2D4D84CF807DEA3D0300@BLUPR10MB0739.namprd10.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=dmulder@lasx.com; 
x-originating-ip: [50.205.222.218]
x-microsoft-exchange-diagnostics: 1; BLUPR10MB0740;
	5:dcxGjY6O6c+FbUP0pjbIh9k6kEmjjhJOyOKU/QNhGEPnGkCWyGat1v+Qd/Fl2Sowtdt82A73rMlSTpfCi8bkMIbFoN6IVe8Fca3l2gWvnAWK8lqR6O15dNitrIXPr/kcXk96lAt55QPMojbuH1qkhQ==;
	24:b89U/nJPtcJfn4RLufkfKbrSPEzND0pejpi+9OtsfWcPQkGq+7go4S3M7mu2XT0WZ35pKdnFZKl6d8N8Q7pqHcgjrrqYmgZ2vN40+gw4XEQ=;
	20:I2Dt6TyDDOur+t2Gj/Cu2vY+20DPYG6L7Qjb1psZqA7hrPfvWX+4J9C5wcbgUD48oYQZdKP9jtxVmP374wl+4Q==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR10MB0740;
x-microsoft-antispam-prvs: <BLUPR10MB074074D467A8CE4E4272D441D0300@BLUPR10MB0740.namprd10.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(108003899814671);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(8121501046)(5005006)(3002001);
	SRVR:BLUPR10MB0740; BCL:0; PCL:0; RULEID:; SRVR:BLUPR10MB0740; 
x-forefront-prvs: 07283408BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(2351001)(2900100001)(66066001)(450100001)(16236675004)(97736004)(74316001)(102836002)(46102003)(110136002)(76576001)(99286002)(40100003)(122556002)(5008740100001)(19300405004)(92566002)(64706001)(101416001)(86362001)(77096005)(107886002)(105586002)(229853001)(33656002)(19625215002)(5002640100001)(5001960100002)(106356001)(189998001)(87936001)(19580395003)(5003600100002)(54356999)(50986999)(5004730100002)(2501003)(5007970100001)(19609705001)(81156007)(15975445007)(10400500002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR10MB0740;
	H:BLUPR10MB0739.namprd10.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: lasx.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: lasx.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2015 20:30:22.4461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83241624-fc24-4b12-bcc6-c196bd21826b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR10MB0740
Subject: Updating NIC drivers in older Yocto
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
X-List-Received-Date: Tue, 13 Oct 2015 22:03:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR10MB073931FBD2D4D84CF807DEA3D0300BLUPR10MB0739namp_"

--_000_BLUPR10MB073931FBD2D4D84CF807DEA3D0300BLUPR10MB0739namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have been using a Sandy Bridge Yocto 1.3 build for a couple years now, on=
 off-the-shelf Intel PC motherboards. I also build an application.

I am now looking into using more recent motherboards. The OS boots just fin=
e, but the new NICs (Intel, Realtek) are not supported by the old 3.4.11 ke=
rnel.

What's the best way to support new NICs?  I can see three options:


1.       New Yocto.  I suspect (but would be happy to be wrong) that my app=
lication would need to be built against a different sysroot/toolchain, whic=
h seems like it would cause backward-compatibility problems (can't run new =
application on old OS), and I would prefer to not have multiple builds of t=
he application and have to have the host software determine which version i=
s needed (it's an embedded application, and the OS is headless).

2.       New kernel, old Yocto.  I don't know that this is actually an opti=
on, or how new of a kernel can be used in Yocto 1.3.  If this is an option,=
 it seems like my application would not need to be rebuilt.

3.       Loadable drivers for new NICs (rather than using the ones built in=
to the kernel).  I don't know that this is doable either.

Are there other options?  Can a new application be built that will work wit=
h multiple versions of the OS?  Is that even a problem, or am I just assumi=
ng the worst?

Thanks!
Dave

--_000_BLUPR10MB073931FBD2D4D84CF807DEA3D0300BLUPR10MB0739namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1278101272;
	mso-list-type:hybrid;
	mso-list-template-ids:986453924 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1444377698;
	mso-list-type:hybrid;
	mso-list-template-ids:-285173926 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have been using a Sandy Bridge Yocto 1.3 build for=
 a couple years now, on off-the-shelf Intel PC motherboards. I also build a=
n application.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am now looking into using more recent motherboards=
. The OS boots just fine, but the new NICs (Intel, Realtek) are not support=
ed by the old 3.4.11 kernel.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What&#8217;s the best way to support new NICs? &nbsp=
;I can see three options:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>New Yocto. &nbsp;I suspect (but would be happy to b=
e wrong) that my application would need to be built against a different sys=
root/toolchain, which seems like it would cause backward-compatibility prob=
lems (can&#8217;t run new application on old
 OS), and I would prefer to not have multiple builds of the application and=
 have to have the host software determine which version is needed (it&#8217=
;s an embedded application, and the OS is headless).<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>New kernel, old Yocto.&nbsp; I don&#8217;t know tha=
t this is actually an option, or how new of a kernel can be used in Yocto 1=
.3.&nbsp; If this is an option, it seems like my application would not need=
 to be rebuilt.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l1 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">3.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Loadable drivers for new NICs (rather than using th=
e ones built into the kernel).&nbsp; I don&#8217;t know that this is doable=
 either.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Are there other options?&nbsp; Can a new application=
 be built that will work with multiple versions of the OS?&nbsp; Is that ev=
en a problem, or am I just assuming the worst?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">Dave<o:p></o:p></p>
</div>
</body>
</html>

--_000_BLUPR10MB073931FBD2D4D84CF807DEA3D0300BLUPR10MB0739namp_--
