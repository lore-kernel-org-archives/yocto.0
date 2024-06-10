Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3463AC27C4F
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 23:07:34 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.33610.1718060849061173729
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 16:07:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gttKXStr;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52c815e8e9eso2439686e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 16:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718060847; x=1718665647; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U3ywEq1Y7VBd0Zcq781nu8+S78TRMZP9GuAqzWPLNzA=;
        b=gttKXStrzuOxPKfVUbaavOnGYm7r50rYg1nukbTUD0CvD+EJRK7SlPWm2K4BCqVWJO
         3F2tHpGNoAqJKNQIJnpqNc6qI3VK2kYuLD9aQyE4st1zY6mR4ThEm/Gbo9ENoWzGimn9
         FNuE4wxhomKaheuC80zcZ18hDI3QW1CEsuBeSF1oHoJc2X/4lqYzzVtibD9nhij+IntH
         3Rn2n+MPXWkB1FiGWUHiEpSH1YrJtCLsGEQlCSmzmPld9xablTyaKY7gdPiwFPxbqXXa
         y40+oDeEsrkplIB+1jiFkQiIHAD67UEluBjcAdVlq6Cy8zadQtjCLHFVKGEQtDwcUM4h
         3V5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718060847; x=1718665647;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U3ywEq1Y7VBd0Zcq781nu8+S78TRMZP9GuAqzWPLNzA=;
        b=UZWAIYxqvir2ahjC/kwxoWIH79fswA5twkfDtYdXwBCeTGR+W7v2btgcu6V18F29pR
         rKWNa6fEVsJUB2HRXuDyfXtHR6nai6QHGEGSSSjoIAcnjV/j2aKUSREQbFfnRaOGGIhq
         SPKpEy+IP2uvWS/o/DNFFA44DECiPiTGOz6kvYmxdZgTmR2+NjFM5Q/rtEIJYkN2NfRi
         wywRjiZp613GmOrS6uUGKRc3IT1mqNV/rsuGIs9TRsD1U2Bu43jKiMtYrVLNIFtCaHMO
         LkawmneSkqQVdAnLIuRKZWPGjp6+wCzOEA1/93vh3UVRctw5WfZB8DSauwDFVtdoHFR+
         jBxA==
X-Gm-Message-State: AOJu0Yx/ua+co/bF3bJngK27g22PeWhrY6bFdL+4oj9IJjp8TJQsWFuC
	T1UDnzbqPJyp9JpPjP4hzLCQgNjoPbnljbO4W44UMQ+B/JZb2gLsyg8C+BjJckNdm5ZnwZeZMxV
	MchmMGSQo0hBX+FFm73vN++5WO6bzklZr
X-Google-Smtp-Source: AGHT+IHGakSbPCPGIu5Ng7nejzkmNKYtpp5KbOsDcvdjJLUQ6XCKn9ja48N7QZu6qF1x9S5atfAhptMtDDGGRRimsbI=
X-Received: by 2002:a05:6512:33d3:b0:52c:93b0:3bb with SMTP id
 2adb3069b0e04-52c93b00469mr477325e87.48.1718060846564; Mon, 10 Jun 2024
 16:07:26 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 10 Jun 2024 16:07:15 -0700
Message-ID: <CAK5yBb-yn+4nM9FEoejdKP6ExxGrFvUYu0uCQfrvQDMwd7=p0Q@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW23
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000764da2061a913620"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 23:07:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63313

--000000000000764da2061a913620
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW23 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 14622 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14622>
bsps-hw.bsps-hw.Test_Seek_bar_and_volume_control
manual test case failure randy.macleod@windriver.com
unassigned@yoctoproject.org 5.1 M1 5.1 M2
15095 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15095>
recipes-devtools/go-1.20
native: not possible to build with go 1.4 randy.macleod@windriver.com
unassigned@yoctoproject.org 5.1 M1 5.1 M2
15444 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15444>
meta-ide-support:
depend recursively on populate_sysroot randy.macleod@windriver.com
unassigned@yoctoproject.org 5.1 M1 5.1 M2
15473 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15473> Source
MIRROR not work for svn when change the host
richard.purdie@linuxfoundation.org richard.purdie@linuxfoundation.org
5.1 M1 5.1
M2
15477 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15477> AB-INT
PTEST: gawk ptest failure: in clos1way[2,6] randy.macleod@windriver.com
unassigned@yoctoproject.org 5.1 M1 5.1 M2
15500 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15500> devtool
upgrade cannot handle unicode characters in filenames
randy.macleod@windriver.com unassigned@yoctoproject.org 0.0.0 5.99
15503 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15503> AB-INT:
send QA email failure: Generating regression report between None and None
randy.macleod@windriver.com alexis.lothore@bootlin.com 0.0.0 5.1 M2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000764da2061a913620
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW23 are li=
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
yoctoproject.org/show_bug.cgi?id=3D14622" target=3D"_blank">14622</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">bsps-hw.bsps-hw.Test_Seek_bar_and_volume_control manu=
al test case failure</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.mac=
leod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctoproject.=
org</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">5.1 M1</td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2=
</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-w=
eight:bold;text-decoration-line:underline;text-align:right"><a class=3D"gma=
il-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D15095" target=3D"_blank">15095</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">recipes-de=
vtools/go-1.20 native: not possible to build with go 1.4</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windr=
iver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:unassigned@yoctop=
roject.org">unassigned@yoctoproject.org</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 =
M1</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=3D"height:20px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underli=
ne;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D15444" target=3D"_blank">15444</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom">meta-ide-support: depend recursively on populate_s=
ysroot</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver=
.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:unassigned@yoctoproject.org">unassigned@yoctoproject.org</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom">5.1 M1</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;tex=
t-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-lin=
k" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15473" targe=
t=3D"_blank">15473</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom">Source MIRROR not work fo=
r svn when change the host</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ric=
hard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.or=
g">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M1=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=3D"height:20px"><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline=
;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla=
.yoctoproject.org/show_bug.cgi?id=3D15477" target=3D"_blank">15477</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom">AB-INT PTEST: gawk ptest failure: in clos1way[2,6]</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">ra=
ndy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
unassigned@yoctoproject.org">unassigned@yoctoproject.org</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">5.1 M1</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-dec=
oration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" hr=
ef=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15500" target=3D"=
_blank">15500</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom">devtool upgrade cannot handle =
unicode characters in filenames</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yo=
ctoproject.org</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">5.99</td></tr><tr style=3D"height:20px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;font-weight:bold;text-decoration-line:underline;text-ali=
gn:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D15503" target=3D"_blank">15503</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">AB-INT: send QA email failure: Generating regression report b=
etween None and None</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.mac=
leod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:alexis.lothore@bootlin.com">alexis.lothore@bootlin.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M2</t=
d></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:ini=
tial;background-position:initial;background-repeat:initial"><span style=3D"=
font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p=
>

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

--000000000000764da2061a913620--

