Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DF4BC4332F
	for <webhook@archiver.kernel.org>; Mon,  6 Nov 2023 12:05:30 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.52103.1699272322180681446
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Nov 2023 04:05:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AkBGCUNf;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9d10972e63eso632068166b.2
        for <yocto@lists.yoctoproject.org>; Mon, 06 Nov 2023 04:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699272320; x=1699877120; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pFelGP8vAX4YP98tb6NXH4iceZWkK/prsUMbAw5POqQ=;
        b=AkBGCUNf1evLs6yM8kg3dh3fneGoJW+ktsrKPqPgqGAITkbw9nwjM/gHoEKhlD5IZs
         OHMeq+FGOr+hWEALPUB8K03yJLeZbZjbeO/V1sf/T+/q+3WHpD3PZPB4GDMSo7DvucUf
         KnmOMxHIkee9dOc+00UEWRn1FHnf+vtyvcqASmyRUfsRmSXLj15McTnD39pwbz1lyX64
         fsUoaeZZkWEYQVdWxeu+UqMEix6PtlYBOWY/h/4vjWEG3Oc7GMwbPuf0yohgi7/S5wWT
         EMl58AKOVGzoxdJeH96HG7H2fkeDFJ084B1TVbNEdNTCQyAsGgsseH3NE+nRdmValN1g
         P89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699272320; x=1699877120;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pFelGP8vAX4YP98tb6NXH4iceZWkK/prsUMbAw5POqQ=;
        b=sYFv1lLwiqZo3c+l6vEC013sTpeakjJ9LH5oqx/jsL1xTHqaY4Jwfi3LRtknzEFbGA
         5mW/9Osp1PKf7M4qU15iO1xPnbShXvAwgtkxbpGyz1u3RoGvEvYKJObTt1su748DUNze
         KXxTWVRwCIDwYf+yV6r6TadI1iHIzr+MSVUiEFUx8l/LEiwD6t2kg+GiWknnlgmk6X0V
         Rwk+ZdNTsQN+JejN2DpLDdq0OEVOPIB5LqJm78Uv/qayT/zAet/5uWA2SnNRUdJ2msuo
         QZA098wlvBryLx1ZBr9ttZyH+g65jLwqNaEA5DYFDLWq8SXzumZHWWW5hX+5T67P17dL
         Qyqw==
X-Gm-Message-State: AOJu0YzbHRAdNGgH6yCYwEkjz1nfW9xB9a5yYXrwX42LOsEVxsO2HF6X
	SDCXAhpueldzVaovUdyahqXqTZAuL8QYpaHC9OsdNOSlmVo=
X-Google-Smtp-Source: AGHT+IHxI/VfVl4hMR4oTha17SniNhBehHzrtEXEg0X4H7G4cZ3rbYtZwTzynfCQldL4OGtG/d7O4YFVRgNAgdjf8jE=
X-Received: by 2002:a17:907:72ca:b0:9de:5e14:d934 with SMTP id
 du10-20020a17090772ca00b009de5e14d934mr5774106ejc.51.1699272320271; Mon, 06
 Nov 2023 04:05:20 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 6 Nov 2023 05:05:09 -0700
Message-ID: <CAK5yBb9s+5UX0_sGU8Bj2CdM=TXS=4dRAQukPZJHXGVRnNBmaw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW44!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000006c9f306097aabed"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Nov 2023 12:05:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61625

--00000000000006c9f306097aabed
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
tim.orling@konsulko.com 1
sundeep.kokkonda@windriver.com 1
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000006c9f306097aabed
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
n:bottom"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkond=
a@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross=
.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfound=
ation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-col=
or:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;background-color:rgb(219,229,241);font-weight:bold;text-align:right">4</td=
></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:init=
ial;background-position:initial;background-repeat:initial"><span style=3D"f=
ont-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--00000000000006c9f306097aabed--

