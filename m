Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 592E6CAC583
	for <webhook@archiver.kernel.org>; Tue,  9 Sep 2025 14:24:44 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.14842.1757427883765449222
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Sep 2025 07:24:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M/ANMmmZ;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-24c7848519bso57778645ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 Sep 2025 07:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757427883; x=1758032683; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=djqipqn81NePoSKLXbtFKjUQMuWkz+IDJjFutVrzVkI=;
        b=M/ANMmmZ6PKHIgCseu5Dgx4Pq3bAwZbX8Ts7f1+4aOGRBwPybf1F+0+oTq+UnsE4Of
         HwYKpvGryvwBIqmjpF5w+9usj+ytQl9X3mnMKcqoyKQFLiHfVVNWFjLWzK1fuo9IBOG8
         c4p7P5Pz+gGDxgSsfQ1dsc2LxlGYnvCz5O+UA+l3o0JrM0WI0EBru4ZPeKDuyiBwJogX
         BqIShOL3vxOe8pO0USe51ohXIhY1GzSeD5+A3w5tGj4H1uPQdZcUSSYxZ9omqv6fLhJ0
         pfxuUSjwIa5brRX1DCWcVzlj8vhz/iNWHZouiJjXAskm2juWeBzxhRKd/j4QYmwcXJn1
         ceOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757427883; x=1758032683;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=djqipqn81NePoSKLXbtFKjUQMuWkz+IDJjFutVrzVkI=;
        b=pnTJ4m1NjsZyRuVrqevDka5Za+jnE1kCpNJLHyOR+D+aXtZBbtQJS0C3JvXPzAiT2a
         3NukmeuRNA9dHBZ/G9FZk6dUOPKlrU01+cPDJVMg+FgwiNoDUFV8oAjjOScP+msTCCMo
         3/BY0dB0BTE0LagEJVuFYacZibtADUf0wG8HMxtMOA7LmBroAT7RUl29dKsqjg6fS6nI
         q6HDsA3Z9OS+VWRycyu662+O75JT2WEzVN743QgpZSNDj3upm44jOgEIMSjTQ9+mDdrk
         9iZc8oc74tNd941+Es3SHoVLNFDvrAyfl4C8ZmjQ3l54RxA+UOxtj7thjRzmrHzEBDZM
         ZFdw==
X-Gm-Message-State: AOJu0YwYYp+xgpHgzFxsJIxMXiT28GmC9Md9uabzFoocdi4LKitSGrEb
	s72q+UFbnVDtqEf4QnC1za4ChiCsGIbgqqE+whgQwvdszd/Tw40ydUNiPAvHb1MHnm+bTdLej2h
	rjEKjajwADblAoXzban0i9RtbYamrqK8qJUZ9
X-Gm-Gg: ASbGnctjklVHdgq5oGLc5gQ7LCBf1d2u0KjYKHBlqAGjHsmfP/Fh4mpr/qKS+toBmUA
	/StYrlI7QDB2ZvoksK/yeSqM6zx3y1gyxeZu4kbBDwUyFfoLXPS5FbRhwPnZTwFJ5nx4MHqmysT
	SfdqGlW4qfniw9ksMAoq4ypW1HksCHth3Kwkgs7BZ0MQtR+q4lH6jHWuo3fgooYh3zh0HYZrWgq
	KHMOhWYz4LRBpo/1npnWW9NnvslEEoCOx5iZA0+71tjCZKB+iVXYrSD/wo2oEyhDRdLCw==
X-Google-Smtp-Source: AGHT+IFEDwf5CIVf6dmvoD2HdnwjdyCC6FeUI3a4LE3463TBOMk+LC3QOMAMtTRzZ+5fi6erDH6x8PDpjQMzJn0H22Y=
X-Received: by 2002:a17:902:f54a:b0:23f:e869:9a25 with SMTP id
 d9443c01a7336-25174ffd460mr170393565ad.44.1757427882878; Tue, 09 Sep 2025
 07:24:42 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 9 Sep 2025 07:24:30 -0700
X-Gm-Features: AS18NWCX_KYIEcXgp43xvay0GDocvAWAIvOdI4hHACLXRWXHxWbC4cu-cbkDVkE
Message-ID: <CAK5yBb-Dzi2wL07+1iruD6BOQZksfZ0nArRBJKFASYy4Pf9MuA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW36!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ad706b063e5f1088"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Sep 2025 14:24:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65823

--000000000000ad706b063e5f1088
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 3
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ad706b063e5f1088
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
x 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:b=
old">Grand Total</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241=
);font-weight:bold;text-align:right">3</td></tr></tbody></table><p class=3D=
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

--000000000000ad706b063e5f1088--

