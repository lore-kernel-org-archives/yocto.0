Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA253C28B2E
	for <webhook@archiver.kernel.org>; Tue, 11 Mar 2025 03:46:56 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.1016.1741664808742693220
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Mar 2025 20:46:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hR3MX0eK;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-22355618fd9so91643675ad.3
        for <yocto@lists.yoctoproject.org>; Mon, 10 Mar 2025 20:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741664808; x=1742269608; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1v1m0ZXiGxk4fe4yraAX/OrYzok1XaJBW+brelUqFtc=;
        b=hR3MX0eKVdnUJs4ePJF4scENr3L9kfxq9v8VpE6Imcpx362A1k2RR1nw9ufMKo6Zwv
         jdjFF8VSObgYi3cKpCNQEx0tV8XWCV69vyZf2CGO5VmlhtWzMK2vC7vZFyvF4vmrBPjB
         ZoekPzKUqqJ++dSa9lPdbskx9kVtesbb85RrfiXnAj8ql3b9wrFjkjS3hTbX9hXUvkCp
         KMtVhCDOIFwWNmZKT+TkM2G0kB2WpLIkXBkq71C4nnTFLmZr734Mj/zVYtUrKQSaTeT6
         QkYNo7X5XzCfi9bDF8moYrpVJ2mtZQPiTp3ve4PpknfJLU6taG4qbYkhyiz4oeODoRST
         LdMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741664808; x=1742269608;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1v1m0ZXiGxk4fe4yraAX/OrYzok1XaJBW+brelUqFtc=;
        b=xGS7ZbRcd4BBxFVSMLzqfNdzKjR+dkeFsqjLEvgnMdtSFd1K+IwTzQ3of5+sXt8NuX
         /5wfyyLQMJyDl0DyA9XnqOPdGEOdve67y+8mqjf0EQy4reADJJGCVuaL/8/D7zIBrZIR
         0bM0eVKgJcRHX96uHemq1POq/YtbNOmA2yD5v+f0PuIlYjZdsHhWG1iMTHp50sdhlzeh
         82YPnk593GQriWj8f4rl/vkK+y/E+5+vOc6JRVCNyZYeAijNz/2tzte9GJTXfRjFwsy6
         PAgkGNY9f9QsKo6nVIBBFXXgmnrT4cFVOoKQ/Pudg1WngOHYJJOM7ZbiSr9GHk3fmnu5
         Agtw==
X-Gm-Message-State: AOJu0Yy3Lxv3DDhngY7qmobyNijgGwcVkcfKkD8OIoYqU7aZLVk7DP7u
	JO5JFtiXSXDaMtTGkWaaL3AZWn24gdjggnpMVOIwA/Q0BoX/imdSSd54km34CS4OEKAg/94JpM7
	48SS0NkzrSY6uadrZ19fgGnTKxazDS6iCrv0=
X-Gm-Gg: ASbGnctHA4c+FcoNIa3I6kSY3O0o77xIRO9gwdUNQ7ezEoozisJA5YtGG5nPyg8R2jO
	0xSPQrHU3gXyGem2L7HbQRaPQLhbAXGOmGLO/9T/ZOK9xjxd0kFP/vPIFGp6BTR1YXUjkzhDHwo
	9ixA/oL/8C4T0loUvQLJXxAlQsD1Yro/4o7N7ToygOMAX5jGz5L2WTS4mXKxm+
X-Google-Smtp-Source: AGHT+IEE8AlP2iTwQUw2LQBvkuOo7SqeWE5eSKObWfmAfTuPHsE8LvUiguILYSZGrGZ7kEspVO9agwdnSboXN8PHYHs=
X-Received: by 2002:a17:903:1c8:b0:223:26da:4b8e with SMTP id
 d9443c01a7336-22592e21948mr32116925ad.4.1741664808081; Mon, 10 Mar 2025
 20:46:48 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 10 Mar 2025 20:46:36 -0700
X-Gm-Features: AQ5f1JpCi-zgFPRjixiQ_tsaZtElDMa2SIv08KTcyBum1Qgz8Cb06Np4YpIf9WY
Message-ID: <CAK5yBb-gNeGO+Uyz7R1-bD8-eeL4XGNnUsScjoDg6J+Mm=Z-HA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW10!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000342408063008f03f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Mar 2025 03:46:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64940

--000000000000342408063008f03f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 2
randy.macleod@windriver.com 2
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000342408063008f03f
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
2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:=
rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold;text-align:right">4</td></=
tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial=
;background-position:initial;background-repeat:initial"><span style=3D"font=
-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000342408063008f03f--

