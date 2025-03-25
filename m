Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94309C35FFC
	for <webhook@archiver.kernel.org>; Tue, 25 Mar 2025 06:28:18 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.59487.1742884095049154172
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Mar 2025 23:28:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LUU62ihu;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2ff6a98c638so11058928a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 24 Mar 2025 23:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742884094; x=1743488894; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dOpW2BwXwMbufuoLUk5JKCItSxVqRApSJ7Fg/PI333o=;
        b=LUU62ihuKTBrz6SJb6vhXITJuR4efDYM+uIhELWdcF82YHLLzIT/om/eQgGwjS8dGA
         aqMGo1SyGdqfbuklRDifzoAGGiCkroep4MG3rLnAc0d7vA0+1cBEsBQ/mrbqKB1C91+X
         yJZyRlfdRVk9ccZgIO/7vtAmPwIkB8tJSmZWFtJoCTNPk6xkTJQeB3ZJGVs3MZ9LFmFf
         L528Q1UaNgoZ6UiUyQKWjOk27dpqdwFqQOiMbZp0i7caCYBmcw7JtvFOBzD6ufLjaXTV
         +oMI2MNmtWXOgFgJcz7kdol0D9sFL7TX3J0LAuTrleCOw7zt3wUcPLjVi3HwXSSKfwdf
         /JMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742884094; x=1743488894;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dOpW2BwXwMbufuoLUk5JKCItSxVqRApSJ7Fg/PI333o=;
        b=HWdGYTN8g9hgYqgoR1XCky9KH5uKshAY/yUVeV++f7UwkoDnvTnQhbgOIfmk98dtU/
         1nEe+2uTdQ9xo6peAiID7kPWYxPP2M7bo+1typFCUfcyBlNjXGQoZUwZ6HaRFm+aWU01
         Bb6MVcSD4t/9aOmf2zlQNqNsj8uKW+kqhCdoKlubWK3DMKDd976R07EiD5Io2JzV2iFl
         t58d+/l83jsumsX4ioL2z+oL9swXyMLELcIknNGS334shgleUU3toZ11XlFzhuGk2ld8
         PR4OkEjjSxZrVbCOdj8EQQxh3h6bsqvkVk0q/r8XljbZ1qinusZz34Zeqv1kc2Vx6fPp
         xeDg==
X-Gm-Message-State: AOJu0YzyhFY6aZ4WIf+OVjyZ3I8/bS8ci4vo/QMV5X8YD0ZccokAdbOy
	3L/82BKvl4lcilCOvhj74oYIrWbsLZ8WDME8oTDioE87r7rnHnA7TJ/i5J5FhtoHAhOWybtXfTK
	HJuPMZkqf+jBAUi5T1Xu/OUVPtoz3pelx8Wg=
X-Gm-Gg: ASbGncvQEEZxWVH4lxP7GxQCm0DgKpiIoQdH3BGal2lLSh6OHwa4/sNMNQuQAn/QKQk
	2DJHVdu0SOSZuGjlRGkYYLNSh5pwkpcKbbOy09J5BiL6ggEJ8iogSxpgnKJRQgZkxIie06zYq+w
	rtIBfuNlnU7X2lwSd1JazKh864+iHVa80YTnWGCTEfEiwzWfJxMQ0lGshijpcY
X-Google-Smtp-Source: AGHT+IH5tQt5dghZS2Gxd99jJ68jdq9n/2ZDRm4uZd+s8dzlptKEkapPDFAYgPtKntlL+6p6MaYJ+JQ7iF5rOtK1P44=
X-Received: by 2002:a17:90b:17c7:b0:2f5:88bb:12f with SMTP id
 98e67ed59e1d1-3030fea9355mr20689430a91.21.1742884094100; Mon, 24 Mar 2025
 23:28:14 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 24 Mar 2025 23:27:56 -0700
X-Gm-Features: AQ5f1Jp5NoDyRanCwoat8Z5Aa8C3T78KNNTBmGPJj7Grb72Y_-7EO01CKdd7LdA
Message-ID: <CAK5yBb-QwRkJ0J7UEJz_HUY=CHwmBTAmSG31XKZeUzvOcv9PRA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW12!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000504ed9063124d382"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Mar 2025 06:28:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65013

--000000000000504ed9063124d382
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

--000000000000504ed9063124d382
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

--000000000000504ed9063124d382--

