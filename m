Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17A85C83F12
	for <webhook@archiver.kernel.org>; Tue, 29 Aug 2023 01:49:27 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.8613.1693273764615343438
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 18:49:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=hdOpa2+Y;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2bcc846fed0so58423551fa.2
        for <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 18:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693273762; x=1693878562;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+xc9YlSZm81PvQU7mTkRqHaj5hsEocnsN85mo8Zg0bo=;
        b=hdOpa2+YYD9DAxKE8YjohKlu9vXYSHVq8RLiHPTZVRowE67n9JVMfVFvVXdKbtX9YQ
         78INfpRt3/ira/Kmndz0PZiWyELrYQJG5uGyNkFM1/DbABTyJUtwNkrjck6T5NvJL4kI
         gFJzLj+TXh3vx+78zfRoBWr1SPL0Yk/xcJwN4GL8LN41LkSlJI5gB/BXxIicjdm6j3Cx
         e3/6jPrlxiKKQZ0PYl7z2pPkbc0jXMrg2xLkCKeE+BeZF8pi43/gERV8VFKJpPamCqWd
         mWswS1VO3a+Vl8z4algPL1lFu0bUwwq/R4ORNLIj760qvJEX+37kwZc6i95QHyq+G3Lq
         5qog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693273762; x=1693878562;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+xc9YlSZm81PvQU7mTkRqHaj5hsEocnsN85mo8Zg0bo=;
        b=LTF9d4lDdNQh/cD/j6m3Mqs293tlVXn7ywMteOam3ONS19XgNos6PLKPb9eqCYabN8
         /Tls/ia1RqkbcyHXPfe1gXVOU2eeut121Of9Id+oqOf88fuNWyODm4qgkh2LFUD3p000
         YnuQVENicpa7vRfjQxeB1cnWn23yVpN2Q7Eo7QFgjk+wnBGVsxskvbmuAdLr6kX3+8+J
         iaJlJXf57vABFPrqh3vc02D/gUdia5HkYNUUARnzKtCdCrxQ5nmKvec5vJUh8OvORJcs
         chLf2TzD6Ud7KtqsB1VGZv90L1ArjApQbv38yn9gLEQw98vCtgMkcg9vGLOAm2JrILrZ
         yFQw==
X-Gm-Message-State: AOJu0YxLCqnrlCeVnme+/2PPER+HajeGoVs0R3Xqe6BF8Sg7x87mHeqx
	wdIqjvBfFNeCAi7qImaSNdIWA9rDR5hDnSuwDUcZh76D93wfnA==
X-Google-Smtp-Source: AGHT+IFSeVSDXrwq+G2BqY7IILSOEvhfcqy+LgUB4Y0A+euYtSPKpWLVND0CPrLVNwPTzi5Yv+3+OeGioqsn3II1PRM=
X-Received: by 2002:a2e:9796:0:b0:2bc:c51d:daa1 with SMTP id
 y22-20020a2e9796000000b002bcc51ddaa1mr17535000lji.39.1693273762243; Mon, 28
 Aug 2023 18:49:22 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 28 Aug 2023 18:49:11 -0700
Message-ID: <CAK5yBb-YHY-UOG99_nqybRVapSKUO8aPcBziPbdrfBP6+o2P-Q@mail.gmail.com>
Subject: Enhancements/Bugs closed WW34!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001b279f06040605f2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 01:49:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60908

--0000000000001b279f06040605f2
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000001b279f06040605f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><div><table cellspacing=3D"0" cellpadding=3D"0" di=
r=3D"ltr" border=3D"1" style=3D"table-layout:fixed;font-size:11pt;font-fami=
ly:Calibri;width:0px;border-collapse:collapse;border:none"><colgroup><col w=
idth=3D"249"><col width=3D"42"></colgroup><tbody><tr style=3D"height:20px">=
<td style=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Who=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,=
0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Co=
unt</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purd=
ie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;b=
ackground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align=
:right">1</td></tr></tbody></table></div><br><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr"><p class=3D"MsoNormal" style=3D"background-image:initial;backgroun=
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

--0000000000001b279f06040605f2--

