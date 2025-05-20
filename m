Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BFA3C3DA6D
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 10:00:31 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.17036.1747735222955992484
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 03:00:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=A2rdW3f0;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2301ac32320so60237595ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 03:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747735222; x=1748340022; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tDbteAID26/dl1cwcqFAGii7mElUz4xhF6ZhZSYUQjU=;
        b=A2rdW3f0meTmkVn2yHC7COD5s98Q+LOdwgq90CWJTU7kV+McX42pfebmEM7dSdIq6S
         umiemHguiecx2rI9KLSORhMDEZ6/KICi58rV7uy/I8YZfwY9fN26dfnvi7AUVE1KixDz
         vqciNmjbLit7Llv/H4FW8E/wycAmzVxManbjs6kCIvW7XumyOokn7ZUaODCQvwzOGXBz
         vv2hRpDgyWEkillaTTru8t19YWmRxNperX32tdon6+dMdJjy0edbgWOX1Q58REF8KQI+
         iBPZ7drOmny5BfczMiHI4ZRX06iLiDExN9rcjIf6TcDLz3m4cy5Ab1cXGgw0ZZ6f5m2M
         TNcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747735222; x=1748340022;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tDbteAID26/dl1cwcqFAGii7mElUz4xhF6ZhZSYUQjU=;
        b=Gw9eYxKHXki96b11ilC2eJtE8hAZR5Nsadb+gb8iXHvdt0cx+N5m55p9PFKnCFljoU
         tFJ+cUGB2u4GsJGc/UlzUDupscx5IpBQEn2CdnftoZe9709wZNFjUZ69M8Pa3wYhVMXJ
         /GStY2pk/hUlpWJL2REsTpOEc7OWoeVCqicve7KrNNMg0KcF7A4/PRTlxIc0ZF9CsyBm
         l5Dm6yf0UHyWB2a2sPz95m6iaBsz4NTSJHpr5uLTJqCUvmFk7YNkdxDW4BNX5iZdk31L
         rENViohiOgP7C8xx7K9lLVAux7/xKSsSi7LoO/dsaWc+c1P1e3XudHQ7tza6uUkPFarX
         6x1w==
X-Gm-Message-State: AOJu0YwoFLxaSH90k6UhO2XQGKgdJGhaaWNCiKEMuLNpOsGJ1j+bEmsj
	g/iIN3tGyxr89LaIRVAFku1eOeDyYjtiMxHL1UUiCljG17sRLiavxhunS1XCyXw7iZPe3p0mJGU
	yILq32s0rEguPNEt+571ADZ3KFHJYHkf/pdul
X-Gm-Gg: ASbGnctOTcQeJ/HrW4uzUfvnJfjNK0yPreoBDJqyeXRrLr8cS6Jr0sgcqxv9VKez5UO
	/bQ6QdO7M4FNTXWoEWnCyOMG0aKRVuUzta7cAe1qs205AFCPzRA60DMEIaFp0e0JFv8b5MJKibo
	PMyAgUdIcwitKG5jNjEWtN4XDbEZfBxtLH2cBgKMSg62mdeas5NxPQLYnRCROmKw54+II=
X-Google-Smtp-Source: AGHT+IEeR95LLMyBZo3p4G0ZoH1T4jGv8c3LrGRNuTBaWwd4cMOLJveK6Nh7AwvOlCqP5f4A1PCq3MmOSzkah/9f0sw=
X-Received: by 2002:a17:903:320e:b0:22f:b69f:e7fc with SMTP id
 d9443c01a7336-231d45c1151mr238002785ad.49.1747735222215; Tue, 20 May 2025
 03:00:22 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 20 May 2025 03:00:10 -0700
X-Gm-Features: AX0GCFtJ5ET6dAtNxDljBTElmriDVMg5ETPDethUSUeeTYaBiU9KD1uq-eDkdLo
Message-ID: <CAK5yBb8ggLmDLyRwBNrn6HkOZQ8d-0thXTukW19=X33EOcJYqg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW20!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000014ec2406358e5179"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 10:00:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65364

--00000000000014ec2406358e5179
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
yoann.congal@smile.fr 1
ross.burton@arm.com 1
randy.macleod@windriver.com 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000014ec2406358e5179
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
lign:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macle=
od@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weig=
ht:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold;text-align:right">3</td></tr></tbody></table><p clas=
s=3D"MsoNormal" style=3D"background-image:initial;background-position:initi=
al;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Ari=
al,sans-serif">Thanks,<span></span></span></p>

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

--00000000000014ec2406358e5179--

