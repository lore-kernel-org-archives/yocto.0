Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.6071.1603345986200766203
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2020 22:53:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rKcOTrGt;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B215438C1143
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2020 22:53:04 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id o26so474387ejc.8
        for <yocto@yoctoproject.org>; Wed, 21 Oct 2020 22:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Kw6Fe/K2AcjxzG/pcihmlNURUKOSr73NPzQdnTLoH+0=;
        b=rKcOTrGtZ1AOIQvh37Kreby4WiLMffzp9W+Le6yiPVmGnHUpDHOeJwz32Xd59/Wbol
         ycnA2AjX2uhlM8G25LMN/XN/GM9CqDxGO4Glrx2XPHVfX705Z6/SgFc5HCWcGW5kg+CD
         nW9HTcYzdGyrf0xu5tQjUUX0WIQ+Yba4Up1DTtZutNQEjzZ4uPu2FGQl8j8GCf+PxIEE
         FtC8VrKfxVlvAstVDK27vlO42EuQgrXAfhF2lL7c1vY60Cs5Z1cm12UzlHtwkBJRQOso
         kDUytR6T1KzI58l86gpyY5zA2SyeGFJc15iNHlUNskuvte04mnWo22J2HdQSyXtmeUCT
         T3Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Kw6Fe/K2AcjxzG/pcihmlNURUKOSr73NPzQdnTLoH+0=;
        b=bpqObi9QxQEY1o0lxKeM9ogEauYT8OtIrVQysns2vbq5Xl9zX1QiVHW945N2CI5/Gr
         4M2NarNIauAkt3aOLF+/rnP0xEWzBJcnheF4u+vA537aoA8mOwr0j8+upIeq1fNVECu1
         aH+Rgb0t3iNck3rWjbKjbjB2ZHEWXUk6NeGnpbO+d6ZWmIZj2owMHD06okSIxhGdjHzD
         Xq1ni0zCwZg24ZCtwE9UmV6WdvPeYBoFCQs/A1ow6bcW/10YEMZM8N+klhk1GV1zCexR
         xqY+LpaqJwYOS3XZruRVAfXRYr62Lm1Kri0voUMPn7HdIdEMXn3CBHNFEYBpCRxQBAst
         1mHA==
X-Gm-Message-State: AOAM532sry7fLzHI4VSk+jYKce5ZEUG3mIbXZGm13qyj2wLmkym7ppGD
	F+FZySRqZs6A26pF4d880bxYCyIdUBoTYMDeU8QTQvqC
X-Google-Smtp-Source: ABdhPJz3qWvrlDlZ25By2mgbBtXzhy6ZYTkMQuRugtFvVPRonKgchC/mOU2kL9j/njJzlSx+CNv2C1pNsY912qJOZ+E=
X-Received: by 2002:a17:906:4b18:: with SMTP id y24mr813074eju.416.1603345982878;
 Wed, 21 Oct 2020 22:53:02 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 22 Oct 2020 07:52:50 +0200
Message-ID: <CAAfyv35LXFqRUd+cW-U2F0MPCCej5X=H7gf6Jkv9mNimtX6CvA@mail.gmail.com>
Subject: readonly rootfs -> make files writable
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using the read-only rootfs feature on my system, but for some
packages which I'm integrating it makes trouble. I used volatile-binds
recipe to mount changes in overlayfs (on other partition) but after
reboot files are lost (when mount volatile directory). Another
approach which came to my mind is to symlink all files/dirs to other
partitions but to me it looks like overkill. Exists there some other
mechanism I can use to keep file preserved and still have readonly
rootfs functionality?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
