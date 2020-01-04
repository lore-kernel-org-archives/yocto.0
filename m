Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web12.5240.1578127037222427094
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jan 2020 00:37:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEPRQ4Fg;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: vinay.m.engg@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id c17so35615001qkg.7
        for <yocto@lists.yoctoproject.org>; Sat, 04 Jan 2020 00:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=POKWcrzeZ61lw8Hlu/1si6IMb3QQfDog5XngSATJsW0=;
        b=gEPRQ4FgQYhfEU+GsCwlFex//DgaYb6HlzEmG6wNFyvnWZabxUQ34O+n269AaeNshS
         p4K4douHPSkuW8lNNi/K80THbHLpblFzi8MwIIOCYaxAIKFNL2n5EodhM6LNfds8Ccy6
         cIQENSPl8QIlCcCvVqToQDJ5w1LAwXKHlwmmQHVf1WFcziXE5sBU7LoMLbNy4y6nXFr1
         LfMDMw53zi2KqodVA6ychSqAmP1io+zWqUDIUw2dR1iUlgCjoSc4AttNb5I4w5kuzzc8
         ENs3hJvDKTI2OytVkjuZFpzcoL0RB7Dz4j3uzUYvKl2Ry01WlmuTm6qcpuxlFFloEYTp
         lgQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=POKWcrzeZ61lw8Hlu/1si6IMb3QQfDog5XngSATJsW0=;
        b=r0MyUHo/a29X39weHr94VTHT+EQTCtLy+wqXO/hHdhTzo1rCvVajsBNJ6Bn5hU7PXa
         n90q+FxPG7kMZmIUkRFHHGSbfG7DwNjOTi04VAUwmcqu1ptuDLWo/GJ7hoQGZTxsj7aN
         xDfgchw2WHD3iw8/9vnueMbr9CsSBjPrW3iym8ZIBts4Ve2aYW8v+51q9Zb7LmnKm3he
         PrSqCfgMj8DLiwsjYY2lgTkd01WVfEtaNxdMikcfX/tqaGKNvwACDHxRIU9dpMklQrN1
         FehtLt13qgaM4nFWNXMoa0+Ua6RJRbbqEYRajMXRwy027Ya+o740l11qh8kuuBnoY3D0
         VZjw==
X-Gm-Message-State: APjAAAWa1k3wrAyo2eA0AiuNMWcZU9ETWySZtIDzP079j8LSE5rW2GXT
	Wf/1RHWsuBv11JXe8zAbYoAB9qt3+sVwvBdpWlYWuouLQ7E=
X-Google-Smtp-Source: APXvYqyeOCUi9EcbKbsPNPC4tT3ptyTOwSzkK96p+AmMElVSR4EYkhQc2VXbLH6LYFOGwxdbwUgid7/z6JEv2LuJM3M=
X-Received: by 2002:a37:7005:: with SMTP id l5mr64008706qkc.334.1578127036205;
 Sat, 04 Jan 2020 00:37:16 -0800 (PST)
MIME-Version: 1.0
From: vinay.m.engg@gmail.com
Date: Sat, 4 Jan 2020 03:37:05 -0500
Message-ID: <CANUMPcU4zsSOOOid1Xkt+J2MSD1xVZq+DXFzwfhoCvhO=KGDAQ@mail.gmail.com>
Subject: Glibc-locale installation image.
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

Trying to include glibc locale in qemux86 (poky-rocko)  image.

$cat conf/local.conf

ENABLE_BINARY_LOCALE_GENERATION = "1"
LOCALE_GENERATION_WITH_CROSS-LOCALEDEF_forcevariable = "0"
DISTRO_FEATURES = " ${DISTRO_FEATURES_LIBC}"

Added above components.

Getting warnings as below and not getting locales installed in  the image.
$bitbake core-image-minimal
WARNING: glibc-locale-2.26-r0 do_package_qa: QA
Issue:locale-base-de-ch.iso-8859-1 rdepends on
glibc-binary-localedata-de-ch.iso-8859-1, but it isn't a build
dependency? [build-deps]
WARNING: glibc-locale-2.26-r0 do_package_qa: QA
Issue:locale-base-gl-es.iso-8859-1 rdepends on
glibc-binary-localedata-gl-es.iso-8859-1, but it isn't a build
dependency? [build-deps]
WARNING: glibc-locale-2.26-r0 do_package_qa: QA
Issue:locale-base-tr-cy.iso-8859-9 rdepends on
glibc-binary-localedata-tr-cy.iso-8859-9, but it isn't a build
dependency? [build-deps]

Please help in including the glibc-locales (all) in the image.

Regards,
Vinay
