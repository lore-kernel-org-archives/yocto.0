Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.6249.1625060824672618539
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 06:47:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@acevin-com.20150623.gappssmtp.com header.s=20150623 header.b=phZ7VI8v;
 spf=none, err=permanent DNS error (domain: acevin.com, ip: 209.85.167.44, mailfrom: sohils@acevin.com)
Received: by mail-lf1-f44.google.com with SMTP id a15so5216041lfr.6
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 06:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=acevin-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=s2NP9f2aRn5f4w8r+kDqzaPyaoEYav2lHvPrw/R8sLg=;
        b=phZ7VI8vzcV0DgrSK5zQwpawafC8ds3AgIq9SEL8LDdprv1zURgx4WlhdBsSZ9zywk
         d8ULcyWZLTN4GHW5SXwUtHbSVm3sX7ihwcSJePCI1l+tRrL2k2jN6yR1/u0dSGIeyNJs
         35hW9qoQToJiy9O4Fyu3NU/SOXOV8IupIPPLAOiRQj6u3g/SkQASMsTEBsWL1IUfAlxZ
         /0d4pc3hrDyKmfdmYx7bCuy2fVdm7a5xZ0dTPAe7LCn3IqsL0ITQI8aiOSLiMGN7pPUn
         WhOHrDPnQPrUnu+emWAKFPoLEolwMu+GIg+B76L9opaDasVUgJNRkSnFlLtFeFmPV7o2
         Z5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=s2NP9f2aRn5f4w8r+kDqzaPyaoEYav2lHvPrw/R8sLg=;
        b=k7j9L/znVglIT877LBdZ4wOEl1cus3rAtBnbuQc7HsbfmDpojupGt9aok1FCUc+BXL
         s/sHwKCxhs0FvBB6j/UGb/GCejE6UKv696fNlcp+Dkfuwui7uH6S34V83DIPYp0uEMSS
         Cce0O21f1N1BbyS64xPEPGbFEGqU/7F9350ZkdxzLT2GaxUTEZ6daDc9FNsi9X9i2Wsq
         naMvksDwoF01Av6FCfqfY5FwxaYvwVTQRGtw7xWS47ui9d4aDvory+vUXP+rv+wZj4j6
         U5a6NkScU+yZu8RrqYPRKxrUKOKnNs+UJlZ+MP7DLYii5W9ZnZyOsdx35s5NEZXOpV7m
         S6YQ==
X-Gm-Message-State: AOAM5308+KQJfKgnbB0zkPCLdY4+w7vI2eshO6hNOMi0Kn7z6d7UvKIv
	/wEz8/otz1PO4fnpTEdn9zMWObID5NRI+H2SL09Pbu9CB/QXLNqS
X-Google-Smtp-Source: ABdhPJybR+CMCvG3fYWow2Hpa3VAXScjVJ7d8SUOCO0so1FEPXU3oY5eEvO3veZhqAqMID8qc8w4zLGkb+HSLoJzOm0=
X-Received: by 2002:a19:520c:: with SMTP id m12mr26217694lfb.221.1625060822783;
 Wed, 30 Jun 2021 06:47:02 -0700 (PDT)
MIME-Version: 1.0
From: "Sohil Shah" <sohils@acevin.com>
Date: Wed, 30 Jun 2021 19:16:48 +0530
Message-ID: <CAOUGpkzEaRMPFUu86F-QLTGe2StVCLkrQP=VLGSG8oq9vxj3KQ@mail.gmail.com>
Subject: Question regarding custom device tree update
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000014ae1705c5fbf556"

--00000000000014ae1705c5fbf556
Content-Type: text/plain; charset="UTF-8"

Hello,

I am kinda a noob at this so please bear with me.

I am using the sama5d27-wlsom1-ek board for my demo and I am trying to make
changes to the device tree.

So far I have compiled core-image-minimal and find my dtb files are
generated in
/tmp/work/sama5d27_wlsom1_ek_sd-poky-linux-gnueabi/linux-at91/5.4+gitAUTOINC+3dba8c9991-r0/build/arch/arm/boot/dts
folder.

Also I find many different dts files in
build/tmp/work-shared/sama5d27-wlsom1-ek-sd/kernel-source/arch/arm/boot/dts

But where does my machine get device tree files if they are generated
inside the build folder and if so where do I place my custom files so that
they get called during bitbake.

I want to build the image using my custom dts file where I enable certain
peripherals and disable the ones not required. (A test to update dtb's in
future).

I tried different methods found here
https://stackoverflow.com/questions/38917745/quick-rebuild-of-device-tree-only-with-yocto-bitbake

But, I seem to run into some errors when I try to build the image.

Please help and let me know if I missed any required information from my
side.

Thank you and Regards,
Sohil

--00000000000014ae1705c5fbf556
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am kinda a noob at =
this so please bear with me.</div><div><br></div><div>I am using the sama5d=
27-wlsom1-ek board for my demo and I am trying to make changes to the devic=
e tree.</div><div><br></div><div>So far I have compiled core-image-minimal =
and find my dtb files are generated in <br></div><div>/tmp/work/sama5d27_wl=
som1_ek_sd-poky-linux-gnueabi/linux-at91/5.4+gitAUTOINC+3dba8c9991-r0/build=
/arch/arm/boot/dts</div><div>folder.</div><div><br></div><div>Also I find m=
any different dts files in <br></div><div>build/tmp/work-shared/sama5d27-wl=
som1-ek-sd/kernel-source/arch/arm/boot/dts</div><div><br></div><div>But
 where does my machine get device tree files if they are generated=20
inside the build folder and if so where do I place my custom files so=20
that they get called during bitbake.<br></div><div><br></div><div>I want
 to build the image using my custom dts file where I enable certain=20
peripherals and disable the ones not required. (A test to update dtb&#39;s=
=20
in future).<br></div><div><br></div><div>I tried different methods found he=
re</div><div><a href=3D"https://stackoverflow.com/questions/38917745/quick-=
rebuild-of-device-tree-only-with-yocto-bitbake" target=3D"_blank">https://s=
tackoverflow.com/questions/38917745/quick-rebuild-of-device-tree-only-with-=
yocto-bitbake</a></div><div><br></div><div>But, I seem to run into some err=
ors when I try to build the image.</div><div><br></div><div>Please help and=
 let me know if I missed any required information from my side.</div><div><=
br></div><div>Thank you and Regards,</div><div>Sohil</div></div>

--00000000000014ae1705c5fbf556--
