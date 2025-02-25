Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546E5C021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 16:03:03 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.11877.1740499380769641165
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 08:03:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OPJH4Wmk;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6ddcff5a823so46364086d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 08:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740499380; x=1741104180; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6MMxgUPqsWv1Imcol0BotMw5y/4Xqx+QYjZM4uKm0k=;
        b=OPJH4WmkRy30B0ynUpn1e2DlO1Tq43KTSBHj0t+vmNigGJT0xgtFNs+WttGcvI//kv
         4SLdzs/mlSqb4tMwPbPIzPNStG/ub6fL665L8E+0Me21QIsNKDCedVq5binVpgkcIG/d
         uuHE75OcQucLDk0vvzydyYoONuDoilC0KCjwdwU3c01tjF5L9DzKRhWKolmv7KupymMj
         u6nsA53kMa8OSMLNySzjRol69X8J64/Xz/s4YIFdwkWgXiE0MAomd2W0VnS7PVUgA4st
         4IKe8FtKNM9Cx4bb5NtadT3bDIPL0/gY+woopfHF+H7NWIKrsF63xV9sC+3PF4eN5Y55
         wqRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740499380; x=1741104180;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i6MMxgUPqsWv1Imcol0BotMw5y/4Xqx+QYjZM4uKm0k=;
        b=K0Qvi0TNkwWCHT6yWYswnuS/EseSl8xQIPOHIls3VRLPc5mAydPzU7OENLk9gsWRC4
         Zg5KLMAb3HP3csJxhcQCocXV27H3IgByesE5j0ODKIvZ0mmuss5ZRTCdeCJdeL0VfE4o
         S7oK19tnMR/lU/R3ffPziW1PXxfqom/3MC/gzUw3xwykZAo7oG2LNpCtC9l/6rH0Jkz2
         U3sLqNSzDQ4FVHl+sqKoSWOMWJb4iim9MGdgzI7saRsfoM++wkUmm1Mknyw0YQx5vsfW
         BXpKAMj5XnKCg+s9shxddXxYyPsl1oUEIlx+zzGTxUNhCfscoogbYZXG+dxQtu1JfmSv
         RLzg==
X-Gm-Message-State: AOJu0Yxe7WXFS8o74AOjbHrkCeBW38IE8M5k+BCEOVHiQqT7OsChBGYJ
	Ha6l5GwG48g7OTHMNX/Xr9SfdjKLVGC483BOwxcluF5YYRJ/ZInv/HKCKWq93fkZOhrxYt73fSA
	BdrvWViLxHSnaSuKIqrvDmSDdvcfeuw==
X-Gm-Gg: ASbGncvgphKbm5kCn54MxktHToWZFWLsPVbtXQ7USIKbb4A/GEurAYAc9aK7xLVNuyD
	Pb0dGYuUqLxaD/uA2buQFza5AJg6ywA+/hAIlQIZINUDUBDp2zNdVAKFLvOSLxhHdwqAExZFxoi
	PqP2aB//blJ0fuDMHvFZbF22jBAFRC2RaHZnidUAp2/w==
X-Google-Smtp-Source: AGHT+IH0rN5eIvuImpjJXPNFW/zk0kNcdxa4zBJe+fY05fJVPTPzglBHz5tStxArwLRwOtp9RcEil6DQAlHv2fhpk5E=
X-Received: by 2002:a05:6214:300e:b0:6e6:602f:ef68 with SMTP id
 6a1803df08f44-6e6ae7f6c1cmr238386216d6.10.1740499379564; Tue, 25 Feb 2025
 08:02:59 -0800 (PST)
MIME-Version: 1.0
References: <751653524.2812887.1740495957756@webmail.strato.de>
In-Reply-To: <751653524.2812887.1740495957756@webmail.strato.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 25 Feb 2025 17:02:48 +0100
X-Gm-Features: AQ5f1JoIFw-nLW8Tlh3Vit1hHdbCt7hiiwb3g8VQfm8l2aqKM96Ploz3npSwiiQ
Message-ID: <CANNYZj9hSsTKV5PEHztiJ6z+9DBTaQTLzCor0K7xi4mfUq-m5Q@mail.gmail.com>
Subject: Re: [yocto] Yocto Dunfell - Modify OpenSSH configuration
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 16:03:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64867

Either the needed changes aren't being packaged correctly (check
${WORKDIR}/packages-splt for openssh recipe), or the needed package
isn't being installed into the image (check
${WORKDIR}/temp/log.do_rootfs for the image).

Alex

On Tue, 25 Feb 2025 at 16:06, Daniel Kampert via
lists.yoctoproject.org
<kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I=C2=B4m working on a Dunfell BSP (Toradex BSP5) and want to add and modi=
fy the OpenSSH configuration. So I=C2=B4ve added "recipes-connectivity/open=
ssh/openssh_%.bbappend" with this content
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>
> # Apply the SSH configuration
> # - Disable password authentication
> # - Disable X11 forwarding
> # - Enable public key authentication
> do_install_append () {
>   sed -i -e 's:^#PubkeyAuthentication.*$:PubkeyAuthentication yes:g' ${D}=
${sysconfdir}/ssh/sshd_config
>   sed -i -e 's:^#PasswordAuthentication.*$:PasswordAuthentication no:g' $=
{D}${sysconfdir}/ssh/sshd_config
>   sed -i -e 's:^#ChallengeResponseAuthentication.*$:ChallengeResponseAuth=
entication no:g' ${D}${sysconfdir}/ssh/sshd_config
>   sed -i -e 's:^#UsePAM.*$:UsePAM no:g' ${D}${sysconfdir}/ssh/sshd_config
>   sed -i -e 's:^#X11Forwarding.*$:X11Forwarding no:g' ${D}${sysconfdir}/s=
sh/sshd_config
>
>   install -d 0700 ${D}${ROOT_HOME}/.ssh
>   install -m 0600 "${TOPDIR}/keys/ssh/${DEPLOY_ENV}/id_ed25519.pub" ${D}$=
{ROOT_HOME}/.ssh/authorized_keys
> }
> FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"
>
> And I added TASK_BASIC_SSHDAEMON =3D "openssh-sshd openssh-sftp openssh-s=
ftp-server" to my OS configuration. The generated image contains OpenSSH (I=
=C2=B4ve checked the version) but no authorized_keys or modified configurat=
ion.
>
> What is wrong here?
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
>
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64865): https://lists.yoctoproject.org/g/yocto/messag=
e/64865
> Mute This Topic: https://lists.yoctoproject.org/mt/111378266/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

