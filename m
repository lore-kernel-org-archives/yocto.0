Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3756E7717F
	for <webhook@archiver.kernel.org>; Tue, 10 Dec 2024 05:24:36 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.3503.1733808275535001034
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2024 21:24:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jqXPoIJ+;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-7fd5248d663so1293712a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2024 21:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733808275; x=1734413075; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GmAf+AN8P3cI9CdYJAXNh7JH2sDJX2YDhXep1yLvnEE=;
        b=jqXPoIJ+0AGcq+wd1AW8F9DoicNHwyINXVTtoUM+i+r+NJcIY7qwuKv/GPoi2xS2fe
         IwIkjqXLim5iAf3m3l3JV2OyWCuOdRflXSmyIQSXJiB9e3lJ//Z0ygycxRxGYoKOnl0a
         XfAUx3MQXMocgQSXKKfW7w7zcgm2u5DU2bN+6S/0mWRuikK7jA2QgbEIFCacyl+viQyA
         d2McxkfQAdq2K2g2VEnlbddo2J4vITxcdPXn0zjsC64y8BhH0rU5lUpN8fc2N4L6i26v
         DqwqKBEignhFxQ1z3Tl1pKJPMYuCJMJbb0Vq0uCvuFUISpW2E3Oiobha1IPR1XW2zSgZ
         IPBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733808275; x=1734413075;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GmAf+AN8P3cI9CdYJAXNh7JH2sDJX2YDhXep1yLvnEE=;
        b=vzDhpQAJGo05QOMrlLIgc9DUZjA8bfpgqx46mC7RpRH9fvLveIHcLQIZxgu8rs911k
         7ZTtvZkpsJVTCNVnSjzlc9TFuOWOF11uQBCy4m06abCe52X7QOKwDYM2hUfmMW5/teU4
         Z9oYT8X4ygXe+BvxmumbRsCoP1gvjMHZ1MtKdf0ut+PQTrhcZPGLRPS/Y2RODUWeddpl
         jecN6NsHO726Jc4pgUwkZGbvXYko8BIjGnh9LnJsh5pPEjTGtY8NcwV51EE8CV1KHTf7
         83QaH1YzuAlrDz0Hu4zJvSLTfNBNG6b3TideA70AFv8SRraGZ5NbEe4IE1cKyQLIxwbQ
         s6OQ==
X-Gm-Message-State: AOJu0YyMVHXSakcfRluKcDccvMw9aRXBxNrpVV0mmRxD5ogWnjEKFEnc
	v6d9/Lb55hLgC3x2ZHCtbL13z0hac8HQzJTnGLv7bUz/dpb3S6Ya2zEJ8lXVdZLXeRVI7Ge0/yN
	d2nOVoLTY3Jc+nnTw4NMcZ6XnoY3yvysLXIE=
X-Gm-Gg: ASbGncsAY8bggPcrEFrjkYpep+PjlafqI/oUCbQETbI6fHBaSyIS6707L7j8qrtOv51
	R84VUIj8IFEchuKisP1P5WQzZbypT5c+WffgSl0XZrvd074tRZSuB9PntCSQo/rbqJEVvQg==
X-Google-Smtp-Source: AGHT+IEEbQdgUJISpLiYP7fBmjB7mQwoXo2BtXhLaINRmhEjmp7N+Utikt3KoaN8UmRCAS6ZIyYTI8bCQBfWysvbg3Y=
X-Received: by 2002:a17:90b:54c8:b0:2ef:2d9f:8e55 with SMTP id
 98e67ed59e1d1-2ef6a6c11d3mr24783013a91.17.1733808274698; Mon, 09 Dec 2024
 21:24:34 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 9 Dec 2024 22:24:23 -0700
Message-ID: <CAK5yBb8=cbxBtepsQQSv1aGp=nEq_fX0JLjWha9-S2bnYHzQAg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW49!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000527b8e0628e3b262"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 05:24:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64422

--000000000000527b8e0628e3b262
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 1
randy.macleod@windriver.com 1
alex.kanavin@gmail.com 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000527b8e0628e3b262
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
lign:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.=
purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;background-color:rgb(219,229,241);font-weight:bold;text-align:right">3<=
/td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:i=
nitial;background-position:initial;background-repeat:initial"><span style=
=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span=
></p>

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

--000000000000527b8e0628e3b262--

