Return-Path: <Vinay.G@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF31E00576; Tue,  8 Jul 2014 03:19:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.51.92 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 960 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 Jul 2014 03:19:44 PDT
Received: from APAC01-SG1-obe.outbound.protection.outlook.com
	(mail-sg1lp0092.outbound.protection.outlook.com [207.46.51.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2291E004FF
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 03:19:44 -0700 (PDT)
Received: from HKXPR03MB151.apcprd03.prod.outlook.com (10.242.121.25) by
	HKXPR03MB149.apcprd03.prod.outlook.com (10.242.121.17) with Microsoft
	SMTP Server (TLS) id 15.0.980.8; Tue, 8 Jul 2014 10:03:41 +0000
Received: from HKXPR03MB151.apcprd03.prod.outlook.com ([169.254.5.153]) by
	HKXPR03MB151.apcprd03.prod.outlook.com ([169.254.5.153]) with mapi id
	15.00.0980.000; Tue, 8 Jul 2014 10:03:41 +0000
From: "Vinay Kumar. G" <Vinay.G@kpit.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: GDB related issue on host machine
Thread-Index: Ac+ak+BthlZKyhfbR/2HNw8iDmMuUA==
Date: Tue, 8 Jul 2014 10:03:40 +0000
Message-ID: <2260d30500404cf5a004b74aaa46cca1@HKXPR03MB151.apcprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [115.113.150.202]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:
x-forefront-prvs: 0266491E90
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(199002)(189002)(106356001)(105586002)(4396001)(64706001)(66066001)(85852003)(80022001)(101416001)(83072002)(107886001)(19300405004)(107046002)(229853001)(87936001)(81342001)(2351001)(2656002)(21056001)(16236675004)(110136001)(81542001)(19625215002)(15202345003)(15975445006)(31966008)(95666004)(19580395003)(76576001)(99396002)(54356999)(76482001)(77096002)(50986999)(92566001)(74316001)(77982001)(74502001)(79102001)(85306003)(20776003)(74662001)(83322001)(86362001)(33646001)(46102001)(108616002)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:HKXPR03MB149;
	H:HKXPR03MB151.apcprd03.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
Subject: GDB related issue on host machine
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
X-List-Received-Date: Tue, 08 Jul 2014 10:19:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2260d30500404cf5a004b74aaa46cca1HKXPR03MB151apcprd03pro_"

--_000_2260d30500404cf5a004b74aaa46cca1HKXPR03MB151apcprd03pro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am new to this forum. I am facing some difficulties in debugging a.out
on host os(without target connection). Using "powerpc-poky-linux-gdb a.out"=
.

Once entered to gdb did below steps
set sysroot /home/../ppc/sysroots/ppc7400-poky-linux
file a.out
b main
continue  > shows message The program is not being run.

If I execute "run" gives "The program is not being run."

Any help is appreciated. :)
Thanks.
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_2260d30500404cf5a004b74aaa46cca1HKXPR03MB151apcprd03pro_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am new to this forum. I am facing some difficultie=
s in debugging a.out
<o:p></o:p></p>
<p class=3D"MsoNormal">on host os(without target connection). Using &quot;p=
owerpc-poky-linux-gdb a.out&quot;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Once entered to gdb did below steps <o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">set sysroot /home/../ppc/sysroots/ppc7400-poky-linux<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">file a.out<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">b main<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">continue&nbsp; &gt; shows message The program is not being run.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:yellow;mso-highlight:yello=
w">If I execute &#8220;run&#8221; gives &quot;The program is not being run.=
&quot;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help is appreciated. <span style=3D"font-family:=
Wingdings">
J</span><o:p></o:p></p>
<p class=3D"MsoNormal">Thanks.<o:p></o:p></p>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_2260d30500404cf5a004b74aaa46cca1HKXPR03MB151apcprd03pro_--
