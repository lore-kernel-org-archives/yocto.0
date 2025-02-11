Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 230D8C021A2
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 06:24:38 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.6091.1739255069715150996
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2025 22:24:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Qn7cX7mH;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2fa44590eebso5476316a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 10 Feb 2025 22:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739255069; x=1739859869; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eDzVaufewNPlBWbK3LNoSGmGnycPvAa5+KWFG9eKjoY=;
        b=Qn7cX7mH44FJqTk4zGFhyE2q5U+iTDojBu0szqtZ1/F3UTBr5qviGxSL+aDK0RNqId
         eIThE+mYUb599lPMy+qhZN+9wFK2XlKE7w3EGPrO+x0G+H33sD219P7iex1cZgGCMgOp
         nFA1oqfjEMYuTRk0q5p1av6BCqrFw0vrrZLJ4g/X0xG9lTGVzqtfp1PUeZhBg8ESslkS
         +T4jQu/mZstLFeI/m+3VEkvrfZVLHGGhgHcsbXn4HYccr51V4S+z5WPSr787l5Ba/GjW
         MY+FkRikvbwEwvQnzN9zduKerrctU+hi7jPcjnQqOu++MaDRxpxYESrkn8Yp2VQYA4Sf
         dwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739255069; x=1739859869;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eDzVaufewNPlBWbK3LNoSGmGnycPvAa5+KWFG9eKjoY=;
        b=dMq6AZGfbHZmFTcrUnd5fm46ezoX7ezmtAh3fEDc+8+NXxjxpfXlhQwSMSOWPJBs3w
         AYdWf05ozoCIusXmygNZjb4L1/6L79rcVHWSFTyMECiJsToNfX3+in+Kf4ixBZsj57Cm
         WUhxDNOc8HcxD82QMd3xOOiB/jb120+eIGvyY7zpsj4qTvwWbYDFyhsTxVEK6KYQ6Kl7
         xodPyMgx+Lu1Hx75eMiCwU20qIYyt+BLI48GARhPJdafFKVg9N528q2i2uYO3nrydZqy
         cvBPd0ezRKBwUKVz3CgYFC2TxU8acoK8wgfZUqcMaoIutl5ARazHVAmyDHddb0dwI9Rb
         Q+/g==
X-Gm-Message-State: AOJu0YzMq/tdQwnMoDTw2ozDslgtMbGp4ILU/wDITFLVq4w9yKcBnwrV
	5nllLI6PXxRe60mc3SJOcODuyuGZtfBSA6s3AoLqWyZ76hbELF1Rn6pBVBfV6uJcGNBv9wMBLvF
	lmaYp0XRzuU3SCWCnrRIxYDnBgdpDQ5V9
X-Gm-Gg: ASbGncuf/ZgnHoom/zJrbqmBxUVxZyrW9SS9kfSR9pJiTtJ4kMc3cgbuULqZWHZPnxJ
	G2XqNnjwUgYUaMlUso+xPmbBpQV630Dw9TXt+Lp7lAl8xobBBYsWrvcLiEw0eXiWvHB80n+gvMn
	LwWbnPPvW+ADeFpomXeN+gLWv3vP4ayZQ=
X-Google-Smtp-Source: AGHT+IFzddikLOTKBTB9knhhej+ybggfVS/cnWSBpxPPt7fkXJAQ9/t/UwEZiz6xA3oLHUcSdTwu6dv2Fdlxom8ZIs8=
X-Received: by 2002:a17:90b:3c0e:b0:2fa:ba3:5457 with SMTP id
 98e67ed59e1d1-2fa2417773cmr27432473a91.17.1739255068775; Mon, 10 Feb 2025
 22:24:28 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 10 Feb 2025 23:24:19 -0700
X-Gm-Features: AWEUYZnjiIXOJfPArS-iEePtt4pSUpZARpvuRW7kdcUsAIXwfJGe7vCaHovXudQ
Message-ID: <CAK5yBb80GprYh4GJK+0pYGR4h2teX7Q6bq2CGtJg9OdxkPkg3A@mail.gmail.com>
Subject: Enhancements/Bugs closed WW06!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008c5b02062dd7e02e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 06:24:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64760

--0000000000008c5b02062dd7e02e
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 1
randy.macleod@windriver.com 1
mhalstead@linuxfoundation.org 1
JPEWhacker@gmail.com 1
alex.kanavin@gmail.com 1
Grand Total 5

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000008c5b02062dd7e02e
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
lign:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
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
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhack=
er@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:alex.k=
anavin@gmail.com">alex.kanavin@gmail.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text=
-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rg=
b(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;back=
ground-color:rgb(219,229,241);font-weight:bold;text-align:right">5</td></tr=
></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;b=
ackground-position:initial;background-repeat:initial"><span style=3D"font-s=
ize:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000008c5b02062dd7e02e--

