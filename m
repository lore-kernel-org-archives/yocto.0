Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web11.13393.1617826063991086900
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 13:07:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bvs5DoDp;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id n198so18548571iod.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Apr 2021 13:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=XGaENESI2XfSMzRuu5h2NLMo1s/wV090jzAHbm9+pCA=;
        b=Bvs5DoDp6A0Qr9deAmndyQ7srmRCUtP5+QKDdQ851tV1eXtda9wRmVk4Nus3yLGWaH
         2zru3mG5Kjay9NU5kQ6ujXOFwAmlwvL77GiU8ZRfEOYdjLKiUlvBDyjXUooCQ4dxlCN/
         BgM2rpfwMYqCk+/cVdMePUbVswh77pmRF4h8gilrMa/vvMpozJ6nhSdcUDHLhYIUPj3q
         oX58YKkW+L+jNXsZ6dbC11vr71YHJsbTK1BnkVDrMKBYMdUjJC2s5v/4V8nKh2Z5QMOM
         Iwf2I2LHB+fg9fu59vnWv9XuFEUagS2NwO/6Aqo7iWRw02ksLPlTakUXrtQtQNoigwA6
         +50w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XGaENESI2XfSMzRuu5h2NLMo1s/wV090jzAHbm9+pCA=;
        b=nPYd2IP/wWjYjPM06tj9YBFB+FI3bLDCe6xXLNLQHw/6vGz+pyM3ea8CJe68GdpcP7
         lFszUyLsODIglDbxB4Q4BR7sH63PwC9Eb6M4yUueGLYayLHj2b5+saDM4+L5lx4IJzRI
         98Hw0rpG756qfrNcb2KR1Oc6zPILypQgSqDF9PQeQaD18adQazDi1u6j1y+0YSojWDst
         svY8NGMQy3nHBox1OkGVsGVz84FM/nfe0QYzkaxMneFtcllAaml6kber4KjUZfhneFRr
         l5nosa/TaCXaNxTQqMcl0qRISgqldGURHlsuwTjxEZQdWzJA3rOnoySMBC3pRzLFuNUO
         PXdA==
X-Gm-Message-State: AOAM530UwPcweysyxJlI/m8erxG2owcovg2L6C7LXKj4/nw+O1toR09O
	U+qPJ1/gZlxAdFe1wsHnP/F7yYq1thvZsapmzP0=
X-Google-Smtp-Source: ABdhPJwI9X9zuhSioe+zRionr9pfVDE12KYBc470b26vJbLb4514izniwr/Cjnxh1kHm2rMwlrzA2A7v/OWFzyMGSLI=
X-Received: by 2002:a5e:8d09:: with SMTP id m9mr3741279ioj.29.1617826063418;
 Wed, 07 Apr 2021 13:07:43 -0700 (PDT)
MIME-Version: 1.0
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Wed, 7 Apr 2021 16:07:31 -0400
Message-ID: <CAHUNapQ4DGnGBQUOOrVL6ygVqOzoMVkxNEC19FDRk_C8GgteLg@mail.gmail.com>
Subject: Yocto Project Summit - registration open
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	automated-testing@yoctoproject.org, yocto@lists.yoctoproject.org, 
	yocto-advocacy@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Registration is now open for the upcoming Yocto Project Summit!!

details: https://www.yoctoproject.org/yocto-project-virtual-summit-2021/
CfP: https://pretalx.com/yocto-project-summit-2021/cfp
registration: https://www.cvent.com/d/yjq4dr/4W?ct=868bfddd-ca91-46bb-aaa5-62d2b61b2501

PS: Don't forget to get in your talk proposals! The CfP closes April 25th
