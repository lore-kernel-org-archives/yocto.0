Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F38EDE9B7
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:14:28 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.10526.1694693662483825267
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:14:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=c7kqk8IM;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2bfc14e6d03so11168461fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 05:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694693660; x=1695298460; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+ybneTElp6wqXadf1v8C2gEGHM0hZy8R2XJgqABIpnM=;
        b=c7kqk8IM9cqGzEYoyl5Ri9pBx+ih7FSSfkDjwDzfrpFL1X48/WNpKsIJRQejED7zx7
         uWSn/fB7CWN9/Z9XRxILfoqNfkOmjbnQkUilt9wrzsU737rHKqJ5UXfjp506bh2R963G
         4gwtAWEVW65bX0gT3VHx33VZ4X8fNUKpMHInIwu4P0jfenNUkFQd3YbJ4Y4R8mQfXF3v
         r0ad8LKlEk8EgG+agxCqPTJui+OGmH95E2ZMsv9Rp9vDmOhSOuLg6mD81sfGQMGSDDOq
         5BswHj8y4yNVGdN370Wlgn6SGAjZ7RBJgvdwO+wU5l5cfUxOsyEu0Dp7rlgcZyqENjti
         GZdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694693660; x=1695298460;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+ybneTElp6wqXadf1v8C2gEGHM0hZy8R2XJgqABIpnM=;
        b=AmZtH/13mFojb9wM+FI/Apd3dWtecnASpNVMeqCxYHYCm5AJnOU9aNRL5GbwLSO1Pz
         5S7RNnK3+uyHZGqokfmk3OiDisUu+bDdn1j3tuj9Eu59PaaPOaLnWdTmOyGTnsGbZFmu
         CtXPnHToBrsAfS3pVPuTx6tyXx8rk7w1TYJDkwXFw2mm8Z6GsK10pro5+2pAgeXpuAw+
         xOL0TDVF3/0DrUcJrmkI3Ni5slgjloUP4cdDNMfof3cVZ4VqOzVTy/5N+CE7DzD1o9rl
         j7MWHKABHxynrjb9sXj5H4KmsX9jmBFM/PTQc3RCsgrBOAygBV+q8+j9RBRfMZnMvaLh
         EGJA==
X-Gm-Message-State: AOJu0YxXPoODkFcF4AQ8nP/CKF3d3In9Osrti3O1UqfUHBPcgJvfmxk0
	tFokGizriiP7SSS5s2dHuOdZYvjghtiNno6mCvA=
X-Google-Smtp-Source: AGHT+IExJS/TAcFXb1vSEPpznRkBEVulYNL9M7RLCh/wT+Baw9Z7/7+B1VpH6mkzzCC+Hp8lO9Z5H6mi90736dXuW5Y=
X-Received: by 2002:a05:651c:305:b0:2bb:7710:f08 with SMTP id
 a5-20020a05651c030500b002bb77100f08mr597851ljp.3.1694693660483; Thu, 14 Sep
 2023 05:14:20 -0700 (PDT)
MIME-Version: 1.0
References: <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
In-Reply-To: <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Sep 2023 14:14:08 +0200
Message-ID: <CANNYZj-dVRweZapUaWqrvgPJtV7dy3a9OZfoFZ5X3kH8U-LtQQ@mail.gmail.com>
Subject: Re: [yocto] Errno=No space left on device
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:14:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60998

On Thu, 14 Sept 2023 at 14:07, Dave Hitchman <dave.hitchman@kymati.com> wrote:
> bitbake-layers create-layer meta-custom-mpet

meta-custom-mpet is actually a path, so maybe you need to use an
absolute path here and place it somewhere else than your build
directory?

Alex

