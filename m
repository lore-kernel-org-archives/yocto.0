Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1537DEB64D7
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 20:57:38 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web11.3520.1687813051026920264
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 13:57:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ouZnNsj7;
 spf=pass (domain: gmail.com, ip: 209.85.210.44, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6b5d7e60015so3458292a34.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 13:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687813050; x=1690405050;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S/2ON77mKFKtAsHV9KKZ5NgQZAZyYVpifzwaO+TYyyc=;
        b=ouZnNsj7rUEw9d3HcvMuOU20S/aOAJmWpb8V/iBFPaNOBbWaezuyV/SIMydRwWMi4k
         khDGX6wrwQd3q7kDjXKNrkjpnp9/zdgpWDGnQNpqNxCA/vfXoQKow2LjIz63Sov+Jbwj
         irs0n2aBt/Ija0TzBzD6jS3h0RMaenpbaSwm10F6V3rrUJRhR8s7IkWCCzghq/0wYfn2
         1yUg+o4NlfXol15VDBOu2AYreBwv73aIIIEkKx9O71yEiztmcN7/MZdV7StOxD3qPsPe
         +hyrj2Q8C+6AtxRwoO92bRucv1i9NNKQCc+KrP21Vgxw44um8GhAAOUmtFQsfLxd8kXM
         eTbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687813050; x=1690405050;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S/2ON77mKFKtAsHV9KKZ5NgQZAZyYVpifzwaO+TYyyc=;
        b=VsU4MQ4FQH+jWlHLKfvr6tXrQQ7vaoYB2Btk6ANQ+0Her+7Vx5Rk2aMI1g7w3Cn4uI
         SE+YJM+hS0HwrQjAiaucVl8Jhn0u2xPqQOZXz23OWIGiO46o8IpR8BBS312UpjlfDCZV
         9xyllpDRgKnIogNqlHz997iTWZN+LS3HVnfL0wtQvwM6N4+HQgQq+lPqzBqGh677gGO+
         sKgp2iPs1Ss58p5tVqtdJVMygFUQ1UrA3GqI1fbdrCNOX/NjLt/tP/uUl6MaRBIfQs/k
         i0Icv2tc69yII56TLaR3ZQtK2o/Kxnj1uT+C7k8M59Z5H45B7d/AkVhiTOAY4/22Txzq
         bvfw==
X-Gm-Message-State: AC+VfDyA14icmTEbFzt0nwq4XV9eqwBlOVXe0WOqcubvEWgduXNpPCul
	QLHnl3E47aY8rkKpGUzZeMU3xT6LWy0=
X-Google-Smtp-Source: ACHHUZ59wRmVsWDqSrhtKJ2JoYufzaU2x1HmOS4EXsR/6h5/NCuk9wS6D1nJ2n1q6hlBRgMKHGAQbw==
X-Received: by 2002:a9d:6316:0:b0:6b4:5088:9de7 with SMTP id q22-20020a9d6316000000b006b450889de7mr28654901otk.8.1687813050078;
        Mon, 26 Jun 2023 13:57:30 -0700 (PDT)
Received: from skjolley ([2600:1011:a122:34d2:28e7:9ea4:5bbb:7068])
        by smtp.gmail.com with ESMTPSA id h3-20020a635303000000b0051b9e82d6d6sm4473886pgb.40.2023.06.26.13.57.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jun 2023 13:57:29 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW25
Date: Mon, 26 Jun 2023 13:57:28 -0700
Message-ID: <116a01d9a870$d1966c00$74c34400$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_116B_01D9A836.253B8BA0"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdmocKEOx1HNhRwIR1+IZ6I63zst7w==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 20:57:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60455

This is a multipart message in MIME format.

------=_NextPart_000_116B_01D9A836.253B8BA0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW25 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

7600 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7600>=20

syslinux: port extX support patches to syslinux community

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.3 M1

4.3 M2

=09
10731 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10731>=20

bitbake --observe-only doesn't work with memres

randy.macleod@windriver.com

pavel@zhukoff.net

4.3 M1

4.3 M2

=09
10820 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10820>=20

devtool: -d/--debug doesn't show bitbake debug output

randy.macleod@windriver.com

pidge@pidge.org

4.3 M1

4.3 M2

=09
12723 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12723>=20

mysql requires unicode and char length filtering

david.reyna@windriver.com

david.reyna@windriver.com

4.3 M1

4.3 M2

=09
13008 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13008>=20

toaster testing

david.reyna@windriver.com

david.reyna@windriver.com

4.3 M1

4.3 M2

=09
13103 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103>=20

[Bug][QA 2.7 M1 rc1][Toaster] "Recipes" table=E2=94=AC=C3=A1 and =
=E2=94=AC=C3=A1"machines" table are not getting populated after =
clicking=E2=94=AC=C3=A1on imported layer as well as after clicking =
Machines Tab on project page

david.reyna@windriver.com

david.reyna@windriver.com

4.3 M1

4.3 M2

=09
13338 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13338>=20

SDK build fails if image contains bash

randy.macleod@windriver.com

pavel@zhukoff.net

4.3 M1

4.3 M2

=09
13508 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13508>=20

Meson detects googletest installed on system

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.3 M1

4.3 M2

=09
13533 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13533>=20

Devtool finish on _git package with SRCPV in PV points to wrong WORKDIR

david.reyna@windriver.com

david.reyna@windriver.com

4.3 M1

4.3 M3

=09
13766 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13766>=20

Using TCLIBC=3Dmusl results in SDKs producing incompatible binaries

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.3 M1

4.3 M2

=09
13904 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13904>=20

do_prepare_recipe_sysroot: postinst-useradd-* does not run in order of =
dependency and sometimes fails

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.3 M1

4.3 M2

=09
14066 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14066>=20

bitbake core-image-base -c populate_sdk fails when image contains bash, =
core-utils and package_deb is used

randy.macleod@windriver.com

pavel@zhukoff.net

4.3 M1

4.3 M2

=09
14141 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14141>=20

devtool modify fails with submodules

david.reyna@windriver.com

david.reyna@windriver.com

4.3 M1

4.3 M2

=09
14403 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14403>=20

Qemu error messages not clear when command line is corrupted.

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.3 M1

4.3 M3

=09
14723 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14723>=20

patches not applied by devtool when using overrides in SRC_URI

randy.macleod@windriver.com

pidge@pidge.org

4.3 M1

4.3 M2

=09
14814 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14814>=20

ncurses version of taskexp.py

david.reyna@windriver.com

david.reyna@windriver.com

4.3 M1

4.3 M2

=09
14837 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14837>=20

devtool modify doesnt fetch all the crates on rust based recipes

randy.macleod@windriver.com

pidge@pidge.org

4.3 M1

4.3 M2

=09
14875 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14875>=20

reproducibility failures in rust

randy.macleod@windriver.com

sundeep.kokkonda@windriver.com

4.3 M1

4.3 M2

=09
14938 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14938>=20

gitsm fetcher failure when LFS content is present and git smudge fails

randy.macleod@windriver.com

Martin.Jansa@gmail.com

4.3 M1

4.3 M2

=09
14991 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14991>=20

When forcing WARN_QA as ERROR_QA patch-fuzz QA checks are not fatal

randy.macleod@windriver.com

mathew.prokos@gmail.com

4.3 M1

4.3 M2

=09
15023 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15023>=20

Cannot build SDK with api-documentation enabled

randy.macleod@windriver.com

pavel@zhukoff.net

4.3 M1

4.3 M2

=09
15061 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15061>=20

Rust multilib sdks broken

randy.macleod@windriver.com

sundeep.kokkonda@windriver.com

4.3 M1

4.3 M3

=09
15146 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15146>=20

AB-INT: baremetal.BaremetalTest.test_baremetal failure

randy.macleod@windriver.com

alejandro@enedino.org

0.0.0

4.3 M2

=09
15148 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15148>=20

Is uninative-tarball reproducible?

randy.macleod@windriver.com

pokylinux@reliableembeddedsystems.com

0.0.0

4.3 M3

=09
15151 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15151>=20

Recipes using RPM fail to extract

randy.macleod@windriver.com

steve@sakoman.com

0.0.0

4.0.12

=09
15152 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15152>=20

Update Toaster to Django 4

david.reyna@windriver.com

david.reyna@windriver.com

0.0.0

4.3 M2

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_116B_01D9A836.253B8BA0
Content-Type: text/html;
	boundary="----=_NextPart_000_1254_01D9A2D5.6D3C9180";
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
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
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>All,<br><br>YP M+ or high bugs =
which moved to a new milestone in WW25 are listed below: <span =
style=3D'color:black'><o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1056 style=3D'width:791.95pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DBE5F1;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority</span></b><b><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Short =
Description</span><o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Changer</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Owner</span><o:p></o:p></b></p></td><td width=3D50 =
valign=3Dbottom style=3D'width:37.3pt;border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was</span><o:p></o:p></b></p></td><td width=3D42 =
valign=3Dbottom style=3D'width:31.85pt;border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Became</span><o:p></o:p></b></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal><b>Medium+<o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7600" =
target=3D"_blank">7600</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>syslinux: =
port extX support patches to syslinux community<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>sakib.sajal@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10731" =
target=3D"_blank">10731</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>bitbake =
--observe-only doesn't work with memres<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>pavel@zhukoff.net<o:p></o:p></p></td><td width=3D50 =
valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10820" =
target=3D"_blank">10820</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>devtool: =
-d/--debug doesn't show bitbake debug output<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>pidge@pidge.org<o:p></o:p></p></td><td width=3D50 =
valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12723" =
target=3D"_blank">12723</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>mysql =
requires unicode and char length filtering<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13008" =
target=3D"_blank">13008</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>toaster =
testing<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103" =
target=3D"_blank">13103</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>[Bug][QA 2.7 =
M1 rc1][Toaster] &quot;Recipes&quot; table<span =
style=3D'font-family:"Arial",sans-serif'>=E2=94=AC</span>=C3=A1 and =
<span =
style=3D'font-family:"Arial",sans-serif'>=E2=94=AC</span>=C3=A1&quot;mach=
ines&quot; table are not getting populated after clicking<span =
style=3D'font-family:"Arial",sans-serif'>=E2=94=AC</span>=C3=A1on =
imported layer as well as after clicking Machines Tab on project =
page<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13338" =
target=3D"_blank">13338</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>SDK build =
fails if image contains bash<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>pavel@zhukoff.net<o:p></o:p></p></td><td width=3D50 =
valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13508" =
target=3D"_blank">13508</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Meson detects =
googletest installed on system<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>newcomer@yoctoproject.org<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13533" =
target=3D"_blank">13533</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Devtool =
finish on _git package with SRCPV in PV points to wrong =
WORKDIR<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13766" =
target=3D"_blank">13766</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Using =
TCLIBC=3Dmusl results in SDKs producing incompatible =
binaries<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>sakib.sajal@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13904" =
target=3D"_blank">13904</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>do_prepare_recipe_sysroot: postinst-useradd-* does not =
run in order of dependency and sometimes fails<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>sakib.sajal@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14066" =
target=3D"_blank">14066</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>bitbake =
core-image-base -c populate_sdk fails when image contains bash, =
core-utils and package_deb is used<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>pavel@zhukoff.net<o:p></o:p></p></td><td width=3D50 =
valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14141" =
target=3D"_blank">14141</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>devtool =
modify fails with submodules<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14403" =
target=3D"_blank">14403</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Qemu error =
messages not clear when command line is =
corrupted.<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>sakib.sajal@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14723" =
target=3D"_blank">14723</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>patches not =
applied by devtool when using overrides in =
SRC_URI<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>pidge@pidge.org<o:p></o:p></p></td><td width=3D50 =
valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14814" =
target=3D"_blank">14814</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>ncurses =
version of taskexp.py<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14837" =
target=3D"_blank">14837</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>devtool =
modify doesnt fetch all the crates on rust based =
recipes<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>pidge@pidge.org<o:p></o:p></p></td><td width=3D50 =
valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14875" =
target=3D"_blank">14875</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>reproducibility failures in =
rust<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>sundeep.kokkonda@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14938" =
target=3D"_blank">14938</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>gitsm =
fetcher failure when LFS content is present and git smudge =
fails<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>Martin.Jansa@gmail.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14991" =
target=3D"_blank">14991</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>When forcing =
WARN_QA as ERROR_QA patch-fuzz QA checks are not =
fatal<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>mathew.prokos@gmail.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15023" =
target=3D"_blank">15023</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Cannot build =
SDK with api-documentation enabled<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>pavel@zhukoff.net<o:p></o:p></p></td><td width=3D50 =
valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15061" =
target=3D"_blank">15061</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Rust =
multilib sdks broken<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>sundeep.kokkonda@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15146" =
target=3D"_blank">15146</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
baremetal.BaremetalTest.test_baremetal failure<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>alejandro@enedino.org<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D42 =
valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15148" =
target=3D"_blank">15148</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Is =
uninative-tarball reproducible?<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>pokylinux@reliableembeddedsystems.com<o:p></o:p></p></t=
d><td width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D42 =
valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15151" =
target=3D"_blank">15151</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Recipes =
using RPM fail to extract<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>steve@sakoman.com<o:p></o:p></p></td><td width=3D50 =
valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D42 =
valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>4.0.12<o:p></o:p></p></td></tr><tr =
style=3D'height:15.75pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15152" =
target=3D"_blank">15152</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Update =
Toaster to Django 4<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
width=3D50 valign=3Dbottom =
style=3D'width:37.3pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D42 =
valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr></table><p class=3DMsoNormal><span =
style=3D'color:black'>Thanks,</span><span style=3D'color:white'> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:white'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif"'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></span=
></u></span><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_116B_01D9A836.253B8BA0--


