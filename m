Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3992D1CDC6
	for <webhook@archiver.kernel.org>; Tue,  9 Dec 2025 14:02:52 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8308.1765288968049867950
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Dec 2025 06:02:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=e+zuVGkD;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-29ba9249e9dso79221625ad.3
        for <yocto@lists.yoctoproject.org>; Tue, 09 Dec 2025 06:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765288967; x=1765893767; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uK4xDfzSgLubE/ysqUy04jiXvefrfxW3Z8X2PP2hSq4=;
        b=e+zuVGkDq7eocJ06LWHYPO3YobT3vwtnDodsII99I8QLDPFvBuW/wJjcNc4ZRnNit8
         XmHnHOClpDbspFUZA+uh5T2qIIqT7tjYvg3s1fmPQetZsaBfTvksjsGCIUKcnnmWuS0k
         +EvfEnAm1Yns7WgOvenIWhCy1Mg03Q1zcZx+9d8cLLosKFqpRI14msw+jw4gva1wttr4
         +DzULD0/X8zuIoN5l3Zrm3toDC2kbOP5eJc0+UCXXwTUvulpYXfDgcpBUWBN6iu7rZvE
         5S/U0rcfX0l+aDotvVIUreJbob+IDoQpf+PDg223WdDEvw3oXOulRM16VbKkRxw28g/z
         LNJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765288967; x=1765893767;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uK4xDfzSgLubE/ysqUy04jiXvefrfxW3Z8X2PP2hSq4=;
        b=ka3K9xiJ//N3UlP5LNxfzX2Fo50+H4Y9hDGcknG6P/UOiIyxd4iIarQYXjKxem6gzT
         6370JAru28I7HbUz8cKFDHGxDvqJlnp7vNO3rooQJ81FkmnWdNE3BRLus7Kg9fs+O61e
         AE4RBZI843jtjovrk9dajx/DHEPLrgLgii+r6gawBVaJJGYugQJYWiF2I1o6bIvTxf6w
         vLgegP9OdZquhqBidQ6UlMLMHMjnBoted2JS/tWduQlggbEkQqo+QX1tkaV+yTdcbwfi
         Xw9NQPy4b8hpoeRZxoj69M/o4tzS0+tulWSIMKKF9zh/5iKZp6z1VELXiHlYrECSGAMg
         EFRg==
X-Gm-Message-State: AOJu0Yzn/7Ms1hpB4YGJkWJX444xEmt0enaAijxzObDwEW7XdsvaadRt
	9K9Btk5vCVWxIgOA7OTF5kOEj84ynLh0W2gJt9GhU74ARV26HZAcoqA54vK89VexApAKhYqsRHO
	F4A/+6nQblwjo/eqEWGHO0fQkKoIJvTqDY+yB
X-Gm-Gg: AY/fxX4iFFcz04GdeWmLiaQvzvVT3517BGs7zBHMF0osuos+c/D8on7rxECKigiB+fT
	M9oCFOu3ANmjcGsfFYadCJ4lZE/31fg9XMrP5nW767LPofiEPlJclHhsEF6odcr+N1R7tYO8HYV
	N82uBwtPK/m+jIJDADKiqWPCPo4TgFHEl7zOkAlTZUgRNgcNfzDFU57j9hwQQVyMu8xCvxrOaT6
	6PdTplaJQbmA/a9crdOZld/XLbh6PCGiJ4S0Kwl35AmhJfu2jIBi4afFPZRoH+44Nfx6v+B9EGI
	RP8MJRTjcDZCtukXltb6/2YwLoAamjqoPcFBk5asoDWIBsevPsOoCAiTIIrQy/G6kGwkuixARyh
	wTEUa16Fndi7lGgg=
X-Google-Smtp-Source: AGHT+IEkZKuz32svZyntUdDK3jpVwiDwIU6VCDLbMsw2y/upnhEcUv+LjJTU75twR89R5DJEhEen6N7ck9EdpXYhgTI=
X-Received: by 2002:a05:7301:dd88:b0:2ab:f56e:bea6 with SMTP id
 5a478bee46e88-2abf56ec15cmr1326824eec.39.1765288965622; Tue, 09 Dec 2025
 06:02:45 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 9 Dec 2025 07:02:34 -0700
X-Gm-Features: AQt7F2r_d0AMkWyKNFVfICHzt3gGtzoRE4KQ0gnQksrfGNnpmRCWsfbIAYL3piQ
Message-ID: <CAK5yBb9gAtGBQeJzp3ZxGJMNm6yfffcVPc01m9O58072S2cfNg@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW49
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b8d1540645855d5d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Dec 2025 14:02:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66106

--000000000000b8d1540645855d5d
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW49 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 14223 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14223>
valgrind
ptest failing on qemux86-64 randy.macleod@windriver.com
mingli.yu@windriver.com 5.3 6.0 M2
15999 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15999> AB-INT:
Process killed - no output for 900 seconds mathieu.dubois-briand@bootlin.com
mathieu.dubois-briand@bootlin.com 5.3 M4 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000b8d1540645855d5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW49 a=
re listed below:=C2=A0<br></span></div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"=
><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=
=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-=
collapse:collapse;border:none"><colgroup><col width=3D"63"><col width=3D"43=
"><col width=3D"543"><col width=3D"235"><col width=3D"242"><col width=3D"53=
"><col width=3D"53"></colgroup><tbody><tr style=3D"height:20px"><td style=
=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom;background-color:rgb(219,229,241);font-weight:bold">Priority</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Bug ID=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,=
0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Sh=
ort Description</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-=
weight:bold">Changer</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold">Owner</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,24=
1);font-weight:bold">Was</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,2=
41);font-weight:bold">Became</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold">Medium+</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decor=
ation-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14223" target=3D"_b=
lank">14223</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">valgrind ptest failing on qemux8=
6-64</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.c=
om">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:mingli.yu@windriver.com">mingli.yu@windriver.com</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">5.3</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">6.0 M2</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold=
;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-cell=
-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15999" t=
arget=3D"_blank">15999</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT: Process kille=
d - no output for 900 seconds</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
mathieu.dubois-briand@bootlin.com">mathieu.dubois-briand@bootlin.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:mathieu.dubois-briand@bootlin.co=
m">mathieu.dubois-briand@bootlin.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4<=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;text-align:right">6</td></tr></tbody></table><p c=
lass=3D"MsoNormal" style=3D"background-image:initial;background-position:in=
itial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:=
Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000b8d1540645855d5d--

