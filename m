Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.6669.1623932269537893135
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jun 2021 05:17:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=mNfRqZJJ;
 spf=softfail (domain: sidebranch.com, ip: 209.85.222.173, mailfrom: leon@sidebranch.com)
Received: by mail-qk1-f173.google.com with SMTP id c138so2856235qkg.5
        for <yocto@lists.yoctoproject.org>; Thu, 17 Jun 2021 05:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=GoLDkxiznujl6h8QdQNI50E6m+zirXWz9jIzOJCbUYc=;
        b=mNfRqZJJdm/PIkCyxxxZssTCT3XYRUbH2GP2RQRG1NJVc/Yi1tc8MpJo3/GAvpy2f5
         3zYQFPb17xJhmY4fjU8yM0BpitfvTWRZ6js4mnaOcF/PlE0zFnsS/Ky85K+1v0rUF0NL
         uV+xkid7EhX7vLVlxTRTPFqmOknS0YnvsQ5KHv/2OBlRh8f+Qd6XFk6QTWoSEtagyJvj
         qzy/Qm6C2oA2gbjEIHt9qrtbWA35Kbx5Ac9SfRHeJPIqNBGjHMdxng8Dltw2sC6nXb+Q
         i6C28lJdcGis5RyoTwELBPnmM3DUiVMYsTqnQ9r9ADj+W/YLtr38vJRg1aFiNR+fOKJv
         5QSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GoLDkxiznujl6h8QdQNI50E6m+zirXWz9jIzOJCbUYc=;
        b=pvzy7Z2GVGMFIgtrQha+XJaagF3sV8RL8+QVF/busqkOTw+PtkM0zlNUA9og9Lz0qh
         G/INxHdStz2LVUD5z20r5U4xVYLBtscxV9uMarHgRBzvvKBi+JHiZ1fMhUQMzJMMUXNU
         UxB8WHbh5XslGuBCofnjjTE24w0I6AV3G8NwqSragydbL3r+zkhFpd0n2EsbIGlUBj5f
         Hzy9+LFwfVbCLr8KmZ6aInNuoz6sxatiSaF4J7SJdwu50RqWg+RNKvVAYKSqXKxD12vk
         kgf52CdzaS7vVPAT/KEMC1HqugJaTHXTitfXmmzAgR9ovfzoSCCRKSFMedi6asMvJwlV
         889Q==
X-Gm-Message-State: AOAM532zFv4jBO84RcUR/t6TPy/WLSFfRGQSH8Kyoqn5r8l2VmJUchT6
	iZBpKDyHTuHJhKykRza+8Z92B9zv3PxYekF42zabUEoe8RGkIA==
X-Google-Smtp-Source: ABdhPJwCE67tlNOPIkFj8CNRI/Suh0PrpUHHon1Ul6yekDGSGn3Z1nIK9yLN7lNh8xM2hPC5vyw5i9p7R8Y8aBP2R2Y=
X-Received: by 2002:a37:488:: with SMTP id 130mr3324960qke.215.1623932268326;
 Thu, 17 Jun 2021 05:17:48 -0700 (PDT)
MIME-Version: 1.0
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Thu, 17 Jun 2021 14:17:37 +0200
Message-ID: <CAMjhiJi=bZdAF6p5v=O01_SRocSqazEoVM1hjcc3-xTXVa2tvg@mail.gmail.com>
Subject: Use of SDK for building images?
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello all,

In some other build systems the generated SDK can be used to also
generate an image. Thus the SDK allows development against the target
sysroot using the prebuilt host and target tools, as well as
(re)generate the target images in quick iteration cycles.

What approaches are recommended with Yocto to achieve the same benefits?

My need is to regenerate an initramfs as well as compose this into an
image using WIC.

I am aware of shared state, and using prebuilt toolchains, but my
question is whether the prebuilt SDK allows to generate images?

Regards,

Leon.
