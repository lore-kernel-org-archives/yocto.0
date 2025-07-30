Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD453C87FCB
	for <webhook@archiver.kernel.org>; Wed, 30 Jul 2025 06:41:27 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web11.29085.1753857682052311504
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jul 2025 23:41:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lwSUGkOl;
 spf=pass (domain: gmail.com, ip: 209.85.219.181, mailfrom: raj.khem@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e8dfa190de4so3419493276.1
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 23:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753857681; x=1754462481; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TARAZV52+1YPlWu/BT3VAvLhVDMxedUZwOrOzBQXag8=;
        b=lwSUGkOl3X5IuSyn+2rwi7i2deIUSkErM9e2N++7N+0Xu0oTcALlcZbPhSaqIwH/KW
         1hRDDIJ9bEPnjpGRDcLOnj4YgFXxrVLfdeNfeu0YzjRKtIqwt+YGcobJZU6ihJSnpymz
         lpPkuYBUkf+T9zUlHCPdOy5RAdgIfhyPDxa2f1nRSzG0orQV1LtVt/UVCn4Tk6//1Gvg
         eqq72RjpVH7NF7+wmn4cdZ9Tk67y2p+KbVqOFbhkAkXgaL78q+QeYPLVSgIIbkjjWdHy
         mIfuvFZgnyVAd9BH1aD3ogi+O+LlBV6AwbevHK/qBflU5PNRzv0ydHZS4yqxFnmToMZn
         gdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753857681; x=1754462481;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TARAZV52+1YPlWu/BT3VAvLhVDMxedUZwOrOzBQXag8=;
        b=hCA/F/BQbMhsaSGsAnSqtzWJH45WBntUqTaDDgMmHhpX52rixTucqYPnUn2pgGyAwz
         QExevv33eQIDIMNB4/bs7EonXTNUxvjUGyVKBn4asbB5nhhMG0uxMQnIM8Q2e4GNKm7W
         mqy0Ehn4HdLOZem/OVUqwQOrSPzXZugB8BZ1SWuwUCebaWAAZNHxYhYTileF+dNeVTjQ
         iuudclr5On/4xNtqDQOSho3FF/9Ahqm2bN5DmPxJel0u/mpwrvDuIpaMDxGzVNVqjw5i
         UeqccjF7nzPcA3TDAoINwi98TRUb6+rRvuaJBGKvhah+XvE9coRZx61vACkPZUB1QabW
         pQpA==
X-Gm-Message-State: AOJu0YwlO8ryzm2tXiSiQe+DQGOYaF8zJBBkEdK3SgHxKaFXCCldk9EP
	YRaDKVoQzAuVvT63p9D+O/YWv18jyOWNUMf5QAlL+NblaJcWXmbq/Z/bt/zj7WJXQ5G3dPtsHoK
	kMPD/Pj46p2jeACttgp3KqljTvEuE1G56N1xkWio5Rg==
X-Gm-Gg: ASbGncuF6Qs5HpUmWwg/Z1hPbPhhJjficxg65yeLta3W41kSoR/7XbBdslDcuqI8vU7
	X9xqlXGCpxH0U2aTGoGe8qiox7aIyxXUWpUrk0Lo4gjfpJewSO3TJlrTHjsn6XuDvyy4Q7fat3v
	i2BItSzAFbZZCHb9bzbSxxEv7k5pawwBNYoRQPlCVXWNPW2uDSuFw/AjixfV5YacFenmy/sP2LT
	9jEgZH9buFwJZnUR0k2CzP+WxFLdyOZUUirl1SJ
X-Google-Smtp-Source: AGHT+IHWPUnNoSxv+uvKcCELNHhopk3ox5FRmizUEy6QNx5HFJrzVAJUSFI66pM5jbLqNUXXknGEFZ+5yANAqaBhHJ4=
X-Received: by 2002:a05:6902:1b08:b0:e85:e81d:9e20 with SMTP id
 3f1490d57ef6-e8e314b4a7cmr2849389276.8.1753857680693; Tue, 29 Jul 2025
 23:41:20 -0700 (PDT)
MIME-Version: 1.0
References: <0Cse.1753855070027816761.5DEM@lists.yoctoproject.org>
In-Reply-To: <0Cse.1753855070027816761.5DEM@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Jul 2025 23:40:54 -0700
X-Gm-Features: Ac12FXze_W1_Nm63zGHnhx-H5GrRbUAfdH81mFCmHhCLULcKQWMduP_qtNMJXwY
Message-ID: <CAMKF1socXrLW1yvZRTdf_rim9LuR1kjyBd2rd3r7eh5HcPLX0A@mail.gmail.com>
Subject: Re: [yocto] how to support a new machine at Yocto
To: yocto@lists.yoctoproject.org, arthur52666@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Jul 2025 06:41:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65722

On Tue, Jul 29, 2025 at 10:57=E2=80=AFPM arthur52666 via
lists.yoctoproject.org <arthur52666=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Hi Team,
>
> I am working on supporting a new machine(Marvell Armada 7040 SoC, Armv8 C=
ortex-A72 CPU)) at Yocto platform.
> Where can i get some guides or documents providing a sample to bringup a =
new machine step by step ?
>

you may start looking into
https://docs.yoctoproject.org/bsp-guide/
but its good to ask Marvell if there already is a BSP layer for this proces=
sor.


>
>
> Thanks
> Arthur
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65721): https://lists.yoctoproject.org/g/yocto/messag=
e/65721
> Mute This Topic: https://lists.yoctoproject.org/mt/114444345/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

