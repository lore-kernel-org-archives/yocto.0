Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BAE5D59D8B
	for <webhook@archiver.kernel.org>; Tue, 26 Nov 2024 01:29:08 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.35658.1732584545460836472
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2024 17:29:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KbMmkn/u;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2ea6d689d22so4006421a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2024 17:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732584544; x=1733189344; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eNQven10hbeex+2Fc7E0wVRouX7knfNiI1UWEzUsDAk=;
        b=KbMmkn/uarG+/AaM729D5mXCRZBoxyfV4zdSBF1ATAOQIgV08+BotrC1ob83jy8v53
         dexbZjSPLmdt+RECSDgnCAQjB33B/3H1QNLUqQ0RPoqsad6BErQ+AMIyIIoEc0na52nq
         VkjbMm3VtOX7ETybyfsg2+RqvEBVJ6fgfvezffHKedhNlxFnYxseqaj/zCwYcp4yFma6
         atdLlmU5+7rlAH9VomLHH5eQYPx6iqV2VlvYblrS7qgZu1lnKrFT+uD8sG0sO6uZO3AU
         Djf9slRyeg507dlIUO3D5GI9y+m7NBmg9gfoDGMmlR+JQh65CWaOTpvPO5bDbMQGd5JD
         B4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732584544; x=1733189344;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eNQven10hbeex+2Fc7E0wVRouX7knfNiI1UWEzUsDAk=;
        b=udXuDxpHl/6cYS7x4xY40SHZtY7mkJEN+icvBU1kT8Ceos4lzwdiiCjZRgcXO7izlS
         gkFRWDD5pFYR0IV2TZWehNy3IwCXO+h8gad4FYDm8YiQzjBKmR92HpjRNtQ640wJoZjh
         08+6OW5kUDCuveClNeTKERhLC9fS783ppaFfMY4+NIb9nyZKRuOzL3uwtWGK8/GEgfeP
         lu5BqumjCV7WuHWXTXxwwLksZY4N6UKVp2hA1sPeNz1tngslHG2a5a8bj3bC56LrALKG
         w01eyyR/qD30a2HCcPop8MoVIK76J5qI2ZhCOABqUws1bud6HRPgg/aBFP1b/MF/Y6wy
         6I2Q==
X-Gm-Message-State: AOJu0YyMELAVlC1WrFC8F+ewipWQ1nCLyNTKIq9zqqOYEGWwDG32w+IU
	Ho1XS2EDbFRPt8d8v0FsRZuYedA/NlIdKYsvZtSAvcmWC3GfIPkywB1d+zmErl7YSi3WrSPPd2D
	9Lo1jRW1Yj4lSDCWwAi5uYMJ4uo2Gp6snkvQ=
X-Gm-Gg: ASbGnctQHIFRdCzkRQGHGZzYwHb9xga6xLbXFKltDG/fQloO9UY34MtDIth+JJAALun
	ccKz4VYL1uBvY8NJWdIrjlc9XZq5hqjephRVioXYFi9EKHD2KhkBXTm8TXAb22oZj
X-Google-Smtp-Source: AGHT+IGdnqsmijt2Qf39VnY22WH9jBJQXdynr022csUMlEEXaWKjRMrqrPwirnz1GoTrLC3Xm89Onn9zlivFwMdg16E=
X-Received: by 2002:a17:90b:1d45:b0:2ea:47f9:3d70 with SMTP id
 98e67ed59e1d1-2eb0e3311acmr22028472a91.17.1732584542895; Mon, 25 Nov 2024
 17:29:02 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 25 Nov 2024 18:28:51 -0700
Message-ID: <CAK5yBb-+tT5GGunp4C7PoMuYUea9EJH2psvXNSUutiuod44hLg@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW47
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000039073c0627c6c6c6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Nov 2024 01:29:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64345

--00000000000039073c0627c6c6c6
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW47 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15650 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15650> Missing
documentation for uki.bbclass and related variables
randy.macleod@windriver.com mikko.rapeli@linaro.org 0.0.0 5.2 M2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000039073c0627c6c6c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW47 a=
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
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15650" target=3D"_b=
lank">15650</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">Missing documentation for uki.bb=
class and related variables</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ra=
ndy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:mikko.rapeli@linaro.org">mikko.rapeli@linaro.o=
rg</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.2 M2</=
td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:in=
itial;background-position:initial;background-repeat:initial"><span style=3D=
"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></=
p>

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

--00000000000039073c0627c6c6c6--

