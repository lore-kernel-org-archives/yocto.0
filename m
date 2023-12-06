Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A023EC4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 09:46:56 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.28161.1701856009222404255
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Dec 2023 01:46:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NVdz8sIc;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-50bce78f145so8083642e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 01:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701856007; x=1702460807; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=672ar/Pd/9xnxbtzwR4YrtYderMsgMJ9N0HkEKEv5b8=;
        b=NVdz8sIcHSroSbQHgvC/CUGMQLW9g7EHyPSKqky5d4yymiXtXheTKIsXM0VJCGCnga
         JagPGo1nTnXAJzHzjdZgM1aObfAH2xu8i1u/6ClipLp3Z/wBHk8XBrJAdLWfxEPRRPAu
         5+koiLjkpu9/WlDm60wR7HcqPMJk5SXH+FFr9WB9++MtA0hNQpevPcn+yvHw+K8YTvUx
         FJDVTZ83Mlkue19qN62L2+WMBtubqC9LaSp2QdfEAe25xjHBXehjr9eM7CqTOyjjdX7w
         E18j/cHvcIH9lI1QYr83VbBWHLGQX7JoWVl4g/LXcl+Y797vsppVSq4xB4BxfdkiCPxB
         DACw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701856007; x=1702460807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=672ar/Pd/9xnxbtzwR4YrtYderMsgMJ9N0HkEKEv5b8=;
        b=H5Ug4g/HR9wKGNcgiJ/DbuPNUWv5lBvRqUPCL5bilaPyyhafg5jqFGrd4laTiidKdI
         wFL2HdKnODCazElrX2ACTfTha4KuWuwYTIquV+BtSG5/PgxQa0E/RRL+QfR4yVk8jItR
         JG+cMxLxUcD0dsdTAbcvpf/crlKSF2EFRtAV4TQPUXGFp/aC6gEay4x54O67SFVKxncO
         wXcPbDNmU0h+o0SNsW/QYRtKiwSIdakwRCYFLfCauK9AB57vfU5pommjf0bHKUTUqNIp
         kYtKCfnDqJzLfOFQxG1o5qjZckxvl7QcQmoj7pTVtezJjtw/lFGEk0HGJWdAJKCPU7WQ
         wUDA==
X-Gm-Message-State: AOJu0YwntWTH9XQXU1UsaqAoZXvJiU97C092IwcV/S673lzKSeMP4PsG
	i9ITynmXDkQSiKQOPItvB7yw2AIjO7GXZ/4iiro=
X-Google-Smtp-Source: AGHT+IGYCWMllKk1YJVlo0vkkZ7/pr2+AxRkQmuvz0cJJGAu02xeRnONnqUXAUTQHtY1poc2YH3VS8ucilR5KWrgphU=
X-Received: by 2002:a05:6512:3b0f:b0:50b:f3cc:13b0 with SMTP id
 f15-20020a0565123b0f00b0050bf3cc13b0mr307263lfv.62.1701856007049; Wed, 06 Dec
 2023 01:46:47 -0800 (PST)
MIME-Version: 1.0
References: <42238577-4DA3-4C9E-ACC5-8963E4E6FFE3@kuba.fyi>
In-Reply-To: <42238577-4DA3-4C9E-ACC5-8963E4E6FFE3@kuba.fyi>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 6 Dec 2023 10:46:35 +0100
Message-ID: <CANNYZj9_eaOd9CFJV5H7JH-XD562m1GMO2+=vSYOsDHi-wMHTg@mail.gmail.com>
Subject: Re: [yocto] Why was package not included in my image despite of being
 a runtime dependency of one which was included?
To: contact@kuba.fyi
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 09:46:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61812

You should look at log.do_rootfs for your image (in $WORKDIR under
temp/) to see what is happening at the actual package transaction.

Also, find the package which should pull in the one that's missing (in
tmp/deploy for example), and inspect that it does indeed contain the
dependency.

Alex

On Tue, 5 Dec 2023 at 23:27, Kuba Sanak via lists.yoctoproject.org
<contact=3Dkuba.fyi@lists.yoctoproject.org> wrote:
>
> I'm building a systemd-based image with Yocto I've run into a problem whe=
re update-rc.d (which is needed by a systemd sysv wrapper) is not present i=
n that image.
>
> I can confirm that update-rc.d is listed as a runtime dependency of syste=
md:
>
>     $ bitbake systemd -e | grep "^RDEPENDS"
>     RDEPENDS:systemd=3D" kmod dbus util-linux-mount util-linux-umount ude=
v (=3D 1:250.4-r0) systemd-udev-rules util-linux-agetty util-linux-fsck sys=
temd-serialgetty volatile-binds ldconfig libnss-myhostname      pam-plugin-=
unix     pam-plugin-loginuid     pam-plugin-keyinit  systemd-compat-units u=
pdate-rc.d systemd-vconsole-setup"
>     RDEPENDS:systemd-bash-completion=3D"bash-completion"
>     RDEPENDS:systemd-conf=3D" update-rc.d"
>     RDEPENDS:systemd-dev=3D"systemd (=3D 1:250.4-r0)"
>     RDEPENDS:systemd-doc=3D" "
>     RDEPENDS:systemd-initramfs=3D"systemd"
>     RDEPENDS:systemd-kernel-install=3D" bash"
>     RDEPENDS:systemd-staticdev=3D"systemd-dev (=3D 1:250.4-r0)"
>     RDEPENDS:udev-hwdb=3D" udev"
>
> And systemd is obviously included in my image because I can see it workin=
g. Also inspecting my image manifest confirms that systemd has been include=
d in the image.
>
>     $ grep -n systemd tmp/deploy/images/<arch>/<image_name>.manifest
>     283:libsystemd-shared cortexa55 1:250.4-r0
>     284:libsystemd0 cortexa55 1:250.4-r0
>     394:systemd cortexa55 1:250.4-r0
>     395:systemd-compat-units cortexa55 1.0-r29
>     396:systemd-conf txrz_g2l0 1:1.0-r0
>     397:systemd-extra-utils cortexa55 1:250.4-r0
>     398:systemd-serialgetty txrz_g2l0 1.0-r5
>     399:systemd-udev-rules cortexa55 1:250.4-r0
>     400:systemd-vconsole-setup cortexa55 1:250.4-r0
>
> And yet, update-rc.d keeps not being included in the resultant image. The=
 package name (i.e. update-rc.d) is missing from the manifest and the actua=
l script file it's supposed to provide is missing from the image rootfs.
>
> Why is this happening and what can I do to debug why this runtime depende=
ncy is missing?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61809): https://lists.yoctoproject.org/g/yocto/messag=
e/61809
> Mute This Topic: https://lists.yoctoproject.org/mt/103002275/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

