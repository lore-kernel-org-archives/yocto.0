Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD0E2CD13DA
	for <webhook@archiver.kernel.org>; Tue,  5 May 2026 05:31:48 +0000 (UTC)
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.32856.1777959104255542667
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 22:31:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=i0H6rYqN;
 spf=pass (domain: gmail.com, ip: 74.125.82.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2ba895adfeaso5224278eec.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 22:31:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777959103; cv=none;
        d=google.com; s=arc-20240605;
        b=YGv3eP0LFzKAQeStXl3gKvFTz8DCkQ3H4HBM69xwU42hjepp63S2fXLO5Q8z3S8xkw
         Lahclv+GnAjUOiVupT/61ZfYNfnNL4Ed4f85EyrdhGnsEx6dcHoLglap0zWgC7zIKcG2
         tlXM6A4+653JpBliJ1usw9ppIZ+LRpXiMWT24d9CFR6AxPuLFsfTKTc4eBu6M8RBvpwv
         oIzL4Bqlt2iYyfcCAclil50CYeQLl35+NvoDaWj8juKZGzlTjM8LVTmRZlDVx99qhF9f
         Ge7pAyVWHxtBdq/pvHXZXIH4CwumskXVmHGHxbXveBWINBhuidRMViiSUHlN4lf/PM8j
         rcmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=6u4gP9Vk+wtoYAsWWMl4lbNBneOVmESfVsGltD9EtiU=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=D5G4aQYUrayI7GZW+zD8WL7OvRBG6eYc5uKH+Bd/Zc2b1tVRPrQDLrT2pYPKOV3jAk
         2txN9ok/VVS1YeX7nYnUc1Xh9+9bZpyv2qAyaHkNmblXnp9PMVmHgAlKy/QnqV6rLj8C
         YPneGsZjBaP0H/3T+gCdSkqm2R+3PcIJGbAPKxXWjbwwQFuHQjjhRjk9rXOfOc9lQA1/
         5rOF6VNf1HK+9N9LCODPNQWcFTdZc0Z+DegKVc2Us3Kh02azFNIXKmmKsejqUuXZTqBW
         YU/9v4zxmOHkTOcUlwGLtd+U1PTdp9KAqM/c0/dul/yZb0P2/onKp5wNMTak2/I8ngpN
         Zf5w==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777959103; x=1778563903; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6u4gP9Vk+wtoYAsWWMl4lbNBneOVmESfVsGltD9EtiU=;
        b=i0H6rYqNm7wHTb+Q/O+0wf0U2x8irMlEOcez+FAdqHyHzFQhV1YxYvkngOLdTEperC
         d4CZh6MmgLsVUf+8VCqOJbod7Hl22IEX3jx1CKL3wgpfFRe2stS+5UHHIpjHyX4RoHvo
         d71rKfsXMI54cpEZ857yl88tWAbp5TUyy8X1DFVRn6pCsocXXGFUftU5pcRASMgNWUqd
         GftINVsZAapBTW7hXPqBRbRYDgJERlkT8cYboRif5Rcg5cEUM0Fp7c/LTcC2cuIif/y/
         qdwZmxaBGHwfxMW9lvGqjEPABu7P8pTj8K0h61oIybqzdUf4NT5b7fit2RI/MvwSqSpM
         NOrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777959103; x=1778563903;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6u4gP9Vk+wtoYAsWWMl4lbNBneOVmESfVsGltD9EtiU=;
        b=dXM4JFeXxDiF8/18yP9Q4qbgj7QCXUyYF5ZMa/hFvgfJXCjPcEeG2ILlfxlGSAVVmb
         ltPNmj6xkSCcQ9Q6qa5q78cgwVFvTgcjqGIFW/vWwsNSZegp9Wyf4S1cTbjFoYIcbdjl
         kohXmunhm9krRugIax3qnEmnvMuXokC2idEh4zFo//ptPXnMxpzD78Tx0ElGZn0g72VN
         MgCuFg5D6/Bdw2yJtxSt7oTEH/0FUkKXhT6gnaJcN9jN+bCk64k5yHhn2PWL/fpZkAKl
         TVYEXqEhObM9OBsopY/PoaX2HjBdPoZf3+Yt9caCo9VIawHJ6ePowmeuk7PfLze5qK0c
         +pJg==
X-Gm-Message-State: AOJu0Yzc1a+W+qaV+vZJ+uk4RKg+pbHTE4hSWno/7KH8rYN2Yj/E5PeW
	+3gcD5D9W1YbZ2I0oo1HeuxlXQw2iR2KZ32OQGQWGwZvZgqI+yLsypuUMvIJ7KI8y/WEf4lqUxy
	mDht8s7VgEAHmyLeW3Ly8vHMRzqZ+gtO/zBlb
X-Gm-Gg: AeBDiev7m3yiURqSTBQC+ZncX5ZRKqOuQxo1qjbrTzVPmMOpZMYbxRjHfIr825K1KLK
	97NVXqdDYIg/oAaIhQnnEZVgJD7CkLTXhEefpHJnxCZI6EoPJsrYFBbERxTrpo2droJmHDflzmn
	w4/J4P5dV6ZCMzq4qiMIiGtU7OQ/oRsgIQbN0H41kxdH/Kh3f2MmCCxH+5U7ErW0eR0DVy98RU9
	DUFKt5e6OTa1QdHA+v7t807AG+7gxZbEouNaTbjIcfFCB9V9+DJdpWcGMYkvLwsWaJgAbY533WC
	pqOX4re1POjSMqinXihp1wKEmbwi1YG6qYw0PTlKuJQew+10Qbe+PtqkvOde4BbABev97dEcXV2
	dnkflH4CKyYBogXSWjDtIn5J76mjleWBqA+Zgzog/KX1c95I9egP1wPOcgp8Jn0kUzIIUDeACvl
	V5QQHoc7/To5PD5tOv7g==
X-Received: by 2002:a05:7300:a49a:b0:2d2:129a:1694 with SMTP id
 5a478bee46e88-2efb9e7bb88mr5656371eec.18.1777959103300; Mon, 04 May 2026
 22:31:43 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 May 2026 23:31:31 -0600
X-Gm-Features: AVHnY4Ln1L8zsIWhhe_NUzeGnM4jOEZ132JWFuZPoj8C4OEEDVdlWJ8JOv4hfp0
Message-ID: <CAK5yBb8GSCZAyivxNtV3HmY_+1u=nsYKOoYc8A-GUEJ4EOdvGA@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 6.1
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c7083706510b5cfa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 05:31:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66479

--000000000000c7083706510b5cfa
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 26 bug owners as of the end of WW18 who have open
medium or higher bugs and enhancements against YP 6.1. There are 163
possible work days left until the final release candidates for YP 6.1 needs
to be released.
Who Count
tgamblin@baylibre.com 36
ross.burton@arm.com 36
richard.purdie@linuxfoundation.org 28
bruce.ashfield@gmail.com 14
tim.orling@konsulko.com 13
randy.macleod@windriver.com 13
sundeep.kokkonda@windriver.com 9
david.reyna@windriver.com 9
paul@pbarker.dev 4
Harish.Sadineni@windriver.com 4
raj.khem@gmail.com 3
mingli.yu@windriver.com 3
JPEWhacker@gmail.com 3
yoann.congal@smile.fr 2
Qi.Chen@windriver.com 2
pavel@zhukoff.net 2
mhalstead@linuxfoundation.org 2
liezhi.yang@windriver.com 2
twoerner@gmail.com 1
tvgamblin@gmail.com 1
toni.lammi@tl-software.fi 1
sundeep.kokkonda@gmail.com 1
pokylinux@reliableembeddedsystems.com 1
peter.kjellerstedt@gmail.com 1
denis@denix.org 1
changqing.li@windriver.com 1
Grand Total 193

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c7083706510b5cfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-f=
amily:Calibri,Arial">All,<br><br>Below is the list of top 26 bug owners as =
of the end of WW18 who have open medium or higher bugs and enhancements aga=
inst YP 6.1.   There are 163 possible work days left until the final releas=
e candidates for YP 6.1 needs to be released.<br></span></div><div dir=3D"l=
tr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div dir=3D"ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D=
"ltr" border=3D"1" style=3D"table-layout:fixed;font-size:11pt;font-family:C=
alibri;width:0px;border-collapse:collapse;border-width:medium;border-style:=
none;border-color:currentcolor"><colgroup><col width=3D"249"><col width=3D"=
42"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px sol=
id rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgro=
und-color:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgr=
ound-color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibr=
e.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">36</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@a=
rm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">36</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.or=
g">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">28</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:br=
uce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">14</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;text-align:right">13</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">13</td></tr><tr style=3D"=
height:20px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundee=
p.kokkonda@windriver.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">9<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@wind=
river.com">david.reyna@windriver.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">9</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:paul=
@pbarker.dev">paul@pbarker.dev</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Harish.Sad=
ineni@windriver.com">Harish.Sadineni@windriver.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">4</td></tr><tr style=3D"height:20px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;text-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:mingli.yu@windriver.com">mingli.yu@windriver.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;text-align:right">3</td></tr><tr style=3D"height:20px"><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;text-align:right">3</td></tr><tr style=3D"height:20px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:2=
1px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:21px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoun=
dation.org</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr s=
tyle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:liezhi.yang@windriver.com">lie=
zhi.yang@windriver.com</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</t=
d></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:twoerner@gmail.com=
">twoerner@gmail.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td>=
</tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tvgamblin@gmail.com"=
>tvgamblin@gmail.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td>=
</tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:toni.lammi@tl-softwa=
re.fi">toni.lammi@tl-software.fi</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:r=
ight">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.=
kokkonda@gmail.com">sundeep.kokkonda@gmail.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:pokylinux@reliableembeddedsystems.com">pokylinux@reliableembeddedsyst=
ems.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr styl=
e=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:peter.kjellerstedt@gmail.com">pet=
er.kjellerstedt@gmail.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1=
</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:denis@denix.org=
">denis@denix.org</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></t=
r><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:changqing.li@windriver.=
com">changqing.li@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold;text-align:right">193</td></tr></tbod=
y></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgrou=
nd-position:initial;background-repeat:initial"><span style=3D"font-size:12p=
t;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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
</div>

--000000000000c7083706510b5cfa--

