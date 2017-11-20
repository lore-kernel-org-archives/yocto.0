Return-Path: <amit.gondaliya@einfochips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 543CAE00D4D; Mon, 20 Nov 2017 04:46:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_WEB,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.126.74 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [220.225.147.210 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-pu1apc01on0074.outbound.protection.outlook.com [104.47.126.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA33BE00D27
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 04:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=eInfochipsIndia.onmicrosoft.com; s=selector1-einfochips-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=kTTkNhobeGpJ4Hv4CLz+TGTc50HEG1mGertmcLlzIzI=;
	b=FTqafXu/bhsLm1QnZy/evs95YxLBrX2itL25KLXGxpIpWodHc8j9ybrjsJ+FaExyrj5ZMHqLumN3gaGl6PLvG1tef2erGifjJoKY0x1V0ymbqA6kZg+py9V/nZJSsLUn4/Nt1oOY6GEVPRVOp9XTeKNDYtB0OwoGM92Lh/QasUY=
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) by
	HK2PR02MB1155.apcprd02.prod.outlook.com (10.165.55.157) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.239.5; Mon, 20 Nov 2017 12:46:37 +0000
Received: from HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf]) by HK2PR02MB1155.apcprd02.prod.outlook.com
	([fe80::1bf:29b9:681:25cf%14]) with mapi id 15.20.0239.009;
	Mon, 20 Nov 2017 12:46:37 +0000
From: Amit Gondaliya <amit.gondaliya@einfochips.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Build Issue in pyro 2.3
Thread-Index: AQHTYfQXwChalyCKoEWVPNE69G3bnqMdLXh8
Date: Mon, 20 Nov 2017 12:46:37 +0000
Message-ID: <HK2PR02MB1155829BD8389F978F4D144FFE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
References: <HK2PR02MB115589BB4412D154E57FAF93FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
	<771e4475.9ac8.15fd91bd280.Coremail.cddatemp@163.com>
	<HK2PR02MB115517DBFABA28592D4607EEFE220@HK2PR02MB1155.apcprd02.prod.outlook.com>,
	<CAJTo0Lbb3YLyidz8zbzN7w0THxdRk3a4gX3i-G3R441KNRYKBQ@mail.gmail.com>
In-Reply-To: <CAJTo0Lbb3YLyidz8zbzN7w0THxdRk3a4gX3i-G3R441KNRYKBQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=amit.gondaliya@einfochips.com; 
x-originating-ip: [220.225.147.210]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR02MB1155;
	6:Zs69ZSSbrYaERLcNJkcVhID4hOE+BFBj3+7Fv8av+6Rm7yA+V8ki3vdvn8QUgNfxAbbI7tISStha5iZ33jJMsMMkTC3n+N6azF94ZrYoSWBq4FBIieKtqq3d9o6MPheYwEieuwfPbtFtXwwI3Gj0OzhwA25tVxwTvXtr59BtvfclAh8WC0gAs5Xft2NqdSD6SmEn/sgHmBOGHyG9gJ/4cGVbauB3kW+EvT0fNjnFPeUK1fR0VHCQFVP89VLw3o9b3Ok7NTe0OKO99wJYr8M065u6+IY7529acZjyEH50asBmFqi+d5UObmAZq3EcFsgVedpa33o/CoytX22L6huTT0auDMDfCmGXbLvJ7y95A8M=;
	5:kxax7yCjYk2g94697LYXzy6NZpCPO1XiM7BTn1q0s48BGT+9a0/VTM12xuWlFXu1uKnMZXa6B0KCjbDoQ5D+YPpKbpOCTMgb1/wR3mxGv0heyFXflK+9+sZ7iAt5B0FlOx11zTOVfB6xbCvnuK+RB167gILOfgdwo1IAJFdG3VU=;
	24:a9TgbkCCyQY1G8ygJbnjrwhXmkLsDacGZ2qzYJPzWWkOPDwnmK+LC28U8FLK5+np+3+nLdqCl3gxVxwqDOGnodUW2KKr2dGPbunTwXS4HLo=;
	7:0DqeW9WaHqi7lAhem2f2TOXHfzlo1a4ubVTbaPtPH3jl/gaDjlgvj7FUm4DGtBbg6bq3MUTE0Fedj/hYHTKIyHofs71dyIlUEWrmfW5OpS6xdLQz93fU3LQgywX15MNKLQem66xTICy4nkzS6XuJDPAxYcJN/S9sUAu/ArB0B/NjNht4Fq4X6q9i9rvwl3H6b72RmCa8aLpZzMK0IIk1m6WzpQ96FppD6zdu01qBov051a6IEf8a3ZKnxPdyuCD6
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: d986ba01-9448-4362-da4e-08d53014bd57
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603258);
	SRVR:HK2PR02MB1155; 
x-ms-traffictypediagnostic: HK2PR02MB1155:|HK2PR02MB1155:
x-microsoft-antispam-prvs: <HK2PR02MB1155614CD0CA08711064D616FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(69454984189310)(130843839470238)(228905959029699); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(3231022)(3002001)(93006095)(93001095)(6041248)(20161123562025)(20161123555025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR02MB1155; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR02MB1155; 
x-forefront-prvs: 04976078F0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(39830400002)(376002)(189002)(24454002)(377424004)(199003)(229853002)(6436002)(6506006)(6246003)(606006)(53936002)(236005)(4326008)(101416001)(6606003)(5250100002)(2950100002)(6916009)(6306002)(53546010)(9686003)(54896002)(68736007)(6116002)(102836003)(3846002)(2906002)(66066001)(3660700001)(3280700002)(99286004)(33656002)(8936002)(2900100001)(105586002)(106356001)(7696004)(86362001)(19627405001)(5660300001)(966005)(478600001)(189998001)(93886005)(14454004)(8676002)(81166006)(81156014)(5890100001)(55016002)(25786009)(54906003)(50986999)(54356999)(76176999)(74316002)(316002)(7736002)(4001150100001)(97736004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR02MB1155;
	H:HK2PR02MB1155.apcprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: einfochips.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: einfochips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d986ba01-9448-4362-da4e-08d53014bd57
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2017 12:46:37.5829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0adb040b-ca22-4ca6-9447-ab7b049a22ff
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR02MB1155
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Issue in pyro 2.3
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
X-List-Received-Date: Mon, 20 Nov 2017 12:46:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR02MB1155829BD8389F978F4D144FFE220HK2PR02MB1155apcp_"

--_000_HK2PR02MB1155829BD8389F978F4D144FFE220HK2PR02MB1155apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello


Now I am able to build the Package "Y" as non native and I found the binary=
 under below path.


<workspace>/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/Y/0.1.0-r1/package/=
usr/bin.


But my package "X" is not able to find the package "Y" It still shows me th=
at Package "Y" is missing.


please find the below log.


checking build system type
result: x86_64-pc-linux-gnu
checking host system type
result: arm-poky-linux-gnueabi
checking for pkg-config
found <workspace>/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/X/0.9.0-r1/re=
cipe-sysroot-native/usr/bin/pkg-config
result: <workspace>/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/X/0.9.0-r1/=
recipe-sysroot-native/usr/bin/pkg-config
checking for Y
result: no

"However It is able to find pkg-config. Really have no idea how it is able =
to find pkg-config..?"

My bb file of package "Y" is same as prev. attachment with following change=
s


  1.  Removed all Inherits class except "setuptools"
  2.  Removed all the task like configure,compile and install


Also in "X" recipes we will call "Y" package as a depended package as per b=
elow

DEPENDS =3D "Y"


while pkg-config is inherits as class. e.g. "inherits pkgconfig".


Please help us in this matter.

Best Regards,
Amit Gondaliya












________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Monday, November 20, 2017 5:08 PM
To: Amit Gondaliya
Cc: cddatemp; yocto@yoctoproject.org
Subject: Re: [yocto] Build Issue in pyro 2.3

A good start would be to remove the inherits you don't need such as autotoo=
ls-brokensep. And the empty do_configure() do_compile() functions.  You're =
not telling install where to install which is why the files are going into =
the sysroot and not packaged up.  Just delete your do_install() and let the=
 setuptools class do what it is meant to do: build and install packages tha=
t use setuptools.

Ross

On 20 November 2017 at 11:27, Amit Gondaliya <amit.gondaliya@einfochips.com=
<mailto:amit.gondaliya@einfochips.com>> wrote:

Hello,


In our case the Package is "Y" but all the data falls into the recipe-sysro=
ot-native of "Y." any Idea what's wrong with Y.
is there any example of "Y-native" that help me to generate "Y-native"" fro=
m "Y"

Please find the attached file of Y.bb



Best Regards,
Amit Gondaliya












________________________________
From: cddatemp <cddatemp@163.com<mailto:cddatemp@163.com>>
Sent: Monday, November 20, 2017 4:36 PM
To: Amit Gondaliya
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re:[yocto] Build Issue in pyro 2.3

At 2017-11-20 18:18:42, "Amit Gondaliya" <amit.gondaliya@einfochips.com<mai=
lto:amit.gondaliya@einfochips.com>> wrote:
> Hello,
>
> I am configuring one  package "X" that is depended on other  package "Y".
>
> the "Y" package is successfully build and I am able to find it into the b=
elow path.
>
> <workspace>tmp/work/cortexa8hf-neon-poky-linux-gnueabi/"Y"/0.1.0-r1/recip=
e-sysroot-native/usr/bin
>
> As per my understanding if the package "X" is depended on the package "Y"
> then all the components of the package "Y" should be copied into the path=
 "recipe-sysroot-native/usr/bin" of the package "X".
>

If "Y" is "Y-native", then it should be in "recipe-sysroot-native".


If it is just "Y", then it should be in "recipe-sysroot".

> But I am not able to find the depended package "Y" into the recipe-sysroo=
t-native of the Package "X".
>
> If I my understanding is false let me know the correct way to do this.
> As I am not able to find the package "Y" into the dir "recipe-sysroot-nat=
ive/usr/bin" of package "X"
>
> thanks
> Amit G.
>
> Best Regards,
> Amit Gondaliya

***************************************************************************=
***************************************************************************=
******* eInfochips Business Disclaimer: This e-mail message and all attachm=
ents transmitted with it are intended solely for the use of the addressee a=
nd may contain legally privileged and confidential information. If the read=
er of this message is not the intended recipient, or an employee or agent r=
esponsible for delivering this message to the intended recipient, you are h=
ereby notified that any dissemination, distribution, copying, or other use =
of this message or its attachments is strictly prohibited. If you have rece=
ived this message in error, please notify the sender immediately by replyin=
g to this message and please delete it from your computer. Any views expres=
sed in this message are those of the individual sender unless otherwise sta=
ted. Company has taken enough precautions to prevent the spread of viruses.=
 However the company accepts no liability for any damage caused by any viru=
s transmitted by this email. **********************************************=
***************************************************************************=
************************************

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_HK2PR02MB1155829BD8389F978F4D144FFE220HK2PR02MB1155apcp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:11pt;color:#006fc9;font=
-family:Verdana,Geneva,sans-serif;" dir=3D"ltr">
<p>Hello <br>
</p>
<p><br>
</p>
<p>Now I am able to build the Package &quot;Y&quot; as non native and I fou=
nd the binary under below path.</p>
<p><br>
</p>
<p>&lt;workspace&gt;/<span>tmp/work/cortexa8hf-neon-poky-linux-gnueabi/<b>Y=
</b>/0.1.0-r1/package/usr/bin</span>.</p>
<p><br>
</p>
<p>But my package &quot;<b>X</b>&quot; is not able to find the package &quo=
t;Y&quot; It still shows me that Package &quot;<b>Y</b>&quot; is missing.</=
p>
<p><br>
</p>
<p>please find the below log.</p>
<p><br>
</p>
<p></p>
<div><i>checking build system type<br>
result: x86_64-pc-linux-gnu<br>
checking host system type<br>
result: arm-poky-linux-gnueabi<br>
checking for pkg-config<br>
found &lt;workspace&gt;/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/X/0.9.0=
-r1/recipe-sysroot-native/usr/bin/pkg-config<br>
result: &lt;workspace&gt;/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/X/0.9=
.0-r1/recipe-sysroot-native/usr/bin/pkg-config<b><br>
</b></i>
<div><b></b><b><i>checking for Y<br>
result: no</i></b><i><b></b></i><b><i></i></b></div>
<div><i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
</b></i></div>
<div><i><b>&quot;However It is able to find pkg-config. Really have no idea=
 how it is able to find pkg-config..?&quot;<br>
</b></i></div>
<div><b><br>
</b></div>
</div>
<div>My bb file of package &quot;Y&quot; is same as prev. attachment with f=
ollowing changes</div>
<div><br>
</div>
<div>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li>Removed all Inherits class except &quot;setuptools&quot;</li><li>Remove=
d all the task like <span>configure</span>,compile and install</li></ol>
<p><br>
</p>
<p>Also in &quot;X&quot; recipes we will call &quot;Y&quot; package as a de=
pended package as per below</p>
<p>DEPENDS =3D &quot;Y&quot;</p>
<p><br>
</p>
<p>while pkg-config is inherits as class. e.g. <b>&quot;inherits pkgconfig&=
quot;</b>.<br>
</p>
<p><br>
</p>
<p>Please help us in this matter.<br>
</p>
</div>
<br>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 11pt; colo=
r: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-family: Calibri=
, Arial, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Em=
oji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbo=
l&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<span style=3D"font-family:&quot;Comic Sans MS&quot;,fantasy,cursive"></spa=
n>
<table style=3D"margin:0px; padding:0px; max-width:100%; border-collapse:co=
llapse; border-spacing:0px; font-family:Arial,Helvetica,sans-serif" cellspa=
cing=3D"0">
<tbody style=3D"margin:0px; padding:0px">
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-family:Calibri,san=
s-serif; font-size:14px; color:rgb(0,75,118)">
<b style=3D"margin:0px; padding:0px; border:0px; vertical-align:baseline; l=
ine-height:19.6000003814697px"><span style=3D"font-family:Verdana,Geneva,sa=
ns-serif; font-size:10pt">Best Regards,</span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Verdana,Ge=
neva,sans-serif; font-size:10pt">Amit Gondaliya</span></b><br style=3D"marg=
in:0px; padding:0px">
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td style=3D"margin:0px; padding:0px; font-size:13px" valign=3D"top"><br>
</td>
<td style=3D"margin:0px; padding:13px 0px 0px; font-family:Calibri,sans-ser=
if; font-size:14px; color:rgb(0,75,118)" valign=3D"top">
<br>
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-size:13px"><br>
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-family:Calibri,san=
s-serif; font-size:14px; color:rgb(0,75,118)">
<br>
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-family:Calibri,san=
s-serif; font-size:14px; color:rgb(0,75,118)">
<br>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1" customtabindex=
=3D"-1" disabled=3D"true">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Burton, Ross &lt;ros=
s.burton@intel.com&gt;<br>
<b>Sent:</b> Monday, November 20, 2017 5:08 PM<br>
<b>To:</b> Amit Gondaliya<br>
<b>Cc:</b> cddatemp; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Build Issue in pyro 2.3</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">A good start would be to remove the inherits you don't nee=
d such as autotools-brokensep. And the empty do_configure() do_compile() fu=
nctions.&nbsp; You're not telling install where to install which is why the=
 files are going into the sysroot and not
 packaged up.&nbsp; Just delete your do_install() and let the setuptools cl=
ass do what it is meant to do: build and install packages that use setuptoo=
ls.
<div><br>
</div>
<div>Ross</div>
</div>
<div class=3D"x_gmail_extra"><br>
<div class=3D"x_gmail_quote">On 20 November 2017 at 11:27, Amit Gondaliya <=
span dir=3D"ltr">
&lt;<a href=3D"mailto:amit.gondaliya@einfochips.com" target=3D"_blank" tabi=
ndex=3D"-1" disabled=3D"true">amit.gondaliya@einfochips.com</a>&gt;</span> =
wrote:<br>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_m_-4399630852257597061divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:11pt; color:#006fc9; font-family:Verdana,Geneva,sans-serif">
<p>Hello,</p>
<p><br>
</p>
<p></p>
<div>In our case the Package is &quot;Y&quot; but all the data falls into t=
he <span>recipe-sysroot-native</span> of &quot;Y.&quot; any Idea what's wro=
ng with Y.<br>
</div>
<div>is there any example of &quot;Y-native&quot; that help me to generate =
&quot;Y-native&quot;&quot; from &quot;Y&quot;</div>
<div><br>
</div>
<div>Please find the attached file of Y.bb<br>
</div>
<br>
<p></p>
<p><br>
</p>
<div id=3D"x_m_-4399630852257597061Signature">
<div id=3D"x_m_-4399630852257597061divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:11pt; color:rgb(0,0,0); background-color:rgb(255,255,255); fo=
nt-family:Calibri,Arial,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<span style=3D"font-family:&quot;Comic Sans MS&quot;,fantasy,cursive"></spa=
n>
<table style=3D"margin:0px; padding:0px; max-width:100%; border-collapse:co=
llapse; border-spacing:0px; font-family:Arial,Helvetica,sans-serif" cellspa=
cing=3D"0">
<tbody style=3D"margin:0px; padding:0px">
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-family:Calibri,san=
s-serif; font-size:14px; color:rgb(0,75,118)">
<b style=3D"margin:0px; padding:0px; border:0px; vertical-align:baseline; l=
ine-height:19.6000003814697px"><span style=3D"font-family:Verdana,Geneva,sa=
ns-serif; font-size:10pt">Best Regards,</span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Verdana,Ge=
neva,sans-serif; font-size:10pt">Amit Gondaliya</span></b><br style=3D"marg=
in:0px; padding:0px">
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td style=3D"margin:0px; padding:0px; font-size:13px" valign=3D"top"><br>
</td>
<td style=3D"margin:0px; padding:13px 0px 0px; font-family:Calibri,sans-ser=
if; font-size:14px; color:rgb(0,75,118)" valign=3D"top">
<br>
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-size:13px"><br>
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-family:Calibri,san=
s-serif; font-size:14px; color:rgb(0,75,118)">
<br>
</td>
</tr>
<tr style=3D"margin:0px; padding:0px">
<td colspan=3D"2" style=3D"margin:0px; padding:0px; font-family:Calibri,san=
s-serif; font-size:14px; color:rgb(0,75,118)">
<br>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-4399630852257597061divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt" color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:=
</b> cddatemp &lt;<a href=3D"mailto:cddatemp@163.com" target=3D"_blank" tab=
index=3D"-1" disabled=3D"true">cddatemp@163.com</a>&gt;<br>
<b>Sent:</b> Monday, November 20, 2017 4:36 PM<br>
<b>To:</b> Amit Gondaliya<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" tabi=
ndex=3D"-1" disabled=3D"true">
yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re:[yocto] Build Issue in pyro 2.3</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_h5">
<div>
<div style=3D"line-height:1.7; color:#000000; font-size:14px; font-family:A=
rial">
<div>At 2017-11-20 18:18:42, &quot;Amit Gondaliya&quot; &lt;<a href=3D"mail=
to:amit.gondaliya@einfochips.com" target=3D"_blank" tabindex=3D"-1" disable=
d=3D"true">amit.gondaliya@einfochips.com</a><wbr>&gt; wrote:</div>
<div>&gt; Hello,</div>
<div>&gt;</div>
<div>&gt; I am configuring one &nbsp;package &quot;X&quot; that is depended=
 on other &nbsp;package &quot;Y&quot;.</div>
<div>&gt;</div>
<div>&gt; the &quot;Y&quot; package is successfully build and I am able to =
find it into the below path.</div>
<div>&gt;</div>
<div>&gt; &lt;workspace&gt;tmp/work/<wbr>cortexa8hf-neon-poky-linux-<wbr>gn=
ueabi/&quot;Y&quot;/0.1.0-r1/recipe-<wbr>sysroot-native/usr/bin</div>
<div>&gt;</div>
<div>&gt; As per my understanding if the package &quot;X&quot; is depended =
on the package &quot;Y&quot;&nbsp;</div>
<div>&gt; then all the components of the package &quot;Y&quot; should be co=
pied into the path &quot;recipe-sysroot-native/usr/<wbr>bin&quot; of the pa=
ckage &quot;X&quot;.</div>
<div>&gt;</div>
<div><br>
</div>
<div>If &quot;Y&quot; is &quot;Y-native&quot;, then it should be in &quot;r=
ecipe-sysroot-native&quot;.</div>
<br>
<div><br>
</div>
<div>If it is just &quot;Y&quot;, then it should be in &quot;recipe-sysroot=
&quot;.</div>
<div><br>
</div>
<div>&gt; But I am not able to find the depended package &quot;Y&quot; into=
 the recipe-sysroot-native of the Package &quot;X&quot;.</div>
<div>&gt;</div>
<div>&gt; If I my understanding is false let me know the correct way to do =
this.</div>
<div>&gt; As I am not able to find the package &quot;Y&quot; into the dir &=
quot;recipe-sysroot-native/usr/<wbr>bin&quot; of package &quot;X&quot;</div=
>
<div>&gt;</div>
<div>&gt; thanks</div>
<div>&gt; Amit G.</div>
<div>&gt;</div>
<div>&gt; Best Regards,</div>
<div>&gt; Amit Gondaliya</div>
<div><br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
******************************<wbr>******************************<wbr>*****=
*************************<wbr>******************************<wbr>**********=
********************<wbr>******* eInfochips Business Disclaimer: This e-mai=
l message and all attachments transmitted
 with it are intended solely for the use of the addressee and may contain l=
egally privileged and confidential information. If the reader of this messa=
ge is not the intended recipient, or an employee or agent responsible for d=
elivering this message to the intended
 recipient, you are hereby notified that any dissemination, distribution, c=
opying, or other use of this message or its attachments is strictly prohibi=
ted. If you have received this message in error, please notify the sender i=
mmediately by replying to this message
 and please delete it from your computer. Any views expressed in this messa=
ge are those of the individual sender unless otherwise stated. Company has =
taken enough precautions to prevent the spread of viruses. However the comp=
any accepts no liability for any
 damage caused by any virus transmitted by this email. ********************=
**********<wbr>******************************<wbr>*************************=
*****<wbr>******************************<wbr>******************************=
<wbr>*******
</div>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" tabindex=3D"-1" disabled=3D"true"=
>yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank" tabindex=3D"-1" disabled=3D"true">https://lists.yoctopr=
oject.<wbr>org/listinfo/yocto</a><br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HK2PR02MB1155829BD8389F978F4D144FFE220HK2PR02MB1155apcp_--
