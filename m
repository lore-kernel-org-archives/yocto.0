Return-Path: <drobyshevskyi@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03EC5C7EE2A
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 09:22:49 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web10.17553.1684833761267367920
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 02:22:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=e7CwOU6u;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: drobyshevskyi@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-50db91640d3so988527a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 02:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684833759; x=1687425759;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=i3wXwwACx/EYEv+Lvhgo7tUiVQhHw4/kwmU6LD9Yg2A=;
        b=e7CwOU6uqMXzYTI2fRmV/XldIkrXRGtC+CyFgrmLUsngMKMkIjbbwXYZEOUqgLkgVb
         GqC0ijzHj1BCEQkJugIHc+6e9mHyFfpR28nRKMdf2l5XICNLJvEVhZZ+xA873adt+s57
         hxL9Fz0BE0d0eEjS3yFOS1aPq+EYG17qmQf4jD22yBykdA5ihiyTayNaL+/U8l8ZA6nV
         7y1/IOYJ+Eiua6iuyDfmKLIX/gOF1CpGZ+52MqaahpZ5fIPZOc+yT5fzeBD2Okt7+pvn
         4sGKJNCSXShXoB7yISmFMH/w2YVQqIVUwSGoJr8JrFGpmY4+8N2OJyIFIqmy4VzAl6au
         tsuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684833759; x=1687425759;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i3wXwwACx/EYEv+Lvhgo7tUiVQhHw4/kwmU6LD9Yg2A=;
        b=HzWhgwf0VeocHM5UqMzpV4rwpJMRSvpLUcTMMf7Vx0TQEye2I1zIKSzxHuGUIOSJd+
         cJVareXVMP5ozS+ltaprQUFUl0UmwxI/E2etc2k6EyiM+v2FXTJZSeLVqkHffIkPnosY
         yzy296yGkilHwwWMYhrQ18+Ek2s6HNkSHsbqhFKtI6Vm/YJTY8vW4AxDX3TtP6oZwOa3
         Uph3Sf7VNcKuAlrzKFDlIrtm1b/0Cum69+nWNrtPghotudSDFmeWdvDO8w1NEdJ3T0hq
         RC7oFUm+PmJKV3iFFGAJFep/OQbHQWaxEsrcJAOIerXB3pmng8/8UegHioFXoOJVT65+
         fSYg==
X-Gm-Message-State: AC+VfDw0Tcw/7faxKYWogYt/EDDHOTHk5h8iQ13GN3f5geQFaE90vBA1
	fcnWuGXfUF7pG5F7qsvBOSlebyAkY0GBH6TGlbaCuqDGF8VFT8Z4
X-Google-Smtp-Source: ACHHUZ5Q1mragWXDG8GpAJUMDKNh8eeh3MCeJFLRg32rIMPlxfGsDpuHuF0ehDcl50u/NcKn4Q6eKLbQRax46LGbOUQ=
X-Received: by 2002:a05:6402:6cf:b0:50b:e015:71c3 with SMTP id
 n15-20020a05640206cf00b0050be01571c3mr9624483edy.25.1684833759263; Tue, 23
 May 2023 02:22:39 -0700 (PDT)
MIME-Version: 1.0
From: Ivan Drobyshevskyi <drobyshevskyi@gmail.com>
Date: Tue, 23 May 2023 12:22:28 +0300
Message-ID: <CADAXeK3VHedPPbrCUB4JQFJU+DAeRV0DeykN2ERMmvhOqmLmDA@mail.gmail.com>
Subject: Package feeds between different Yocto releases?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 09:22:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60091

Hi,

Are package feed updates (e.g. deb or rpm) between different yocto
releases (e.g. dunfell and kirkstone) expected to work/supported? I've
tried it briefly and package state differences between the two seem to
be a mess. But still, apt somehow managed to update most of the
packages, but not all.

Thanks,
Ivan

