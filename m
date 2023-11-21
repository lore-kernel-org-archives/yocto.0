Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EC69C5ACB3
	for <webhook@archiver.kernel.org>; Tue, 21 Nov 2023 10:38:59 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web11.36932.1700563134842415111
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Nov 2023 02:38:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Y2lavJHK;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-548f6f3cdc9so1008141a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 21 Nov 2023 02:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700563133; x=1701167933; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z2NmmhWuFP8Kbpbbg4OmF5MACtROgpxJZHbXWqrrTfE=;
        b=Y2lavJHKTuk0K6gWTrM2Hl2VrqhuHuQjZw7DQjQrBcTjtHFobQM9KtMqksxi8gaept
         zN1bbWeqacdgPKZ7qDUSsZIoTTiTdMxw/MksfmgpL8KItpE1QuDx/Kqn1RbVeQXCg3BF
         JYjB77dY6LtC39WaLSzvLLOwflFZyrHqqVSKyvBJ2rJA7s26diZI/Z9VvNmqNVfPybxX
         idvC++wBTcTIShvYVa/t65D4h9DGix9sxvVfL54/b0R6dYYhYJX497JXoxD1yRw6oTPh
         hIt/wBIQBvIGzf2X/ZOam5umekrMdyirRho4/7vqK59RnD/dKd/5zM8vTs6CG0HgoqlC
         ajFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700563133; x=1701167933;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z2NmmhWuFP8Kbpbbg4OmF5MACtROgpxJZHbXWqrrTfE=;
        b=PANToRS6st7HDkpazJJF3Mi5O87haQdh3OSQQo/9ZYi3//6kY8fkZZejo/nCPaw23J
         mqfSwyYvi70tD4SEA0/hX2r1ErfM8vF1o6+hKuT1CLjWMaeZM+iVsfpQYaAFMGcw1b2X
         PWxSJRo8OGjhf4JO6PVmQ5qaIdNRwtTE5mTJSwm1FrOQErNIKLwpaJ+yGe+P2xR8IlPh
         JFUTuk6PqHKecDaYG9XMAQfL1zo5b28qaBEnw919pz9VtAU3MXy2Lg/d2LzTMTu5extV
         W2Ut+0B9Q6VDgc0fjvKhetTT/b01pClDiUFhhyhmDIhxRaxnFVjxUrdQTrdbRHOgOWk+
         OfKQ==
X-Gm-Message-State: AOJu0Yz+MJ6a6EqS8If7+ABLYZ9jWy5/mEqffA2Tq9vNuL53lbJuPq/f
	7KobMjnJd0ZkiZs5Xk1HmZWjdfgDJJRMVjhXh4rOaYpM/wU=
X-Google-Smtp-Source: AGHT+IEFFcZPdJoPfoQ+qxSnPqMTphFfy0uAmZpcfhgub6o9XE4EcLfxJx7WuPNwH+8XZ1gP2pJPPJODNjAMKQzigTY=
X-Received: by 2002:a17:906:3557:b0:9fd:fd14:af8a with SMTP id
 s23-20020a170906355700b009fdfd14af8amr4469719eja.50.1700563132973; Tue, 21
 Nov 2023 02:38:52 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 21 Nov 2023 03:38:41 -0700
Message-ID: <CAK5yBb-0YXq8VW2hrpVgzoX2QawD3Lac+uJqXz1fwtLF9F-ieQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW46!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000075858a060aa7358b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Nov 2023 10:38:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61723

--00000000000075858a060aa7358b
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 3
tim.orling@konsulko.com 2
david.reyna@windriver.com 2
twoerner@gmail.com 1
richard.purdie@linuxfoundation.org 1
randy.macleod@windriver.com 1
Grand Total 10

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000075858a060aa7358b
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
"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">3</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@windrive=
r.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:twoerner@gmail.com">twoerner@gmail=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org=
">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:rand=
y.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgro=
und-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:right=
">10</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-im=
age:initial;background-position:initial;background-repeat:initial"><span st=
yle=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></s=
pan></p>

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

--00000000000075858a060aa7358b--

