Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.11603.1619095587541523982
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 05:46:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ry4KMbkK;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 79AE938C052B
	for <yocto@yoctoproject.org>; Thu, 22 Apr 2021 12:46:26 +0000 (UTC)
Received: by mail-yb1-f181.google.com with SMTP id k73so44945537ybf.3
        for <yocto@yoctoproject.org>; Thu, 22 Apr 2021 05:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Q18rrjBbipkn2ZoqDxNogU+MCvaw5jnItj/O88+Mx40=;
        b=ry4KMbkKn6WkLfMAQ8gv7+/XXDRzEHI8M08hqKzqBlzApJuTYRoxD7UntHQ1qPm6vj
         9oZk1C17DHley3xka3/+6n7kM6cymuVubPMMOTrfiLlw+ZdjcWhNEs7BBXqxgmn1xCgL
         c2G8YqHQx4PZ/1xxvObjjJcXKIO2o9Z2/nLTxgCoQE49IIx7YuIrMHOAZ73LFKK2TE08
         qExGzZHJrRtkNfhv2iL4ZVy8OiAtKRj36GZM8PDvoYCiYqHmDamGiI8fBbAIYih5FHaZ
         yOp1FyfZ+cdJerTQ5r5t6GOMo6VHqLlaRs/uCnrArDuWO6RTh8JM1jw0y0KRf6KRohAI
         lgCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Q18rrjBbipkn2ZoqDxNogU+MCvaw5jnItj/O88+Mx40=;
        b=XyVtJexxQU+y6K11PNDK+mFKOQ9VMiimeU2QytLs1JMFpxN4UtaQ2mMyNwx4ukVyW0
         XQRiCw9V1pkPYs4RcE4gpmqJPoKp7ZrCGZXBWwqgy0hss4uuBtX4MJfx/i3e1d3gg+lL
         q1s/F+CaP5jvxQTTd83/s57A4YZybxeKR+LTDIr4VdP3k9Lc5BqRBB4YlOvE740zXQAA
         cL61VbmSKmaARleGh8k5Y61yPKeNlmywpops2rLDWKQZnn+sbRf5ObJ95n9nhB6Mr3yh
         ksYVZXien9h4LqRtMhsphCjhgXtsJttIQJU5ny0wWQ+RkAYmjIwqIBaN3siQTJLFZNEx
         GEJw==
X-Gm-Message-State: AOAM530PwntAiuvBX8b6eoAut1/AOqQoF2V3/VhcAQqcSvPc6GhW9xfm
	0gkcu20x3in8VFcL0e8OUXw1iV/Cgsv+o1Ojd66gNNhy1Up0cQ==
X-Google-Smtp-Source: ABdhPJzVpfrpJGaQhasnUjIeYDfKnPFM0NZbteI8J462ZVS1dUys/MF+avtDGcBQamovAzap9ZJ4LC4PE9fCkAy91pM=
X-Received: by 2002:a25:ced0:: with SMTP id x199mr4424962ybe.236.1619095585043;
 Thu, 22 Apr 2021 05:46:25 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 22 Apr 2021 14:46:14 +0200
Message-ID: <CAAfyv34aLoMErgY-PpQjkuowf20S2x2AKtKuhh6_jMCJV7cZVw@mail.gmail.com>
Subject: hardknott build issue
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm meta-sunxi co-maintainer and in order to add hardknott support to
meta-sunxi I try to build few days ago image from hardknott release
and hitting this issue:

WARNING: core-image-base-1.0-r0 do_rootfs: libglib-2.0-0.postinst
returned 126, marking as unpacked only, configuration required on
target.
WARNING: core-image-base-1.0-r0 do_rootfs: eudev-hwdb.postinst
returned 126, marking as unpacked only, configuration required on
target.
ERROR: core-image-base-1.0-r0 do_rootfs: Postinstall scriptlets of
['libglib-2', 'eudev-hwdb'] have failed. If the intention is to defer
them to first boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.
Details of the failure are in
/home/builder/build/tmp/work/orange_pi_zero-poky-linux-gnueabi/core-image-base/1.0-r0/temp/log.do_rootfs.
ERROR: Logfile of failure stored in:
/home/builder/build/tmp/work/orange_pi_zero-poky-linux-gnueabi/core-image-base/1.0-r0/temp/log.do_rootfs.8491
ERROR: Task (/home/builder/poky/meta/recipes-core/images/core-image-base.bb:do_rootfs)
failed with exit code '1'

I'm building core-image-base without any other changes. Ideas?

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
