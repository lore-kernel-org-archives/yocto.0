Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75178C48297
	for <webhook@archiver.kernel.org>; Tue,  6 Feb 2024 15:12:27 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.23823.1707232339989879729
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Feb 2024 07:12:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hmLzeUhY;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5605c7b1f32so2787658a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 06 Feb 2024 07:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707232338; x=1707837138; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=x+3qVDLAKghUCoj0XMHnXkM6fmyrdlf//ke/SrNJDkU=;
        b=hmLzeUhYoLNUxr5Sl2nIr2v2cxZXfTe9Py2vi1uRyiRpcR8SsNc8fD59GzCeKGoEex
         y1gCljSB+OMID7Z/0L7T/M0mMwaQAk7it9CsNkVMwpTWPfxoV35nai5b3wUduPkP25ww
         paprZMWBG3RkYXWP+XXXqo59Vl5Zs55KIL7CCOAUQjs9st4u+PUh3SELcqTcBBG2fEI2
         CfNi8S2MTF9dAEiZ/yO/kshAOBEtXL+V1VL1XO/jOGE0lVFMGihGwPFR0dbRxP/w2EBy
         6CqrgnZNiPkaSBu/DzVweUt3nnEbIAhqLcFVghbNn/Jnb2QgvOQLVk6V+0mbjQWNaei6
         jYBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707232338; x=1707837138;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x+3qVDLAKghUCoj0XMHnXkM6fmyrdlf//ke/SrNJDkU=;
        b=QYBgxhKdDpvtGLQmRZj1n9wFvEPDRhhCIwIZGpkHsrkk+iKCrlqqC0SgcitEVpuQ/a
         E059aeMDK8xlEmyE7fQSxMq5PrdiNJG24CuVQ2LxCXOyZ5IIypqPL/RO/CubiBbORpDd
         q4hzaOROl0D2c1XEw+zKhCPm/NRaQ9NoE8knu/9+jPGiFd25JWPEFhjp1++FlI75uBfe
         fl7djifbpSwZsjIB0zeH8fsD2s/gsprFs1z6bggKDZUi0NaaGqVn9MsA+zeHP3F+UZ6b
         E6Kl8rJSwimQUArtxHw+LwrBazTlZhiTk8AT25b5CfMQabIygLKu9wSJq7gnmOGM3tvw
         mjcg==
X-Gm-Message-State: AOJu0YyFnOMuP3cx/bYmGOmTRgkS2BGSwjw/Bqrj5Ojpe7BxAliFkyyu
	YO1sEXsj9nUaRH2SndJUEIPi8gH2VS1phKUQ+hdQ8mXkvwv/IzLrFRWRjcLease61bwU9DQv7AY
	nk4XRxTugfUH4MjHOjiXdOEWrI6WUQvlVMlU=
X-Google-Smtp-Source: AGHT+IEzVzBi3F4KT3AKsbZl+9DegQQIGe4jwM434q5aZ+GMluJgouurNYqv80rmg8VTAayAlWpUkb+ZyxAWZ721/44=
X-Received: by 2002:a17:906:2551:b0:a38:40d0:24db with SMTP id
 j17-20020a170906255100b00a3840d024dbmr843022ejb.13.1707232337728; Tue, 06 Feb
 2024 07:12:17 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 6 Feb 2024 08:12:07 -0700
Message-ID: <CAK5yBb9Ard9M5VWacWnt+baOxt57BPPN9i7GwkxRVRm-m95N2Q@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW05
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000a17400610b80168"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Feb 2024 15:12:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62409

--0000000000000a17400610b80168
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW05 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 12723 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12723> m=
ysql
requires unicode and char length filtering david.reyna@windriver.com
david.reyna@windriver.com 5.0 M2 5.0 M3
13103 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103> [Bug][QA
2.7 M1 rc1][Toaster] "Recipes" table=E2=94=AC=C3=A1 and =E2=94=AC=C3=A1"mac=
hines" table are not
getting populated after clicking=E2=94=AC=C3=A1on imported layer as well as=
 after
clicking Machines Tab on project page david.reyna@windriver.com
david.reyna@windriver.com 5.0 M2 5.0 M3
13533 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13533> Devtool
finish on _git package with SRCPV in PV points to wrong WORKDIR
david.reyna@windriver.com david.reyna@windriver.com 5.0 M2 5.0 M3
14015 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14015> URL
Arguments in MIRROR/PREMIRROR get encoded randy.macleod@windriver.com
yoctoproject.bugzilla@jahn.textmo.de 5.0 M3 5.99
14814 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14814> ncurses
version of taskexp.py david.reyna@windriver.com david.reyna@windriver.com 5=
.0
M2 5.0 M3
14907 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14907> packaging
debugsrc breaks for recipes with externalsrc and debug-with-srcpkg
randy.macleod@windriver.com pavel@zhukoff.net 4.0.16 4.0.17
14909 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14909>
file_5.41.bb:do_configure error with GCC 11.3.0 from SDK 4.0.3
randy.macleod@windriver.com pavel@zhukoff.net 4.0.16 4.0.17
14921 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14921> devtool
failure: No such file or directory: '/tmp/devtoolqambdi_6eh/singletask.lock=
'
randy.macleod@windriver.com richard.purdie@linuxfoundation.org 5.0 M2 5.0 M=
3
15333 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15333>
bitbake/lib/hashserv/sqlite.py:294:
DeprecationWarning: The default datetime adapter is deprecated as of Python
3.12 randy.macleod@windriver.com JPEWhacker@gmail.com 5.0 M2 5.0 M3
15335 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15335> AB-INT:
sstatetests.SStateMirrors.test_cdn_mirror: Missing objects in the cache
randy.macleod@windriver.com mhalstead@linuxfoundation.org 5.0 M2 5.0 M3
15369 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15369> bitbake
fails to download new srcrev from premirror if clonedir exists
randy.macleod@windriver.com pavel@zhukoff.net 0.0.0 5.0 M4
15370 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15370> fw_payloa=
d.elf
in package opensbi doesn't have GNU_HASH randy.macleod@windriver.com
thomas.perrot@bootlin.com 0.0.0 5.0 M4
15372 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15372> Mark pyth=
on
packages as externally managed randy.macleod@windriver.com
ross.burton@arm.com 0.0.0 5.0 M3
15378 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15378>
systemd-systemctl-native.bb creates /etc/machine-id called
from.image.bbclass randy.macleod@windriver.com elek.david00096@gmail.com
0.0.0 4.3 M4
4.3 M4 5.0 M3
15379 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15379> systemd
invokes dlopen on libelf/libdw but does not RDEPENDS on it
randy.macleod@windriver.com nick.owens@eero.com 0.0.0 5.0 M3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>=
*

--0000000000000a17400610b80168
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW05 are li=
sted below: <br></span><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellspac=
ing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout:=
fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collapse=
;border:none"><colgroup><col width=3D"63"><col width=3D"43"><col width=3D"5=
43"><col width=3D"235"><col width=3D"242"><col width=3D"53"><col width=3D"5=
3"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px soli=
d rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Priority</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Bug ID</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold">Short Description</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Change=
r</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0=
,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">O=
wner</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold=
">Was</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bol=
d">Became</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D12723" target=3D"_blank">12723</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">mysql requires unicode and char length filtering</td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.r=
eyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:david.r=
eyna@windriver.com">david.reyna@windriver.com</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
">5.0 M2</td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:u=
nderline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103" target=3D"_blank">13103<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom">[Bug][QA 2.7 M1 rc1][Toaster] &quot;Recipes&=
quot; table=E2=94=AC=C3=A1 and =E2=94=AC=C3=A1&quot;machines&quot; table ar=
e not getting populated after clicking=E2=94=AC=C3=A1on imported layer as w=
ell as after clicking Machines Tab on project page</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.com</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">=
david.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M2</td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">5.0 M3</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;font-weight:bold;text-decoration-line:underline;text-align:=
right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D13533" target=3D"_blank">13533</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">Devtool finish on _git package with SRCPV in PV points to wrong =
WORKDIR</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.=
com">david.reyna@windriver.com</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:david.reyna@windriver.com">david.reyna@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">5.0 M2</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14015" target=3D"=
_blank">14015</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">URL Arguments in MIRROR/PREMIR=
ROR get encoded</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:yoctoproject.bugzilla@jahn.textmo.de">yoctoproject.bugzill=
a@jahn.textmo.de</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">5.99</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D14814" target=3D"_blank">14814</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">ncurses version of taskexp.py</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">da=
vid.reyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M2</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">5.0 M3</td></tr><tr style=3D"height:20px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;font-weight:bold;text-decoration-line:underline;text-align:ri=
ght"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D14907" target=3D"_blank">14907</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">packaging debugsrc breaks for recipes with externalsrc and debug-w=
ith-srcpkg</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windr=
iver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom">4.0.16</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">4.0.17</td></tr><tr style=3D"height:=
20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-lin=
e:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14909" target=3D"_blank">149=
09</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom">file_5.41.bb:do_configure error with GCC =
11.3.0 from SDK 4.0.3</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.ma=
cleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">4.0.16</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom">4.0.17</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14921" target=3D"=
_blank">14921</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">devtool failure: No such file =
or directory: &#39;/tmp/devtoolqambdi_6eh/singletask.lock&#39;</td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod=
@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.pur=
die@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">5.0 M2</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15333" target=3D"=
_blank">15333</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">bitbake/lib/hashserv/sqlite.py=
:294: DeprecationWarning: The default datetime adapter is deprecated as of =
Python 3.12</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@wind=
river.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hr=
ef=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">5.0 M2</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15335" target=3D"=
_blank">15335</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">AB-INT: sstatetests.SStateMirr=
ors.test_cdn_mirror: Missing objects in the cache</td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundatio=
n.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M2<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">5.0 M3</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D15369" target=3D"_blank">15369</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">bitbake fails to download new srcrev from premirror i=
f clonedir exists</td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleo=
d@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom">5.0 M4</td></tr><tr style=3D=
"height:20px"><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decora=
tion-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15370" target=3D"_b=
lank">15370</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">fw_payload.elf in package opensb=
i doesn&#39;t have GNU_HASH</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ra=
ndy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:thomas.perrot@bootlin.com">thomas.perrot@bootl=
in.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 =
M4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold;text-decoration-line:underline;text-align:right"><a class=3D"g=
mail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?i=
d=3D15372" target=3D"_blank">15372</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Mark pyth=
on packages as externally managed</td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M3</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weigh=
t:bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-i=
n-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15=
378" target=3D"_blank">15378</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"http=
://systemd-systemctl-native.bb">systemd-systemctl-native.bb</a> creates /et=
c/machine-id called from.image.bbclass</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:elek.david00096@gmail.com">elek.d=
avid00096@gmail.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">4.3 M4</td></tr><tr style=3D"height:20px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom">4.3 M4</td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom">5.0 M3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;font-weight:bold;text-decoration-line:underline;text-align:right"><a =
class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D15379" target=3D"_blank">15379</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>systemd invokes dlopen on libelf/libdw but does not RDEPENDS on it</td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.ma=
cleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:nick.o=
wens@eero.com">nick.owens@eero.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom">5.0 M3</td></tr></tbody></table><p class=3D"MsoNorm=
al" style=3D"background-image:initial;background-position:initial;backgroun=
d-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-seri=
f">Thanks,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager</sp=
an></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div>

--0000000000000a17400610b80168--

