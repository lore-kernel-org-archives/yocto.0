Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2DCAC36008
	for <webhook@archiver.kernel.org>; Tue,  1 Apr 2025 05:24:59 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.12379.1743485097133474928
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Mar 2025 22:24:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hN9bQUDz;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-301302a328bso8928848a91.2
        for <yocto@lists.yoctoproject.org>; Mon, 31 Mar 2025 22:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743485096; x=1744089896; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j0Vosgxymv1RkpfFUAmod/AcdxSvYQQfiFg05h+S07g=;
        b=hN9bQUDz8H33/gJ7Y3Ge+btQ1Kh97n/5S33nXgl8yaOmc9jhYFIyRM32Iv6rNlTEFN
         UlLtckQrcIwkMvtzNhaLiRuPYI8zhVDbpolP/tXnIiSd4Bz74VAWS1PQUZvcnmluLQff
         tczM+zcVB7Vsdfwpy6vt4vKP8+B72k4kZo5vUklapxwSYGF+pToOaK01OFs4PjNp8c/+
         VxXWBkH3lF6ZXpFQhC4uKRUG3AeH8DDEHRPWZmLjBxVsBAphMQIxetm8g7shLvK4o/d1
         EMsP1nFysLQ2yL17+woElSQUWWIVsPk0mhjNolH+M2eUFj2H1ZqxiY8pjYf7KZSkimdt
         3qmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743485096; x=1744089896;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j0Vosgxymv1RkpfFUAmod/AcdxSvYQQfiFg05h+S07g=;
        b=bLrCZ6s4kmcLfPP8koN08pdBg6tJtotW6b4l+levsCT0pU4SotlV1f1CCSFYkk4i+L
         WA+RJdu0PNdH+gtWv/MirHWpdOXk5Pvl1X+XEFx1XkbNpdFForcikhdr/Atsio2nGew8
         s3IDinbjkgmSsjHa0S+Lp8K+hJWFZFKmO6x3oCTuOx3VPk84AKFkE98TDliO0Of2tbl2
         ZemU6Db+f8vuN8xbaot/kihZkdyPTL8qiWlkwUtWDNGqm/8Mgd+nHJp6NF9ugE3rTF+n
         Nk2jmf3NLlIKsN/IEWNkut4hIDh9uMJWr4A3ojlO0J5MrqmsW6pknvTlO80ajMqxH2AW
         Tu1Q==
X-Gm-Message-State: AOJu0YwuppFIN/x3tK52/uUZZKyVKMI8uJAJuZScHlQEYtOxGJlO6vnm
	Kfj8fd0/IE/+IoYFd4QXjKNU/EQHjXRPvUPxF7xKu9V/mPMCKkKxo00Nl723rZc9DHWhUa9J44K
	St+L21f0VAIk2XmAgt2wRmETIW+To+BTiVeo=
X-Gm-Gg: ASbGnctI0PxMjsgu9F3AFK7DEMjJ7OB/2s5fFcaMZSfqCTeTy8LUfeGEf0pGjI9S7n9
	GXnq7bB2d9cbzUaWXV63Hn/QWrC+3T0mD1YQCDcxBrq86yVR0OT7GbgBQxlgkqesuWldr9mbVuT
	wiy4o4aH1p50OKP1UE4UN1VDvnoCVjpNMFAuo7LEZM4nsvWQBzjPcQDirUOHx6uY86yui8QQ==
X-Google-Smtp-Source: AGHT+IGAWHLf2sZeM1kp4mHTTgw1vkrHCUaUHIOBJke3aAz3HlTqFOFaFvXoPJXXMokU5JTO7HugQiWHzA1UCmYFP3I=
X-Received: by 2002:a17:90b:2b88:b0:2ff:62f3:5b31 with SMTP id
 98e67ed59e1d1-3053216ddc9mr18631538a91.29.1743485096366; Mon, 31 Mar 2025
 22:24:56 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 31 Mar 2025 22:24:28 -0700
X-Gm-Features: AQ5f1JqBS-9CdVHkzNfmArzIgKsreOUaexnsXuboSPnLtAnyrOa3dfIl1eMkFKg
Message-ID: <CAK5yBb_D7b0c6LN9ptzG27rOr-y_ed7_HjLAfAi7CjoPE5Wykw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW13!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d7196b0631b0c183"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 05:24:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65043

--000000000000d7196b0631b0c183
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 7
yoann.congal@smile.fr 4
randy.macleod@windriver.com 2
ross.burton@arm.com 1
Grand Total 14

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000d7196b0631b0c183
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
7</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@s=
mile.fr">yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macl=
eod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold;text-align:right">14</=
td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:in=
itial;background-position:initial;background-repeat:initial"><span style=3D=
"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></=
p>

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

--000000000000d7196b0631b0c183--

