Return-Path: <stephan.muehlstrasser@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4464BC83F12
	for <webhook@archiver.kernel.org>; Mon, 28 Aug 2023 06:16:37 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.7878.1693203389102356929
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Aug 2023 23:16:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=eV+fOSO/;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: stephan.muehlstrasser@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2bcb54226e7so33402521fa.1
        for <yocto@lists.yoctoproject.org>; Sun, 27 Aug 2023 23:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693203387; x=1693808187;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lwg2kt+FVPCI2nbvKqKDnOVGSyBYeFVm/Dh2DeUAYmw=;
        b=eV+fOSO/VZXQ0Yvjp1QsGu5EuQAy3vrx1hEDO2BuWNazRphi7jQdKkd0mxj/R/ug5L
         C95xpZVDsu1xHVfut+fGNAEwW/3Ogb6x1jveGqDDGu3snY9hpRFhrH8i2+lomtLhewzZ
         MUpUb/n/BRaMIm4sXBWSp09LF6F8MIeuUYjvXp9j8U/o2IGRKdfojaCkJHkZs5Ny+0IS
         6ZvB+9HlG3mk6fx5tA3WODvSJmiZre5fqKgcFtBh/j7cWKKFWoySHJPB4mE7aU6+rVMH
         U+JEt1UMqCTrHOuuhneGeBcN0Q77co9GdZP1fRwsFuoSdzh9KANsXi0TWJIQItjswJjR
         0bfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693203387; x=1693808187;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lwg2kt+FVPCI2nbvKqKDnOVGSyBYeFVm/Dh2DeUAYmw=;
        b=kRERHloGhEW2Zw16+8QtPL+kE8nsiZcbyFXTd/Hb03T+zp6QN26KobAVSQY+4JXNCa
         01F8MauIXl/ndv1rOWWzip7btrfcUQ2hkbEFjTU5EPDdK9bHwiJJp6F8ZG59n+rgFrgM
         /cQYzga7kYI1dl/FhmlOZCsbIR22ReeitU85Pya8fDJ73ansdeV2nVPR5oXCZtUO9QjO
         eyh3iDHoBLUCEN3b6OhIadgeJQH6bXvc2BV4Mt6ZNRi14dgHRpjariyKaDVeTgFHTFrK
         twxsrTBp6VjpWDsbyT9JuZzRO5+DDoNJFeJgxqEfCvV76i9Q59UVNT2LusUPlSjHndVT
         0fZA==
X-Gm-Message-State: AOJu0YxVDm5h18xPp8lCk9LnUilObzsradO1cW8so1IWsY28g2kj4EmK
	VXzqRqc7fz2nPYL3kSZHkDkzmguxGYAFM4JF7Fi3epw=
X-Google-Smtp-Source: AGHT+IEw8fAFSciPo2Y/SDpQDxTIcJgXhGNrgl1aQYh9bCpNReK1zWYC91QSW+FpCDBF7a4xs1Ptys3N/ZamxH3X1PA=
X-Received: by 2002:a2e:a278:0:b0:2bb:7e3f:3cc2 with SMTP id
 k24-20020a2ea278000000b002bb7e3f3cc2mr8397717ljm.2.1693203386984; Sun, 27 Aug
 2023 23:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <o2S3.1692955198371059896.EMq5@lists.yoctoproject.org> <CANNYZj9=HgFoctp0=_soxF6Wv3R8G5Og0SpEFL0y7CbbXRxJuw@mail.gmail.com>
In-Reply-To: <CANNYZj9=HgFoctp0=_soxF6Wv3R8G5Og0SpEFL0y7CbbXRxJuw@mail.gmail.com>
From: =?UTF-8?Q?Stephan_M=C3=BChlstrasser?= <stephan.muehlstrasser@gmail.com>
Date: Mon, 28 Aug 2023 08:16:15 +0200
Message-ID: <CA+_BhBzFjDjrmWW6y22kHc_s1EkXa7ee9REMBDTDQMP+eDXidg@mail.gmail.com>
Subject: Re: [yocto] "Replicating a Build Offline" not working as expected
 when Git data is removed
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 06:16:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60898

Am Fr., 25. Aug. 2023 um 11:28 Uhr schrieb Alexander Kanavin
<alex.kanavin@gmail.com>:
>
> The documentation isn=E2=80=99t perfect. Sometimes it becomes outdated an=
d no one notices, or it may be inaccurate to begin with. Personally I would=
 never tamper with content of downloads and preserve it exactly as it is. D=
oesn=E2=80=99t have to be git lfs, plain artifact storage options work too.

If it doesn't work as documented, could someone elaborate what is
currently necessary to replicate a build offline? Is it possible to
reproduce a build only with the tarballs or is it actually necessary
to keep the cloned Git repositories in the download directory as well?

Thanks
Stephan

