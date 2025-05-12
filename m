Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B440FC3ABBC
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 08:58:11 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.45815.1747040288929021430
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 01:58:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=diNWBQHu;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6f6ef597120so15487436d6.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 01:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747040288; x=1747645088; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UHMqstkmC2fBKzeU7DF3xp8jFD7331Cg9h9SDP8EqJM=;
        b=diNWBQHur+aTMCu987pO4VPkKVyZnWq+8egAgGDsqiCYYVud/ZyuxjcueSJKq9KYn/
         mbL6bYUNKNnPCXaaOiVk1CZYzqovfuhKvX6OGEyowjEfEF82Q/7gRLL6GgqLE6Da/aEb
         ieMqWBpxLdXtj1zx/HKVDUXfCbPqkn1Yb6nYsIzQsUhA9GNvA6vTn8fQO2qLP4SEUPTc
         PDSuqtLJ8cw7iRXJvjc0ykcwWvMd+ZKd4tgPeE3V9+rN+5HDlbjr44zSN90AV8U8LLtq
         hzdNdeySw++wYuqDr+23HAw21K3zSDaOEyr9GpM+kPgJ5rGl5C2K8dFNTR82B4ADNn7q
         e9pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747040288; x=1747645088;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UHMqstkmC2fBKzeU7DF3xp8jFD7331Cg9h9SDP8EqJM=;
        b=kFVYtlp5c9jdYNwdIQ/OTeqo+5UI/6nwJAFzbk8DjpqfVM2McvZ+VJezV/SyptjNr8
         P/IJSnWFgqVeuXDyaUrupYrLncIkkobPUfWPF/ZD0bdUzzYsCjbw86eXc0ZgFiLOMZxo
         IYqBhX8+JR30UuamdcsMhrxKPKrh42hyTLmU9ziiZGtcH+bM9LBd0ptr0dOanMzC/v76
         GVijKiyHRLu3YxRSA71Qpep2jx8SuutYMFf84tmVbHRUojD3OBLFrGzXeZ+5+BD4xCFP
         TSZ4LK/OjMtzyUtvMpk0VmIL3vvHCDo96jZUABvDUphEWAnE9wYSzB+0DFQXHPcrQaQZ
         +XcQ==
X-Gm-Message-State: AOJu0YwSHNE8SjJrYu+uFArEvR09k6wam69anqIU1z8BN+ixgu1FIGel
	M8rUmtcz/NU1cESMK83YbzTzuhCLmUmGe12jWGUI2dfgIV/Xj7QFaeJGA+1JHrqGiVT9KuKjbHr
	N617uU63HJXOwGvommmjHkXmPsKXx6g==
X-Gm-Gg: ASbGncvzH60mJ/w0WQWR5pVvgYPqOMutoMD7WkOb5SYAKm+rJD/vtOCHvzZkOgI4lEC
	cKCgtuiHwnJPrJDafzT2MwWjHKBtX/9nUCoppNGHp7HPWpP7KcEtYKOLBr3VrpyqWbECyr/pvtE
	qez+y93CVrLpIjFcftXO6lhhCd4QaGAj1oWw==
X-Google-Smtp-Source: AGHT+IHdIlU0p7AN30nKO9iQrGhCO32fEhtJ2P/vUh3EdjBzRi1OjZ+aLC9jpUDd9EVZnq8jZoGH9LQcvd8bYBCmAec=
X-Received: by 2002:a05:6214:2245:b0:6f5:1064:edcc with SMTP id
 6a1803df08f44-6f54bb1d6c4mr268977706d6.18.1747040287977; Mon, 12 May 2025
 01:58:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
In-Reply-To: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 12 May 2025 10:57:58 +0200
X-Gm-Features: AX0GCFtaqi6D6yVDzHrZ_WHq8dMwIqyzxvGX5s73_q2NrW_iaLsTHx5qPDO8D7Y
Message-ID: <CANNYZj_9p6jcHsmcEaVC4fVNxkqzutf6LNVVZ1unCOww9PmXig@mail.gmail.com>
Subject: Re: [yocto] Size of production os image
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 08:58:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65308

You need to show what goes into your image (e.g. attach
log.do_rootfs), otherwise the only help we can give is really generic
and not likely to be useful.

Alex

On Mon, 12 May 2025 at 10:06, MOHAMMED HASSAN via
lists.yoctoproject.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi guys,
> My os image size is generally around 1 gb. I am working on  IOT gateway p=
roduct. The funny thing is my actual bodies application is around 100MB inc=
luding node modules. I know that yocto is mostly used for smaller footprint=
 images but seems like I am doing something wrong. I have tried removing ot=
her irrelevant packages related to hdmi, audio, video and so on.
> Can you guys attest to this?
>
> On a side note can you guys let me know the os image size for your device=
s.
>
> I use yocto dunfell and kirkstone.
>
> Thanks,
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65306): https://lists.yoctoproject.org/g/yocto/messag=
e/65306
> Mute This Topic: https://lists.yoctoproject.org/mt/113066816/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

