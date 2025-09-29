Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60691CAC5B5
	for <webhook@archiver.kernel.org>; Mon, 29 Sep 2025 10:40:44 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web11.50450.1759142443081960008
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Sep 2025 03:40:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ej3jT9ew;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-85b94fe19e2so443573885a.3
        for <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 03:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759142442; x=1759747242; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uyV42JOfV4lqeBsp74EeA0NRMQNrEoQY56cw5Rnicjg=;
        b=ej3jT9ewDTOCSWd6MiutFgcdnA6vOkdA8gF8VIkZjqN0Q3dQ6zDfAI8twR/3B+zhnO
         mSvgXitHVB288ag1Q4CioYgjKIdyx+315dH1LvTfoLavUe6dEh6ZssvA78RvEKekTMIh
         4mSIEaFXNLnslkzU6h0P2xhuyw0mNxIeVL+lS8SRsNKl0iQPCA81X2nvlCgzE1EVVg92
         wfhfTlncmPUB+E8n4Jp1s8gGH3lVbgBYLbcn6YYbkU2vcubwqWfntgFSdMpppurMRJ5O
         Gv0f6JwgBWZ4xNuNNTZ0IKV+Ivg5wt9b8QJSRGtXnnaGxBi6E5lBvX5D7uqRUHcbpFqM
         Ui4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759142442; x=1759747242;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uyV42JOfV4lqeBsp74EeA0NRMQNrEoQY56cw5Rnicjg=;
        b=Vt94GRpGK6aeBXt5johSxeqPqr9puPc+E7ifcnkra3M2FAMqYe7JWWBWs1xAG/iArq
         X5Tz8xu4M+44+nkzudGhTJjVpikhQRWdMNI4z+T964CAdFbS0vRjyZXUVNFWF3pRTZpg
         aFfEsn8o+HJysYIU6GbkX4x4Qgd3z6dvQEZYrk0opeCQHQlmqrH3SeG4ytQfdn6HP+UW
         jtApblSEaZdHJODWjTeyukruxIYzH7IncO2Z1H09jKMSdfnFt4dNHMAPyTa+3bEVrHGz
         wvX6mCoelx8CZZxbcZjpMqcD5yQHnp9JkpL/6Cp2nFWzEZpa3YZd28LG4fkj+XKbzKkp
         HYDw==
X-Gm-Message-State: AOJu0YyeP9cIpK31wYaQzYsDG4hlAelJRimTD/onR42d7Zh4ZhiT/lDn
	O8Q/JJmRHknj0mpEsblqCDedg8zjOGvPE80fA3jmuduIVA0dsKs5F6c5SkErMCNkyXhKISvbB2A
	N4vrkA5LRvSL/LIBWmhtj71pR2h67N8xcsQ==
X-Gm-Gg: ASbGncsssqvz2He/kGaO8qzTDf3/19jleOq8zDiDnxqTgLraHfBE8dWwnNbNeTbPISs
	7zor+XVvrKSy0YjLUQoKa3IBgb5z+D6HjfTF6ytLPKMkONVPr7rAQWLyGJ40fZtL37VeKWoMQ65
	XbesO4ggy7HYSVdxC4tWLheC7hFcZwN7o7GIFwvuRiozCbnzuixIH2e/9Ud75ODjuBkSkLazZWh
	3fxLIJPsFLYd/yLTOwxrWIUj5i0B44WLYW1Ae8x+MPaQ0Brau3berQCJ5LicwTFkhIDpJYWEaPg
	6miMD27vULdzIN/vRRtY1oG3rOFxykL0S9gr7FwLpE99esZU8ls=
X-Google-Smtp-Source: AGHT+IG1j3gGYF5JC1TsMZ7HBW71wVc/Bo3cS4dDQyh4jZSKnCc3WyTjTTU1N5drYhK4JPEn9km2WlG1X9hv6BZ4aPI=
X-Received: by 2002:a05:6214:3009:b0:7a9:3d3b:fe92 with SMTP id
 6a1803df08f44-7fc2f4c5031mr240749806d6.25.1759142441966; Mon, 29 Sep 2025
 03:40:41 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8Yx_EkRLagi+ZgAVhHhx1LXPDve+HBdmzy17i4MHR-PQ@mail.gmail.com>
 <12545.1759142156172570349@lists.yoctoproject.org>
In-Reply-To: <12545.1759142156172570349@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 29 Sep 2025 12:40:30 +0200
X-Gm-Features: AS18NWDfs-x3XTk8ZFWHCKl3BJxK_tio_ZOxKHXWY8tQ7q8Lo52kgFed_HGMG5w
Message-ID: <CANNYZj-D4psxuu1wZR5D=SB+zDQdvF0pN+7TL1TcPjOgL8BqLw@mail.gmail.com>
Subject: Re: [yocto] Failed to fetc qemu-project/u-boot
To: yocto@lists.yoctoproject.org, nicolas@saliencelabs.ai
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 10:40:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65883

> DEBUG: Fetcher accessed the network with the command LANG=3DC git -c gc.a=
utoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --=
bare --mirror https://gitlab.com/qemu-project/u-boot.git /home/nic/ocs-app/=
Os/build/downloads/git2/gitlab.com.qemu-project.u-boot.git --progress
> DEBUG: Running export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRES=
S=3D"unix:path=3D/run/user/1002/bus"; export PATH=3D"/home/nic/ocs-app/Os/p=
oky/scripts/native-intercept:/home/nic/ocs-app/Os/build/tmp/sysroots-uninat=
ive/x86_64-linux/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/q=
emu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/python3-native:/h=
ome/nic/ocs-app/Os/poky/scripts:/home/nic/ocs-app/Os/build/tmp/work/x86_64-=
linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/bin/x86_64-lin=
ux:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.=
7+git/recipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86=
_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/usr/sbin:/home=
/nic/ocs-app/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/re=
cipe-sysroot-native/usr/bin:/home/nic/ocs-app/Os/build/tmp/work/x86_64-linu=
x/qemu-xilinx-native/8.2.7+git/recipe-sysroot-native/sbin:/home/nic/ocs-app=
/Os/build/tmp/work/x86_64-linux/qemu-xilinx-native/8.2.7+git/recipe-sysroot=
-native/bin:/home/nic/ocs-app/Os/poky/bitbake/bin:/home/nic/ocs-app/Os/buil=
d/tmp/hosttools"; export HOME=3D"/home/nic"; LANG=3DC git -c gc.autoDetach=
=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall clone --bare --mi=
rror https://gitlab.com/qemu-project/u-boot.git /home/nic/ocs-app/Os/build/=
downloads/git2/gitlab.com.qemu-project.u-boot.git --progress
> Cloning into bare repository '/home/nic/ocs-app/Os/build/downloads/git2/g=
itlab.com.qemu-project.u-boot.git'...
> fatal: could not read Username for 'https://gitlab.com': No such device o=
r address

This seems to be the issue.

Alex

