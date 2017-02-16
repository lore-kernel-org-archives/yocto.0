Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15975E00A48; Wed, 15 Feb 2017 23:48:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0058.outbound.protection.outlook.com [104.47.34.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 332ADE00A1C
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 23:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=vdSF1GHQN6MzkCf70bXfmJ0egYd6HvpsrIlJTE23UCg=;
	b=adoLKuFTCq3rMRlh7Z0+pSuuWTw6B4t5hBBu43YnA9T7AkzSZ/yyXhk0ToLCafBj2Y47pNqENHFgwV86yx5gl8EYPOvrMcgjkRdZCMlPHU1N1v4gxINOdkrd/5gg252SFL/lAS2pL8Q+YYlM1yrl78fDFVFLJeL1Gk7pQjFFqAA=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2954.prod.exchangelabs.com (10.174.181.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.888.16; Thu, 16 Feb 2017 07:48:33 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0888.029; Thu, 16 Feb 2017 07:48:33 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] meta-efl build?
Thread-Index: AQHSh/x4PscFjZx9aUG9Qro60DsqtqFq77cAgABOmLU=
Date: Thu, 16 Feb 2017 07:48:33 +0000
Message-ID: <DM5PR0101MB2953489C05E784507F21F276B65A0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB295324100DA9294101797F66B65A0@DM5PR0101MB2953.prod.exchangelabs.com>,
	<CAMKF1sqq7W8TQYVRAWJuyP9eTs5Xyrkd=4a6n3kx4u1J0wSADQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqq7W8TQYVRAWJuyP9eTs5Xyrkd=4a6n3kx4u1J0wSADQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [25.171.161.132]
x-ms-office365-filtering-correlation-id: df694595-19e7-45d9-673a-08d456403562
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM5PR0101MB2954; 
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2954;
	7:shPArhGfPQveeg10Tr+EM9+aK/SQA8hSK3+MlbM8bDxBBQaB8rl02uhLNS8QrrD04Hh024ZXcIEA5XI7LgG5tHh+UKTFIy59VQGxcdgXhGVLVI0vmyOWPtLJauU26EACvIumX3lQpKh+BZHD6lW8NTc4rEHhvwYFwdtPhWEI8iU4AgFuojeEQwvHbe7QJSUey7Jog3kXmhv7GilfWjVhmYHGTOie/OeyKIV+uouDUsV6Lw2Ut7Z/ayJ49r+/6okxw0lOAjcriCotljvaITx5YbdT5xAjJHWlvmbKl5Tkniy0yGZD+R9rPuDjTIEPrmG8w/mRM4IY22yumtrevPoBYQ==
x-microsoft-antispam-prvs: <DM5PR0101MB295404B731E72C366C9B7418B65A0@DM5PR0101MB2954.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(20161123555025)(20161123564025)(20161123560025)(20161123558025)(20161123562025)(6072148);
	SRVR:DM5PR0101MB2954; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2954; 
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(39450400003)(199003)(377454003)(189002)(45984002)(24454002)(2900100001)(189998001)(606005)(110136004)(74316002)(38730400002)(53546003)(19627405001)(39060400002)(53936002)(92566002)(7906003)(77096006)(6246003)(7736002)(3660700001)(25786008)(105586002)(106356001)(122556002)(6506006)(229853002)(6436002)(86362001)(106116001)(7696004)(50986999)(6606003)(6916009)(102836003)(33656002)(4326007)(2906002)(8936002)(6116002)(97736004)(3846002)(54356999)(81166006)(99286003)(101416001)(54896002)(81156014)(9686003)(236005)(2950100002)(6306002)(15974865002)(5660300001)(66066001)(76176999)(389900002)(68736007)(8676002)(3280700002)(55016002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2954;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2017 07:48:33.6917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2954
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-efl build?
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
X-List-Received-Date: Thu, 16 Feb 2017 07:48:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB2953489C05E784507F21F276B65A0DM5PR0101MB2953_"

--_000_DM5PR0101MB2953489C05E784507F21F276B65A0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.

Thank you very much for the pointer, but I think this image is x11 based..

I can see EFL project has some pages mentioning about booting EFL on waylan=
d-only environment, but it is not yocto (or oe) based instruction.

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Thursday, February 16, 2017 11:53 AM
To: Takashi Matsuzawa
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] meta-efl build?

Takashi-san

On Wed, Feb 15, 2017 at 6:35 PM, Takashi Matsuzawa <tmatsuzawa@xevo.com> wr=
ote:
> Hello, Yocto.
>
>
> I am trying to build EFL on top of my mayland environment (krogoth based)=
.
>
> I thought it would be easy since there is meta-openembedded/meta-efl
> recipes, but now I am stuck.
>
>
> Specifically, I am experiencing x11 dependency (the recipes erquire x11 t=
o
> be in DISTRO_FEATURES here and elsewhere), but for my target I am setttin=
g
> wayland only, no x11.
>
> (e.g. it says it needs libxcb, etc.)
>
>
> Is it normal and I am failing to configure it properly?
>
>
> I found below, but it does not talk much about the build errors I am faci=
ng,
> and if the targets I am specifying is correct, etc.
>
>
> https://www.enlightenment.org/distros/yocto-start
Yocto - Enlightenment Main<https://www.enlightenment.org/distros/yocto-star=
t>
www.enlightenment.org
In Yocto, a meta-efl layer is provided by the meta-openembedded layer. It c=
ontains EFL, Elementary, Enlightenment, Terminology and other recipes.



>
> If you are aware of any previous attempt, or, guide that I just overlooke=
d
> for my laziness - I highly appreciate your pointers.
>

Using some preexisting image like angstrom one would be a good start
for you e.g.

https://github.com/Angstrom-distribution/meta-angstrom/blob/master/recipes-=
images/angstrom/efl-nodm-image.bb
meta-angstrom/efl-nodm-image.bb at master =B7 Angstrom-distribution/meta-an=
gstrom =B7 GitHub<https://github.com/Angstrom-distribution/meta-angstrom/bl=
ob/master/recipes-images/angstrom/efl-nodm-image.bb>
github.com
meta-angstrom - MIrror of Angstrom metadata layer




it should work if you were to use angstrom distribution but if you
dont it should serve a good jump start.

--_000_DM5PR0101MB2953489C05E784507F21F276B65A0DM5PR0101MB2953_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello.</p>
<p>Thank you very much for the pointer, but I think this image is x11 based=
..</p>
<div><br>
</div>
I can see EFL project has some pages mentioning about booting EFL on waylan=
d-only environment, but it is not yocto (or oe)&nbsp;based instruction.<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Sent:</b> Thursday, February 16, 2017 11:53 AM<br>
<b>To:</b> Takashi Matsuzawa<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] meta-efl build?</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Takashi-san<br>
<br>
On Wed, Feb 15, 2017 at 6:35 PM, Takashi Matsuzawa &lt;tmatsuzawa@xevo.com&=
gt; wrote:<br>
&gt; Hello, Yocto.<br>
&gt;<br>
&gt;<br>
&gt; I am trying to build EFL on top of my mayland environment (krogoth bas=
ed).<br>
&gt;<br>
&gt; I thought it would be easy since there is meta-openembedded/meta-efl<b=
r>
&gt; recipes, but now I am stuck.<br>
&gt;<br>
&gt;<br>
&gt; Specifically, I am experiencing x11 dependency (the recipes erquire x1=
1 to<br>
&gt; be in DISTRO_FEATURES here and elsewhere), but for my target I am sett=
ting<br>
&gt; wayland only, no x11.<br>
&gt;<br>
&gt; (e.g. it says it needs libxcb, etc.)<br>
&gt;<br>
&gt;<br>
&gt; Is it normal and I am failing to configure it properly?<br>
&gt;<br>
&gt;<br>
&gt; I found below, but it does not talk much about the build errors I am f=
acing,<br>
&gt; and if the targets I am specifying is correct, etc.<br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"https://www.enlightenment.org/distros/yocto-start" id=3D"LP=
lnk533603" previewremoved=3D"true">
https://www.enlightenment.org/distros/yocto-start</a>
<div id=3D"LPBorder_GT_14872304907880.6474812378777293" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14872304907760.24369653242144063" cellspacing=3D"0=
" style=3D"width: 90%; background-color: rgb(255, 255, 255); position: rela=
tive; overflow: auto; padding-top: 20px; padding-bottom: 20px; margin-top: =
20px; border-top: 1px dotted rgb(200, 200, 200); border-bottom: 1px dotted =
rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_14872304907820.19027537535251082" colspan=3D"2" style=3D=
"vertical-align: top; position: relative; padding: 0px; display: table-cell=
;">
<div id=3D"LPRemovePreviewContainer_14872304907830.8129616584475641"></div>
<div id=3D"LPTitle_14872304907830.8276531913587193" style=3D"top: 0px; colo=
r: rgb(37, 107, 162); font-weight: normal; font-size: 21px; font-family: wf=
_segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &q=
uot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-h=
eight: 21px;">
<a id=3D"LPUrlAnchor_14872304907850.7860917692346319" href=3D"https://www.e=
nlightenment.org/distros/yocto-start" target=3D"_blank" style=3D"text-decor=
ation: none;">Yocto - Enlightenment Main</a></div>
<div id=3D"LPMetadata_14872304907860.5337807460401298" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: wf=
_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial=
, sans-serif; font-size: 14px; line-height: 14px;">
www.enlightenment.org</div>
<div id=3D"LPDescription_14872304907870.9142569195386543" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_seg=
oe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sa=
ns-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;">
In Yocto, a meta-efl layer is provided by the meta-openembedded layer. It c=
ontains EFL, Elementary, Enlightenment, Terminology and other recipes.</div=
>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
&gt; If you are aware of any previous attempt, or, guide that I just overlo=
oked<br>
&gt; for my laziness - I highly appreciate your pointers.<br>
&gt;<br>
<br>
Using some preexisting image like angstrom one would be a good start<br>
for you e.g.<br>
<br>
<a href=3D"https://github.com/Angstrom-distribution/meta-angstrom/blob/mast=
er/recipes-images/angstrom/efl-nodm-image.bb" id=3D"LPlnk571155" previewrem=
oved=3D"true">https://github.com/Angstrom-distribution/meta-angstrom/blob/m=
aster/recipes-images/angstrom/efl-nodm-image.bb</a>
<div id=3D"LPBorder_GT_14872304917550.8522323747370597" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14872304917510.5431857301761898" cellspacing=3D"0"=
 style=3D"width: 90%; background-color: rgb(255, 255, 255); position: relat=
ive; overflow: auto; padding-top: 20px; padding-bottom: 20px; margin-top: 2=
0px; border-top: 1px dotted rgb(200, 200, 200); border-bottom: 1px dotted r=
gb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_14872304917520.673298705033359" colspan=3D"2" style=3D"v=
ertical-align: top; position: relative; padding: 0px; display: table-cell;"=
>
<div id=3D"LPRemovePreviewContainer_14872304917520.11409067950060492"></div=
>
<div id=3D"LPTitle_14872304917520.5808397112251555" style=3D"top: 0px; colo=
r: rgb(37, 107, 162); font-weight: normal; font-size: 21px; font-family: wf=
_segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &q=
uot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-h=
eight: 21px;">
<a id=3D"LPUrlAnchor_14872304917530.7003096106368669" href=3D"https://githu=
b.com/Angstrom-distribution/meta-angstrom/blob/master/recipes-images/angstr=
om/efl-nodm-image.bb" target=3D"_blank" style=3D"text-decoration: none;">me=
ta-angstrom/efl-nodm-image.bb at master
 =B7 Angstrom-distribution/meta-angstrom =B7 GitHub</a></div>
<div id=3D"LPMetadata_14872304917530.6012043419917412" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: wf=
_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial=
, sans-serif; font-size: 14px; line-height: 14px;">
github.com</div>
<div id=3D"LPDescription_14872304917540.26122977990779317" style=3D"display=
: block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_se=
goe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, s=
ans-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow:=
 hidden;">
meta-angstrom - MIrror of Angstrom metadata layer</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
<br>
it should work if you were to use angstrom distribution but if you<br>
dont it should serve a good jump start.<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DM5PR0101MB2953489C05E784507F21F276B65A0DM5PR0101MB2953_--
