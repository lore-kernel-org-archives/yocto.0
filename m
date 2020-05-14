Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web11.8020.1589443569133881844
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2020 01:06:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=emmNRTJP;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: lefevre.da@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id o19so2114921qtr.10
        for <yocto@lists.yoctoproject.org>; Thu, 14 May 2020 01:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=kQNd6ZoSwhMcWZDCqVpiCP3F+odhgSfFfzqIw2D88IY=;
        b=emmNRTJP2qQoLvfmFoAQZKVlTlfVq1eaJAEknmhdX62o/YBjEg7dKlsfi7MDovv+AP
         7HsYy5mj57onfwGWBZtLXQsoYpgUNM677/03gI4Ue69tmn470xF3yoeEWyjaFp8IwsAc
         dwy+0FhfE2aDL2io3ASdR4B5/ju3DfHKNqKZYQEid0sNz8cysrZAmIpaNiWgyT0DG7lX
         Uw5ZygY3bM4uT81nj84VrYZBcEie/c1h2nNAFgSvf18hmcHkHjKrc3zVOQZkikQusM8k
         BZrGhHqXAgoE3Cs2yIijtjt+w6lnUQ9ARCwU+rqclHmRA5GBeoo+4zHBUdgNR9stp9Tk
         uI3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kQNd6ZoSwhMcWZDCqVpiCP3F+odhgSfFfzqIw2D88IY=;
        b=sGcMH/KRrqfSjgL/cO0XLsPqXHyBRJ8reb8dERz1xpf+/EwWtDdztU61l7L/vbKmyq
         62M6XyBmk63W+y/uSUWH3hYXdqkOvrZhfFPA9j09eM8OCmagE/XaE/l8fRfYYmQvtl0D
         NIAK33A0JRY0G+X8Vhp5E1DIs2JMcMVy6t8pQuQyM/ZkzgwEDzB9t5WNYtIJElnQ/NcU
         HCEKBQH+x0e34xrcmoP/eCrLu/yr3N/S6n3gvR2aPQFwaFdJ7zwlDbWj6Pak9YuVutSz
         BKTpT2z2wAjWQiyC5lXh6S/g2t113T99uvMtKfqetqP75DmrRpOIPIcXbkzlXdCneGiX
         oxQQ==
X-Gm-Message-State: AOAM533b7e5lO2wTVSHSOBZ9fTSorpr+bcTCTNwv9nDaLf68S5Bf/qY0
	fnLIAYaGZ3OU0/F5DLnZsuQDqMbeJigdHZsCDfynrxdPIg==
X-Google-Smtp-Source: ABdhPJxxk8VDAEpUXdSu9Wcbi7c8DWQ2tuJG5GVJAGfDKU10cNGme12fTszfCHqGNaVUrddxJP1qpuevlVhhUf86dBU=
X-Received: by 2002:ac8:3879:: with SMTP id r54mr3164336qtb.106.1589443567026;
 Thu, 14 May 2020 01:06:07 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Thu, 14 May 2020 11:05:56 +0300
Message-ID: <CA+FhBv8kAsM9bHk71bXZ33pF9hep4w6CkBQau0UivS50tLG89w@mail.gmail.com>
Subject: PREFERRED_VERSION
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003405f405a5972b6a"

--0000000000003405f405a5972b6a
Content-Type: text/plain; charset="UTF-8"

Hi,

Should it be possible to set PREFERRED_VERSION in the image definition
files?

I have 2 image files:
- image1.bb
- image2.bb : PREFERRED_VERSION_package_1.0.0

I have a package with 2 versions:
- package_1.0.0.bb
- package_1.1.0.bb

I'm using the same HW setup, MACHINE, distro and local.conf.

Thanks,
-Damien

--0000000000003405f405a5972b6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Should it be possible to set=C2=A0P=
REFERRED_VERSION in the image definition files?</div><div><br></div><div>I =
have 2 image files:</div><div>- <a href=3D"http://image1.bb">image1.bb</a><=
/div><div>- <a href=3D"http://image2.bb">image2.bb</a> :=C2=A0PREFERRED_VER=
SION_package_1.0.0</div><div><br></div><div>I have a package with 2 version=
s:</div><div>- <a href=3D"http://package_1.0.0.bb">package_1.0.0.bb</a></di=
v><div>- <a href=3D"http://package_1.1.0.bb">package_1.1.0.bb</a><br></div>=
<div><br></div><div>I&#39;m using the same HW setup, MACHINE, distro and lo=
cal.conf.</div><div><br></div><div>Thanks,</div><div>-Damien</div></div>

--0000000000003405f405a5972b6a--
