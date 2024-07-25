Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934C0C3DA5D
	for <webhook@archiver.kernel.org>; Thu, 25 Jul 2024 10:22:56 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.33144.1721902971478482816
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jul 2024 03:22:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UJhKgXTC;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ef2fbf1d14so18481291fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 03:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721902969; x=1722507769; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AtQ7Yzvc6BGkwB3klPitsTiwh9pySk8Gl8CqfKblfRw=;
        b=UJhKgXTCku0Zq2SYvkQ1/TuTgj2JFwr6Fb5XBdIy/b4omwXVVzFcfgpQwEoi31W2DF
         g6m0CjybkYrGpeMzHqIGuwxwl2+O79oNv/E4wEQpU1H4rrQQjPHgsmQNOlztFRXq8h0k
         Hok9MeBLqUh1oPNlKOY+Z8l3Cu7hTtb57UOw0NIixF+ONNEdhdlH38wxiTrSeUAXk+qD
         6Ig0QnkiQAQ5ay6FNMIt1yxtI5Ya+CaYQL5oUEKzV+4cB3PWvtcmdhIzqAWg/u6NFu6h
         0CrDLIxwuNyoDQpu1eOaws0TOQMKmz+rizHzfKAf74p1x5CrkItpDv1wZ+FlNdUrwTFU
         xpvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721902969; x=1722507769;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AtQ7Yzvc6BGkwB3klPitsTiwh9pySk8Gl8CqfKblfRw=;
        b=RMu+Gyc4xyMRVZt/LOmA1DF08RoaL8spo9n+PwHriP0TkIWV5HHBeW0KameW9l2QpA
         iRtIyMYXKTBvy/txd7w2anBZDJx3RFtg56tVrfjLmbYApQOnb8Wk0o6q1ytOqQdQtrXa
         9wqPPvtc2t8yKYldZHXf3wNPTFB+HCikefyTzcneIn5CBmgN764phVGBt5XJCsVje+jT
         y2XEkydRBDDt0lNp5cH42bmUDGZXzeKAwAzCUZqD4nYRYT4bEPQKLTXu9qpyuHiPk4wI
         NWbA1AU/zyXuja7RlM5ur4kqLFcQbQ1hc8rZT5IAzUM2Ai4WvaGLIwTnSWtBVNkZrpXk
         pUtg==
X-Gm-Message-State: AOJu0Yy/DeXlkVYbsYfKXr8EWO4Y1zHjEvpsCs12aC/ZWZoThOjn5aDc
	cSqm3Q2ak7yyLdoOouvPl2BTKeiifIPENEV6qd5BvOmp9NbmrCO9e7fdJJnTHre1GTSdocjjwFx
	NQlLj9s6z1JHjqmXFTtVMYwal+bTQMca6
X-Google-Smtp-Source: AGHT+IGeu4cHG5gVePLDW7yqr5hfMDibgfhX9+LztqkMQTNudc1raGgw3gEyazbjUuPd2rr7c9qBvHUB4AqwYYFRNmo=
X-Received: by 2002:a2e:a98e:0:b0:2f0:1ab3:201 with SMTP id
 38308e7fff4ca-2f03ac409e4mr8859471fa.19.1721902968865; Thu, 25 Jul 2024
 03:22:48 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 25 Jul 2024 12:22:37 +0200
Message-ID: <CAAfyv37kUr5DE7Q+eD7-d3SiT4PVbahVY156sbQodv9gqsug7Q@mail.gmail.com>
Subject: rockchip: chromium HW accelerated
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000cc0e45061e0fc63b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jul 2024 10:22:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63570

--000000000000cc0e45061e0fc63b
Content-Type: text/plain; charset="UTF-8"

Hi,

I would like to ask if anyone tried on scrathgap accelerated chromium for
radxa cm3 using the mainline rockchip layer. I've enabled chromium it was
compiled properly but getting below:

[1860:1860:0805/093227.660753:ERROR:filesystem_posix.cc(63)] mkdir : No
such file or directory (2)
chrome_crashpad_handler: --database is required
Try 'chrome_crashpad_handler --help' for more information.
[1860:1876:0805/093228.292318:ERROR:bus.cc(407)] Failed to connect to the
bus: Could not parse server address: Unknown address type (examples of
valid types are "tcp" and on UNIX "unix")
[1860:1876:0805/093228.292474:ERROR:bus.cc(407)] Failed to connect to the
bus: Could not parse server address: Unknown address type (examples of
valid types are "tcp" and on UNIX "unix")
[1860:1876:0805/093228.292569:ERROR:bus.cc(407)] Failed to connect to the
bus: Could not parse server address: Unknown address type (examples of
valid types are "tcp" and on UNIX "unix")
[1860:1876:0805/093228.292849:ERROR:bus.cc(407)] Failed to connect to the
bus: Could not parse server address: Unknown address type (examples of
valid types are "tcp" and on UNIX "unix")
Fontconfig error: No writable cache directories
Fontconfig error: No writable cache directories
libEGL warning: MESA-LOADER: failed to open rockchip:
/usr/lib/dri/rockchip_dri.so: cannot open shared object file: No such file
or directory (search paths /usr/lib/dri, suffix _dri)

libEGL warning: MESA-LOADER: failed to open rockchip:
/usr/lib/dri/rockchip_dri.so: cannot open shared object file: No such file
or directory (search paths /usr/lib/dri, suffix _dri)

libEGL warning: MESA-LOADER: failed to open zink: /usr/lib/dri/zink_dri.so:
cannot open shared object file: No such file or directory (search paths
/usr/lib/dri, suffix _dri)

[1888:1888:0805/093228.660850:FATAL:gpu_init.cc(593)] Passthrough is not
supported, GL is egl, ANGLE is
[  585.551873] audit: type=1701 audit(1501925548.664:112): auid=4294967295
uid=0 gid=0 ses=4294967295 pid=1888 comm="chromium-bin"
exe="/usr/lib/chromium/chromium-bin" sig=5 res=1
[1860:1876:0805/093228.748702:ERROR:bus.cc(407)] Failed to connect to the
bus: Could not parse server address: Unknown address type (examples of
valid types are "tcp" and on UNIX "unix")
[1860:1876:0805/093228.748903:ERROR:bus.cc(407)] Failed to connect to the
bus: Could not parse server address: Unknown address type (examples of
valid types are "tcp" and on UNIX "unix")
Fontconfig error: No writable cache directories
Fontconfig error: No writable cache directories
[1860:1876:0805/093229.134377:ERROR:bus.cc(407)] Failed to connect to the
bus: Could not parse server address: Unknown address type (examples of
valid types are "tcp" and on UNIX "unix")
[1860:1876:0805/093229.134507:ERROR:bus.cc(407)] Failed to connect to the
bus: Could not parse server address

and it won't start. Could it be mesa related (assuming from above errors).

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000cc0e45061e0fc63b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I would like to ask if anyone tried=
 on scrathgap accelerated chromium=C2=A0for radxa cm3 using the mainline ro=
ckchip layer. I&#39;ve enabled chromium it was compiled properly but gettin=
g below:<br><br>[1860:1860:0805/093227.660753:ERROR:filesystem_posix.cc(63)=
] mkdir : No such file or directory (2)<br>chrome_crashpad_handler: --datab=
ase is required<br>Try &#39;chrome_crashpad_handler --help&#39; for more in=
formation.<br>[1860:1876:0805/093228.292318:ERROR:bus.cc(407)] Failed to co=
nnect to the bus: Could not parse server address: Unknown address type (exa=
mples of valid types are &quot;tcp&quot; and on UNIX &quot;unix&quot;)<br>[=
1860:1876:0805/093228.292474:ERROR:bus.cc(407)] Failed to connect to the bu=
s: Could not parse server address: Unknown address type (examples of valid =
types are &quot;tcp&quot; and on UNIX &quot;unix&quot;)<br>[1860:1876:0805/=
093228.292569:ERROR:bus.cc(407)] Failed to connect to the bus: Could not pa=
rse server address: Unknown address type (examples of valid types are &quot=
;tcp&quot; and on UNIX &quot;unix&quot;)<br>[1860:1876:0805/093228.292849:E=
RROR:bus.cc(407)] Failed to connect to the bus: Could not parse server addr=
ess: Unknown address type (examples of valid types are &quot;tcp&quot; and =
on UNIX &quot;unix&quot;)<br>Fontconfig error: No writable cache directorie=
s<br>Fontconfig error: No writable cache directories<br>libEGL warning: MES=
A-LOADER: failed to open rockchip: /usr/lib/dri/rockchip_dri.so: cannot ope=
n shared object file: No such file or directory (search paths /usr/lib/dri,=
 suffix _dri)<br><br>libEGL warning: MESA-LOADER: failed to open rockchip: =
/usr/lib/dri/rockchip_dri.so: cannot open shared object file: No such file =
or directory (search paths /usr/lib/dri, suffix _dri)<br><br>libEGL warning=
: MESA-LOADER: failed to open zink: /usr/lib/dri/zink_dri.so: cannot open s=
hared object file: No such file or directory (search paths /usr/lib/dri, su=
ffix _dri)<br><br>[1888:1888:0805/093228.660850:FATAL:gpu_init.cc(593)] Pas=
sthrough is not supported, GL is egl, ANGLE is <br>[ =C2=A0585.551873] audi=
t: type=3D1701 audit(1501925548.664:112): auid=3D4294967295 uid=3D0 gid=3D0=
 ses=3D4294967295 pid=3D1888 comm=3D&quot;chromium-bin&quot; exe=3D&quot;/u=
sr/lib/chromium/chromium-bin&quot; sig=3D5 res=3D1<br>[1860:1876:0805/09322=
8.748702:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse s=
erver address: Unknown address type (examples of valid types are &quot;tcp&=
quot; and on UNIX &quot;unix&quot;)<br>[1860:1876:0805/093228.748903:ERROR:=
bus.cc(407)] Failed to connect to the bus: Could not parse server address: =
Unknown address type (examples of valid types are &quot;tcp&quot; and on UN=
IX &quot;unix&quot;)<br>Fontconfig error: No writable cache directories<br>=
Fontconfig error: No writable cache directories<br>[1860:1876:0805/093229.1=
34377:ERROR:bus.cc(407)] Failed to connect to the bus: Could not parse serv=
er address: Unknown address type (examples of valid types are &quot;tcp&quo=
t; and on UNIX &quot;unix&quot;)<br>[1860:1876:0805/093229.134507:ERROR:bus=
.cc(407)] Failed to connect to the bus: Could not parse server address<br c=
lear=3D"all"><div><br></div><div>and it won&#39;t start. Could it be mesa r=
elated (assuming from above errors).</div><div><br></div><div>Thanks and BR=
,</div><div><br></div><div>marek</div><div><br></div><span class=3D"gmail_s=
ignature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature">as simple and primitive as possible<br>--=
-----------------------------------------------<br>Marek Belisko - OPEN-NAN=
DRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak=
 Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #openna=
ndra<br>web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://op=
en-nandra.com</a></div></div></div>

--000000000000cc0e45061e0fc63b--

