Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35F2FC27C4F
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 23:06:34 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.33946.1718060790624859734
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 16:06:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DcOzTv03;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52c7fbad011so2844446e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 16:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718060788; x=1718665588; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NMm8sHV3X7+2M31h0Qz1B1mqmCyiia4PuAzKrjqi+dY=;
        b=DcOzTv035ud8cjuXGUrGmrtVF+7hHTxq7Me+ic7LiuEEyeqpfmYCy2blrHYnjncqOv
         YJ8p2MLF6Ycpqtbyr5+U5Qqt3ACijq/zuRFcIK3lzYBbhTezXEzSbv8dyW7x4/ONb/hr
         FHAObP9djUUP5AMQPDTVd3/7sa1B6FBP8DHOg0gyVbYvcYIItF7xd0zELR9w9O3XWCeA
         LhFXsDT7FFU41Hk7CeX71RljXGSdHY7gEbdUfznpveSmgDYFmFF8dL+ASCKpbgV/Nv/R
         MZPOhINkoxAktYFUikcN5JlvsvowRDCesWI2f3VarwkaATlS+uhzqbALfzGSAKBjWLAo
         CZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718060788; x=1718665588;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NMm8sHV3X7+2M31h0Qz1B1mqmCyiia4PuAzKrjqi+dY=;
        b=ny35t37vOkSbAhZOekH0+9gLyAa2rwwOPwHhp2OMrgkGxPCm25iz/PAk88JQYFB37W
         1mPobx1tjsHP4OBxOXW9KeFw16FbrAdsXpCJU2ZYwhMGfElud3g0qGicxuSSFPbWPN3N
         F08M/pht3iKgnVCPDCsLIQTTslDtNZjfXrB0rrgC76vZ5/nAP3kZNWKLBM5POOf9aZxe
         wTKg7m36vpaRVs6cdGmM75dZ64ZkPFBROt5Wl5/ngVcOEDxcdVzshFOzXXW8m6MoLZcJ
         zbR1OtlE2Px/GVcSP6/8dZiF3Ut9AqpSyHVnOWpI0oSxntGmI0tDVBE8n5mHACqnbzLg
         x94Q==
X-Gm-Message-State: AOJu0Ywt1HN2DFT+Arm0YiO24f9TcSArMfoUnrk0fA2KckhCRKnKENi7
	oeyZJf1rJnvdolWv2Zk0W555mQ/N7fgrKrJ12JAWXzNOuVYCwIDEUKu2aKDdw0qFpU/LKNKjani
	7DwdUK/fa24liOwwJuU9gPFSsBKIOO1Jl
X-Google-Smtp-Source: AGHT+IEYHeRsYtjkGrReq9mJBNf3Y1XgZkSM+EWQkDSGCWa83cB7p6kz6xhbmdtFk1IW3fJBTGyYho2FnIGXjRxEQVA=
X-Received: by 2002:a19:e049:0:b0:52b:bf9c:7e28 with SMTP id
 2adb3069b0e04-52bbf9c8435mr5774217e87.14.1718060788137; Mon, 10 Jun 2024
 16:06:28 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 10 Jun 2024 16:06:17 -0700
Message-ID: <CAK5yBb8g5rUc6cr5CAOUKkKnH3Wh5wcnA8OkHqPfYVFairh21g@mail.gmail.com>
Subject: Enhancements/Bugs closed WW23!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fac7a4061a913280"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 23:06:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63312

--000000000000fac7a4061a913280
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 7
mhalstead@linuxfoundation.org 1
Grand Total 8

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000fac7a4061a913280
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellsp=
acing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layou=
t:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collap=
se;border:none"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><=
tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(2=
19,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">7</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstea=
d@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font=
-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold;text-align:right">8</td></tr></tbody></table><p=
 class=3D"MsoNormal" style=3D"background-image:initial;background-position:=
initial;background-repeat:initial"><span style=3D"font-size:12pt;font-famil=
y:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000fac7a4061a913280--

