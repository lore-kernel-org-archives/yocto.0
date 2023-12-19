Return-Path: <bremenpl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5948C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 07:02:17 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.7182.1702969336920527700
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 23:02:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HLEXTY/d;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: bremenpl@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40c6e2a47f6so42934405e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 23:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702969335; x=1703574135; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:reply-to:message-id:date:subject:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=454oNnt9jGWUH0mab2sYpeP3dWFrqELn4Gj9pPfJ9WQ=;
        b=HLEXTY/dFi/9LULBD1AKK5rqamxwPJIcs7Od0wNbj4KTHhGO35oYnkB32PVaZQItfM
         +/Jk0C+tB5/koqL+B4xFIDb7EiuI5PabHreJCkZjdQQFZaX41z+JxKCGeWDa3RHKZiwJ
         51We/vBcQdkhZI/dLl+NZOBnifiwusuP4oKhKZ1YmiUmKGMFSKrOacoUD3sVJma2ThJj
         pvRRxHxSr1xdoJcrmcRh4s3DND2wK2jSXW2NU/VdTk8wyVVmRgE+GoP3qSVOqci9KFqf
         UIbElI/ZcnyM7sjZ4P8F6NJsw9b7TuYyps9dDTD0Unh4b9dubUUU1uHyjE8GIffwKgRs
         Y0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702969335; x=1703574135;
        h=mime-version:user-agent:reply-to:message-id:date:subject:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=454oNnt9jGWUH0mab2sYpeP3dWFrqELn4Gj9pPfJ9WQ=;
        b=vNLFF4nDixBWP/HeCAggI14qdzy0WVJdxxeOLzlePnZFTUfqpAOOJ9h2LhQNnI0kA7
         9hwiPfbui2/Pek64DkMUrKUL89i3bMULRcImjB2apWQVT05oYRQ47fWyeDBiHdWdL27G
         axvVf57fFxQZ9yIS4dIqjAtQhvZrcK3UeWgg3rIC8xYvSEifPKuTWUDUnLq9gefwHja2
         Hi2Bw3WJZSyhLZJKC24ZMGvMjX+gJYCxmRH+xE7+rXXz3lnNa0e+vIl5/qcFifyMwDqm
         he6XeoMMMgr8avPKrAcr9V4IAasTF2i+d3BXpW8QMmFz2tAzN52Ip4gXnMRcKTYodx8u
         Bg1Q==
X-Gm-Message-State: AOJu0YwwCqxL+SJL9PZqaEYpFkrpOIgzO+3boryByeltAljc/5ykI+aX
	5Rm+R2szHu6l34Tj5VA0jL3gWsQl9ws=
X-Google-Smtp-Source: AGHT+IGu39RuzigcP6l5J3oWvi/k9FRFJZJn7QW/n0Rh9yBL2NETg4NJFKDO8HFigEyx6lcqpC71HQ==
X-Received: by 2002:a7b:c8cf:0:b0:40c:66d6:cbcb with SMTP id f15-20020a7bc8cf000000b0040c66d6cbcbmr1986348wml.374.1702969334989;
        Mon, 18 Dec 2023 23:02:14 -0800 (PST)
Received: from [192.168.7.15] (eqj153.neoplus.adsl.tpnet.pl. [83.20.77.153])
        by smtp.gmail.com with ESMTPSA id o21-20020a05600c4fd500b0040c5cf930e6sm1402682wmq.19.2023.12.18.23.02.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Dec 2023 23:02:14 -0800 (PST)
From: =?utf-8?q?=c5=81ukasz=20Przenios=c5=82o?= <bremenpl@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Copied image from the SD to eMMC fails to boot
Date: Tue, 19 Dec 2023 07:02:10 +0000
Message-Id: <em5c4e5d8a-2347-4bd1-b179-8e40c59e0eca@13fff5e5.com>
Reply-To: =?utf-8?q?=c5=81ukasz=20Przenios=c5=82o?= <bremenpl@gmail.com>
User-Agent: eM_Client/9.2.2157.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB8587C16C-4E71-4017-9CBE-38013E16E2E6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 07:02:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61977

--------=_MB8587C16C-4E71-4017-9CBE-38013E16E2E6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,
I have built a basic reference image for the BBB using Yocto/ Poky. It=20
boots normally from the SD card. I then try to copy it over to the eMMC.=20
My steps:

Check the eMMC size with fdisk -l (get no of sectors and sector size):=20
7405568 sectors, 512 bytes wide sector.
dd sc contents to the emmc: dd if=3D/dev/mmcblk0 of=3D/dev/mmcblk1 bs=3D512=
=20
count=3D7405568
mount the boot partition on the emmc: mkdir /tmp/test && mount=20
/dev/mmcblk1p1 /tmp/test
edit the config: vi /tmp/test/extlinux/extlinux.conf. It looks like=20
this:
defaultYocto
label Yocto
    kernel /zImage
    fdtdir /
append root=3D/dev/mmcblk0p2 rootwait console=3DttyS0,115200
Note: I have adjusted the root entry in the extlinux.conf, as the=20
default one obtained via "sudo dd=20
if=3Dcore-image-minimal-beaglebone-yocto.wic of=3D/dev/<media>" consisted o=
f=20
partition ID identification based entry.

After the change SD card still booted, so now I changed the root dev=20
from /dev/mmcblk0p2 to /dev/mmcblk1p2 (SD =E2=86=92 emmc).

After reboot. I only get =E2=80=9C#####=E2=80=9D, don=E2=80=99t even see th=
e u-boot SPL output.

SD card boot log that works: https://pastebin.com/DkkSsucA

What am I missing? Similar operation worked when doing this with a=20
Buildroot generated image. I would appreciate all help!

--
=C5=81ukasz Przenios=C5=82o

--------=_MB8587C16C-4E71-4017-9CBE-38013E16E2E6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>

<style id=3D"css_styles">=20
blockquote.cite { margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; padding=
-top: 0px; }
a img { border: 0px; }
li[style=3D'text-align: center;'], li[style=3D'text-align: center; '], li[s=
tyle=3D'text-align: right;'], li[style=3D'text-align: right; '] {  list-sty=
le-position: inside;}
body { font-family: Verdana; font-size: 12pt; }
.quote { margin-left: 1em; margin-right: 1em; border-left: 5px #ebebeb soli=
d; padding-left: 0.3em; }

 </style>
</head>
<body><div><p>Hello,<br />
I have built a basic reference image for the BBB using Yocto/ Poky. It=20
boots normally from the SD card. I then try to copy it over to the eMMC.
 My steps:
</p>
<ol>
<li>Check the eMMC size with <font face=3D"Consolas">fdisk -l</font> (get n=
o of sectors and sector size): 7405568 sectors, 512 bytes wide sector.</li>
<li>dd sc contents to the emmc: <font face=3D"Consolas">dd if=3D/dev/mmcblk=
0 of=3D/dev/mmcblk1 bs=3D512 count=3D7405568</font></li>
<li>mount the boot partition on the emmc: <font face=3D"Consolas">mkdir /tm=
p/test &amp;&amp; mount /dev/mmcblk1p1 /tmp/test</font></li>
<li>edit the config: <font face=3D"Consolas">vi /tmp/test/extlinux/extlinux=
.conf</font>. It looks like this:</li></ol></div>
<div><pre class=3D"codeblock-buttons"><code class=3D"hljs language-javascri=
pt" data-highlighted=3D"yes"><font face=3D"Consolas"><span class=3D"hljs-ke=
yword" style=3D"">default</span> <span class=3D"hljs-title class_" style=3D=
"">Yocto</span>
label <span class=3D"hljs-title class_" style=3D"">Yocto</span>
   kernel /zImage
   fdtdir /
append <b>root=3D<span class=3D"hljs-regexp" style=3D"">/dev/mm</span>cblk0=
p2</b> rootwait <span class=3D"hljs-variable language_" style=3D"">console<=
/span>=3DttyS0,<span class=3D"hljs-number" style=3D"">115200</span></font><=
/code></pre></div><div>Note: I have adjusted the root entry in the extlinux=
.conf, as the default one obtained via "<font face=3D"Consolas">sudo dd if=
=3Dcore-image-minimal-beaglebone-yocto.wic of=3D/dev/&lt;media&gt;</font>"=
 consisted of partition ID identification based entry.</div><div><span><br /=
></span></div><div>After the change SD card still booted, so now I changed=
 the root dev from /dev/mmcblk0p2 to /dev/mmcblk1p2 (SD =E2=86=92 emmc).</di=
v><div><br /></div><div>After reboot. I only get =E2=80=9C<font face=3D"Con=
solas">#####</font>=E2=80=9D, don=E2=80=99t even see the u-boot SPL output.=
</div><div><br /></div><div>SD card boot log that works: <a href=3D"https:/=
/pastebin.com/DkkSsucA">https://pastebin.com/DkkSsucA</a><br /><br />What a=
m I missing? Similar operation worked when doing this with a Buildroot gene=
rated image. I would appreciate all help!</div><div><br /></div><div id=3D"=
signature_old" style=3D"clear:both">--<div>=C5=81ukasz Przenios=C5=82o</div=
></div><div><br /></div>
</body></html>
--------=_MB8587C16C-4E71-4017-9CBE-38013E16E2E6--


