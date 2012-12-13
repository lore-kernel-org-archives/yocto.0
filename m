Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 6BC64E00294
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 12:59:57 -0800 (PST)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX08.enea.se ([fe80::fda4:d8b2:80c9:b320%24]) with mapi id
	14.02.0318.001; Thu, 13 Dec 2012 21:59:54 +0100
From: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "rpjday@crashcourse.ca"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] [PATCH] Use "+=" consistently when setting
	IMAGE_FSTYPES in Yocto machine conf files.
Thread-Index: AQHN2WxRpyIr6+dIFEeUe6CqIZiz95gXNsFA
Date: Thu, 13 Dec 2012 20:59:54 +0000
Message-ID: <88701C38B5D07249817D428430999C9128AA9E5D@sestoex09.enea.se>
References: <alpine.DEB.2.02.1212131456500.10980@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212131456500.10980@oneiric>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [PATCH] Use "+=" consistently when setting IMAGE_FSTYPES in Yocto machine conf files.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Dec 2012 20:59:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_88701C38B5D07249817D428430999C9128AA9E5Dsestoex09enease_"

--_000_88701C38B5D07249817D428430999C9128AA9E5Dsestoex09enease_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Hmm,
This will lead to these variables beeing append:able but non-overridable in=
 image layer, as an(un?)intended consequence, right ?

Br,
David

Sent from my Android phone using TouchDown (www.nitrodesk.com)

-----Original Message-----
From: Robert P. J. Day [rpjday@crashcourse.ca]
Received: Thursday, 13 Dec 2012, 20:59
To: Yocto discussion list [yocto@yoctoproject.org]
Subject: [yocto] [PATCH] Use "+=3D" consistently when setting IMAGE_FSTYPES=
 in Yocto machine conf files.


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf b/meta-yocto-bsp/conf=
/machine/atom-pc.conf
index 77dd7fb..fbde1d3 100644
--- a/meta-yocto-bsp/conf/machine/atom-pc.conf
+++ b/meta-yocto-bsp/conf/machine/atom-pc.conf
@@ -25,7 +25,7 @@ XSERVER ?=3D "xserver-xorg \

 MACHINE_EXTRA_RRECOMMENDS =3D "kernel-modules eee-acpi-scripts"

-IMAGE_FSTYPES ?=3D "ext3 cpio.gz live"
+IMAGE_FSTYPES +=3D "ext3 cpio.gz live"

 APPEND +=3D "usbcore.autosuspend=3D1"

diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto=
-bsp/conf/machine/routerstationpro.conf
index e5e4d1a..c7a5ad5 100644
--- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
+++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
@@ -22,5 +22,5 @@ USE_VT ?=3D "0"

 MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules"

-IMAGE_FSTYPES ?=3D "jffs2 tar.bz2"
+IMAGE_FSTYPES +=3D "jffs2 tar.bz2"


--

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--_000_88701C38B5D07249817D428430999C9128AA9E5Dsestoex09enease_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:11p=
t; color:black">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:11=
pt; color:black">Hi,<br>
<br>
Hmm, <br>
This will lead to these variables beeing append:able but non-overridable in=
 image layer, as an(un?)intended consequence, right ?<br>
<br>
Br,<br>
David<br>
<br>
Sent from my Android phone using TouchDown (www.nitrodesk.com)<br>
<br>
<span style=3D"color:black">-----Original Message----- <br>
<b>From:</b> Robert P. J. Day [rpjday@crashcourse.ca]<br>
<b>Received:</b> Thursday, 13 Dec 2012, 20:59<br>
<b>To:</b> Yocto discussion list [yocto@yoctoproject.org]<br>
<b>Subject:</b> [yocto] [PATCH] Use &quot;&#43;=3D&quot; consistently when =
setting IMAGE_FSTYPES in Yocto machine conf files.<br>
<br>
</span></span></div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText"><br>
Signed-off-by: Robert P. J. Day &lt;rpjday@crashcourse.ca&gt;<br>
<br>
---<br>
<br>
diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf b/meta-yocto-bsp/conf=
/machine/atom-pc.conf<br>
index 77dd7fb..fbde1d3 100644<br>
--- a/meta-yocto-bsp/conf/machine/atom-pc.conf<br>
&#43;&#43;&#43; b/meta-yocto-bsp/conf/machine/atom-pc.conf<br>
@@ -25,7 &#43;25,7 @@ XSERVER ?=3D &quot;xserver-xorg \<br>
<br>
&nbsp;MACHINE_EXTRA_RRECOMMENDS =3D &quot;kernel-modules eee-acpi-scripts&q=
uot;<br>
<br>
-IMAGE_FSTYPES ?=3D &quot;ext3 cpio.gz live&quot;<br>
&#43;IMAGE_FSTYPES &#43;=3D &quot;ext3 cpio.gz live&quot;<br>
<br>
&nbsp;APPEND &#43;=3D &quot;usbcore.autosuspend=3D1&quot;<br>
<br>
diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto=
-bsp/conf/machine/routerstationpro.conf<br>
index e5e4d1a..c7a5ad5 100644<br>
--- a/meta-yocto-bsp/conf/machine/routerstationpro.conf<br>
&#43;&#43;&#43; b/meta-yocto-bsp/conf/machine/routerstationpro.conf<br>
@@ -22,5 &#43;22,5 @@ USE_VT ?=3D &quot;0&quot;<br>
<br>
&nbsp;MACHINE_EXTRA_RRECOMMENDS =3D &quot; kernel-modules&quot;<br>
<br>
-IMAGE_FSTYPES ?=3D &quot;jffs2 tar.bz2&quot;<br>
&#43;IMAGE_FSTYPES &#43;=3D &quot;jffs2 tar.bz2&quot;<br>
<br>
<br>
-- <br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ottawa, Ontario,=
 CANADA<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"=
http://crashcourse.ca">http://crashcourse.ca</a><br>
<br>
Twitter:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; <a href=3D"http://twitter.com/rpjday">
http://twitter.com/rpjday</a><br>
LinkedIn:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"http://ca.linkedin.com/i=
n/rpjday">
http://ca.linkedin.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a><br>
</div>
</span></font>
</body>
</html>

--_000_88701C38B5D07249817D428430999C9128AA9E5Dsestoex09enease_--
