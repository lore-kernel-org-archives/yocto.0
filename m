Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F92C0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 04:43:55 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.11084.1738039431420953193
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 20:43:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CSA1v+EL;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-21675fd60feso115774735ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 20:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738039430; x=1738644230; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6OIaM3mI1VY9Cicjf9qqlEWHKPcaNFC1w6IcDXucbAY=;
        b=CSA1v+EL7QXFnPfKsMXVUiuDePtVj/iLYB5Yc/ES7iK9nk00/hQagd+7mMMosuqxXv
         a6gnn+3K0UYojzYrayPmrLenS8fXZEPTB31e5ub2gMD4VaGJ3S7T6qlKjNwgVzTD/E5w
         rpq2N6pZGxMkcTpDs96wX0+U2WhA2F1yqm2L+KDz1Qyp0NEd0a9qIuLBQL+2hxPx6w3S
         +4D9HaWTbkS/oQdLjIBgkTRQcwPUde/+ZGlE38BFyYISrcznm+xsRpfJLlZYv6kEcQrR
         a/f/ck5Le6o+S/3QhijxJG/kMQfQIQvOGmijA6HFaWsOm7cKISw96a2ajrV7QnkqA9Nf
         w4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738039430; x=1738644230;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6OIaM3mI1VY9Cicjf9qqlEWHKPcaNFC1w6IcDXucbAY=;
        b=MfrXDgYrQUh4Bsj8q0LMmosyscDUBPazygODN+sNOoFOvbonsEgdvAb01Wwfhqaa+G
         lx1z5OUopTXWSWgXnhGPnpM2IKsRc6KzQEJusFsegI4Rmj3SE9M7iNWIzu6QozQxFFlK
         JLZAcab/GzNfdHgnCTruU1+VKchVNrnbQXObNRoc9Xs5j8VkniqJmpHrNbrc0Nu8q2IS
         g7oCtFIAFFd2ximRJf1yKtdmwPTJu7sM4yH+hN3L9k290ZAh0X8hjky1twlIQft3vK8f
         Dk94fXm525ejpr8O/OD4Wnx5l6Sfg8VtFr+yK8NO6I4V4d5u5LGoYmjdIQXOlWDeKtZ+
         E0PQ==
X-Gm-Message-State: AOJu0Yx41lgEddipWpMkzsULLqHqUVxb8R7vcNDSGyt9b2HJ1Nyze3xg
	oHYSvL/sPiAheyRc9lcNN8DTq7uZr9OBJI46o4uxJM5twpp9mX1hYa3DOffCW5qrxyDJrjYf5ow
	e4xDpjxw/s6E+pvrjz7KPLw58+P90+q9r
X-Gm-Gg: ASbGncvznoHrltD1ppA113VslfE+yF6wmONpG8+K37p1khvSslhC5gKr94jeO9ZaQQs
	d6VvQMmYqg/c0T+JzYqEo6kcYCBdyk1XhcpkHdAXlBBFn+smSEZX5IltLTbAU5cr25gGBeQAbdU
	FMh0oFe3FO+Zv1reld2wDxERU2vgyQXAo=
X-Google-Smtp-Source: AGHT+IG2yvOxZiYpomXeoOOR9j/PkcoNft/DiOBaMPQRi2DKrIaPUa/P7hOcfO/GJWNAGvw6QuEKaAgve+tqZUVnYmU=
X-Received: by 2002:a17:902:f54b:b0:216:7cd8:e964 with SMTP id
 d9443c01a7336-21c35558b07mr766331325ad.22.1738039430200; Mon, 27 Jan 2025
 20:43:50 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 27 Jan 2025 21:43:40 -0700
X-Gm-Features: AWEUYZmNNWYfU4eqqN0JS8qJcR4gwv3-w9ZV-Nl8KnvoewpPjPOAzIterPuMDgQ
Message-ID: <CAK5yBb8NfA4vsrGuMS+VQgHmuTQfOnjWyqRWOFPS-KGb1vH4GQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW04!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d7c5f7062cbcd648"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 04:43:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64653

--000000000000d7c5f7062cbcd648
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 6
yoann.congal@smile.fr 2
ross.burton@arm.com 2
mhalstead@linuxfoundation.org 1
Grand Total 11

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000d7c5f7062cbcd648
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">6</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann=
.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ros=
s.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundatio=
n.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold;text-align:right">11</td></tr></=
tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;back=
ground-position:initial;background-repeat:initial"><span style=3D"font-size=
:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000d7c5f7062cbcd648--

