Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FCAACCD187
	for <webhook@archiver.kernel.org>; Tue, 14 Oct 2025 06:17:27 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web11.8764.1760422642967001283
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Oct 2025 23:17:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QnDl0uIU;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b5579235200so3126436a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 13 Oct 2025 23:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760422642; x=1761027442; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NvWSPtzh/hCE4oo3LRAZlaAXABC2V7n7e21eR8BfrvA=;
        b=QnDl0uIUC8imQiNeVMhWxMwePFy5UJNBEyZLjsTIb/XNzJIfTM9rYFtM6Z01un1oeb
         uIW9MCc4odd2/iA5/kza1CUp4fzaQn6S3t/pmGAHI20xTNHq5qhrdR07qUZoFk7GU/Vf
         zdn+FqasgKkD9h8cpJ3rycKRWh2SqW9H0ylh2wLURSB+06h3iLAITWigh0cCvAIzfhPx
         lsR196t2gJJMLlX4BS8wLQlX3PznF8WR2W5Qr76zuo1k5i2aWa4WojpJGZ7VE0P6NEe7
         ZfxY8P6aRK9wHX73Zc7bvVFvdKO0neEed5IPhm1GOUPv2CjdB1pI/HhyKiaehFbYCCZT
         uX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760422642; x=1761027442;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NvWSPtzh/hCE4oo3LRAZlaAXABC2V7n7e21eR8BfrvA=;
        b=K2Uui8WsntLHWOK2bmqOoJc9CZVbj4FFQinlYtEJ3dM8lGlLGsu11YI3jNuQGAR6LB
         YPTNDETC7NxjFiMQsRIsrkkZmhA0Kp9TtfSFSSCMeML1hdSLK8tKlMypNoe6vvzi6o0u
         W2GUDoAbl5yyf6mhVxjDsX+0Dmvpeaem73ixlgHytUwf9B1IgYaeRrvcQYZ1SORxdBcx
         Hswn24Kbgj4/i15sTxVpjXSBvZuhmt3TvWXrTQ3XNcXPQGe9sBI2M3THH94reYnspqcJ
         kYhNx3UQCLHBcLiVGDBPB7gSitw9zuPq8eDnIDDJ1kbd8kE4jiLp8INrJAvgwc75Wq3Z
         flfw==
X-Gm-Message-State: AOJu0YzXzmgz2nOLXjEq0c6Y7g5ClcgyzGtzxSes7owuHxgoGHSG1UZB
	wrL+fYjzcjH8OXmLMtU5LvUBvcYCFHd8X2R/4c1aaj8vL8CvBKA4sKhfqOwNp+BeREbVTHdshEC
	v/LTWPqqh40OMxZEuNBPGbryUc4pecMHc0USk
X-Gm-Gg: ASbGncutaGSp4CnH/PM6nPROJdwIFzcSdVZ/EDiO2f13Fk5y7alYGV0pylSHG4/dhsh
	cKa8V12m7uK88ZGZkBJAKKBO0QMCrxKzqgTq1kBbc7tOPGLmKL+bkamjdZdR3QOr7hxlc6kaUlI
	hXjbY13Fyq8/0R3z6Jqu58Dp96dnzOz9VpZhFoATW4ORh/q1I/K6SwRf7ypTL5N6Q+Dxn5iK/5A
	rmmFdNpkGwmaLxxazV5NLZfNwkMKheANumFF6QVYArbzh9DX964qkrPD12cf+BgCaV7AO0=
X-Google-Smtp-Source: AGHT+IH/ZYZSj/JGbm+8+E5cB9SD1iySehysbznMxhln6Sw3XR8qxdKdjD6AsdUEkJHbocrMwz2ByoVfE/VCvv4jElk=
X-Received: by 2002:a17:903:2a8e:b0:24e:e5c9:ecf7 with SMTP id
 d9443c01a7336-290272b536emr308110865ad.34.1760422642111; Mon, 13 Oct 2025
 23:17:22 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 13 Oct 2025 23:17:10 -0700
X-Gm-Features: AS18NWAoDjXJKyuweIu3elneKx5NiHivezqpgYnm8rvYVpcg8DFgd-MVY7wN5EU
Message-ID: <CAK5yBb9JxWL73yqZLFUXu2OHs5j3ewPdqQPRptiwrW2ursi9bQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW41!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003cdc02064118568f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 06:17:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65927

--0000000000003cdc02064118568f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 1
alex.kanavin@gmail.com 1
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000003cdc02064118568f
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
lign:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.c=
om</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"=
height:20px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand=
 Total</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-wei=
ght:bold;text-align:right">2</td></tr></tbody></table><p class=3D"MsoNormal=
" style=3D"background-image:initial;background-position:initial;background-=
repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif"=
>Thanks,<span></span></span></p>

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

--0000000000003cdc02064118568f--

