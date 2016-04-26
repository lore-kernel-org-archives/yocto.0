Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1604E00D06; Tue, 26 Apr 2016 01:06:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1994 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Apr 2016 01:05:54 PDT
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0064.outbound.protection.outlook.com [157.56.112.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8921E00CFF
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 01:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
	s=selector1-nxp-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=qbN8WHjbQW+PP9TnWi+NGF5fe/9QB7IAyH4Fpsrm7WA=;
	b=OiUKAXV/AgI8MUg8U0fJeUkxWhtiBJqajAVmKtoKJ+flCPvYvfgor+6ELoRE5MeDCJiOkPY5Y5uVV2Y2UaQtM9GWz5ehHR+2/uIHKpGBxra5WNZsWPw8HX58DSEwrQ8x6lKxJGvjcbHX4Ie00X6V9rX8HPBLOTtaYX5HMNguxFo=
Received: from AM2PR04MB0674.eurprd04.prod.outlook.com (10.160.54.142) by
	AM2PR04MB0673.eurprd04.prod.outlook.com (10.160.54.141) with Microsoft
	SMTP Server (TLS) id 15.1.477.8; Tue, 26 Apr 2016 08:05:52 +0000
Received: from AM2PR04MB0674.eurprd04.prod.outlook.com ([10.160.54.142]) by
	AM2PR04MB0674.eurprd04.prod.outlook.com ([10.160.54.142]) with mapi id
	15.01.0466.025; Tue, 26 Apr 2016 08:05:52 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Thread-Topic: [yocto] [Fwd: gobject  introspection release notes]
Thread-Index: AQHRmmR3zZl43ET8O0GnQJyFkheD6p+a0bcAgAEcK7A=
Date: Tue, 26 Apr 2016 08:05:52 +0000
Message-ID: <AM2PR04MB06743A619EEE3F06D9F01DCEEE630@AM2PR04MB0674.eurprd04.prod.outlook.com>
References: <54885.10.252.24.10.1461091271.squirrel@linux.intel.com>
	<DUB130-W1404A31E54DC5663F194CFDA620@phx.gbl>
In-Reply-To: <DUB130-W1404A31E54DC5663F194CFDA620@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: hotmail.com; dkim=none (message not signed)
	header.d=none; hotmail.com; dmarc=none action=none header.from=nxp.com; 
x-originating-ip: [199.59.226.141]
x-ms-office365-filtering-correlation-id: 7766ed3a-57e2-4741-b890-08d36da99637
x-microsoft-exchange-diagnostics: 1; AM2PR04MB0673;
	5:VlmUnW7PlTDTJVnOy7jrHNTsamPjbnR+BGHHLKB4Bm6l+lqsivu9mvmdXDf6p4mnjfwLb6VzSNALi89svHEJbO9pcYG/ydAzMN0g5+nDNdG6VZXVHWY3XFb66jpz8vYU+4DwC6jvGi5+kQH2dJawPw==;
	24:LPhhsn0kWwI/SA1mosNyEp/+E5Dl1pkUFs3H9vguFUT4UBCXO76pCcVmyz9ryw+D55ldGq/2Obd683tGJ0WzVFgv8OaoOlXS4CSWiG22X0s=;
	7:vxR5M6dGeXkAafkK0SQ1o+93BU5aC36626FtA0VR0WxUmwos2VwF7JUwfGGAshH0ihHYH268mVHNo/Hml/x2fT26zp8wwpyR4PL3cOM1P7lVeQ8EKKlQtQrkDKKPTGJiJgcMPXiqOcaOpniSIzcxS31bDyIpJGgD5wuXV/FWlID6xoL2m6m+Q39yiDa84lFN
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR04MB0673;
x-microsoft-antispam-prvs: <AM2PR04MB067336A7BA903DC515A1640CEE630@AM2PR04MB0673.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:AM2PR04MB0673; BCL:0; PCL:0; RULEID:; SRVR:AM2PR04MB0673; 
x-forefront-prvs: 0924C6A0D5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(377454003)(87936001)(5008740100001)(15975445007)(50986999)(66066001)(77096005)(76176999)(4326007)(54356999)(9686002)(790700001)(3280700002)(102836003)(6116002)(1096002)(1220700001)(3846002)(86362001)(10400500002)(5003600100002)(81166005)(76576001)(16236675004)(106116001)(74316001)(586003)(5004730100002)(2950100001)(2900100001)(19625215002)(110136002)(189998001)(19617315012)(19300405004)(2906002)(122556002)(3660700001)(92566002)(9326002)(19580395003)(19580405001)(5002640100001)(33656002)(11100500001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM2PR04MB0673;
	H:AM2PR04MB0674.eurprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2016 08:05:52.4787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR04MB0673
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Fwd: gobject introspection release notes]
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
X-List-Received-Date: Tue, 26 Apr 2016 08:06:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM2PR04MB06743A619EEE3F06D9F01DCEEE630AM2PR04MB0674eurp_"

--_000_AM2PR04MB06743A619EEE3F06D9F01DCEEE630AM2PR04MB0674eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Chris,

Please see my inline comments.


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Trobridge
Sent: Monday, April 25, 2016 11:01 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] [Fwd: gobject introspection release notes]

Any ideas as to why "qemu-ppc64 crashes out immediately"?

I can confirm the build ends in a segfault when I tried building gobject-in=
trospection for the t1042d4rdb-64b machine.
[Luo Zhenhua-B19537] This is a gobject-introspection support issue of QEMU =
PPC64, the fix is not available now, you can use the following workaround t=
o bypass the issue.
http://git.yoctoproject.org/cgit.cgi/meta-fsl-ppc/tree/README#n18

I did get one qemu crash recorded by Fedora but the actual crash dumps (app=
ended) are for a PowerPC.  That said, given the dump, either the processor =
got nowhere or they are likely corrupt.  The invalid access reported is rou=
ghly to the stack but with the upper 32-bits zeroed.

If I configure bitbake for a 32-bit build (t1042d4rdb) then the build fails=
 with  "Unable to find CPU definition" (cpu e5500) so a 32-bit build is out=
 of the question too.

The command line from the wrapper is:
PSEUDO_UNLOAD=3D1 qemu-ppc -r 2.6.32  -cpu e5500 -L /home/chris/yocto/build=
/tmp/sysroots/t1042d4rdb -E LD_LIBRARY_PATH=3D$GIR_EXTRA_LIBS_PATH:.libs:/h=
ome/chris/yocto/build/tmp/sysroots/t1042d4rdb//usr/lib:/home/chris/yocto/bu=
ild/tmp/sysroots/t1042d4rdb//lib  "$@"
[Luo Zhenhua-B19537] Please fetch the latest commit, the issue is fixed by =
http://git.yoctoproject.org/cgit.cgi/poky/commit/?h=3Dkrogoth&id=3D27e202f2=
d9114a64b67c83eb7eafeb12de5ceea7.

The cpu is supported by the fedora qemu-ppc64, but not qemu-ppc - ie it's a=
 64-bit processor that's not supported in 32-bit mode.

This is not massively urgent for me but it may be important in the future a=
nd I am curious as to whether the problem is in the qemu emulation or in th=
e emulated code.

Regards,
Chris
| Invalid data memory access: 0x00000000007fe8f0
| NIP 00000040008046c8   LR 0000000000000000 CTR 0000000000000000 XER 00000=
00000000000 CPU#0
| MSR 8000000000006000 HID0 0000000000000000  HF 0000000000006000 idx 0
| TB 00025634 110100571322161
| GPR00 0000000000000000 00000040007fe970 0000004000848e00 00000040007fe970
| GPR04 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR08 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR24 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR28 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| CR 00000000  [ -  -  -  -  -  -  -  -  ]             RES ffffffffffffffff
| FPR00 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR04 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR08 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR24 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR28 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPSCR 0000000000000000
| Invalid segfault errno (42000000)
| NIP 00000040008046c8   LR 0000000000000000 CTR 0000000000000000 XER 00000=
00000000000 CPU#0
| MSR 8000000000006000 HID0 0000000000000000  HF 0000000000006000 idx 0
| TB 00025634 110100578368626
| GPR00 0000000000000000 00000040007fe970 0000004000848e00 00000040007fe970
| GPR04 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR08 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR24 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| GPR28 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| CR 00000000  [ -  -  -  -  -  -  -  -  ]             RES ffffffffffffffff
| FPR00 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR04 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR08 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR24 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR28 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPSCR 0000000000000000
| qemu: uncaught target signal 11 (Segmentation fault) - core dumped


--_000_AM2PR04MB06743A619EEE3F06D9F01DCEEE630AM2PR04MB0674eurp_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Hello Chris,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Please see my inline comments.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Zhenhua<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject.org=
 [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Chris Trobridge<br>
<b>Sent:</b> Monday, April 25, 2016 11:01 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] [Fwd: gobject introspection release notes]<o:p>=
</o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Any ideas as to why &quot;qemu-ppc64 crashes out immediately&quot;?<=
o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">I can confirm the build ends in a segfault when&nbsp;I tried buildin=
g gobject-introspection for the t1042d4rdb-64b machine. &nbsp;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><b><i><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1F497D">[Luo Zhenhua-B19537] This is a =
gobject-introspection support issue of QEMU PPC64, the fix is not available=
 now, you can use the following workaround to
 bypass the issue. <o:p></o:p></span></i></b></p>
<p class=3D"MsoNormal"><span class=3D"MsoHyperlink"><b><i><a href=3D"http:/=
/git.yoctoproject.org/cgit.cgi/meta-fsl-ppc/tree/README#n18"><span style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">http://git.yo=
ctoproject.org/cgit.cgi/meta-fsl-ppc/tree/README#n18</span></a><o:p></o:p><=
/i></b></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">I did get one qemu crash recorded by Fedora but the actual crash dum=
ps (appended) are for a PowerPC. &nbsp;That said, given the dump, either th=
e processor got nowhere or they are likely corrupt.
 &nbsp;The invalid access reported is roughly to the stack but with the upp=
er 32-bits zeroed.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">If I configure bitbake for a 32-bit build (t1042d4rdb) then the buil=
d fails with &nbsp;&quot;Unable to find CPU definition&quot; (cpu e5500) so=
 a 32-bit build is out of the question too.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">The command line from the wrapper is:<o:p></o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">PSEUDO_UNLOAD=3D1 qemu-ppc -r 2.6.32 &nbsp;-cpu e5500 -L /home/chris=
/yocto/build/tmp/sysroots/t1042d4rdb -E LD_LIBRARY_PATH=3D$GIR_EXTRA_LIBS_P=
ATH:.libs:/home/chris/yocto/build/tmp/sysroots/t1042d4rdb//usr/lib:/home/ch=
ris/yocto/build/tmp/sysroots/t1042d4rdb//lib
 &nbsp;&quot;$@&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1F497D">[Luo Zhenhua-B19537] Please fet=
ch the latest commit, the issue is fixed by
<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/?h=3Dkrogoth&am=
p;id=3D27e202f2d9114a64b67c83eb7eafeb12de5ceea7">
http://git.yoctoproject.org/cgit.cgi/poky/commit/?h=3Dkrogoth&amp;id=3D27e2=
02f2d9114a64b67c83eb7eafeb12de5ceea7</a>.
<o:p></o:p></span></i></b></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">The cpu is supported by the fedora qemu-ppc64, but not qemu-ppc - ie=
 it's a 64-bit processor that's not supported in 32-bit mode.<o:p></o:p></s=
pan></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">This is not massively urgent for me but it may be important in the f=
uture and&nbsp;I am curious&nbsp;as to whether the problem is in the qemu e=
mulation or in the emulated code.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Regards,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif">Chris&nbsp;<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| Invalid data memory access: 0x00000000007fe8f0<o:p></o:p></span></=
p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| NIP 00000040008046c8 &nbsp; LR 0000000000000000 CTR 00000000000000=
00 XER 0000000000000000 CPU#0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| MSR 8000000000006000 HID0 0000000000000000 &nbsp;HF 00000000000060=
00 idx 0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| TB 00025634 110100571322161<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR00 0000000000000000 00000040007fe970 0000004000848e00 000000400=
07fe970<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR04 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR08 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR12 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR16 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR20 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR24 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR28 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| CR 00000000 &nbsp;[ - &nbsp;- &nbsp;- &nbsp;- &nbsp;- &nbsp;- &nbs=
p;- &nbsp;- &nbsp;] &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RES fffffffff=
fffffff<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR00 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR04 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR08 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR12 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR16 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR20 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR24 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR28 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPSCR 0000000000000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| Invalid segfault errno (42000000)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| NIP 00000040008046c8 &nbsp; LR 0000000000000000 CTR 00000000000000=
00 XER 0000000000000000 CPU#0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| MSR 8000000000006000 HID0 0000000000000000 &nbsp;HF 00000000000060=
00 idx 0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| TB 00025634 110100578368626<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR00 0000000000000000 00000040007fe970 0000004000848e00 000000400=
07fe970<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR04 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR08 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR12 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR16 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR20 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR24 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| GPR28 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| CR 00000000 &nbsp;[ - &nbsp;- &nbsp;- &nbsp;- &nbsp;- &nbsp;- &nbs=
p;- &nbsp;- &nbsp;] &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RES fffffffff=
fffffff<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR00 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR04 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR08 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR12 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR16 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR20 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR24 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPR28 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| FPSCR 0000000000000000<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">| qemu: uncaught target signal 11 (Segmentation fault) - core dumped=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_AM2PR04MB06743A619EEE3F06D9F01DCEEE630AM2PR04MB0674eurp_--
