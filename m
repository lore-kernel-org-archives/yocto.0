Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3E7E8180E
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 01:32:25 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.9505.1695691941132906728
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 18:32:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=a5lCSoYh;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-9a645e54806so927873666b.0
        for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 18:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695691939; x=1696296739; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uKIGEifMf+gCrDh74RWINQMQzEHbFOO3w7yJes5UcQU=;
        b=a5lCSoYhab4TaNAoj9KnGe4BEuOK+atyupwGTJFv9aUZMxjMOklnFkR5Ns9f4j303o
         2pQGujgdUn8xO7V+0jITjLyaaBG6OaGRKmL0zONZZlxyVNanKln8n5FklUmMcKYYEdVB
         a21TTfmMM4nrYqhHOrFqEx9Iwgsj7iVp5+Qe5F3FNK55asP2g9u5AZofWcUT1umx/Jpa
         KF7jApZBOmZjrRm3elbtEHAmmcIFSiwQtKVPMTInIOQ52Ptg0RcgqS3GgMbwTbl7PHZE
         NORrOflRrF4p8kAOYlNXPTGG8yZIUml5w/uQLms7nT1KBHtaE4/+3vqQdkWHMA5k97/l
         4Org==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695691939; x=1696296739;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uKIGEifMf+gCrDh74RWINQMQzEHbFOO3w7yJes5UcQU=;
        b=e3NLBnmY2jnCRMgmuV4iFKyZTA+Ax1iPDWBnuMeMp8rZuQikP0jhabeH9wRsljZrks
         846BTdYkYf451YEKSDkJTjVqwsZF6snPdt9x/V9owcudFvMgn1/yfEFJwVirrFe5duY0
         6MGTFt+q2uJ2ymJ5Tw4vPfdnfovaG2GjpkBpijtt3IHDpX0lPVbMcnBLFYZN074R7B2H
         UCE32H8jRUnl2rhe5oF791loSFU+DwK5OLSyR5G3tFJPR1hu//H0R7cr8Tz/d0h5ZSkT
         hzV8TXWTM5uNNS1vJz5EgbFSSmZJcIMCRhoEQpVIst8/btQUTYMo51A6NYhMOTC8wBq7
         qihg==
X-Gm-Message-State: AOJu0Yx80qUDRj6Q/ysMTVLr+g9xMGslfKhvOtN4ePsTwJDTwxWeZBUj
	mIUDT5U5wVy8eQvi3CJjTA3LgJIHVy8+UAdTP4DnFkdWHkA=
X-Google-Smtp-Source: AGHT+IERnSAh0l/CtM+fh0KlPdHi3x1rcyIslauBRUXU7CqDm5BjnciFm797GIxAXC2r8i90eYJeIpmhXJuro/7JAHY=
X-Received: by 2002:a17:906:2d7:b0:9b2:8323:d916 with SMTP id
 23-20020a17090602d700b009b28323d916mr3589679ejk.17.1695691939297; Mon, 25 Sep
 2023 18:32:19 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 25 Sep 2023 18:32:06 -0700
Message-ID: <CAK5yBb8-tgUAtX9RhjMqrt9n22sGinqGoBa_CN9-Z=X-vBz8og@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW38
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b0bf360606390be7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 01:32:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61110

--000000000000b0bf360606390be7
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW38 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15218 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15218> Using
SSTATE_MIRRORS does not work with https and basic authentication
randy.macleod@windriver.com peter.zsifkovits@at.bosch.com 0.0.0 5.0 M1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000b0bf360606390be7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW38 are li=
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
yoctoproject.org/show_bug.cgi?id=3D15218" target=3D"_blank">15218</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">Using SSTATE_MIRRORS does not work with https and bas=
ic authentication</td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleo=
d@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:peter.zsifkovits@at.bosch.com">peter.zsifkovits@at.bosch=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M1=
</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:=
initial;background-position:initial;background-repeat:initial"><span style=
=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span=
></p>

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

--000000000000b0bf360606390be7--

