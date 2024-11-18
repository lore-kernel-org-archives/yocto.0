Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 269FBD43FF3
	for <webhook@archiver.kernel.org>; Mon, 18 Nov 2024 09:03:06 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.36953.1731920580165575148
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Nov 2024 01:03:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=xq9Qnjvt;
 spf=pass (domain: smile.fr, ip: 209.85.128.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so34156125e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 18 Nov 2024 01:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1731920578; x=1732525378; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QWsRvn4R1BGg2gQcAaszqN/m6zTfV+UMyiBJxbr4irI=;
        b=xq9QnjvtUzWilFeqVXS/SRn0amrkHNhTSYQVeoRnYgiE8ctVq69ET7J7CgV3zzEzFd
         5JQgoKkTkbgwHHIMZ2x3h+FVqGoxh4Zc8g7f2vs9v9DjNQn6V9m6cEVpdAPvLHVitaBK
         UWDbhh4EZn9FhdMDDYRki8l4s7vZuW5z5WcNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731920578; x=1732525378;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QWsRvn4R1BGg2gQcAaszqN/m6zTfV+UMyiBJxbr4irI=;
        b=Qyw+e8nlYlunwlB5DVeXR5oBfRHu++WgEUiTuI7NJ1ag/xjWAx112BWtKOs+51Ybrl
         yxCQeEd3XxQuJpS9UGKrSbERyo3kBWFWOjulARsHjyVP+Msq4kze/81QQcAn3PI8ng2k
         Ts85dyAhhKZlYBiHQmZpYhml59VUajukoJ1768out+1f9Hl/WBgTyLYXOfud9BjIX7gG
         zhOqieiqMNVIKFuE2y2LVZtpbclkRJhd6gkEnBCl1wMgmD3RCRfxYxZIzqF15En4UjXA
         6q4vBQnO+nSzVGlrkg9XijfIH3PrumqhakpYsmhmmp3bL5VrtK5Hxd1TuyDqlztou+SS
         dMnw==
X-Gm-Message-State: AOJu0YyVOIpKlGCJt2Ft1Ve8Ish5SRUW/hA67+wbcdMSy+n6Pd5oso+j
	rWeqzJyEFCMnI2GZcXnILA+KGveyrLb28+7kEj0zCX5hJCQZPTt8eZzO0t1vQsv4ypfLewiVvl9
	CaV137GkQVYqkGtWeFKVUQkr427UoYdmDcp/sZMQFGGaOnV9W
X-Google-Smtp-Source: AGHT+IGnrUwLhWWShKtt70EwBafuCMjT7o+dRkD4DsHst6M3sOGm9xVWAxiR00FaStpHQo/gki2LwfaLgDK6l4lxRIU=
X-Received: by 2002:a5d:47aa:0:b0:382:4145:d3a9 with SMTP id
 ffacd0b85a97d-3824145d6c8mr2923560f8f.25.1731920578360; Mon, 18 Nov 2024
 01:02:58 -0800 (PST)
MIME-Version: 1.0
References: <ynafctjoaoez4csrzfrrsfi2mueyv5jnghilcxb6f6ycndgou5@ksdoeqkpxbxa> <7309.1731918415042372550@lists.yoctoproject.org>
In-Reply-To: <7309.1731918415042372550@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Mon, 18 Nov 2024 10:02:35 +0100
Message-ID: <CAMSfU+6Jp4=WmLE1UZVUsEk6FaApuOAqEsqkjZQ9TCj=_CNsLQ@mail.gmail.com>
Subject: Re: [yocto] Sanity check on a flashing process design
To: yocto@lists.yoctoproject.org, hchanuy@gmail.com
Cc: =?UTF-8?B?SsO2cmcgU29tbWVy?= <joerg.sommer@navimatix.de>
Content-Type: multipart/alternative; boundary="000000000000da53d306272c2e5f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Nov 2024 09:03:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64287

--000000000000da53d306272c2e5f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lun. 18 nov. 2024 =C3=A0 09:27, Uy Ha via lists.yoctoproject.org <hchanu=
y=3D
gmail.com@lists.yoctoproject.org> a =C3=A9crit :

> I think this only works if I can interact with the storage (e.g an SD
> card) from my workstation, is that correct? Because my iMX6 has the eMMC
> storage builtin, hence it is not removable and I cannot access it from my
> workstation.
>

Depending on your hardware, maybe you can use USB OTG and USB Mass-Storage
(command "ums" from u-boot) to write your eMMC from your workstation with
bmaptool.
Or you can boot your system not using eMMC (external USB, network TFTP/NFS,
...) and then use bmaptool on your target to flash the eMMC.
So, "yes" to your 3rd question : you can automate this.

Regards,

--=20
Yoann Congal
Smile ECS - Tech expert

--000000000000da53d306272c2e5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0lun. 18 nov. 2024 =C3=A0=C2=A009:=
27, Uy Ha via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.=
org</a> &lt;hchanuy=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">g=
mail.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:</div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>I t=
hink this only works if I can interact with the storage (e.g an SD card) fr=
om my workstation, is that correct? Because my iMX6 has the eMMC storage bu=
iltin, hence it is not removable and I cannot access it from my workstation=
.</div></blockquote><div><br></div><div>Depending on your hardware, maybe y=
ou can use USB OTG and USB Mass-Storage (command &quot;ums&quot; from u-boo=
t) to write your eMMC from your workstation with bmaptool.</div><div>Or you=
 can boot your system not using eMMC (external USB, network TFTP/NFS, ...) =
and then use bmaptool on your target to flash the eMMC.</div><div>So, &quot=
;yes&quot; to your 3rd question : you can automate this.<br></div><div><br>=
</div><div>Regards,<br></div></div><br><span class=3D"gmail_signature_prefi=
x">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr=
"><font face=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"Ral=
eway, regular">Smile ECS - Tech expert<br></font></div></div></div></div>

--000000000000da53d306272c2e5f--

