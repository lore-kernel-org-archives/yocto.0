Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAD0EC5472F
	for <webhook@archiver.kernel.org>; Tue, 27 Aug 2024 06:37:00 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.72430.1724740617182733921
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Aug 2024 23:36:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=W9OLW3+v;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2d3d0b06a2dso4240958a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 Aug 2024 23:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724740616; x=1725345416; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+QPc35Y1xZo/ld/lFr+CVEd4y8EbkXXG357bR0y9ANg=;
        b=W9OLW3+voTZCo9A7wOI5wvf/7xYG9U9vUCbmZ7EgvlgCY6rLYsQJ+8D7mTD92yd/dj
         dV4YEgc5fyuP3cKDuCyjk9oNPqpn0qnU2pM6iLgbscKe3X5LXd2yAwCATRi2SC4ImBHG
         H7Q6TTdCiBx0uDPebIcGdRJR+suuAURDZ56bjO+ktkZC0+t08/ms/HOAs0h2n4Ij/jig
         ZWbeHBsWKu3GWI8OG9fO3FwHoD89MWbMOLrW6+siGF4VT6YD8eoVQoUzX4Bb/wsVAKwE
         XmHPKBKp8KUKSmatbm/0pqxEOvqZUIIb/2e57aqi17V7GsZ3asJONGTlxKGsxrMrcKxO
         QIOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724740616; x=1725345416;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+QPc35Y1xZo/ld/lFr+CVEd4y8EbkXXG357bR0y9ANg=;
        b=gLvKM1L9lVdKDHYAd9CrN28aCqFvV9LQf+89cwEf6+wFVhpn5gVWKTqY5R4I7+zqmL
         SUK6YxuOkYvmgoCUtnUsLxV+vSbdtM8tkb8+RAO8Nlw/H8BD0Uaz0aZYYS+HNfu+uDTW
         PlVI33I1DI4lL5a4+wskfv0scJSNEcset/3Urzad5qOxEgjO8oF0UxngcDrmyxD2lSZ/
         fpp3NfrdNt6cGwETnUrR8ryfvgWpk39NG2f63tnItTf83A4jX2hfXotk/q/4BPXgesMP
         nJ/yXHBjejblu6/k1VmL3QBXC6sp3RroYmcOIGKUYmWCPsqEGeHCHAaeSVKnJaoEEOEi
         9Kbw==
X-Gm-Message-State: AOJu0YzEKDoRjtfoHLa311zlKWOVR0UsHmdCNdeLsWXBBXcz+I8zn4W9
	BMf7faWMDOzGb7HidMS3IZ4fFTIQvQUDCO1BkKmwGBv5N3VCoHuKzn4F3kn9JY4c7i24o3qbEMB
	NdS916ZBLmOCQ7AwlX84ttVBdNJOVuqZi
X-Google-Smtp-Source: AGHT+IF2RpwGS2AHV82cYvKCy6wquEQp3QodlL3kUexlrtfRjMODB7CPTB2gDPXNAExs+R69Lx6Ln9nrSLRSv56HKL0=
X-Received: by 2002:a17:90a:d14f:b0:2d3:d7f4:8ace with SMTP id
 98e67ed59e1d1-2d646b946a7mr14829389a91.8.1724740616280; Mon, 26 Aug 2024
 23:36:56 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 26 Aug 2024 23:36:45 -0700
Message-ID: <CAK5yBb9XpJtddY+n9N5WU4UVKRH499Y29zFB0ZgqDiDXdE5Swg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW34!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c363ba0620a477d1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 06:37:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63745

--000000000000c363ba0620a477d1
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 1
randy.macleod@windriver.com 1
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c363ba0620a477d1
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
"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linu=
xfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.c=
om">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold;text-align:right">2</td></tr></tbody>=
</table><p class=3D"MsoNormal" style=3D"background-image:initial;background=
-position:initial;background-repeat:initial"><span style=3D"font-size:12pt;=
font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000c363ba0620a477d1--

