Return-Path: <mail2akash97@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C85C52D7C
	for <webhook@archiver.kernel.org>; Wed, 21 Aug 2024 13:15:44 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.19384.1724246141293428477
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Aug 2024 06:15:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=O169SYxD;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: mail2akash97@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a8657900fc1so193055466b.1
        for <yocto@lists.yoctoproject.org>; Wed, 21 Aug 2024 06:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724246139; x=1724850939; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wc1qO0ka/5e/TAzJr/qe3WtVFhpid+PsQxGBN7DVsU0=;
        b=O169SYxDjza9kwXWM4WTmBj5uxB+zPaeYeePD16VqNh4aAMiUfKc/x4oIia5mV0LvV
         d8hWjj2ig5RHjJMkeWzj9SxP6hGkMsc3danP63TTG9etvODXCKEUdM7OmcdA+AEmK+GK
         taSE92u4EGQQKU6U0RDZEEXWmdvNRrZLHgzBmMu3bVJqW0F41DlZVfeJ7Ghw+bXKV4eS
         G4hbge/0UvWycmQ9QvGr8rIgk11GxMzW96jqIx66JoAVfEIiMqG0MjLGVie/3xMLJKFf
         puwvSqe1+olt3lgYDIriOz8shD5H5SpanBI2wRjc1P0M6+kFRENmLSv/qd7e8PpCyazK
         lNbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724246139; x=1724850939;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wc1qO0ka/5e/TAzJr/qe3WtVFhpid+PsQxGBN7DVsU0=;
        b=h1QJczuPlF7QmKoPNwzGFHHp/I5IVoyprbUroM8PY/7BH99ivS7ca7O+OrFG8+LQUZ
         CqwPNIE3cJ2vzL+SjwcF6XynFTqlot+9lnSq+5pTUQu0PNCptU8AGvCEtrXarPnN4Hf0
         Bkzof2rCf/5st5ItZsuxKq+feNHUAw0BgZyAo8N1ThOToHegBSStZ51tg5TlhcFaqKlT
         nZ12khu8E8BnHQ4EKph/lz8ymdwvTu5OCU7a+qunau892VRsSVmeT8XeO87Wew7n96eL
         l0PPaoWNaVCFijh/qaX7M5iL90qr7P/xvKCJLonileBZrY/JINKdGlkEuiurMtxxHHbo
         ve9Q==
X-Gm-Message-State: AOJu0YxsmxeYxIqCsrvAykmDKtZaI25jjKWEovnTOBgLtieqM8B3XPCR
	jXK/i5cUdT6sWsxLrmsYWGf6IDFwh3DgqonUA/EC2JlmQbBchW9VBfsJLkb8vftBcmSDV/h3G5z
	p+NWbxgTbKZNefndxw7/YNK/U39iHyk9p
X-Google-Smtp-Source: AGHT+IEBhcTGhsHo5vete1mR0g9r4ZTCmCfj+utL2gRY5egSwnCEWeFNrEvFCSvU7fAa6yHP/IpcCAu+XcspP1lXBhk=
X-Received: by 2002:a17:907:a089:b0:a80:f7db:3e7 with SMTP id
 a640c23a62f3a-a866f10a0d1mr179313066b.5.1724246138506; Wed, 21 Aug 2024
 06:15:38 -0700 (PDT)
MIME-Version: 1.0
From: Keerthivasan Raghavan <mail2akash97@gmail.com>
Date: Wed, 21 Aug 2024 18:45:27 +0530
Message-ID: <CAK2J2tQXOWRhP02YDXmZzBzHfgOGz30a2CxK9EwBSsxACq+9Bg@mail.gmail.com>
Subject: [Help/Guidance]: 32bit user-space in 64bit kernel arm/aarch64,
 migrating to 64bit
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009758e106203156d3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Aug 2024 13:15:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63732

--0000000000009758e106203156d3
Content-Type: text/plain; charset="UTF-8"

Hi All,

I am aware of the multilib feature that yocto provides allowing one to
compile an entire userspace in 32bit mode but with a 64bit kernel by
prefixing the lib32- before the image name as in lib32-core-image minimal.

* What are the disadvantages of doing such a thing ? My company is trying
to do a phased migration from 32 bit to 64 bit and we just want to update
the kernel first to 64bit and retain the userspace in its original 32 bit
form. How will the kernel understand 32bit structures on a 64bit kernel
when we make ioctl calls into the dev nodes ? what about mmap ? and orther
core connectivity related things like Bluetooth and WiFi. Will they
continue to function as is or will they also need to migrated to 64bit ? I
cant seem to wrap my head around how core system services can operate in
32bit mode on a 64bit kernel given issues like:

https://www.linuxquestions.org/questions/linux-general-1/64-bit-mmap-in-32-bit-userspace-4175640060/

what such issues lurk hidden is the fear for not doing this migration.

* How do I get both the 64bit and 32 bit libstdc++ into the image ? adding
lib64-libstdc++ into IMAGE_INSTALL is giving error in the image creation
phase using debian packing system stating it cannot find lib64-libc6, what
gives here ? This seems to be a side effect of the debian.bbclass except I
cannot wrap my head around how the package names are translated.

Anyone here have the prior exp of migrating components from 32 to 64 can
share their approach and strategy for such a migration ?

Thank you,
Keerthivasan Raghavan

--0000000000009758e106203156d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi All,<br><br></div>I am aw=
are of the multilib feature that yocto provides allowing one to compile an =
entire userspace in 32bit mode but with a 64bit kernel by prefixing the lib=
32- before the image name as in lib32-core-image minimal.<br><br></div>* Wh=
at are the disadvantages of doing such a thing ? My company is trying to do=
 a phased migration from 32 bit to 64 bit and we just want to update the ke=
rnel first to 64bit and retain the userspace in its original 32 bit form. H=
ow will the kernel understand 32bit structures on a 64bit kernel when we ma=
ke ioctl calls into the dev nodes ? what about mmap ? and orther core conne=
ctivity related things like Bluetooth and WiFi. Will they continue to funct=
ion as is or will they also need to migrated to 64bit ? I cant seem to wrap=
 my head around how core system services can operate in 32bit mode on a 64b=
it kernel given issues like:<br><br><a href=3D"https://www.linuxquestions.o=
rg/questions/linux-general-1/64-bit-mmap-in-32-bit-userspace-4175640060/">h=
ttps://www.linuxquestions.org/questions/linux-general-1/64-bit-mmap-in-32-b=
it-userspace-4175640060/</a><br></div><div><br></div><div>what such issues =
lurk hidden is the fear for not doing this migration.<br></div><div><br></d=
iv>* How do I get both the 64bit and 32 bit libstdc++ into the image ? addi=
ng lib64-libstdc++ into IMAGE_INSTALL is giving error in the image creation=
 phase using debian packing system stating it cannot find lib64-libc6, what=
 gives here ? This seems to be a side effect of the debian.bbclass except I=
 cannot wrap my head around how the package names are translated.<br><br></=
div>Anyone here have the prior exp of migrating components from 32 to 64 ca=
n share their approach and strategy for such a migration ?<br><br></div>Tha=
nk you,<br></div>Keerthivasan Raghavan<br></div>

--0000000000009758e106203156d3--

