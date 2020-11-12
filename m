Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web10.2118.1605174666416608463
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 01:51:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qUIJaF2Z;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: nikhilvp29@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id v9so1666837uar.11
        for <yocto@lists.yoctoproject.org>; Thu, 12 Nov 2020 01:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wtbF2TjL/I8zYdRLjWbpGE/lsn2ol/7kuVuZ3FE79ZA=;
        b=qUIJaF2Z2XM2ti4W40wdGqQG6SI2L86NRR6t2IswUa3cPFeFuG4v4kwwnDxxSXE0r8
         m1nl1LSGeK3tgFrl9Dp43CWOJbybGAXk5nSnUJFa1M4/cVDZvaDj2C6osQT9IbfDB6Q6
         dA75135Zb9kiA+irdC2pkptK7kj79EFbtysdnA+Xn92t741tT1ztyJJkE31IQ/kshOI9
         Vx5v+zWO9XfymHcuobQDdTeBvUbnCd9iHeQPe4jdEsJ/VCXc57soBP4m2bCtcN1PLNFv
         OSL6WvFOKgqZmBKgsl/vjYXXqKRNQNjEUbsm+QnfzUcDyfX+18wAmrbKRJbV0tIhgXdG
         ukqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wtbF2TjL/I8zYdRLjWbpGE/lsn2ol/7kuVuZ3FE79ZA=;
        b=Ow6yJ2MfekcZzNrBxggCESdhL01LSWFMSzsCusD7d0SA3fVyRT6lHwS5ODqKwyvHzP
         SQKmaDOQCZLTYPnbAs6TActE+yHZW4/fFHf9Z60BQbXcpzgYyuZpf06+2HPnsqsNNEVE
         DJcu7/hHU36CKzwK4fOVtC1+ABsjKCPjc6/yTuQqW/8zNZdTuu2nNeWGgQ4dZu3lVNR5
         SeskMItYn30R1TWXcPoCYvz4jPF5kuIhADvVIFL8+ykYhFLgz5TRM2huZZARp3TdUS+q
         XdR21rSw7gh+beImQld7S1Hvwjfwl/w6Tw3nlCsrrL/h5poI41uqz8fuJjg73Dn9QYv7
         D83A==
X-Gm-Message-State: AOAM531PawMdkpSP8XIzocbs0++nsStNV9fTRvQzGRz/6gZwb1+qdF/G
	vknq7E3pWPI+Xyqiy6sl7bg1froRvX1PSRjCZtvyaL8CS3jDiA==
X-Google-Smtp-Source: ABdhPJwsIudEXGK81wAZ1phGtr6UVjIcie7iZSxNUob6AF1D29zswY+fHhTLegfmlApRI6veU4xXBYrZCQ75invHZd8=
X-Received: by 2002:ab0:20a5:: with SMTP id y5mr10973695ual.39.1605174665080;
 Thu, 12 Nov 2020 01:51:05 -0800 (PST)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 12 Nov 2020 15:20:54 +0530
Message-ID: <CAJw=dJ-HszFFxDpiHoOp7LO62OFybj1AKtHEKA5=EqfKg6Essw@mail.gmail.com>
Subject: Issue related to .wic image
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b6f1f105b3e5d915"

--000000000000b6f1f105b3e5d915
Content-Type: text/plain; charset="UTF-8"

Hi ,
    We are compiling a core-image-sato-sdk.wic  image  using bitbake  that
time i am not able to copy anything into /lib/firmware  folder.
     but when i am compiling core-image-sato-sdk.hddimg   that time its
work fine .
    for wic image getting following error .

*root@intel-corei7-64:~# cp tests/Firmware/* /lib/firmware/*
*cp: cannot create regular file '/lib/firmware/RS9113_AP_BT_DUAL_MODE.rps':
Read-only file system*
cp: cannot create regular file '/lib/firmware/RS9113_WC_BL.rps': Read-only
file system

--000000000000b6f1f105b3e5d915
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 We are compiling a core-image-sato-=
sdk.wic=C2=A0 image=C2=A0 using bitbake=C2=A0 that time i am not able to co=
py anything into /lib/firmware=C2=A0 folder.=C2=A0</div><div>=C2=A0 =C2=A0 =
=C2=A0but when i am compiling core-image-sato-sdk.hddimg=C2=A0 =C2=A0that t=
ime its work fine .=C2=A0 =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 for wic ima=
ge getting following error=C2=A0.</div><div>=C2=A0=C2=A0</div><div><b>root@=
intel-corei7-64:~# cp tests/Firmware/* /lib/firmware/</b></div><b>cp: canno=
t create regular file &#39;/lib/firmware/RS9113_AP_BT_DUAL_MODE.rps&#39;: R=
ead-only file system</b><br>cp: cannot create regular file &#39;/lib/firmwa=
re/RS9113_WC_BL.rps&#39;: Read-only file system<br></div>

--000000000000b6f1f105b3e5d915--
