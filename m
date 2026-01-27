Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F19E7D25928
	for <webhook@archiver.kernel.org>; Tue, 27 Jan 2026 03:19:53 +0000 (UTC)
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1651.1769483990837222199
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jan 2026 19:19:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ge2fAfb4;
 spf=pass (domain: gmail.com, ip: 74.125.82.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b71557299dso7426781eec.1
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jan 2026 19:19:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769483990; cv=none;
        d=google.com; s=arc-20240605;
        b=Qcxg7ksZwEqUXkRkGiWDtNxVDBKFDJQXIKTwPKJV3o0C3w+JxqG1TtOYkbnUa4H1zB
         jg5MZJkDx4zd4pi05nSkuo5VD5yrgaxF4BxzSA0t3hpsaMMDnyZvsm6Ubi1EC7lm7Uia
         JMPmc5xuOexL/DT/YOvdm9yQhMu5lHTKcAl6PhgvbZMNMN/cNW+oU9KN7bcxgLbi31wX
         nnv6/QWZulNRtces8VaAH4xBStpqiPzkTgK060IkQ2lRKgo07s7VurKSGOFCOU94yj4O
         7B95TEB+nS9ge+b9suUu7NA76eqyXVWXK8fJBFbhJGl++SKdIRH+IeFKX+9IWccVfsCD
         9xWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=0ePuxAQ8pauVwVYuxhqWTwDZX9IzF5ZtU03C/fJAR4w=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=Ckq8BjtLDnhGkhjd0hGmi57GwDo5gcxNvPyKvGwJJgJQXhLWDVLpjrSH0bmPzBuqa+
         Sfha5R8oisCG4i3ddrVtsZHQttcgE1uoyqDTUpz10G7epjJIry7NHesn/Arm2fwEaPbM
         tg84Hyjq6HLYNHb2un9tlHAJEZ0da4MVCNABiT98mECvGlOp2V/waN2AnzODoGtKdxyY
         8NLgvwS0jW14gRyelPnwIDI5Y6rSYwROMFhMf0o01lfo8jnx0si4yW7uZPpg34MWdlm7
         uYGnaaH51gRa4iODnENSk9nZRdWk+b3GAmBZIC4C8/gXQ6JvfuB13kQxScrnjfPZyTvs
         OH5w==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769483990; x=1770088790; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0ePuxAQ8pauVwVYuxhqWTwDZX9IzF5ZtU03C/fJAR4w=;
        b=Ge2fAfb45HrXcTeX+lVaG0h22MD7IQRyTXoPuVZtPyS9o0Wf9CVDy5/1tyUU/e0lNW
         qmmuloTB1i3Xp489+xXbPP7JscHdd4VyjxHHolBdB3Sv2YkguqvV2QjBqLnBIAnJQ9e3
         6tj4Iu7Ob1ZT/cPAUVuuNxr6A7GVJSAlOxdAChJcxII2OqJugFSpXYs+8tD7wpZc+jz2
         nOBmLYcsj4FIN6quThAJLUF9P+Ku7nWf4QXu7tPXUr7a65uVQnOqh4Da0I1/3GpVbNUH
         Lu+wXXTlJJAqkrVQcIF/mr07C1l2igYbsvPJzZQdYTHDPUMRbMygQq6DAA6nkdUgMYl5
         kZiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769483990; x=1770088790;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ePuxAQ8pauVwVYuxhqWTwDZX9IzF5ZtU03C/fJAR4w=;
        b=FKE3N0+7QPdmbheOksNSPkSG9O+ng6goSVqI4S1MQyKK1e30KRV9XByr25ZPQ+r9H1
         K6iIAurHuWQf/bVBH4DUVORmXd+ao/lv+B0m32q8UaWWupaUcYYxKRzgUBFyKEDAkom2
         57NOkfUrDGXy6pH8KXxZsSQ2kr3XqfIs5raae18pfEDqGI4w8D4Z0XvwGcleXDIrCB46
         MBckViht1PFepRslzrUqpFRr6sstBtfcghPnUo7OK055tHnDzyRIb+9+uPubC/V4QfIU
         Ppna0BBw7jvxXc6dM7PflLt3QFp68pU4v67u7KxDd9naCoNrabcfhl1lNCqioigrUQWy
         /WEQ==
X-Gm-Message-State: AOJu0YziR1rb0sQ+AqpOlHmKu07rOtaib93UquTVMMITbTx4ojp2xCYc
	lTFDXwerAJT7WMEIutNH+B+dKOKo0BvXPoCzyRXTnpkIXAfyel43F3mySYwb9wjDnCmw0TRsA4k
	o+n42JJ1IZUDmUVQG8USwKwmOVSRhLSn3ifUi
X-Gm-Gg: AZuq6aK1LKwwrPhQ7DKqOWf6womhar5x4s+j1mpOZs93tRR2P0J7aGh0CdpHaqgrfUC
	8g1Js0HAABD+emvJThm3oW/nCTY0L4MgcL/9DGDfF77vkiFmZ/9puRjQN5FrBwZcSZDA6OYs/ab
	ZbBenEu6lA6OmNay40qmQ7BLpVlM0PiuAZZb4lpWTLZz8pKf3XSQVfnIohoezWEhD+OVD0XgtTA
	IhG178Sk+JWJ8vXabXItxqk5kmkqXTqZw45Eec90wAnxWq8uZsrgKMOsk0kCVITKkCdZPn4CKuo
	UuZ9rMAk/ZeRMTJwaYG/X1KFsz5tYCd9JxQGJWuI4ns7NAEC+/LZmytcpV9JR5bPIINkuTOVd2D
	WQIw0/HvIWaKERjE=
X-Received: by 2002:a05:7300:dc8d:b0:2b7:3782:fe60 with SMTP id
 5a478bee46e88-2b78d9191c1mr257004eec.14.1769483990012; Mon, 26 Jan 2026
 19:19:50 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 26 Jan 2026 20:19:39 -0700
X-Gm-Features: AZwV_QjOZEjkqoXSlWXtvxkXl6YP7Om_QzENV-aRcKXjRXnkC8wMHdDsdhmJH2Y
Message-ID: <CAK5yBb9PkaU25=DH8HovE0_eXbnzObBcJ48FtnAMQCpsm87ujw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW04!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a91592064956188f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jan 2026 03:19:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66190

--000000000000a91592064956188f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 8
richard.purdie@linuxfoundation.org 3
paul@pbarker.dev 1
mhalstead@linuxfoundation.org 1
Grand Total 13

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000a91592064956188f
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">8</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:paul@pbarker.dev">paul@pbarker.dev</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhal=
stead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">13</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgrou=
nd-image:initial;background-position:initial;background-repeat:initial"><sp=
an style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></spa=
n></span></p>

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

--000000000000a91592064956188f--

