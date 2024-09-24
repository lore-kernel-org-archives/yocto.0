Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBC4CF9C72
	for <webhook@archiver.kernel.org>; Tue, 24 Sep 2024 03:57:20 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web10.5986.1727150234848601288
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Sep 2024 20:57:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Rdm2+/Nz;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7191f58054aso3783347b3a.0
        for <yocto@lists.yoctoproject.org>; Mon, 23 Sep 2024 20:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727150234; x=1727755034; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OkIBjy0RO9FRQn6O7pojRSBc1r97JkmxLxuTTcHtd48=;
        b=Rdm2+/Nz2iHKZq/22GF5DHPkq2L2oPcvgh+HDZT+9em2e3UpZY3t1IRFBtzydm7Ab3
         oIkxUA9hiAgR6+Y4lx323VJIKLLhVZvXo+BhdY48OfyUoeOPF5j0WrBZL3ogCC7k7NCn
         15N1HevF/1uEMPADA3CW/UuwVj8FHx3iNtiQhrJoIBOnDdhShVZ0fEHAhWTHiHWbk2WT
         KgdtNSOj/N3Ztdm3PR3zPVCkcnngDAnCBR3scvYFB+zNLWIbWNuvbWNLXkWMQngnGlTY
         LwpPpCUekFHcRORLqPf8BvUj4ukhwu9yBStfCfrkuqymJanqeBtxbl0Z4/P260M9H95g
         qdvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727150234; x=1727755034;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OkIBjy0RO9FRQn6O7pojRSBc1r97JkmxLxuTTcHtd48=;
        b=MJkK/UBuFhSFOEAbrr6l3Yy+7AvhmU4ruHX4i32KWrKvnz2ufulCNd7z7XwOzMOap7
         9IWgUKHwfw9ysbNK96ptXo7ioQ3l7OtK9rsVZaBeAx7TJcaWJfserMF3+Je5RlI1NsI/
         RmPwwMKgyKXuXSDs51X+54bduZAUCRw/lGg8UQsyuCJLeBv6eW1+d04umImOUq3OdCZv
         ZDveoxTLVGoUFnG6/SmQfnVzN43C9la5tG/E0jjjh3Rh65OKqSKfZbMbzPWv3lsjzEVQ
         RVDDgPSb3UHpiTSv9lT9Yk2GBTdJznDVToFAWsCd012Amqj8BkNF/xjGTVKScTVeqG9e
         8xtw==
X-Gm-Message-State: AOJu0YwDvI8WU1ovWxeDRFGgyoMaXyMFUHy4ltHvnCwkbcZVlCe8S/Ly
	/UbM8alvflwzakwiXo3Xn5oCHh5jRd4PNUhAqMj1a8n70Uz6RrqHck3IZybioHRYg+tCAgN1pPx
	zQQorKkHojWjthCHpYsqe5kkCesOr20+i
X-Google-Smtp-Source: AGHT+IENIBYfIkbY3pGQDj5akzZqbw16CQbquQ5otJaEtxxEwC95lq32IFaJodesl3co8H4x7nbEcllLGHhN2Wy2rT0=
X-Received: by 2002:a05:6a00:3d06:b0:714:1d15:663 with SMTP id
 d2e1a72fcca58-7199ca4dbf2mr21968544b3a.24.1727150233884; Mon, 23 Sep 2024
 20:57:13 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 23 Sep 2024 20:57:03 -0700
Message-ID: <CAK5yBb8JFX=4Fz1wUAE==hDp4P4pR-mEODiNSauSPG9c_pP0ig@mail.gmail.com>
Subject: Enhancements/Bugs closed WW38!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002a1f950622d58002"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Sep 2024 03:57:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63882

--0000000000002a1f950622d58002
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
steve@sakoman.com 1
richard.purdie@linuxfoundation.org 1
mhalstead@linuxfoundation.org 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000002a1f950622d58002
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
"><a href=3D"mailto:steve@sakoman.com">steve@sakoman.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfo=
undation.org</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.or=
g">mhalstead@linuxfoundation.org</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:r=
ight">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,22=
9,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold;text-align:right">3</td></tr></tbody=
></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgroun=
d-position:initial;background-repeat:initial"><span style=3D"font-size:12pt=
;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000002a1f950622d58002--

