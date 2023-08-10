Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49860C04A6A
	for <webhook@archiver.kernel.org>; Thu, 10 Aug 2023 16:25:57 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.22020.1691684748896412673
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Aug 2023 09:25:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=J28daD5O;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-4fe28f92d8eso1691709e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 09:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691684747; x=1692289547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dwc5Hfcgx6Cx1Bvij2cdrsZFyOfneMwGK9pcaOYHCcE=;
        b=J28daD5ORtV3E1w9Jzov0UWfp2UBe6qdxpsRlbkY3ClI0MlTP2KAI9aWGEujv2DGBm
         iMM01LxfPKxnsG9fLp9lAh95MlKKBTUpDgg8Xbr0zk3sodOZ3d9SbzutS4TbQcvWbjhk
         nLgJj1W5HLsDrCoHd1zOLxlWQWD8egIH0LS4dgS4g7p/DvkHEwi5BUHQ4VgRfifY+M4N
         YT5sdgDrwxWWFgMc/PORu7qzxlPreOCpkWmz9fBcYG0C/p6+r2kDUlOaQR1vyBu+k6vI
         6pEHbE/47NL9MjNB/chuMwszOTZ+QXmtEL1bwgLYuh8RlL2Gu1lCqwVx1k7IE+Jdt+uo
         iy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691684747; x=1692289547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dwc5Hfcgx6Cx1Bvij2cdrsZFyOfneMwGK9pcaOYHCcE=;
        b=FzxGyZX+VwKM/z0yG2UWi8+TftvkSR4kgt/7a0kaK77cqFnYbJ1fQB6nDeXmfTRfqc
         Too3wpQ0elTC2blOb2ZLet7nGa8c2K1yUmXgQLGJzi6INhRNotHhRmRV0H4GgZwLJDbG
         STVNlLOBUvTxtgDaBriqs6kDMAoxUHFAktfyMTHpyEB87DWjFxZw8iwd/JOrsXkwVq31
         CqCbkXZ3dIWvfRQabu4nUJ4Zukl9X7ZeVgrRZ7eKKhvkudDxz8URDy7Q344uVKcFrgd2
         erBNeFBuOaNaICCNvR98k2E8sZhHXXGlmJ7w7R6dycFMdDIJmKf7HVviJolnqhlA109y
         0SjQ==
X-Gm-Message-State: AOJu0YxmEnJE3hLm4hGCWFTW6a7LO3vi9IOhpOSjid25ZMTgmvFezcuF
	oglrxB3lEHrToDQc2VRZeB+ZNOKFAl4KhgraahU=
X-Google-Smtp-Source: AGHT+IHBrrhN2g6MmqgFep6bG++J1+xGS6AmXTodwidmxuZR9/kxM90RieG3j+pWjt2b0PvovW+dV5cGNiHAE0nq734=
X-Received: by 2002:a05:6512:3a87:b0:4fe:cc2:247a with SMTP id
 q7-20020a0565123a8700b004fe0cc2247amr2809290lfu.49.1691684746846; Thu, 10 Aug
 2023 09:25:46 -0700 (PDT)
MIME-Version: 1.0
References: <62798ed9-66a8-0e70-0670-a48bf24d7e50@bootlin.com> <19617.1691664707457266313@lists.yoctoproject.org>
In-Reply-To: <19617.1691664707457266313@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 10 Aug 2023 18:25:35 +0200
Message-ID: <CANNYZj_0NnuZ604gV+ZXBdXtSxQYbnnkGoukvaAUA+D3=Zo=dw@mail.gmail.com>
Subject: Re: [yocto] How to migrate an older version of Yocto?
To: msenturk <senturkmurat1999@gmail.com>
Cc: yocto@lists.yoctoproject.org, mark.hatle@amd.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 16:25:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60773

You just need to switch all the layers to the needed branch and run
the build, and see what happens. It's impossible to predict that until
the build runs and fails in some way, but when it does fail, we can
offer guidance, or you can look it up in migration guides first
perhaps.

I'm not sure where kirkstone went in meta-xilinx, but you can just use
mickledore.


Alex


On Thu, 10 Aug 2023 at 12:51, msenturk <senturkmurat1999@gmail.com> wrote:
>
> I looked for Kirkstone but there is only a kirkstone-next layer for meta-=
xilinx repository: https://github.com/Xilinx/meta-xilinx/tree/kirkstone-nex=
t. I actually don't understand what the difference is between these normal =
and -next branches. My guess is they create them for the uncompleted code. =
Once they complete the coding, they publish with normal branch name such as=
 "kirkstone". Therefore, I am planning to use Mickledore: https://github.co=
m/Xilinx/meta-xilinx/tree/mickledore. Alexander Kanavin's explanation is al=
so something I'll care. Can I migrate from Gatesgarth to Mickledore directl=
y or do I need to migrate those version one by one? I read some of these mi=
gration guides but kinda didn't understand to be honest. They seem more lik=
e giving information about what they changed with the new version instead o=
f what you have to change to migrate this version. Besides of switching bra=
nches, do I need to download host packages: https://docs.yoctoproject.org/4=
.2.2/brief-yoctoprojectqs/index.html#build-host-packages. Thank you.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60770): https://lists.yoctoproject.org/g/yocto/messag=
e/60770
> Mute This Topic: https://lists.yoctoproject.org/mt/100525085/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

