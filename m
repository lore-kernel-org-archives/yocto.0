Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDDC6F013C6
	for <webhook@archiver.kernel.org>; Mon, 16 Mar 2026 07:44:24 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.45683.1773647059261185841
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2026 00:44:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=QpdpWwV0;
 spf=pass (domain: smile.fr, ip: 209.85.128.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48541edecf9so45917005e9.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 00:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1773647057; x=1774251857; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5P1dkyHW0edY/unKbe61r8s7UXZgoUXdtDpTnixGkxc=;
        b=QpdpWwV0tp++Ap99gvAzeOMMruFqfu8KKTGHIrB9M/WN0/zK4sl9PugkjvDaPU7A0S
         Fk3jIKqnEe2q+M8RlbooXbjkygVj2+ySE8tLoonjWzCcT5T6ysCpk8JUqAcrRWOeIzc6
         /dcfdjpw4cqZrrWa3pEspDK/sB+pcxn0iwsxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773647057; x=1774251857;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5P1dkyHW0edY/unKbe61r8s7UXZgoUXdtDpTnixGkxc=;
        b=IdrmXV3+NwkC1RS8kidkxcPWlWASNNuBAnbSKV/PWrvJpFnjXGxyRVi4KBY0/Fxzwy
         T6aFdDGMNMI+Z0biWVCA23S9c6bTdih++rBrc1yhbiHymMFFm9TXDYQsOOeXN1O2qwCh
         A/i90b5Q8Eb9TERodvlixaQIqLAbf/R3Rfq7MVJ5qUaDfBcntaWxjNitbFr4jUr6682A
         UHsxIZLfdsf/H/CSIGulXQWBBo4/ClWeoonFu5u9/zLhQr+O0BQ60lHs5Qgo5d86ASe3
         RCGfpJhjEeH1BAJndkiy94kDAAQ5ojJ1up0vDAJstJN+A17VpwlBCAX5koIsjPMRhODh
         NG2A==
X-Gm-Message-State: AOJu0Ywa61ewFxoJHGb78hDkgvZZ3uYZhgpK6WvszW8chy9Ddt3LN3Zw
	82PDVKNZmm3WwkfAk09wOaSJ6LxfaqRIUNiIaQDVLZ4oIi0Di+LPjmu9O3OngT6WsUEFi/8wBUw
	9LrUh
X-Gm-Gg: ATEYQzynXW2nLe/YdLEMgQGKX/Cq5rTamvYpHvkVbDj3EedM8bZOGh2HUkcKbykaT+l
	xxopATkzmoX9vvoH9mbX9MvNI/WAZNcfi2jTQClwteFK4dCdZU5cI2qRsxPJrl0CxS9Lc9Kv/a3
	n7riqMMe/d27x7SrmcTgWFrg12siz9tdo/LK2JzckbjYgM+skE4Gn6y9LVa0NP7tIvd15cx4k+u
	mYN2NBlHxirOfLDOe2tz9278ASde71gxpkta/rT8CWwT3D/zFQPTLm91CVeMjLQl/mZVe4/VLIt
	rlLZFMzcMjKOFLipUfomGh6NEfF0QT6Cgzi4/2HG9ttaBK+RCsbs9Atcd7vNVQmFyMnkicfIrDn
	axz221dDmhPnJhANo+ft+7WBhrKWT/QLyf2UubsRK9dGBFqvwnHOy8NdkuuPmnrW2ZI97s+JNz7
	nGox8+KmQH2DMdV0Zbmjs4qu87ju9eMJw6RIgZEh0ImQwhfjZKvx7if2cYkTV7VbNyoi9MPIkHD
	RD6SSGEaxoQnQ==
X-Received: by 2002:a05:600c:3552:b0:485:4438:6ef6 with SMTP id 5b1f17b1804b1-485566f79bcmr201279455e9.18.1773647057234;
        Mon, 16 Mar 2026 00:44:17 -0700 (PDT)
Received: from localhost (2a02-8440-2509-819e-bcc9-bfb5-d85a-bcf1.rev.sfr.net. [2a02:8440:2509:819e:bcc9:bfb5:d85a:bcf1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b6070acsm354300005e9.8.2026.03.16.00.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 00:44:16 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 16 Mar 2026 08:44:15 +0100
Message-Id: <DH41EOSC2W84.2MEDCQR70GLRW@smile.fr>
Subject: Re: [yocto] [scarthgap] DISTRO_VERSION not bumped in 5.0.16 tag
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <yocto@lists.yoctoproject.org>, <flix.yocto@benfm.de>
X-Mailer: aerc 0.20.0
References: <dd66f7a6-c58a-4b4a-bb80-d6a95d92b4d8@benfm.de>
In-Reply-To: <dd66f7a6-c58a-4b4a-bb80-d6a95d92b4d8@benfm.de>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 07:44:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66331

On Mon Mar 16, 2026 at 8:39 AM CET, Felix Mellmann via lists.yoctoproject.o=
rg wrote:
> Hi,

Hello,

> The Yocto 5.0.16 (scarthgap) tagged release (1d54d1) still has=20
> DISTRO_VERSION set to "5.0.15" in meta-poky/conf/distro/poky.conf.
>
> It looks like the version bump was missed before tagging.

Yes, it did: https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16=
/RELEASENOTES:
> ---------------
>  Known Issues
> ---------------
> The poky DISTRO_VERSION was incorrectly left at 5.0.15. This is a minor i=
ssue, if a workaround is needed please cherry-pick:
>  - poky commit 06210079b2e10d6d3fb943afe87864267e329821, or
>  - meta-yocto commit 03f93c769ec99e5086e492d8145eb308a718e8d3.

> Could this be corrected?

The tag will not be moved but you can apply one of the quoted patch
above to fix this in your setup.

Sorry about this,

Regards,
--=20
Yoann Congal
Smile ECS


