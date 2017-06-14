Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12B3FE00B87; Wed, 14 Jun 2017 08:57:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from debemgw001.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 555F2E00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 08:57:09 -0700 (PDT)
Received: from DEBEMAIL002.kostal.int ([10.20.2.182]) by 
	debemgw001.kostal.com (8.14.7/8.14.7) with ESMTP id v5EFv70R017365 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL) for 
	<yocto@yoctoproject.org>; Wed, 14 Jun 2017 17:57:07 +0200
Received: from DEBEMAIL002.kostal.int (10.20.2.182) by DEBEMAIL002.kostal.int 
	(10.20.2.182) with Microsoft SMTP Server (TLS) id 15.0.1263.5; Wed, 
	14 Jun 2017 17:57:07 +0200
Received: from DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb]) by 
	DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb%12]) with mapi id 
	15.00.1263.000; Wed, 14 Jun 2017 17:57:07 +0200
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] useradd and one sysroot per recipe in pyro
Thread-Index: AdLlJnSBihQf76a3STmRnV9EIq92wA==
Date: Wed, 14 Jun 2017 15:57:07 +0000
Message-ID: <8af3780d8f5d43e988f8161ec69d5965@DEBEMAIL002.kostal.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-newsletter: false
Subject: useradd and one sysroot per recipe in pyro
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
X-List-Received-Date: Wed, 14 Jun 2017 15:57:14 -0000
Content-Language: de-DE
Content-Type: multipart/alternative; 
	boundary="_000_8af3780d8f5d43e988f8161ec69d5965DEBEMAIL002kostalint_"

--_000_8af3780d8f5d43e988f8161ec69d5965DEBEMAIL002kostalint_
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Any ideas how to use "useradd" bbclass with pyro?

If I move useradd to my recipe my-appl.bb, it works. But there are more rec=
ipes depending on the added user, so I want to add this user in a base-reci=
pe and just depend on it using (DEPENDS/RDEPENDS).

Regards
Christian

Von: Andersen, Christian
Gesendet: Dienstag, 13. Juni 2017 18:10
An: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
Betreff: useradd and one sysroot per recipe in pyro

Hello,

currently I am trying the newest Yocto release (pyro). It seems I have a pr=
oblem with useradd and the new concept of one sysroot per recipe.

I have a base recipe (let's call it my-base.bb) which inherits useradd and =
creates a new user (let's call him myuser):

inherit useradd

USERADD_PACKAGES =3D "${PN}"
USERADD_PARAM_${PN} =3D " \
    --uid 1200 \
    --gid 1200 \
    --system \
    --shell /bin/bash \
    --create-home \
    --home-dir /home/myuser \
    --groups mygroup,video,input \
    myuser"
GROUPADD_PARAM_${PN} =3D "-g 1200 mygroup"

do_install () {
install -d ${D}/home/myuser
            chown -R myuser:mygroup ${D}/home/myuser
}

Other recipes depend on this base recipe (via DEPENDS and RDEPENDS), becaus=
e they require this user, e.g. in recipe my-appl.bb (in this case python on=
ly, so no configure or compile):

DEPENDS =3D "puck-base"
RDEPENDS_${PN} =3D "puck-base python3-dbus python3-sqlite3 python3-netclien=
t python3-requests"

do_configure[noexec] =3D "1"
do_compile[noexec] =3D "1"

do_install () {
            (...)

install -d ${D}${sysconfdir}/myappl
            chown -R myuser:mygroup ${D}${sysconfdir}/myappl

install -d ${D}${localstatedir}/lib/myappl
            chown -R myuser:mygroup ${D}${localstatedir}/lib/myappl
}

Unfortunately I get an error when building the recipe my-appl.bb

| chown: invalid user: 'myuser:mygroup'
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_install (log file is located at ...)
ERROR: Task (.../my-appl.bb:do_install) failed with exit code '1'

In morty the user was created in the shared sysroot. But using pyro the use=
r is not created in the recipe-sysroot.

What am I doing wrong and is there a way to solve this?

Thanks in advance!

Regards
Christian

KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iserlo=
hn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2=
351 16-0 * Telefax: +49  2351 16-2400
Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fax =
+49 2331 8040-602
Gesch=E4ftsf=FChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Dipl.-Oec. =
Andreas Kostal


--_000_8af3780d8f5d43e988f8161ec69d5965DEBEMAIL002kostalint_
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<META http-equiv=3D"Content-Type" content=3D"text/html; charset=3DISO-8859-=
1">
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
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
span.E-MailFormatvorlage17
	{mso-style-type:personal;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.E-MailFormatvorlage18
	{mso-style-type:personal-reply;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,sans-serif">Any ideas how to use &#8222;useradd&#8220; bbclass w=
ith pyro?<br>
<br>
If I move useradd to my recipe my-appl.bb, it works. But there are more rec=
ipes depending on the added user, so I want to add this user in a base-reci=
pe and just depend on it using (DEPENDS/RDEPENDS).<br>
<br>
Regards<br>
Christian<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Von:</span></b><span lang=3D=
"EN-US"> Andersen, Christian
<br>
<b>Gesendet:</b> Dienstag, 13. Juni 2017 18:10<br>
<b>An:</b> 'yocto@yoctoproject.org' &lt;yocto@yoctoproject.org&gt;<br>
<b>Betreff:</b> useradd and one sysroot per recipe in pyro<o:p></o:p></span=
></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">currently I am trying the newest Yocto=
 release (pyro). It seems I have a problem with useradd and the new concept=
 of one sysroot per recipe.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I have a base recipe (let&#8217;s call=
 it my-base.bb) which inherits useradd and creates a new user (let&#8217;s =
call him myuser):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">inherit useradd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">USERADD_PACKAGES =3D &quot;${PN}&quot;=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">USERADD_PARAM_${PN} =3D &quot; \<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; --uid 1200 \<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; --gid 1200 \<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; --system \<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; --shell /bin/bash \=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; --create-home \<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; --home-dir /home/my=
user \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; --groups mygroup,vi=
deo,input \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; myuser&quot;<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">GROUPADD_PARAM_${PN} =3D &quot;-g 1200=
 mygroup&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">do_install () {<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">install -=
d ${D}/home/myuser<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; chown -R myuser:mygroup ${D}/home/myuser<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Other recipes depend on this base reci=
pe (via DEPENDS and RDEPENDS), because they require this user, e.g. in reci=
pe my-appl.bb (in this case python only, so no configure
 or compile):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">DEPENDS =3D &quot;puck-base&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">RDEPENDS_${PN} =3D &quot;puck-base pyt=
hon3-dbus python3-sqlite3 python3-netclient python3-requests&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">do_configure[noexec] =3D &quot;1&quot;=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">do_compile[noexec] =3D &quot;1&quot;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">do_install () {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; (&#8230;)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">install -=
d ${D}${sysconfdir}/myappl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; chown -R myuser:mygroup ${D}${sysconfdir}/myap=
pl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">install -=
d ${D}${localstatedir}/lib/myappl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; chown -R myuser:mygroup ${D}${localstatedir}/l=
ib/myappl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Unfortunately I get an error when buil=
ding the recipe my-appl.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">| chown: invalid user: &#8216;myuser:m=
ygroup&#8217;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">| WARNING: exit code 1 from a shell co=
mmand.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">| ERROR: Function failed: do_install (=
log file is located at &#8230;)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">ERROR: Task (&#8230;/my-appl.bb:do_ins=
tall) failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">In morty the user was created in the s=
hared sysroot. But using pyro the user is not created in the recipe-sysroot=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">What am I doing wrong and is there a w=
ay to solve this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Thanks in advance!<span style=3D"color:black"><br>
<br>
R</span>egards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Christian<o:p></o:p></span></p>
</div>
=0A<table>=0A<tbody><tr valign=3D"bottom">=0A<td valign=3D"bottom">=0A<img =
border=3D"0" src=3D"http://www.kostal-solar-electric.com/~/media/Industrie%=
20Elektrik/Header_Logos%20und%20Bilder/blue_Quadrat_Intelligent.ashx" />=0A=
</td>=0A<td width=3D"5"></td>=0A<td valign=3D"bottom" style=3D"font-size: 8=
pt;">=0AKOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergerich=
t Iserlohn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170=0A<br />=0APostansch=
rift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2351 16-0 =
* Telefax: +49  2351 16-2400=0A<br />=0AWerksanschrift: Lange Eck 11, D-580=
99 Hagen * Tel. +49 2331 8040-800 * Fax +49 2331 8040-602=0A<br />=0AGesch=
=E4ftsf=FChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Dipl.-Oec. Andre=
as Kostal=0A</td>=0A</tr>=0A</tbody></table>=0A=0A=0A=0A</body>
</html>

--_000_8af3780d8f5d43e988f8161ec69d5965DEBEMAIL002kostalint_--
