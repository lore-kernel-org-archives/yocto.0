Return-Path: <ganeshsamunuri015@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B5BEC2BD09
	for <webhook@archiver.kernel.org>; Fri, 12 Jul 2024 05:20:20 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
 by mx.groups.io with SMTP id smtpd.web10.1121.1720761616932303240
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jul 2024 22:20:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OOeKLIlY;
 spf=pass (domain: gmail.com, ip: 209.85.161.50, mailfrom: ganeshsamunuri015@gmail.com)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5c694d5c5adso765654eaf.3
        for <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 22:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720761616; x=1721366416; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kuXov5G1XQ8qHMk4yYhZHN3vZFCKP2POJ+89TPmfaUM=;
        b=OOeKLIlYfV8MmE2I16qsEhSDu4xMZjKHPIAWMCEtiWH3JwdprqrcEXTZHF9a0xP5PV
         ODD/5CEeqyygWH2kU92RuFEtht2uAmTPU82Nxzco4qLmhIxXfJigDtS4sSRkC42tAUPz
         ZgKWhqGC/grbDcd+HS1pKpz0CICJiFPgQ6XYKaJloRsw4NWxZvbsDOIURLRPMvqRAfmL
         053sWbPvpjdk5FHTAo27CSXpU2rkzkZU9KUeLaSwa7MEerGVOPXtS7gR16+bAdIolgfo
         Tlt7Q/Q9G0QpZFl//GYq6Ke9WKKm37mapMO1934ZXaKEqy1GJCGgzvjxEq4jydHgLKnt
         VCyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720761616; x=1721366416;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kuXov5G1XQ8qHMk4yYhZHN3vZFCKP2POJ+89TPmfaUM=;
        b=LvmLiF3ESkJeBqmE9GI6PqxuSYYBMuXBfYPJGH7CJADoCyDofSqVO/Dx5qEvzWaFXV
         sQKWs1+4dqnBGCZrhtzQQi+d859PPPj6AI2V5l8zY3P9504vWSB45t+dArnUTf1GLuK5
         O8iODGHIk6rfeqXMF0bXOGQxVPOvWosKnXLhpLm1N/e0M6NqNW/PkFKBTQnDXHruKN4E
         7irDWElGExTV1iV9F2KoMlfviQH8NLzTs0pq6gK43J2oZ6ckPZIBeeZF1EjAu3wsU4Fh
         W6C2OAluACeUCpe1yiLXvaxjkHXVfaNFU3YZw+gEsnHw0/vk+awZhAZHfcVokOQTWVCN
         gv+A==
X-Gm-Message-State: AOJu0YwmMntPxBAXmjzZIglK/zi/fqabL+Bhx6f+JaJNGoR6PMgT/TPJ
	jkxvxrhLJlkR5AVNdE998Wy9haFG1+ijHQQBBD13j5YHfrdvTLjzDe4pt5b9a98DWXFrK40/Eee
	hp/1bn2rEWRpMDkugDKdY6Panhw5W0+ibn7ByOvvE
X-Google-Smtp-Source: AGHT+IHRcV5uU20DnPZYOj+ZWlwnqtG2rNIxYVKOAjQLnLBZd37RPf3LxfHhsgRH/y/svLmQk1oaeWd0XB9fXXkR9hk=
X-Received: by 2002:a05:6358:618a:b0:1aa:b462:9e92 with SMTP id
 e5c5f4694b2df-1aade176f18mr1070280355d.28.1720761615807; Thu, 11 Jul 2024
 22:20:15 -0700 (PDT)
MIME-Version: 1.0
From: Ganesh Samunuri <ganeshsamunuri015@gmail.com>
Date: Fri, 12 Jul 2024 10:50:04 +0530
Message-ID: <CA+5Uccmt8J-j3VkMFgcD13pbAWkW36WiAAQK0eAbnq77gvwq7g@mail.gmail.com>
Subject: Help in booting The board
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000da7f8b061d060816"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 05:20:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63474

--000000000000da7f8b061d060816
Content-Type: text/plain; charset="UTF-8"

Ganesh Samunuri <ganeshsamunuri015@gmail.com>
10:40 (8 minutes ago)
to main
Hey as iam new to yocto project,

I downloaded Yocto project (kirkstone) in cyclone v by adding met-altera
layer and meta-openembedded layers,
 i did everything according to online article provided and able to bitbake
it , after bitbake i flashed my .wic  file into the SD card but it missing
some files like u-boot.scr and .rbf files, even i tried to boot with the
image file i got but it's not booting .

I am Hoping if anyone can help me with these problem and help me to boot
the board

Thank you.

--000000000000da7f8b061d060816
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-aju" style=3D"display:flex;float:none;=
height:80px;padding:0px 16px;min-width:40px;font-family:&quot;Google Sans&q=
uot;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:medium"><div c=
lass=3D"gmail-aCi" style=3D""><img id=3D"gmail-:m4_11-e" name=3D"gmail-:m4"=
 src=3D"https://lh3.googleusercontent.com/a/ACg8ocJKBDvjJN4qJ4TVhnlpIb5Nq_p=
RhRnmXIyjRIA5q1j-SPtCKQ=3Ds40-p-mo" class=3D"gmail-ajn" aria-hidden=3D"true=
" style=3D"width: 40px; height: 40px; border-radius: 50%; display: block; b=
ackground-color: rgb(204, 204, 204);"></div></div><div class=3D"gmail-gs" s=
tyle=3D"margin:0px;min-width:0px;padding:0px 0px 20px;width:initial;font-fa=
mily:&quot;Google Sans&quot;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif;=
font-size:medium"><div class=3D"gmail-gE gmail-iv gmail-gt" style=3D"font-s=
ize:0.875rem;padding:20px 0px 0px"><table cellpadding=3D"0" class=3D"gmail-=
cf gmail-gJ" style=3D"border-collapse:collapse;margin-top:0px;width:auto;fo=
nt-size:0.875rem;display:block"><tbody style=3D"display:block"><tr class=3D=
"gmail-acZ" style=3D"display:flex;height:auto"><td class=3D"gmail-gF gmail-=
gK" style=3D"padding:0px;vertical-align:top;width:905.312px;line-height:20p=
x;display:block;max-height:20px"><table cellpadding=3D"0" class=3D"gmail-cf=
 gmail-ix" style=3D"border-collapse:collapse;table-layout:fixed;width:905.3=
12px"><tbody><tr><td class=3D"gmail-c2" style=3D"display:flex"><h3 class=3D=
"gmail-iw" style=3D"overflow:hidden;font-size:0.75rem;font-weight:inherit;m=
argin:inherit;text-overflow:ellipsis;color:rgb(95,99,104);line-height:20px"=
><span class=3D"gmail-qu" role=3D"gridcell" tabindex=3D"-1"><span name=3D"G=
anesh Samunuri" class=3D"gmail-gD" style=3D"color:rgb(31,31,31);font-size:0=
.875rem;font-weight:bold;display:inline;vertical-align:top;line-height:20px=
"><span style=3D"vertical-align:top">Ganesh Samunuri</span></span>=C2=A0<sp=
an class=3D"gmail-cfXrwd"></span><span class=3D"gmail-go" style=3D"vertical=
-align:top;color:rgb(94,94,94)"><span aria-hidden=3D"true">&lt;</span><a hr=
ef=3D"mailto:ganeshsamunuri015@gmail.com">ganeshsamunuri015@gmail.com</a><s=
pan aria-hidden=3D"true">&gt;</span></span></span></h3></td></tr></tbody></=
table></td><td class=3D"gmail-gH gmail-bAk" style=3D"text-align:right;verti=
cal-align:top;display:block;max-height:20px"><div class=3D"gmail-gK" style=
=3D"padding:0px;display:flex"><span id=3D"gmail-:w1" class=3D"gmail-g3" tit=
le=3D"12 Jul 2024, 10:40" alt=3D"12 Jul 2024, 10:40" role=3D"gridcell" tabi=
ndex=3D"-1" style=3D"vertical-align:top;margin:0px;font-size:0.75rem;color:=
rgb(94,94,94);display:block;line-height:20px">10:40 (8 minutes ago)</span><=
div class=3D"gmail-zd gmail-bi4" aria-label=3D"Not starred" title=3D"Not st=
arred" tabindex=3D"0" role=3D"checkbox" aria-checked=3D"false" style=3D"dis=
play:inline-block;height:20px;margin-left:20px;outline:0px"><span class=3D"=
gmail-T-KT" style=3D"display:inline-flex;height:20px;text-align:center;widt=
h:20px;padding:0px;margin:0px;border:none;outline:none"></span></div></div>=
</td><td class=3D"gmail-gH" style=3D"text-align:right;vertical-align:top;di=
splay:flex"></td><td class=3D"gmail-gH gmail-acX gmail-bAm" rowspan=3D"2" s=
tyle=3D"text-align:right;vertical-align:top;display:block;max-height:20px">=
<div class=3D"gmail-T-I gmail-J-J5-Ji gmail-T-I-Js-IF gmail-R1Zuwf gmail-T-=
I-ax7 gmail-L3" role=3D"button" tabindex=3D"0" aria-label=3D"Add reaction" =
style=3D"display:inline-flex;border-radius:2px 0px 0px 2px;font-size:0.875r=
em;text-align:center;margin:0px 0px 0px 20px;height:20px;line-height:18px;m=
in-width:auto;outline:none;padding:0px;background:transparent;color:rgb(68,=
68,68);border:none"><img class=3D"gmail-qfynfc gmail-T-I-J3" role=3D"button=
" src=3D"https://mail.google.com/mail/u/1/images/cleardot.gif" alt=3D"" sty=
le=3D"background-image: url(&quot;//ssl.gstatic.com/ui/v1/icons/mail/gm3/1x=
/mood_baseline_nv700_20dp.png&quot;); background-position: 50% 50%; backgro=
und-repeat: no-repeat; background-size: 20px; margin: 0px; vertical-align: =
middle; opacity: 1; display: inline-block; height: 20px; padding: 0px; tran=
sition: opacity 0.15s cubic-bezier(0.4, 0, 0.2, 1) 0s; width: 20px;"></div>=
<div class=3D"gmail-T-I gmail-J-J5-Ji gmail-T-I-Js-IF gmail-aaq gmail-T-I-a=
x7 gmail-L3" role=3D"button" tabindex=3D"0" aria-label=3D"Reply" style=3D"d=
isplay:inline-flex;border-radius:2px 0px 0px 2px;font-size:0.875rem;text-al=
ign:center;margin:0px 0px 0px 20px;height:20px;line-height:18px;min-width:0=
px;outline:none;padding:0px;background:transparent;color:rgb(68,68,68);bord=
er:none"><img class=3D"gmail-hB gmail-T-I-J3" role=3D"button" src=3D"https:=
//mail.google.com/mail/u/1/images/cleardot.gif" alt=3D"" style=3D"backgroun=
d: url(&quot;//ssl.gstatic.com/ui/v1/icons/mail/gm3/1x/reply_baseline_nv700=
_20dp.png&quot;) 50% 50% / 20px no-repeat; height: 20px; margin: 0px; verti=
cal-align: middle; width: 20px; opacity: 1; display: inline-block; padding:=
 0px; transition: opacity 0.15s cubic-bezier(0.4, 0, 0.2, 1) 0s;"></div><di=
v id=3D"gmail-:w9" class=3D"gmail-T-I gmail-J-J5-Ji gmail-T-I-Js-Gs gmail-a=
ap gmail-T-I-awG gmail-T-I-ax7 gmail-L3" role=3D"button" tabindex=3D"0" ari=
a-expanded=3D"false" aria-haspopup=3D"true" aria-label=3D"More message opti=
ons" style=3D"display:inline-flex;border-radius:0px 2px 2px 0px;font-size:0=
.875rem;text-align:center;margin:0px 0px 0px 20px;height:20px;line-height:1=
8px;min-width:0px;outline:none;padding:0px;background:transparent;color:rgb=
(68,68,68);border:none"><img class=3D"gmail-hA gmail-T-I-J3" role=3D"menu" =
src=3D"https://mail.google.com/mail/u/1/images/cleardot.gif" alt=3D"" style=
=3D"background: url(&quot;//ssl.gstatic.com/ui/v1/icons/mail/gm3/1x/more_ve=
rt_baseline_nv700_20dp.png&quot;) 50% 50% / 20px no-repeat; height: 20px; w=
idth: 20px; margin: 0px; vertical-align: middle; opacity: 1; display: inlin=
e-block; padding: 0px; transition: opacity 0.15s cubic-bezier(0.4, 0, 0.2, =
1) 0s;"></div></td></tr><tr class=3D"gmail-acZ gmail-xD" style=3D"display:f=
lex;height:auto"><td colspan=3D"3"><table cellpadding=3D"0" class=3D"gmail-=
cf gmail-adz" style=3D"border-collapse:collapse;table-layout:fixed;width:11=
84px"><tbody><tr><td class=3D"gmail-ady" style=3D"overflow:visible;text-ove=
rflow:ellipsis;display:flex;line-height:20px"><div class=3D"gmail-iw gmail-=
ajw" style=3D"overflow:hidden;max-width:92%;display:inline-block"><span cla=
ss=3D"gmail-hb" style=3D"vertical-align:top;color:rgb(94,94,94);font-size:0=
.75rem;line-height:20px">to=C2=A0<span name=3D"main" class=3D"gmail-g2" sty=
le=3D"vertical-align:top">main</span></span></div><div id=3D"gmail-:mo" ari=
a-haspopup=3D"true" class=3D"gmail-ajy" role=3D"button" tabindex=3D"0" aria=
-label=3D"Show details" style=3D"display:inline-flex;margin-left:4px;vertic=
al-align:top;border:none;outline:none"><img class=3D"gmail-ajz" src=3D"http=
s://mail.google.com/mail/u/1/images/cleardot.gif" alt=3D"" style=3D"backgro=
und: url(&quot;https://www.gstatic.com/images/icons/material/system_gm/1x/a=
rrow_drop_down_black_20dp.png&quot;) 50% 50% / 20px no-repeat; cursor: poin=
ter; padding: 0px; vertical-align: baseline; height: 20px; width: 20px; bor=
der: none; margin: 0px 0px 0px auto; right: 0px; top: 0px; display: flex; o=
pacity: 0.71;"></div></td></tr></tbody></table></td></tr></tbody></table></=
div><div id=3D"gmail-:vx"><div class=3D"gmail-qQVYZb"></div><div class=3D"g=
mail-utdU2e"></div><div class=3D"gmail-lQs8Hd"></div><div class=3D"gmail-wl=
4W9b" style=3D"display:flex"></div></div><div class=3D"gmail-"><div class=
=3D"gmail-aHl" style=3D""></div><div id=3D"gmail-:nf" tabindex=3D"-1"></div=
><div id=3D"gmail-:vz" class=3D"gmail-ii gmail-gt" style=3D"direction:ltr;m=
argin:8px 0px 0px;padding:0px;font-size:0.875rem;overflow-x:hidden"><div id=
=3D"gmail-:vy" class=3D"gmail-a3s gmail-aiL" style=3D"direction:initial;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;font-variant-altern=
ates:normal;font-kerning:auto;font-feature-settings:normal;font-stretch:nor=
mal;font-size:small;line-height:1.5;font-family:Arial,Helvetica,sans-serif;=
overflow:auto hidden"><div dir=3D"ltr">Hey as iam new to yocto project,<br>=
<br>I downloaded Yocto project=C2=A0(kirkstone) in cyclone v by adding met-=
altera layer and meta-openembedded layers,<div>=C2=A0i did everything accor=
ding to online article provided and able to bitbake it , after bitbake i fl=
ashed my .wic=C2=A0 file into the SD card but it missing some files like u-=
boot.scr and .rbf files, even i tried to boot with the image file i got but=
 it&#39;s not booting .<br><br>I am Hoping if anyone can help me with these=
 problem and help me to boot the board<br><br>Thank you.=C2=A0</div></div><=
/div></div></div></div></div>

--000000000000da7f8b061d060816--

