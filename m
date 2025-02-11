Return-Path: <praveen.vatt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 136DFC0219E
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 15:45:26 +0000 (UTC)
Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com [209.85.219.194])
 by mx.groups.io with SMTP id smtpd.web10.2366.1739288725381517504
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 07:45:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JJZS4K9e;
 spf=pass (domain: gmail.com, ip: 209.85.219.194, mailfrom: praveen.vatt@gmail.com)
Received: by mail-yb1-f194.google.com with SMTP id 3f1490d57ef6-e573136107bso4947567276.3
        for <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 07:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739288724; x=1739893524; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sEhBbLX37CH78FYgY6+csTe7JM0vBZyEYEfc80PhnjY=;
        b=JJZS4K9eFCbBRGvYPRBCVGzrQ1fp03f4gkzCwSucZVZP3uquu8w5dZZ6Gm8tN0K/fu
         hquqgapN+GRmz93uvwPZAgBeaoa32Rnn4jI0wMgaJiwLdDQWG6rZdR2pLL8vWYluSjuI
         cmuc8Gi1gXDhvFGe9y6OL2mWmZU6XcXxGW4CvM91TFo16WxLYMYQq97nrcaF/CIYXYB0
         MGzwoS86tcF+4a5UBfVtmBC/Obz/G959yFWEjWG525nXOGTmeDXlI5uaVxGSvPSJDNjl
         IDEkqnVhYHZTYRN8hMhoImKkbgjbcI+ezUEmijKB76DZvMwHE97gnLDZknyKfkdK4MEJ
         T2Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739288724; x=1739893524;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sEhBbLX37CH78FYgY6+csTe7JM0vBZyEYEfc80PhnjY=;
        b=t40dunhcnDB9/kMQ75Fninb0nh+ihLiFSe6zHskuwEoAhus7DNQIvHT4ddCJTilP5k
         YiZZw5BrHxjxvSHtr3VHeA/Q3vjpiFDRNROQ+op6ie+tAT3BWwT34xx87VtamxEqciWM
         ZTfant4Xp8YEJKeQRrJqpsXz+tZ0R52Kw4lpYhXjIFfGSPMxHfWHx2Yl6NrVoJjoqhP6
         oRhnaOq9bsCQ68cSbCnJg6LfNfv+EnXpUfMAS5W4HeTE3TY2ftZ3vIv9/uQI6ItsMZTP
         WpoOzm/796mJ3vQ4mamwmm2NAZUSZwYWWj4HkhhHfPfvB/JrQ7KLm+pV1n53PdpEdHfw
         AGxg==
X-Gm-Message-State: AOJu0Yws8+Qi7iua0VZzXsK+oY/Bx7Gj8Y1jKYZGQZwv6fobwZLWJ9BH
	IN2H8cbKima0UoMS6dJGwOIPrFbiMWaj+9jbEPZn5qgrCdVLeb2Z2sBQ/cCJS5GezWl0OaYvkIa
	fAO9AB8dFDLuxw8xp21wZLvRCF2Mz7n9QsssyoM44evY=
X-Gm-Gg: ASbGncv16WMVrQdsB6A9sxaDgLMiu+gN2px9pbSjBPfMo+/OQCh9Mqbw4UzooM2Sjsc
	trgbBpOvNZ9vnuVlhtM48r3Kb6Ul6udUDw4apF7IBw9cCLQwZgN5rQ5IsM21KNQ/If5mthB0=
X-Google-Smtp-Source: AGHT+IEbBL34xxRZ0HCL6lajQzVTideuPD/YFnjvgfEcTFUE60WVlp4hEyZBWlauCWjXBLH6GnVIq+Xf/EOWv5ELoW4=
X-Received: by 2002:a05:690c:2501:b0:6ef:6536:bb96 with SMTP id
 00721157ae682-6f9b2875c82mr175659657b3.10.1739288724275; Tue, 11 Feb 2025
 07:45:24 -0800 (PST)
MIME-Version: 1.0
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Tue, 11 Feb 2025 21:15:13 +0530
X-Gm-Features: AWEUYZkKtT1Ny10mTPUOfWAHsE-nWIjWhwr7NmXZh3Tau_VDdz9PLtVZfQW54Sc
Message-ID: <CA+pXca1DT_r_87Z14bmG5zfjZJCE8_sB0BQm0QUcZ=zBGwoyAw@mail.gmail.com>
Subject: "linux-firmware" usage
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000928acf062ddfb6c3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 15:45:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64766

--000000000000928acf062ddfb6c3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

praveen vattipalli <praveen.vatt@gmail.com>
9:00=E2=80=AFPM (13 minutes ago)
to yocto
Hi,

As a part of our demo, for Ethernet driver, we require Microchip firmware
bin(mscc_vsc8574_revb_int8051_29e8.bin).

For this, i have added "IMAGE_INSTALL +=3D " linux-firmware-microchip""   t=
o
local.conf.
But i observed full "linux-firmware" recipe files of size 1G is copied to
wic.

Actually i need only microchip folder copied to "/lib/firmware".

I am using "kirkstone" version.

Am i missing something?


Thanks,
Praveen

--000000000000928acf062ddfb6c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-aju" style=3D"float:none;padding:0px 1=
6px;display:flex;height:80px;min-width:40px;font-family:&quot;Google Sans&q=
uot;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:medium"><div c=
lass=3D"gmail-aCi" style=3D""><img id=3D"gmail-:ni_21-e" name=3D"gmail-:ni"=
 src=3D"https://lh3.googleusercontent.com/a/ACg8ocIACtD_MmpyTUe5zglgDe6bxc9=
QrDSkj7zzpSqC_nkosTBRWg=3Ds40-p-mo" class=3D"gmail-ajn" aria-hidden=3D"true=
" style=3D"width: 40px; height: 40px; border-radius: 50%; display: block; b=
ackground-color: rgb(204, 204, 204);"></div></div><div class=3D"gmail-gs" s=
tyle=3D"margin:0px;min-width:0px;padding:0px 0px 20px;width:auto;font-famil=
y:&quot;Google Sans&quot;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif;fon=
t-size:medium"><div class=3D"gmail-gE gmail-iv gmail-gt" style=3D"font-size=
:0.875rem;padding:20px 0px 0px"><table cellpadding=3D"0" class=3D"gmail-cf =
gmail-gJ" style=3D"border-collapse:collapse;margin-top:0px;width:auto;font-=
size:0.875rem;display:block"><tbody style=3D"display:block"><tr class=3D"gm=
ail-acZ" style=3D"height:auto;display:flex"><td class=3D"gmail-gF gmail-gK"=
 style=3D"padding:0px;vertical-align:top;width:1206.47px;line-height:20px;d=
isplay:block;max-height:20px"><table cellpadding=3D"0" class=3D"gmail-cf gm=
ail-ix" style=3D"border-collapse:collapse;table-layout:fixed;width:1206.47p=
x"><tbody><tr><td class=3D"gmail-c2" style=3D"display:flex"><h3 class=3D"gm=
ail-iw gmail-gFxsud" style=3D"overflow:hidden;font-size:0.75rem;font-weight=
:inherit;margin:inherit;text-overflow:ellipsis;color:rgb(95,99,104);line-he=
ight:20px"><span class=3D"gmail-qu" role=3D"gridcell" tabindex=3D"-1"><span=
 name=3D"praveen vattipalli" class=3D"gmail-gD" style=3D"color:rgb(31,31,31=
);font-size:0.875rem;font-weight:bold;display:inline;vertical-align:top;lin=
e-height:20px"><span style=3D"vertical-align:top">praveen vattipalli</span>=
</span>=C2=A0<span class=3D"gmail-cfXrwd"></span><span class=3D"gmail-go" s=
tyle=3D"vertical-align:top;color:rgb(94,94,94)"><span aria-hidden=3D"true">=
&lt;</span><a href=3D"mailto:praveen.vatt@gmail.com">praveen.vatt@gmail.com=
</a><span aria-hidden=3D"true">&gt;</span></span></span></h3><h3 class=3D"g=
mail-iw gmail-rapwed" style=3D"overflow:hidden;font-size:0.75rem;font-weigh=
t:inherit;margin:inherit;text-overflow:ellipsis;color:rgb(95,99,104);line-h=
eight:20px"></h3></td></tr></tbody></table></td><td class=3D"gmail-gH gmail=
-bAk" style=3D"text-align:right;vertical-align:top;display:block;max-height=
:20px"><div class=3D"gmail-gK" style=3D"padding:0px;display:flex"><span id=
=3D"gmail-:21h" class=3D"gmail-g3" title=3D"Feb 11, 2025, 9:00=E2=80=AFPM" =
alt=3D"Feb 11, 2025, 9:00=E2=80=AFPM" role=3D"gridcell" tabindex=3D"-1" sty=
le=3D"vertical-align:top;margin:0px;font-size:0.75rem;color:rgb(94,94,94);d=
isplay:block;line-height:20px">9:00=E2=80=AFPM (13 minutes ago)</span><div =
class=3D"gmail-zd gmail-bi4" aria-label=3D"Not starred" title=3D"Not starre=
d" tabindex=3D"0" role=3D"checkbox" aria-checked=3D"false" style=3D"display=
:inline-block;height:20px;margin-left:20px;outline:0px"><span class=3D"gmai=
l-T-KT" style=3D"display:inline-flex;height:20px;text-align:center;width:20=
px;padding:0px;margin:0px;border:none;outline:none"></span></div></div></td=
><td class=3D"gmail-gH" style=3D"text-align:right;vertical-align:top;displa=
y:flex"></td><td class=3D"gmail-gH gmail-acX gmail-bAm" rowspan=3D"2" style=
=3D"text-align:right;vertical-align:top;display:block;max-height:20px"><div=
 class=3D"gmail-T-I gmail-J-J5-Ji gmail-T-I-Js-IF gmail-R1Zuwf gmail-T-I-ax=
7 gmail-L3" role=3D"button" tabindex=3D"0" aria-label=3D"Add reaction" styl=
e=3D"display:inline-flex;border-radius:2px 0px 0px 2px;font-size:0.875rem;t=
ext-align:center;margin:0px 0px 0px 20px;height:20px;line-height:18px;min-w=
idth:auto;outline:none;padding:0px;background:transparent;color:rgb(68,68,6=
8);border:none"><img class=3D"gmail-qfynfc gmail-T-I-J3" role=3D"button" sr=
c=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" alt=3D"" style=
=3D"background-position: 50% 50%; background-repeat: no-repeat; background-=
size: 20px; background-image: url(&quot;//ssl.gstatic.com/ui/v1/icons/mail/=
gm3/1x/mood_baseline_nv700_20dp.png&quot;); margin: 0px; vertical-align: mi=
ddle; opacity: 1; display: inline-block; height: 20px; padding: 0px; transi=
tion: opacity 0.15s cubic-bezier(0.4, 0, 0.2, 1); width: 20px;"></div><div =
class=3D"gmail-T-I gmail-J-J5-Ji gmail-T-I-Js-IF gmail-aaq gmail-T-I-ax7 gm=
ail-L3" role=3D"button" tabindex=3D"0" aria-label=3D"Reply" style=3D"displa=
y:inline-flex;border-radius:2px 0px 0px 2px;font-size:0.875rem;text-align:c=
enter;margin:0px 0px 0px 20px;height:20px;line-height:18px;min-width:0px;ou=
tline:none;padding:0px;background:transparent;color:rgb(68,68,68);border:no=
ne"><img class=3D"gmail-hB gmail-T-I-J3" role=3D"button" src=3D"https://mai=
l.google.com/mail/u/0/images/cleardot.gif" alt=3D"" style=3D"background: ur=
l(&quot;//ssl.gstatic.com/ui/v1/icons/mail/gm3/1x/reply_baseline_nv700_20dp=
.png&quot;) 50% 50% / 20px no-repeat; height: 20px; margin: 0px; vertical-a=
lign: middle; width: 20px; opacity: 1; display: inline-block; padding: 0px;=
 transition: opacity 0.15s cubic-bezier(0.4, 0, 0.2, 1);"></div><div id=3D"=
gmail-:21o" class=3D"gmail-T-I gmail-J-J5-Ji gmail-T-I-Js-Gs gmail-aap gmai=
l-T-I-awG gmail-T-I-ax7 gmail-L3" role=3D"button" tabindex=3D"0" aria-expan=
ded=3D"false" aria-haspopup=3D"true" aria-label=3D"More message options" st=
yle=3D"display:inline-flex;border-radius:0px 2px 2px 0px;font-size:0.875rem=
;text-align:center;margin:0px 0px 0px 20px;height:20px;line-height:18px;min=
-width:0px;outline:none;padding:0px;background:transparent;color:rgb(68,68,=
68);border:none"><img class=3D"gmail-hA gmail-T-I-J3" role=3D"menu" src=3D"=
https://mail.google.com/mail/u/0/images/cleardot.gif" alt=3D"" style=3D"bac=
kground: url(&quot;//ssl.gstatic.com/ui/v1/icons/mail/gm3/1x/more_vert_base=
line_nv700_20dp.png&quot;) 50% 50% / 20px no-repeat; height: 20px; width: 2=
0px; margin: 0px; vertical-align: middle; opacity: 1; display: inline-block=
; padding: 0px; transition: opacity 0.15s cubic-bezier(0.4, 0, 0.2, 1);"></=
div></td></tr><tr class=3D"gmail-acZ gmail-xD" style=3D"height:auto;display=
:flex"><td colspan=3D"3"><table cellpadding=3D"0" class=3D"gmail-cf gmail-a=
dz" style=3D"border-collapse:collapse;table-layout:fixed;width:1504px"><tbo=
dy><tr><td class=3D"gmail-ady" style=3D"overflow:visible;text-overflow:elli=
psis;display:flex;line-height:20px"><div class=3D"gmail-iw gmail-ajw" style=
=3D"overflow:hidden;max-width:92%;display:inline-block"><span class=3D"gmai=
l-hb" style=3D"vertical-align:top;color:rgb(94,94,94);font-size:0.75rem;lin=
e-height:20px">to=C2=A0<span name=3D"yocto" class=3D"gmail-g2" style=3D"ver=
tical-align:top">yocto</span></span></div><div id=3D"gmail-:20q" aria-haspo=
pup=3D"true" class=3D"gmail-ajy" role=3D"button" tabindex=3D"0" aria-label=
=3D"Show details" style=3D"display:inline-flex;margin-left:4px;vertical-ali=
gn:top;border:none;outline:none"><img class=3D"gmail-ajz" src=3D"https://ma=
il.google.com/mail/u/0/images/cleardot.gif" alt=3D"" style=3D"background: u=
rl(&quot;https://www.gstatic.com/images/icons/material/system_gm/1x/arrow_d=
rop_down_black_20dp.png&quot;) 50% 50% / 20px no-repeat; cursor: pointer; p=
adding: 0px; vertical-align: baseline; height: 20px; width: 20px; border: n=
one; margin: 0px 0px 0px auto; right: 0px; top: 0px; display: flex; opacity=
: 0.71;"></div></td></tr></tbody></table></td></tr></tbody></table></div><d=
iv id=3D"gmail-:21c"><div class=3D"gmail-KKSLrd"></div><div class=3D"gmail-=
qQVYZb"></div><div class=3D"gmail-utdU2e"></div><div class=3D"gmail-lQs8Hd"=
></div><div class=3D"gmail-wl4W9b" style=3D"display:flex"></div></div><div =
class=3D"gmail-"><div class=3D"gmail-aHl" style=3D""></div><div id=3D"gmail=
-:20r" tabindex=3D"-1"></div><div id=3D"gmail-:21f" class=3D"gmail-ii gmail=
-gt" style=3D"direction:ltr;margin:8px 0px 0px;padding:0px;font-size:0.875r=
em;overflow-x:hidden"><div id=3D"gmail-:21e" class=3D"gmail-a3s gmail-aiL" =
style=3D"direction:ltr;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-variant-alternates:normal;font-size-adjust:none;font-kerning:au=
to;font-feature-settings:normal;font-stretch:normal;font-size:small;line-he=
ight:1.5;font-family:Arial,Helvetica,sans-serif;overflow:auto hidden"><div =
dir=3D"ltr">Hi,<div><br><div>As a part of our demo, for Ethernet driver, we=
 require Microchip firmware bin(mscc_vsc8574_revb_int8051_29e8.bin).</div><=
div><br></div><div>For this,=C2=A0i have added &quot;IMAGE_INSTALL +=3D &qu=
ot; linux-firmware-microchip&quot;&quot;=C2=A0 =C2=A0to local.conf.</div><d=
iv>But i observed full &quot;linux-firmware&quot; recipe files of size 1G i=
s copied to wic.</div><div><br></div><div>Actually i need only microchip fo=
lder copied to &quot;/lib/firmware&quot;.</div><div><br></div><div>I am usi=
ng &quot;kirkstone&quot; version.</div><div><br></div><div>Am i=C2=A0missin=
g something?</div><div><br></div><div><br></div><div>Thanks,</div><div>Prav=
een</div></div></div></div></div></div></div></div>

--000000000000928acf062ddfb6c3--

