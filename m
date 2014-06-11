Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D83CE00BEC; Wed, 11 Jun 2014 08:04:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FF1EE00BC1
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 08:04:44 -0700 (PDT)
From: Jim Rafert <jimr@spectralogic.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Thread-Topic: [yocto] How do I create a recipe for laying down post-build
	config files?
Thread-Index: Ac+EKkd3vwrVsXp6TcSh5ralFOydogAkjQoAADJo9Fk=
Date: Wed, 11 Jun 2014 15:04:42 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0CAB5218EC@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>,
	<5396C8C8.4060303@dynamicdevices.co.uk>
In-Reply-To: <5396C8C8.4060303@dynamicdevices.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [207.225.98.3]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I create a recipe for laying down post-build config files?
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
X-List-Received-Date: Wed, 11 Jun 2014 15:04:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_86196249137E0843B2E0673D4F731E0CAB5218ECreactorsldomain_"

--_000_86196249137E0843B2E0673D4F731E0CAB5218ECreactorsldomain_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks, Alex.

You have sharp eyes, my friend.  I had been struggling with this one so lon=
g, I guess I was not looking for typos.

-Jim-


________________________________
From: Alex J Lennon [ajlennon@dynamicdevices.co.uk]
Sent: Tuesday, June 10, 2014 2:58 AM
To: Jim Rafert
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How do I create a recipe for laying down post-build co=
nfig files?


On 09/06/2014 22:44, Jim Rafert wrote:
I'm trying to gather all my post-build tweaks into a recipe that will be bu=
ilt as part of an upper-level layer, so that they are installed after the m=
eta layer is processed.  Many of these could be accomplished as part of .bb=
append files for the recipes that originally supply the config files, but I=
 wanted to gather all my customizations in one spot, so that they're easy t=
o find.

The recipe doesn't actually build anything, so there's no do_build task.

This is surely something that is commonly wanted.

Here's my current recipe, in spectra-postbuild_0.1.bb.

When I try to build an image, the build fails with
ERROR: QA Issue: spectra-postbuild: Files/directories were installed but no=
t shipped
  /RELEASE-NOTES.txt

When I disable the installed-vs-shipped QA test,  it fails later when it ca=
n't find a package file.

I must be missing something critical here?
SUMMARY =3D "Post processing of configuration files for SpectraOS"
SECTION =3D "base"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://${WORKDIR}/COPYRIGHT;md5=3D349c872e0066155e181=
8b786938876a4"<UrlBlockedError.aspx>
RDEPENDS_${PN} =3D "initscripts"
PR =3D "r0"

SRC_URI =3D "file://inittab \
       file://fstab \
       file://rsyslog.conf \
       file://grub.cfg \
       file://mount.sh \
       file://RELEASE-NOTES.txt \

FILES_${PN} =3D  "/RELEASE_NOTES.txt /Spectra-OS-Version "

RELEASE-NOTES vs RELEASE_NOTES

Cheers,

Alex

--_000_86196249137E0843B2E0673D4F731E0CAB5218ECreactorsldomain_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body ocsi=3D"0" fpstyle=3D"1" bgcolor=3D"#FFFFFF">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Thanks, Alex.<br>
<br>
You have sharp eyes, my friend.&nbsp; I had been struggling with this one s=
o long, I guess I was not looking for typos.<br>
<br>
-Jim-<br>
<div><br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF289676"><font color=3D"#000000" =
face=3D"Tahoma" size=3D"2"><b>From:</b> Alex J Lennon [ajlennon@dynamicdevi=
ces.co.uk]<br>
<b>Sent:</b> Tuesday, June 10, 2014 2:58 AM<br>
<b>To:</b> Jim Rafert<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] How do I create a recipe for laying down post-b=
uild config files?<br>
</font><br>
</div>
<div></div>
<div><br>
<div class=3D"moz-cite-prefix">On 09/06/2014 22:44, Jim Rafert wrote:<br>
</div>
<blockquote type=3D"cite"><style id=3D"owaParaStyle" type=3D"text/css">=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
-->=0A=
BODY {direction: ltr;font-family: Tahoma;color: #000000;font-size: 10pt;}P =
{margin-top:0;margin-bottom:0;}</style>
<div style=3D"direction:ltr; font-family:Tahoma; color:#000000; font-size:1=
0pt">I'm trying to gather all my post-build tweaks into a recipe that will =
be built as part of an upper-level layer, so that they are installed after =
the meta layer is processed.&nbsp; Many
 of these could be accomplished as part of .bbappend files for the recipes =
that originally supply the config files, but I wanted to gather all my cust=
omizations in one spot, so that they're easy to find.<br>
<br>
The recipe doesn't actually build anything, so there's no do_build task.<br=
>
<br>
This is surely something that is commonly wanted.<br>
<br>
Here's my current recipe, in spectra-postbuild_0.1.bb.<br>
<br>
When I try to build an image, the build fails with <br>
ERROR: QA Issue: spectra-postbuild: Files/directories were installed but no=
t shipped<br>
&nbsp; /RELEASE-NOTES.txt<br>
<br>
When I disable the installed-vs-shipped QA test,&nbsp; it fails later when =
it can't find a package file.<br>
<br>
I must be missing something critical here?<br>
<div>SUMMARY =3D &quot;Post processing of configuration files for SpectraOS=
&quot;<br>
SECTION =3D &quot;base&quot;<br>
LICENSE =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D <a class=3D"moz-txt-link-rfc2396E" href=3D"UrlBlockedE=
rror.aspx" target=3D"_blank">
&quot;file://${WORKDIR}/COPYRIGHT;md5=3D349c872e0066155e1818b786938876a4&qu=
ot;</a><br>
RDEPENDS_${PN} =3D &quot;initscripts&quot;<br>
PR =3D &quot;r0&quot;<br>
<br>
SRC_URI =3D &quot;<a class=3D"moz-txt-link-freetext" href=3D"file://inittab=
" target=3D"_blank">file://inittab</a> \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"=
file://fstab" target=3D"_blank">file://fstab</a> \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"=
file://rsyslog.conf" target=3D"_blank">
file://rsyslog.conf</a> \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"=
file://grub.cfg" target=3D"_blank">file://grub.cfg</a> \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"=
file://mount.sh" target=3D"_blank">file://mount.sh</a> \<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class=3D"moz-txt-link-freetext" href=3D"=
file://RELEASE-NOTES.txt" target=3D"_blank">
file://RELEASE-NOTES.txt</a> \<br>
</div>
</div>
</blockquote>
<br>
FILES_${PN} =3D&nbsp; &quot;/RELEASE_NOTES.txt /Spectra-OS-Version &quot;<b=
r>
<br>
RELEASE-NOTES vs RELEASE_NOTES<br>
<br>
Cheers,<br>
<br>
Alex </div>
</div>
</div>
</body>
</html>

--_000_86196249137E0843B2E0673D4F731E0CAB5218ECreactorsldomain_--
