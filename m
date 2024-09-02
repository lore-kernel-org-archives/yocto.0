Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E67CA0ED3
	for <webhook@archiver.kernel.org>; Mon,  2 Sep 2024 21:26:04 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web10.9500.1725312359992555514
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Sep 2024 14:26:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lNJ36Bmb;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2057c6c57b5so7253345ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Sep 2024 14:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725312359; x=1725917159; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dA8/xhlZ+thngmQlQ7iaY+1ExjosH177JGWpFa52e/M=;
        b=lNJ36BmbNdqDW/5myldR03fMbFq3I17g9kBq2qfCu9BW19m4kev1TTIFS8clkJFlp6
         8ODro0D2x5WX6iwTjXalFPqjlqmkEJ4O6jE947In7kBqVde93AheRlWcD2SDwEFQM6zQ
         aiqJil6bHKSyQz5NG2pMVrUNq9NesthXuEAsnHw6AOoGi49jsoQL6QGMk8N/4ggHmPyk
         spz/o/00U6oUng7nYuYVPBqwO8amH1un6ScyOGv5P6vNOmcQg+xyJBrPP7SGRCYPBcnD
         TK4e22MEXQByGzanLwv2+EDzkuknwdTx7+SZrGY3xxKBY5B/nAOfZrsIHBL4nurkdaMG
         18aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725312359; x=1725917159;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dA8/xhlZ+thngmQlQ7iaY+1ExjosH177JGWpFa52e/M=;
        b=WHyXhqczfiq9otTRLnhmYqQrqoBYPJSKDpyeTshBALwNFDG4HcgEaCJu/+TEvdazyS
         eVIJgfp2/gntPqoLC0Ce0FfQ3vS0B0OZhgCnkvZt1Hy/Zrxyopl68FnnI4n+Ib1i4EZ5
         tdfLQ5CKrIOhQFUpNX/qEWBsJgBuKQfvWGTQb4jsI9KqCUnQSPxVwFFos3QXWk/MZBut
         ZoqSmsOiCtHoplZSZigAb/8bMNs5n8VIryRIpPa15SYTHDOjhMkzhbSpJ4K89IlcwjSM
         56czbg1ymrcpluBCdf8IjMynuDViEOJ46LO1XT1G3a2UibVt7vDQTv63dPePkdfjS4hG
         ySkA==
X-Gm-Message-State: AOJu0YxJMvSdj5JdcefqfpsVmNh3THAipsggRQiQWmcfwYpIPuKsLScc
	fxTIDEmduNluWrlHBoaz1uwUHGdvftZnsWnxqupJHCmX3iR5JN0ZR/LyQ6qrdn2sXdvtHYkwBSw
	HgSfG7VVUORg9fQnexTHZ6HPcLrTeeaWX
X-Google-Smtp-Source: AGHT+IFXe8XFTe1xOS+VwoStosVGvfL7vZxtmM/VrTSKAsUnmL0NCEaQqh8uXLwNub08VE8EA0p6JLx60C1wvGVvqQw=
X-Received: by 2002:a17:902:c40c:b0:201:dcb0:9fbf with SMTP id
 d9443c01a7336-2050e98d58bmr246655825ad.15.1725312359146; Mon, 02 Sep 2024
 14:25:59 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 2 Sep 2024 14:25:48 -0700
Message-ID: <CAK5yBb8E_5mcrrxnwF=i6jswuuiOBZ5Lpb2_dCJV3F=Ph=Tmfw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW35
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004b2cfa0621299650"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Sep 2024 21:26:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63779

--0000000000004b2cfa0621299650
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW35 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15561 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15561>
Occasional
ssh timeouts richard.purdie@linuxfoundation.org jon.mason@arm.com 5.1 M3 5.1
M4
15582 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15582> gitsm+https:
is not supported by SPDX 2.2 nor 2.3 specifications
randy.macleod@windriver.com JPEWhacker@gmail.com 0.0.0 5.1 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000004b2cfa0621299650
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW35 are li=
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
yoctoproject.org/show_bug.cgi?id=3D15561" target=3D"_blank">15561</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">Occasional ssh timeouts</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a=
 href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfou=
ndation.org</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:jon.mason@arm.=
com">jon.mason@arm.com</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom">5.1 M3</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">5.1 M4</td></tr><tr style=3D"height:20px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;font-weight:bold;text-decoration-line:underline;text-align:ri=
ght"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.=
org/show_bug.cgi?id=3D15582" target=3D"_blank">15582</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">gitsm+https: is not supported by SPDX 2.2 nor 2.3 specifications</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">ra=
ndy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0=
.0.0</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom">5.1 M4</td></tr></tbody></table><p class=3D=
"MsoNormal" style=3D"background-image:initial;background-position:initial;b=
ackground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,s=
ans-serif">Thanks,<span></span></span></p>

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

--0000000000004b2cfa0621299650--

