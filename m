Return-Path: <Richard.Schmitt@commscope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63796E00AA7; Tue, 10 Jan 2017 10:05:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.81 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 93003 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Jan 2017 10:05:17 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0081.outbound.protection.outlook.com [104.47.40.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4F38E00AA2
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 10:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=commscope.onmicrosoft.com; s=selector1-commscope-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=I6pVdSR/1YEt1scoMY5Ce3H4U708O0sbia9dyrHfzrE=;
	b=hhtpN3yQZvKTq9++W0WLUekXZ7qOViO/tyYMX2ca5X3rJCB/ZKyS6L3TTbMxjdUmKta9FE0kgMVHoriN/x14WEipUCGsb9FxFv/AO3urMN1T6RmaZEFhI+D86DhA2wNdx6JSUYV/Pmrul9VzMJcgNG6NgWx954d4UjZ7gaA2B5A=
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com (10.163.212.143) by
	BLUPR0601MB1649.namprd06.prod.outlook.com (10.163.212.143) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.829.7;
	Tue, 10 Jan 2017 18:05:15 +0000
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) by
	BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) with
	mapi id 15.01.0829.017; Tue, 10 Jan 2017 18:05:15 +0000
From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] kernel config fragments not applied
Thread-Index: AdJraY1+msLVupy7Q2uqzc4ZMn7FHQ==
Date: Tue, 10 Jan 2017 18:05:15 +0000
Message-ID: <BLUPR0601MB16491766FFC1CA176DBA4533E6670@BLUPR0601MB1649.namprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Richard.Schmitt@commscope.com; 
x-originating-ip: [131.239.32.100]
x-ms-office365-filtering-correlation-id: 6f083f3e-d695-43b3-2852-08d439833b06
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:BLUPR0601MB1649; 
x-microsoft-exchange-diagnostics: 1; BLUPR0601MB1649;
	7:N8cVSTT0j2WddDE4nqFqep/oYaFZrbPO1fFlMDOM7ynUyZzmZ0qVR5UO94eTMs5p2kUlfL6ZUg97nreqdA3uF7lFc5XA47cMTwQgR97ENbW/3VYs0+xK23+fijmsq00WmbGSsn+gvK1IALgGMf2bCRCt6RwkQ67U8kW05u5s8piQDi8Om1QIEDcD1s4zNrM6vZVWMfCtAn4FKotB+O09tR9bdeunEhj4K5bHjSo3f3IzStYFRatmuNlPvgRfa43h+pAobYFdjZQfa61y+xuE0FHP0Q/2J/aumPz70P/6Xiz/Ipo5RbIazWyir89rhsPmSzFVXXskO1Zrj7CrRcd6b64Y5WsqT/qj6hOzxpVMp5dlmCjTspuytXo7U7Dh6aX1Pk3HILRNGxVT3anbnoynZKYENm8SMbm8DavbwTfjO5sjSte6rY8vwI3B6tJuxBXhmlKc3EnU/oOiAaiS9MxGGg==
x-microsoft-antispam-prvs: <BLUPR0601MB16495F3179EB4E6E6A0DBFECE6670@BLUPR0601MB1649.namprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123562025)(20161123555025)(20161123564025)(20161123560025)(6072148);
	SRVR:BLUPR0601MB1649; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0601MB1649; 
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(189002)(199003)(122556002)(7736002)(66066001)(2906002)(74316002)(5660300001)(6116002)(2501003)(105586002)(3846002)(2900100001)(102836003)(106356001)(790700001)(92566002)(8676002)(81156014)(81166006)(1730700003)(86362001)(8936002)(450100001)(2351001)(25786008)(101416001)(110136003)(5630700001)(7696004)(68736007)(33656002)(3660700001)(55016002)(6306002)(9686003)(99286003)(54896002)(38730400001)(189998001)(107886002)(97736004)(5640700003)(6916009)(77096006)(54356999)(6436002)(50986999)(6506006)(3280700002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0601MB1649;
	H:BLUPR0601MB1649.namprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: commscope.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: commscope.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2017 18:05:15.9250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31472f81-8fe4-49ec-8bc3-fa1c295640d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0601MB1649
Subject: kernel config fragments not applied
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
X-List-Received-Date: Tue, 10 Jan 2017 18:05:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR0601MB16491766FFC1CA176DBA4533E6670BLUPR0601MB1649_"

--_000_BLUPR0601MB16491766FFC1CA176DBA4533E6670BLUPR0601MB1649_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am having a heck of a hard time getting a minor kernel config fragment ap=
plied.

In order to minimize all variables, I am simply trying to build linux-yocto=
 for a qemux86 MACHINE target.

There had been some discussion on the mailing list previously that suggeste=
d making sure linux-yocto.inc was included within the recipes.   The ones b=
eing used are standard poky recipes and they do include the linux-yocto.inc=
 file.

My configuration is very simple.  I have my own layer and linux-yocto bbapp=
end:

meta-mylayer/recipes-kernel/linux/linux-yocto_4.4.bbappend

Whose contents are:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

SRC_URI +=3D " \
        file://overlayfs.cfg \
        "

With the config fragment in:

meta-mylayer/recipes-kernel/linux/linux-yocto/overlayfs.cfg

whose contents is:

CONFIG_OVERLAY_FS=3Dy

If I do a "bitbake linux-yocto" I would expect it to generate a config file=
 that includes CONFIG_OVERLAY_FS=3Dy and a kernel that includes this filesy=
stem.  I don't.

My layer is parsed correctly and the bbappend is found and parsed.  I know =
this because in the tmp directory:

tmp/work/qemux86-poky-linux/linux-yocto/4.4.26+gitAUTOINC+3030330b06_ca6a08=
bd7f-r0/

the file overlayfs.cfg exists.

Searching the log files, the only one that references this file though is l=
og.do_unpack.  I do not see any reference to it in log.do_kernel_configme o=
r log.do_configure.    I'm not sure how kernel fragments are applied, but l=
ooking through the classes and recipes for linux-yocto in poky/meta, I do n=
ot see any code that would apply kernel fragments.  So I'm not sure if I'm =
missing some piece.

Searching through the files in poky/meta, I find meta-config.sh only in rec=
ipes-core/uclibc and recipes-core/busybox.  That's why I think I'm missing =
something.

I'm using the krogoth branch of poky.

What am I missing?

Thanks,
Rich



--_000_BLUPR0601MB16491766FFC1CA176DBA4533E6670BLUPR0601MB1649_
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I am having a heck of a hard time getting a minor ke=
rnel config fragment applied.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In order to minimize all variables, I am simply tryi=
ng to build linux-yocto for a qemux86 MACHINE target.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">There had been some discussion on the mailing list p=
reviously that suggested making sure linux-yocto.inc was included within th=
e recipes.&nbsp;&nbsp; The ones being used are standard poky recipes and th=
ey do include the linux-yocto.inc file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My configuration is very simple.&nbsp; I have my own=
 layer and linux-yocto bbappend:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">meta-mylayer/recipes-kernel/linux/linux-yocto_4.4.bb=
append<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Whose contents are:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:=
&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI &#43;=3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://ov=
erlayfs.cfg \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With the config fragment in:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">meta-mylayer/recipes-kernel/linux/linux-yocto/overla=
yfs.cfg<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">whose contents is:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">CONFIG_OVERLAY_FS=3Dy<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I do a &#8220;bitbake linux-yocto&#8221; I would =
expect it to generate a config file that includes CONFIG_OVERLAY_FS=3Dy and=
 a kernel that includes this filesystem.&nbsp; I don&#8217;t.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My layer is parsed correctly and the bbappend is fou=
nd and parsed.&nbsp; I know this because in the tmp directory:<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">tmp/work/qemux86-poky-linux/linux-yocto/4.4.26&#43;g=
itAUTOINC&#43;3030330b06_ca6a08bd7f-r0/<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">the file overlayfs.cfg exists.&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Searching the log files, the only one that reference=
s this file though is log.do_unpack.&nbsp; I do not see any reference to it=
 in log.do_kernel_configme or log.do_configure.&nbsp; &nbsp;&nbsp;I&#8217;m=
 not sure how kernel fragments are applied, but looking through
 the classes and recipes for linux-yocto in poky/meta, I do not see any cod=
e that would apply kernel fragments.&nbsp; So I&#8217;m not sure if I&#8217=
;m missing some piece.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Searching through the files in poky/meta, I find met=
a-config.sh only in recipes-core/uclibc and recipes-core/busybox.&nbsp; Tha=
t&#8217;s why I think I&#8217;m missing something.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using the krogoth branch of poky.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What am I missing?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Rich<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BLUPR0601MB16491766FFC1CA176DBA4533E6670BLUPR0601MB1649_--
