Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A92FCA0EC4
	for <webhook@archiver.kernel.org>; Tue, 12 Aug 2025 06:27:22 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.67943.1754980036536539448
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Aug 2025 23:27:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F7IHLXtO;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b427094abdeso4752175a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Aug 2025 23:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754980036; x=1755584836; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DZfeCGY03bjMK2zkESrcvLjEMXfIJPPrQvkmr8yR1bI=;
        b=F7IHLXtOiDIMhTyNj6hpAV+iRTGx97+FrJCA0LJLeBxHR6psqaLqS7rQk1Md8cefhB
         F1ChYKt0vjY/yjYFNl01VMTxZrYa74hvhGAsIkEc0q/TFDLy4v60uFs8DZFKIvmBPl2w
         9SWhddFxxPa4eR/2wW6e6FO8rGXpngRXSuytRyp7vgHuaZ3P8QXCvO9arCxWcXBE4sog
         mvsqs8qD7rXU3oKF8la/xtEdIojt4Cn60LCDznVpsClux7iGb1NgLcb301Lz49QMB6my
         yjfaPDsFZPzzNuevpZ9sG2ZRSZ1cAyxNlJBEGB/OGaP7wtum9Te70+8lpAhXzbi5KpfE
         gD9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754980036; x=1755584836;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DZfeCGY03bjMK2zkESrcvLjEMXfIJPPrQvkmr8yR1bI=;
        b=rS2+zJYLRyfLxgcxDtVtvW5lRdzGayulECo80OWrNgnz2O+Dv3nqy5Syudm7/3Di3L
         H4sIKGhkyfRMUzRwkH+H1IlE3sCqnolEFTIOcAQYiUfVm2pZVeU0W0wZJtQCCo3fQXsy
         7v+0A2r8K5atAms6mbpez4AUfLePDVpS1TZB4y9oAAwD27J/2xK0O4x468HBDVJ1g78z
         rvrkoB4wXBKBJKTdVT4PiqzHJU9xcRCriny2DQmD5FXPB7/jVANARm0M3H/ERs2m7Qz9
         Cwxqkbxyd1v+grMmkY8oN16SJD7+gvrRX5T7DDmNBdlGmt3qeUpE+z9DOXagCEEMjYVN
         QBlw==
X-Gm-Message-State: AOJu0YwueVqqrZXGt/s+VQ4H5PUAHknZh7yskZJ8XXUAsWBqPYZwNBDb
	IdMO50Vcrc8snFkFkIrTbZ2OXViJ7E4N2Yia2kiYzLPY0wXfXoHamODcU5KjxVDDPG9gsIFqV4o
	XJ19XbEuzDuEn7rBXcN2ytCxLUHp5EW0ubcVe
X-Gm-Gg: ASbGncuqD3/+reWev4/54MtsiMP327z9sAKQW4+Do/RSh8WX+71UOyI5ckXbbhmOJtx
	4ZFogzmAIQyciLT0tgLmIuFl4SFz1FnziTFeblOLMShTwieOvcQ5AQT2uys1lO+HocZZXV8l47Y
	w4QuDGv273UgsFx4GnS+ESwZEEWjoiv7rqweuwYEDXAWyTdsQv0Dxeyd9v0kkvbDTpRWJUJyGyF
	qYjwgg=
X-Google-Smtp-Source: AGHT+IHdtEfIVr6uNl5KB8EJBZMALy2lpggpWfs0E+UEd/KnPk6q9JuCcivpz8eOmLW6PRP214lp5LlbKeyC1afP4OE=
X-Received: by 2002:a17:902:da82:b0:242:460e:4ab8 with SMTP id
 d9443c01a7336-242fc359628mr34431555ad.46.1754980035521; Mon, 11 Aug 2025
 23:27:15 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 11 Aug 2025 23:27:03 -0700
X-Gm-Features: Ac12FXxcqpsuVjE8_gGys_NSBEHCdDQYpjASDRBstZDcj4c3pSq6UWvqkqWt8d8
Message-ID: <CAK5yBb97_Ny1ef2_QpDkyQQbv-=V924_zW3FzR3aSuR7PFFH0w@mail.gmail.com>
Subject: Enhancements/Bugs closed WW32!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009aefd5063c252153"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Aug 2025 06:27:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65751

--0000000000009aefd5063c252153
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 4
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000009aefd5063c252153
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">4</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:b=
old">Grand Total</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241=
);font-weight:bold;text-align:right">4</td></tr></tbody></table><p class=3D=
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

--0000000000009aefd5063c252153--

