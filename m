Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585D3CCA470
	for <webhook@archiver.kernel.org>; Tue,  7 Oct 2025 14:31:04 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.20208.1759847460448844146
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Oct 2025 07:31:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ej8kWlVP;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b551b040930so4234281a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 07 Oct 2025 07:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759847459; x=1760452259; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7P7DGrB0z6EbchzsfiGelrjn2NaI22Ay4TkbwDdfL1M=;
        b=ej8kWlVPNRA+w+wJdem708Ssf8RFpT1tSlGbTOFuW8Ni+Ws//zQZ1GkV/G3ZhtlNqc
         6wNrNgdO5wZjCk3mMMnybkgJBWBqw8D9zeM+BILTXD8LSN4ZXhxMQEVPoPjOXMEwascA
         gTCqF8EiB7mpmQRGJAqw3I1znglBoOIL88OBHl9MBM/vZVlt10Jh/P8+Dc7bJlAwZebS
         b9DoOwAvTh4SYnBW2lb+Y3BmRXJtduv5WSSZYR/xX65WXGbtjA3+6cyLmgv+p520DlRZ
         yBPr2Z5lS1c+CGe4cm15NPXBgeQecLEPvvGrAwkeuwk6I/cHbPrwcjSxNw2pG4iN+YcX
         1Kcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759847459; x=1760452259;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7P7DGrB0z6EbchzsfiGelrjn2NaI22Ay4TkbwDdfL1M=;
        b=oXOLX0PCRA5snBGpNSDwiD94s/6yOfKACVLvhdU5aCinDFB5ltzEiwR+ijf2MnXY+i
         MHtvvLNm79i+BgV2u5c1hgE/nHhlHV/QMIfi8GPCraIjlFhalLI6HNYXqe7WN77jlDpx
         ne2nwdT0R5dryTxGAY9S6W9pU1hKHJkr+R55ioxerNo2SN14KMsGYJIk9+EfheKKBzfs
         RguvE1V4KhQXT5rqb+x7GPHn6LUIYdojKnYcNbJ23vlN617wOsDl3f454/0dofc488F2
         hh97GFiHdffkgp/FgnYz/hkN7vCL/gILvpiOxpKb9TNXW9VsbQMjCaRIqZL2fVcRdkXr
         3vpw==
X-Gm-Message-State: AOJu0Yw/0vGxmASuI9LHj7E810fbFcX9a//zzGEwPb2VmBVqMRqXBEy2
	jpAC2DO1qQzvIt6KaZ3mr/hgdcVObEvXCjxcPc907roujbY2SL8JIHP+rJCVFHbHZNAOxZ7U1v8
	r+9JvZuU0JlyZKtx/HDUoLE7iAyzKKnpku/0u
X-Gm-Gg: ASbGnct9TsPJdd9gxZX1OYnLks1P5zs01hidwziD6t3kqrXBiBYpYV8D5c3ckin8BSl
	Jrx2lztUbiLNcKmLnIIgNUJQNP1Oum9Rfgeid+Ytswlf4rR8ss6yqYlwgNmsLg/LBYXGPKocCcw
	V4SJWo7jUbWUmDfq4W//H3IwYjCkQDXtH/4fMuVfsPimz+5wdb1VgtacaO+aR+zxFj+rJkfebqv
	gokHukxXZWN+4fUp6/rxVLNAbCtxD/R+grwzLsAz3x9I2YkJX4W+BBhq89jgfYqzA==
X-Google-Smtp-Source: AGHT+IEY+py3632UThjwkqwzH1mhweN2p9kFTzoDlwB3OeJVBRHyQPTnd7nf0hoY6yTXvVZPRqVtk4MVkFgL/RqSfZc=
X-Received: by 2002:a17:903:298e:b0:269:a2bc:799f with SMTP id
 d9443c01a7336-28e9a5f87e9mr186915545ad.29.1759847459491; Tue, 07 Oct 2025
 07:30:59 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 7 Oct 2025 07:30:47 -0700
X-Gm-Features: AS18NWBgwcHqryJyfe0kwy7g354CLq1IT-Tsu99eYnrbo3wm-1ilSby6tLxSbzg
Message-ID: <CAK5yBb8B_mTLTwEO17hsmvLRdso+mJY=tz5k_=9xfnzwewpziA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW40!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ae95740640926a99"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Oct 2025 14:31:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65910

--000000000000ae95740640926a99
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 3
ross.burton@arm.com 1
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ae95740640926a99
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.bu=
rton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
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

--000000000000ae95740640926a99--

