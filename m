Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 129DEC4167B
	for <webhook@archiver.kernel.org>; Tue, 28 Nov 2023 02:05:13 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.19952.1701137109310180479
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Nov 2023 18:05:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Apav3C+7;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2c5b7764016so55989741fa.1
        for <yocto@lists.yoctoproject.org>; Mon, 27 Nov 2023 18:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701137107; x=1701741907; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cqpVEncKJMUcIg+N//D6baJ0lBcjpmdAwm+D/8nKIgg=;
        b=Apav3C+7VEJFUPZO1abQxiUTmbJDBWDmP54YkI5lk7H6QtVzg5q5GbUsZRX1YnhwTI
         8kDaitQPsCJuSi4LSUwFK5srOIkBPnTfwEakeMadaZXOinIz4rRpwTSonFanoMxzsPuF
         kdGuITpNkoB7hTTymZsCmKamrArK1sZRJnq67FguVhYxdZ9SZSdMYS/vcJ480Vz62L+w
         tiuoWG1d4pfDXE0jzYKs+DcsuXXo3Qj6t28Q2KLzSMmOzMBcak2VkTvuWP+zI2/6Vnd8
         C9UN9WeVwzBFyaUehWI7PTQxc4Zao+HCC/wV/AcJGTephnJoy7A4zaLj0rPNScqaAAdh
         S9uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701137107; x=1701741907;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cqpVEncKJMUcIg+N//D6baJ0lBcjpmdAwm+D/8nKIgg=;
        b=bccQL/WAtqf55PbEOfhZcrRajuQXHMZKcwFtluIlQrqH0Z9faLwuwFozR/n0n0cXN7
         l8mOYgJSXyxbP2zyv1f7kIioS0cnYKlG0rGoxbWQ2FhYn4AtsdSUtWc/qdsT0rMF/xrY
         rO25F0SQSCvnV8/xwmh/HC+kW6ozmDVtpukO2aS6gQAGuGTg/10eZkEVLoDnJCppKktw
         bF3d2rL0afre9YqpMw6QANiM0D3TR23Ni6f76VI/TPeLBN8LSJVfCSzTTkGJ+sMxPD4Q
         3wPP6B3rkJOhYYipTZ+CNvGXZmF6T2aGIW7u1ahRPiYj56DtYK+wrLZG0FnUFAt7rxrO
         1Ukg==
X-Gm-Message-State: AOJu0Yw7B2GXq3e8dSfxW9ATBOjMyc90CpbMXDxFvmxSq0l1rc/7LMRL
	rZer/k+9OKV/m40GxZ51FzLnKQ8MUwHiRnxazVFb8eKyODI=
X-Google-Smtp-Source: AGHT+IFoaqFCDQ+N694RSmr2rartxTOCzB6SWyp44ARcQzkUdnEPRMpoHS+sXumx4fpYJmLPOaCN6rcBwFgnZuxw7Sg=
X-Received: by 2002:a2e:86d5:0:b0:2c2:a337:5ea with SMTP id
 n21-20020a2e86d5000000b002c2a33705eamr9043535ljj.27.1701137106952; Mon, 27
 Nov 2023 18:05:06 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 27 Nov 2023 19:04:55 -0700
Message-ID: <CAK5yBb9p-XsJ-qcKoOmywmg9d5NrSnvwOZSRJhy=B0v5LyvOrw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW47!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f96edd060b2cd83d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Nov 2023 02:05:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61762

--000000000000f96edd060b2cd83d
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
tim.orling@konsulko.com 1
steve@sakoman.com 1
ross.burton@arm.com 1
david.reyna@windriver.com 1
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f96edd060b2cd83d
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
"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:steve@sakoman.com">steve@sakoman.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand =
Total</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weig=
ht:bold;text-align:right">4</td></tr></tbody></table><p class=3D"MsoNormal"=
 style=3D"background-image:initial;background-position:initial;background-r=
epeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">=
Thanks,<span></span></span></p>

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

--000000000000f96edd060b2cd83d--

