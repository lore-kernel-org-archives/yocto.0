Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web12.23163.1619978046908456936
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 May 2021 10:54:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WcWrlvAg;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: rohitbjadhav1@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id b4so1803866vst.13
        for <yocto@lists.yoctoproject.org>; Sun, 02 May 2021 10:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=3WBqU1lw0KEUPNr1l6pphnQSBfOBxvIzXwN5vODDw/M=;
        b=WcWrlvAg0wL0pK/rKUGzp/GHrkd/r8/fkpjUWmdkdV08z7Zb0JxVlJdUe6OJirprl8
         lXpabJd+uSg6s+5VE9W7l6v99gfzy33/LmQ12bPpIoT8uDiqH/fTeDttk8xLFMPtO66h
         gHmx/rTNKcFKOG43ZHdvyMe4nSXKFtaWUdzlsCfwsXupE3sPzd365n8O2R1ifCQxdK9G
         oUPV1JDdH5l2AEit8vB13GGerGCXXc40/TYjFuuf0F58dU15v63176up2ar43jvJ2/aF
         2OBuRwmyBDMyvDAXT65/WBZvGK4QVpehqjRz+ubE8H+rtBCSbeWk1/vXTopUv6GhDwB5
         VlFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3WBqU1lw0KEUPNr1l6pphnQSBfOBxvIzXwN5vODDw/M=;
        b=adR/8BLdaKYHf5MI1vbqsoehZlhvNZyF0bhY4fqa2A7LCBDE85w+QBdxZO++bs0kgr
         kcT4q6fW/T3Wztq0gHM4fURMc6PlYMKZWsfpQqMwxdCauZ6pxqM6q/duWu1PuNMY9IXV
         +OykFTiX4DBmbIbmiES6MC0VV3h35DMMQ7Xfm9idyGQaqFh6nokeMiPgGd5Xm7iPqAMr
         YJgJYf3AO4kNkCaJjgigwPkrFKMm1+EsQQzkWtUg9CrpwbTevzJUl8giOjWnz11tZlSc
         a4gFXSj1toCD3sJVX2JTOvfmt4Tg2foeoygMgUX27qzI4PMwdKiG3kH2ua9i8Y8U+CnX
         vExg==
X-Gm-Message-State: AOAM531H0o3GjDp06JnpHPOMSdM7dBBil3IlHmELFeEvCAAUB4yJBDC9
	J4+sOAti9okLdZzaFdhs8FYUr+JorBzsc0+HZ2//fT5//z5g7A==
X-Google-Smtp-Source: ABdhPJxmq/10NVEWx0xheOT50cvaFWM/Zz/SXUYbssuZ/i40lonpTH/IKYaH3SHmLc9G5NkUAsZsaBV1e2+w7nesRxI=
X-Received: by 2002:a67:f988:: with SMTP id b8mr13375214vsq.14.1619978045804;
 Sun, 02 May 2021 10:54:05 -0700 (PDT)
MIME-Version: 1.0
From: "rohit jadhav" <rohitbjadhav1@gmail.com>
Date: Sun, 2 May 2021 23:23:54 +0530
Message-ID: <CAGqYRWEHcBf8VJpwxBS8r2t2w3=Zmm93jwJcrCjvhky+BsmQaA@mail.gmail.com>
Subject: Observed issue regarding hostapd
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f6d50d05c15c874e"

--000000000000f6d50d05c15c874e
Content-Type: text/plain; charset="UTF-8"

Hi
can you please help out with following issue
ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scriptlets of
['hostapd'] have failed. If the intention is to defer them to first boot,
then please place them into pkg_postinst_ontarget_${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.

Thanks and regards
rohit

--000000000000f6d50d05c15c874e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi <br></div><div>can you please help out with follow=
ing issue<br></div><div>ERROR: core-image-minimal-1.0-r0 do_rootfs: Postins=
tall scriptlets of [&#39;hostapd&#39;] have failed. If the intention is to =
defer them to first boot,</div>then please place them into pkg_postinst_ont=
arget_${PN} ().<br><div>Deferring to first boot via &#39;exit 1&#39; is no =
longer supported.</div><div><br></div><div>Thanks and regards</div><div>roh=
it<br></div></div>

--000000000000f6d50d05c15c874e--
