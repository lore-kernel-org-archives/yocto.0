Return-Path: <aravinthkumarj1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A91FC77B71
	for <webhook@archiver.kernel.org>; Thu, 13 Apr 2023 06:34:31 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.6169.1681367669987605399
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Apr 2023 23:34:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=BkYmX1WL;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: aravinthkumarj1@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id v9so19496874pjk.0
        for <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 23:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681367669; x=1683959669;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pyKNGrH46i12lhW1OyN9Su2CIvno0NfvWgr80q0ulTo=;
        b=BkYmX1WLQcIVIPdChe3nW4A4aQdLHS3XSjwHu3CzFiS2uiBg3hjX+zo1p7GYpm1NsO
         KXoUqbUw8fRt7tn7IhSFZdRCV7MQ1VjyLxJDzj4eECq6nZ3mEuTRBH4+NBs8TLTJXMjG
         sLlzO5XGnM/UKpJVXKrgsLWCOCqSO/Apw7dwSrcTT4DSyvjgu7RZreR/w8JPrMQs9Vw3
         qEoBE0R42Kvv54usCWkJywBEKdgYFlnyf4QCb7lyrK+rCHGVwgxW939AK05ZVaKErkcO
         vn5j5n5LIn3CIMdChsCTvTt6kOZeZP7TlMT6m+eDzOITitSOkfcxGZZxFtsgpY1diGRj
         jVCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681367669; x=1683959669;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pyKNGrH46i12lhW1OyN9Su2CIvno0NfvWgr80q0ulTo=;
        b=OFiyBJgLokn5quLm0Ss/dFuqucVcfCLzTpd9ztKRQHXNvcq6d4213s5oPIj+SbCR5F
         xVT7eoItuKY+rcKJ+Pl0TS9r7lyfxoxaL28AGYafrHMloTsyWv8khhbrFNW93IvGz7nO
         UpzajeiEH5pZ0f4KfHKUYXg5zQYU/bA1Yc5YY8GjU/6Xeq5n2K4V7UOdKwgSiPbcOvVJ
         boF0nAlk0hNLOa50wzJ6wgKmR/KwLoeKyBNSG1FfJDPa6sioZWXPJ+GKIK3W1aJ0ztx8
         o6FzLcBZV5LdPN5mD2o25sFF0Ko7m1OzooO7M9PgHeo7bfqzYazNYM1pwzidXsmM5DI6
         YrQg==
X-Gm-Message-State: AAQBX9ea4q+/YL5u0e0b22xGk1zWZpaWt3cMKxasWy6cjTXcBEMlHGvf
	+eGPnPQUjL9BaR7nMH7mnU+xP19wVV7Y4AkR0aOsKUn8aJYs986X
X-Google-Smtp-Source: AKy350beaMr4HSzsdv6QfGGBKiVZilYOGnfFdeXIxICu12nYbacAIn4KAuEuyBnsBkGA/QUAsPCRPb89aDuRxVYoNGA=
X-Received: by 2002:a17:902:ceca:b0:1a0:d6b:1211 with SMTP id
 d10-20020a170902ceca00b001a00d6b1211mr308390plg.6.1681367668960; Wed, 12 Apr
 2023 23:34:28 -0700 (PDT)
MIME-Version: 1.0
From: ARAVINTHKUMAR JAYAPRAKASAM <aravinthkumarj1@gmail.com>
Date: Thu, 13 Apr 2023 12:03:53 +0530
Message-ID: <CAFsAJjhnWP_=RtXZuiw9EBq6DR3FgMObwXbRcOPiGyN9WaXY0Q@mail.gmail.com>
Subject: Data corrupted error on dm-verity
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 06:34:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59700

Hi Team,
I'm using dm-verity in yocto Linux 5.15 on the imx6dl board. On boot
when device mapper creates I'm getting a data block corrupted error,
Can you please help to fix this issue.?

Error log:
# cryptsetup 2.4.3 processing "veritysetup create rootfs
/dev/mmcblk3p3 /dev/mmcblk3p2
11757d96406b3407f8ab9109908c451a061c2fd1e66a38f830bb31ebc4cb5b51
--debug"
device-mapper: verity: 179:3: data block 13040 is corrupted
Buffer I/O error on dev dm-0, logical block 13040, async page read
device-mapper: verity: 179:3: data block 13040 is corrupted
Buffer I/O error on dev dm-0, logical block 13040, async page read
[    6.115793] Buffer I/O error on dev dm-0, logical block 13040,
async page read
[    6.130642] Buffer I/O error on dev dm-0, logical block 13040,
async page read
[    6.348502] device-mapper: verity: 179:3: reached maximum errors
[    7.966201] EXT4-fs (dm-0): unable to read superblock
mount: /new_root: can't read superblock on /dev/mapper/rootfs.

TAGS:
#Yocto #dm-verity #linux5.15 #initramfs #dm-verity-initramfs #veritysetup

Regards,
Aravinthkumar.

