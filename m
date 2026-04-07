Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C7DBFB5188
	for <webhook@archiver.kernel.org>; Tue,  7 Apr 2026 02:56:15 +0000 (UTC)
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.71384.1775530572388768791
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2026 19:56:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=KFACjChU;
 spf=pass (domain: gmail.com, ip: 74.125.82.182, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2ce7d6fd2c5so650468eec.0
        for <yocto@lists.yoctoproject.org>; Mon, 06 Apr 2026 19:56:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775530572; cv=none;
        d=google.com; s=arc-20240605;
        b=O0RfthpuNVLm2l0+g8ZhLt8lPwbGriY+MSIie4MzIh7re/r4oVbH6RCbPL1ZeveqDd
         Gs1hjcWrNKXJ2oDI4165yJ7Q9jGtOSWTw73H1ELhRtrpfbDlR64t4uGuMaad5VYJWSfR
         D9Pde2ZtiAycKMmbnBIwICOc4ANENBT2PlURxYbB/IuIXI4tSIWa9JVskaDxryCKOUyI
         GczEZdJGwzuyZIIYeh4+xi1AwdQb8mLTHZVc8AEihQlWU1LikPQIOZA9a3psH1QgvCnU
         G/DBg3LBfl2g4k7UUih3h97Y2IAFgpbxYtpjxQVANvDwV+gB5tGLGfTifDcZ8fyFqG2F
         Lerw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=IDn8IwXDAvdf/x9IKb88ASTuKNZZZm10PwwLoQBM5rw=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=jiYp0m678WZuIoC6w4ENI/hoi12hk3vH86vsis1EA8RXwht5XfhiL83umfnRQKCdTY
         6UAX99Jb/8MhcbEeliEMrCSg+TLml1AQr0wHd5pr6Ym7wwxHSsrUxEEvDhlrGfr4bNUA
         AAKkVOn+9i2kJ92jX9kmNyfUoDswPxj+s3kevFlnEsVJ+suI//nanSa2L+m/peq1P22B
         vWTPutODhdkV+YLQIQGHXIk4fJ8+3mZnlqAItDtxh/akIX/KyoQritNRs6b0PHbNCzDJ
         ehCnb7WOnlJm4FH12f/na3br9UHref85x34tSFoN6my52nCh66MIbrqs2uWQERwApiGJ
         x/3w==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775530572; x=1776135372; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IDn8IwXDAvdf/x9IKb88ASTuKNZZZm10PwwLoQBM5rw=;
        b=KFACjChURZnUgM2Nb6TGbLENtEbYejJ4KBjtdmKn4XvEQZe2aZDHeZ5JtIC/WuTOp3
         chuDgi+MBt1Pz7OlWoO6azPFk6RQKfzixeXSf9KXdW4nDLceBIRT9O4EsMr/NR8AJwtl
         fgQsT5PDJtmLc48elZ7tHnOc8gy+drDk1o7lnAnEUXbeXhFxQSGhqWbxGVuCoWuoFpZE
         rSqekqIiMt68I4POb4xWa5sWlpYMgdQp3JiadVkkLnMMfBnCJQloPi0MMNdgC+FhfFNt
         11zTASIyH9WAFPaUUzs17lMsJqxRikX59agXPYOYhSPaN77OPtSpp63Vhdgc5Dn+fgIT
         v9PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775530572; x=1776135372;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IDn8IwXDAvdf/x9IKb88ASTuKNZZZm10PwwLoQBM5rw=;
        b=Qk8Py2lmz7FS31eYc8GGeE+n3RIS3xcYJr2jQNNheHvdiHr4JqNeY6ZPF41CGwvibZ
         Y+IhySPTQx1Q/NCh2EI5xQ3so6H8aTgetzaEuMcKIjbkyxYQNQya1DBuVaQZaJnA8nLH
         lPXAiJjqI3mKRPM1otbLkcKOod8xmo3+GbRRKOY/ShrgrS151Wb1jqq8NRDiTD8lhZ0+
         WuXdUfuvcCf7a67Vinc8cKiPbSvfaNfYV20L2f/6rBsp1VqVIF+jTHbc8aR9Q0E1h44U
         1u5O9faurQYg5NbiQJiFdO5ABSBtJSPI3X4O1UilZw1Ej4O8M5DvJ3J0f6hT1gMBFM2p
         fGyA==
X-Gm-Message-State: AOJu0YzTyHso36772Spxmaise/DGJV2Z8JkoMXc1kFQwmyRqqckEfDf8
	jVL9wKToKfjU6mbmUcx1FZ2KblPNzxjakKGcQnPku68gNB77qlo3EBS/CgMgFU443JRCfvXtfSz
	iwTe8+X4rZGT1TZVf7DaY26w2kbBZm8lXh9Jp
X-Gm-Gg: AeBDiesMy+74w/hjjKs5b3Xj4Yb9GFc5Yi4n1EzPbI/lgKp5N3SPefoCDZB+GP3dCPR
	YVTQA/VEKed32jrd/FauWiUcIUYTTjlAQfeSdgAuSBE9Qh/6ZZaTnfVkUIi6JMgCSAqaHUuU7DB
	lmk4M9hG+lz0EDOtvFDsIG6z1WhzIEogfRhzt/TSc7wcgYZ6a5rmewELNeb6GwoxevfASbfXwTZ
	op2U/Fc5jxI4dlHqi0Vzrp3HhiK1B99kAIDfRlU27NieR4c8FOlfncGXYdBJjIdLDEScaBWEP54
	UDt3QJ/IgHcRpU5Y3n2xxPCbrv4zAHQJzW0NvQ2vT+5aeJEQoUTGtlw5U0uI61Jk44xdu/ac2+0
	s8rBIS5uw4NqzhRfieniTgZov3N4=
X-Received: by 2002:a05:7301:1f01:b0:2c5:704f:7142 with SMTP id
 5a478bee46e88-2cbf920f3c9mr5813361eec.2.1775530571558; Mon, 06 Apr 2026
 19:56:11 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 6 Apr 2026 19:56:00 -0700
X-Gm-Features: AQROBzAbx3z-VWqxaaErKSfO-Wz-PuLv9jKLGYPVHinWjzDlFGotgTKfpv38lp8
Message-ID: <CAK5yBb8-S+ZuzCutrRUiqvqX=dfgBLzy9bL84J6y01tKKfNPwQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW14!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000017310064ed5ed9b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Apr 2026 02:56:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66388

--000000000000017310064ed5ed9b
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 6
yoann.congal@smile.fr 1
tim.orling@konsulko.com 1
Grand Total 8

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000017310064ed5ed9b
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
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com"=
>tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);f=
ont-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb=
(219,229,241);font-weight:bold;text-align:right">8</td></tr></tbody></table=
><p class=3D"MsoNormal" style=3D"background-image:initial;background-positi=
on:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fa=
mily:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000017310064ed5ed9b--

