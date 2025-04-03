Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19F5FC3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 11:28:41 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.11076.1743679719432766870
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 04:28:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WbaXO5DR;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6eb16dfa988so7469576d6.2
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 04:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743679718; x=1744284518; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ukRJ7la3lWIyM2tMaK5IEVV4s0pFREdckcUKDH0zSXM=;
        b=WbaXO5DRY8fs+jTVy7f/ftQtf+0ndEDrPkAJAfxo1SFJ/bddciY7wqE2plWYCDFbNH
         etb20hkMf9ElhfsM8FSLA68dGJJmlORhBrDO0frhD09X1vsLJo1ZCu9iaYJjXMCyA4oW
         YrsU644bVE71taWFdL7I402ERQkL0xo3HDv/XZ3qOJiULUQe6WGbQVn7DyxoJC8BGqlp
         2dzfQCaulMZhAEe/Po8xRrgQoelNfrlgeAlORR+AtgZ4CmOdFWHeYZfXVl9sI1qss4JG
         mXEYazM+dRk6cq3xiPWcrBBH13QzMM2EsM/Eki8zFnfy9+O9ileVOSdMciIURFAnT/ke
         Z1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743679718; x=1744284518;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ukRJ7la3lWIyM2tMaK5IEVV4s0pFREdckcUKDH0zSXM=;
        b=tLX3cjjMkgrdLX+XcQySWqi6+O4f09QZi+f+7E+CFIE4fJjEc8th6xgXevMTsHtEqT
         NEQr/TWvYlnQedjLS1YOY2KQWmcX60yXpmSFnkeok/UvH5LTlw404yn9fY1kLZJGspdk
         szPRAYyIOFu0zA3ojrIUqg2XVknpupkdxXXNDEVufZMHgYyMwnpe4jKuSyOe/RPkj9NP
         ZyVZhXmQhXlF+3u1mSsE01ukGTDtRLNNqxtnfWjp0e9LPtcg+iiP6F0rvTunpovtAXxg
         ZuC20v8FscgEKOMrK0pYKRQlDPFBmiL2vhK5KSpvSe9czs2GM+7G3G7gaKP2B/bHdhLy
         +2vg==
X-Gm-Message-State: AOJu0Yw2cEYecYZfCGmFyRBhs7abNfBNPTtHAUq7mDLhDVCz1GIDTnj4
	Gpr588aUfq2XkObYnNw6D4AIHw7Gc4iszTaiD1LaXrgvNk97Qy+ZRB7ww4g9slTiNjgAI38TE6m
	Bdz7ZRO2C3q2dOevHVv7HzjEWEMZ7Nw==
X-Gm-Gg: ASbGncs90jaDDqQWJeFXMqP+tGvHBtrYfr63ArtWf3tOprd/zhKkTV/F77rpw/HplJ+
	CCjVTpgBr9cIwY/jMAwhbtB+lrle3q4qMbdXmTSqO/VwNJFMhwN7195Z8Ke/ZLCfydThXAa8D4J
	N6mmaG5MkKSW33k8pMY5xU1KbTDmX2ykFIb/XtnJGMu4GNUQbWKScbWFQzalK+2CMLvyLkKUM=
X-Google-Smtp-Source: AGHT+IFQQ72SOgpPE0KxPLO3P1vGvvjuo5xRGO2FVLJDgl94gX+gthRd6KLRlAf79ha3b9HIyxQfkHa3VwDldbQ15K4=
X-Received: by 2002:ad4:5f07:0:b0:6e8:eabf:fd55 with SMTP id
 6a1803df08f44-6eed625b85dmr299851146d6.39.1743679718367; Thu, 03 Apr 2025
 04:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <CE791ECA-60AE-471D-86AB-170EA3C58287.1@smtp-inbound1.duck.com>
In-Reply-To: <CE791ECA-60AE-471D-86AB-170EA3C58287.1@smtp-inbound1.duck.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Apr 2025 13:28:27 +0200
X-Gm-Features: ATxdqUEZTqOJVCqZ9teYvQs57nj97rOBXG5jJaciDDw_Xqgphp8jy75vnoLHUpQ
Message-ID: <CANNYZj8yu=dbOEaN6CzF5Eu0W+UrQar99WyrV+TG0M8vZ85qAQ@mail.gmail.com>
Subject: Re: [yocto] Update a machine configuration file from another layer
 depending to it (with .bbapend)
To: yocto@lists.yoctoproject.org, proffesionaladdress2@duck.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 11:28:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65074

You can define a new machine in your layer:
meta-mylayer/conf/machine/mymachine.conf

and then include any files from other machine definitions as needed,
and add tweaks on top.

Alex

On Thu, 3 Apr 2025 at 13:19, proffesionaladdress2 via
lists.yoctoproject.org
<proffesionaladdress2=duck.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I want to enable initramfs for raspberry-pi, by adding this machine specific configuration, through a layer (to make an overlay-fs on rootfs):
>
> # Enable uboot for rasperry pi
> RPI_USE_U_BOOT = "1"
>
> INITRAMFS_IMAGE = "image-initramfs"
> INITRAMFS_IMAGE_BUNDLE = "1"
> BOOT_SPACE = "1073741"
> INITRAMFS_MAXSIZE = "315400"
>
> INITRAMFS_KERNEL_IMAGE="${INITRAMFS_IMAGE}-${MACHINE}"
> IMAGE_BOOT_FILES:append = " ${INITRAMFS_KERNEL_IMAGE}.${INITRAMFS_FSTYPES};initramfs.cpio.gz"
>
> but the layer have a .bbapend file to modifing the uboot setting of the layer. If I understand properly I cannot change the priority of the layer to be before the meta-raspberrypi.
>
> I can also add it to a distro configuration like here:
> https://yocto.yoctoproject.narkive.com/YX6jam7u/possible-to-append-or-patch-existing-machine-conf-file
>
> but the layer shall be use with another layer that has already a distribution that modify the raspberry pi configuration.
> To keep things independant, I don't want to add the above configuration to conf/machine/rpi-extra.conf of other layer.
>
> I try something like this to my distro.conf file but I cannot use bash inside a conf file:
>
> for layer in ${BBFILE_COLLECTIONS}; do
>    include ${layer}/conf/machine/${SOC_FAMILY}-extra.conf
>     include ${layer}/conf/machine/${MACHINE}-extra.conf
> done
>
> The alone option I see now is to ask to add it to local.conf through a README.
>
> Best regards
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65072): https://lists.yoctoproject.org/g/yocto/message/65072
> Mute This Topic: https://lists.yoctoproject.org/mt/112063497/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

