Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BF4E9B37F
	for <webhook@archiver.kernel.org>; Tue,  3 Mar 2026 03:40:54 +0000 (UTC)
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10597.1772509250172453253
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2026 19:40:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=X8vKU6tx;
 spf=pass (domain: gmail.com, ip: 74.125.82.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2bdd80beee1so1556608eec.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2026 19:40:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772509249; cv=none;
        d=google.com; s=arc-20240605;
        b=fptz5TMsrJsKM6zMMXttfJCRbkAaEtT+WsHn9QOW3rgSzDQFn98HDbkhaOwVJavAeR
         w3R7+jBnF5CL725jOY909m1DjiVM4x7rZwcmqbnpLhWCTGgDs9ZZTd6OujEi4IlbRSiR
         rfqCxlz1zFS5+YrRglaJquiupJEs3IL+vTGeWeap8ruQ9jFY/3ZtxomaOpoJweD6LCvI
         jEJiB9CRT/pSIgseMjduT5WfdDhvkLgmnP8vzqMibSptei663LafHvnE0SYalKelR8Rk
         yn/BkjyNAYFscXWBbRPMj3/9wW2ItzB61MiMgjSRa+CEFTixp6I39QNztyr30H7KTjfG
         mNHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=EcJatB/tczUqMzLCEvM7dut2Ke5FG3hlTEQzXdCuh7Q=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=cLKUTRYhVZVYxcKGCYX+3GmG60zc7KtlyKTIL5h0FufzPgwjZ+sV4R/JmG7TIpbY1r
         hdjyGGH7EfDMw9JPiXdfGl+rDrrqy+4bAtZNBBD9PNx1jSODcCC84Aa+fveTphKYWIi7
         KBMuxsk9qJR8hyzVrWCamSoPYUSeLczVzrpi8hz2FGX8BfxkwOluaqodyG8DZsowheHI
         crLntOG6z9Z4CmTJj4vOMCAP6YYUP1PSu2gnWeFYoox33DWNP1dDeJDmXbDe4nNGmTSS
         IJzwZ9F77ZxLkjpdssomk9CFGMRnUxLvBbYhOApqraOkj117R4FGm2xtIeOrwjob3BWN
         x4mw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772509249; x=1773114049; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EcJatB/tczUqMzLCEvM7dut2Ke5FG3hlTEQzXdCuh7Q=;
        b=X8vKU6txhbqvYv2OqIT2cuwxYzgkBBfHS+xPac+BfOU/L43ENhtypbD6mLEXka2IPz
         rRtfc4AabQFaTLCRn7Co9B4rLsbRobJJswb0+eu/i9VrDXPeLSL5yetgwg+Qnn9pLyex
         jSgU53qjn1jLjP3ReRbpL25B/Zk7MI7wjZWQhXOWFjw5dkqeR9mdjHn7PTXeovYZfWHK
         sCOp+osUwD0H+egtQwAJsS2ZN45aeV/V+wAiLEhFW+q/jZ3TEjkrZXQzqShfeM6EGLWa
         wQ3bs5H5YmtbiES2c3jaH8YDgxvqzlP4zs/qJAt83yg1fS01enq6HGygBkIFm0b7hAFf
         1GIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772509249; x=1773114049;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EcJatB/tczUqMzLCEvM7dut2Ke5FG3hlTEQzXdCuh7Q=;
        b=h/L4D6n3tAVGllZkk1dshLN66tjE7ErS+VTIz+ZAPZg4Q9un8UaxVOKCPa/7k6Tv5c
         wbkLP6zYrj3xjgLwZkOc2v/hr4o3dg1Wy851wUIFJXC17KgcW568fDBleGE8q9l3fr6W
         IIaR04Ikg4nqK+wnkfek0Y82IRFT4wUGKohQxa682I3JEhdXv1v7P3sNhaLh1tQsg7Uh
         tjz2W/3bspLWw5We7QzL3APvpMcgwTUBbZWMKSneAA7wm6WDlp8biZHIcf5F1MjkJpES
         Bzv4+PSm7boRSOsjEvrpXcW2N/OOBpN3uBCn6j6bZVXPC39+R/dfQeP7fVdOR4BWXeWy
         ZO5A==
X-Gm-Message-State: AOJu0YwZTvJXBSBgV/15NdZkkQTPzN3gRN48244qnrEuePrnve2k+I6D
	QCWh9MnO2xmwjiFqjqlHl8VUGQ92jILHZ/KEQCmYSEAQNETne5qJ7BBfba4R2PGho+npapicK9x
	iiaHa5y+AQX2YRYh+Wolbw+s6QFC5OScvsFe7
X-Gm-Gg: ATEYQzxfX9AZjoyQfJWbpLekI4PdJNWvoTMqQeWIrNhahTt6BTJn7Gyv9IAFPon8BoA
	RJr8KGbiAvBC3mXJQgUveVDQAW25iDgkCAQuwE6Y1oCs80GKHp9w9scI9hYbD8e79gLSva7mcoN
	bzJk1lOXgr4WdYmM6Oc+nmaDp70kO3lUu8c2C6jcCQlQxGxLtyhgmitjRvwsK716q5lFBAfC8j0
	SRG1zLUAVT9hLrTOR7DCokEpslR0qdez/JVZK+07RYaigdCSENjKYKDUKFQHERJAojuP0o9+ErI
	3rZ85eqKudT5vAQrxcHPV0UuyDiPH24/eAXxyZ5Bbszo7jQot9Fi5F7Vhji1UWquOFtp3jvIIyM
	Xje2QnUAjsaLS9SFAec22EfbR3rQib9yrsDD4hw==
X-Received: by 2002:a05:7022:660b:b0:127:4da1:ed59 with SMTP id
 a92af1059eb24-128b0d1f619mr393320c88.10.1772509249210; Mon, 02 Mar 2026
 19:40:49 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 2 Mar 2026 20:40:37 -0700
X-Gm-Features: AaiRm53A7hz4jhGXKsFB-SK0oNH2uZ-86E_TuKWar33sdtd4QkGJxuwCwjh9Ydc
Message-ID: <CAK5yBb-OGOGSGCDdXinFyp2AKZNNQvqSh9Cy4nytraBk02v3Mw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW09!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000290c1e064c167829"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2026 03:40:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66293

--000000000000290c1e064c167829
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 3
ross.burton@arm.com 2
paul@pbarker.dev 1
mhalstead@linuxfoundation.org 1
Grand Total 7

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000290c1e064c167829
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
x 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.bu=
rton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@pbark=
er.dev</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mha=
lstead@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241)=
;font-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:r=
gb(219,229,241);font-weight:bold;text-align:right">7</td></tr></tbody></tab=
le><p class=3D"MsoNormal" style=3D"background-image:initial;background-posi=
tion:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-=
family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000290c1e064c167829--

