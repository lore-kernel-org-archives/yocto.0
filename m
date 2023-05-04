Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4722EC77B7F
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 00:04:33 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web11.37838.1683158668180520284
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 17:04:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=NBboSHMA;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-549d9c295dfso3417041eaf.2
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 17:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683158667; x=1685750667;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98H7lgS//IuBXYgle0S2tzdb3X288qMrwkXfdFrHX/w=;
        b=NBboSHMA/lWaM9uWcLHYSujJBWmmEMM5csKuPtnfSBolY3b0SexJV823YLwd5Zgpav
         ahpt5reKYsp7LvRyo8inBjlqKSk0QaOHmSHZztREBnRbJzHNb+pwKjHwbvKU2ncVYoo+
         fj4zjIvKlLqlFEpF7JZamC15xkb4NS9LTbevYQvRKeVcJIfpiXVs/Mqqlw7RU+7wLeNG
         szWbEzCktad++RJHcLVbwFqQBEzffYv3S9SXcOugozLPh9BXM0W+8SyGqKLicP2xVHvw
         BaZQiUv9oVc9wCqDl/sl/as01QQRgGkdmxUWHTubFlxJ3IJk4Djh+bf5zm1hXrBRoFgv
         0whA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683158667; x=1685750667;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=98H7lgS//IuBXYgle0S2tzdb3X288qMrwkXfdFrHX/w=;
        b=mH7YYtOGV7RMfDK45xLD9Jz4lmXLkf0QZzGABL8A7tgjgoUkn5HZBrgLdnwTbvONLB
         cL5gxACMU7W2dk58kkx8KYyiVW9WnhgyM+xlXtc4V0F+vy7QZJtXuZV+CBmhFpd6dPKC
         AdpHW37XJ3lcfjLkL8zY3vUEoFybd+TmE82eaUI3NaZvZ6Map1chQz/fBUmUT5rxYwbf
         z5MCIG4B1q2KFYv8DcUY5ZxV59q4SA2af8Vkik2szqFPIrnaZ7Eq6LIrA4WLJ+0mkGP6
         9fzUwL3pWtOmhR4veLb923q/xkpWxGdktSBoZks/KqUBjxQZjxmLN1vcNtYYhvi9h3qC
         7wZA==
X-Gm-Message-State: AC+VfDwUEP9Wov7IyViW6rDvIISHUztEnKIF1rxJRmuJ3rNn0+Trrnx0
	cNDIVc94c4niN7Ac+aKqsanuPVJdrWfTbrIVEH0=
X-Google-Smtp-Source: ACHHUZ5BReR7ckHkqxSbsxqossLf91Je4lHJBEYvHO5ey562rDvYthkgBkBSogoRak/48GGSm9bfwjiWT3PlP1jjzA0=
X-Received: by 2002:a4a:e5d8:0:b0:546:f42b:685b with SMTP id
 r24-20020a4ae5d8000000b00546f42b685bmr11068799oov.5.1683158667173; Wed, 03
 May 2023 17:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <VKUe.1682800714003679431.WCUu@lists.yoctoproject.org>
In-Reply-To: <VKUe.1682800714003679431.WCUu@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 May 2023 17:04:01 -0700
Message-ID: <CAMKF1sptmfdbM89zgg0GSKiHU31CTj4YZHegXwEskgDmKbm+tg@mail.gmail.com>
Subject: Re: [yocto] General bbappend for virtual/kernel recipe? #bitbake #yocto
To: Livius <egyszeregy@freemail.hu>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 00:04:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59861

On Wed, May 3, 2023 at 1:00=E2=80=AFAM Livius <egyszeregy@freemail.hu> wrot=
e:
>
> Hi,
>
> Is it possible to make a .bbappend file/method for virtual/kernel of gene=
ral linux-kernel recipe? My goal is to make some same append script for sev=
eral BSP linux kernel recipe. For example i like to make an append for linu=
x-xlnx.bb and linux-fslc.bb and so on for all linux-*.bb recipes with some =
further bash scripts/taskses in a general single bbappend. Is it possible s=
omehow in BitBake/Yocto?

This would require bappends for all kernel recipes you are wanting to appen=
d.

>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59849): https://lists.yoctoproject.org/g/yocto/messag=
e/59849
> Mute This Topic: https://lists.yoctoproject.org/mt/98657112/1997914
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

