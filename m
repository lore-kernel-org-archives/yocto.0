Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.2212.1615954163304591867
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 21:09:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=V1keZXne;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: ms.priyanshu.sharma@gmail.com)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C940C38C0894
	for <yocto@yoctoproject.org>; Wed, 17 Mar 2021 04:09:22 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id 184so1464403ljf.9
        for <yocto@yoctoproject.org>; Tue, 16 Mar 2021 21:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=vxUHUgqVHZiXL56iT7yZcnrBjHthT4lFIJHATTrR5Vk=;
        b=V1keZXneTyjSIs7gSJNSGi9eg+irfS/szPwmjDWi6GjsYj8I1AjaL6CetzzEmjuOsC
         R6HI68YdHLNqhs96oTsQRu/vicrSmq5iUbuhq1sYJ0rcKaM2vGQF42wQdtnj0updaWET
         rVs+IxKBBncK5OsDPFYre2cPEoBWUmAF7A0rAy+pEe7L7qbVu3/8/4Q8gskm9w5k0W2a
         ldlMXDsL/ac2DD/zXD+7e5MwoaCagK/0kE8Yp6ulVHwAsFJZJBnYzFmiM6enlDjum+Gy
         jhn+s+mAXKvJffq86+3Lw/AoovTqloNZ/KerAMA1pbhGg/6dOzGdWfqptv3sjSc+YKou
         KX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vxUHUgqVHZiXL56iT7yZcnrBjHthT4lFIJHATTrR5Vk=;
        b=DWk5/pznzZNiCBudxG67cwSdAYnn0C0M+X0t9vopbgdgXKuibkllkJu8rYHKoOdtnc
         Qy6r3TFFWnOQW0oJHmTubxD7LFGDgvztN5OV2OshNgDfQF8dGIdTYrxbvCXbSN29Gu2s
         gjnMg1K3TYivr5E/cuEOnom27G5PhsVUoMK13RjNbmIrWtF9lq4Yk66K0vgZcoz12Df8
         vjwYjmiZWlejZeOUQ+kel/hobCFM6fj4XEl7g7fgzENzxMcEqwhAf5bQrWqgsrQSHRWK
         NJJPH9MArsOrCTCOPImdp4OfxTBaDl+IbRbq8Xs9nHG1HRTrjJn5UsP2bDn97dZYMs9Q
         rXuA==
X-Gm-Message-State: AOAM5325H4fKuSXrZRd65jzcl0p+ePpbb29payZMaNJlYU7nOWZ/iKj6
	AAO/SnqmQKE5TSGxy1MbQgw9TWyRHjb1HkMaVltp0LJr
X-Google-Smtp-Source: ABdhPJwnHXdF+wo9Aw2wN1DUXDrjJeqQMNFg4D9dHZqVAdgiGei+ZNqnCDlS3JeCPdbSMcKpxQpjtWxGyXJAECHxu+Q=
X-Received: by 2002:a2e:a494:: with SMTP id h20mr1205778lji.292.1615954160624;
 Tue, 16 Mar 2021 21:09:20 -0700 (PDT)
MIME-Version: 1.0
From: "Priyanshu Sharma" <ms.priyanshu.sharma@gmail.com>
Date: Wed, 17 Mar 2021 09:39:09 +0530
Message-ID: <CAA_f9eNSA2FRm+-Vrrady3o6Vuwe-xOmiwvwW-LWKithvx4yog@mail.gmail.com>
Subject: How to create a list of source files for an Image?
To: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b7a7c305bdb3a50c"

--000000000000b7a7c305bdb3a50c
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to create a text file containing a list of all the source files used
to build my Yocto image. Is there any mechanism to do that?

I found out that archiever.bbclass creates a sub-folder deploy/sources,
with all used sources in archived form. But is there any way to directly
create a list file?

Thanks!

Warm regards,
Priyanshu Sharma

--000000000000b7a7c305bdb3a50c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I want to create a text file contai=
ning a list of all the source files used to build my Yocto image. Is there =
any mechanism to do that?<br><br>I found out that archiever.bbclass creates=
 a sub-folder deploy/sources, with all used sources in archived form. But i=
s there any way to directly create a list file?</div><div><br></div><div>Th=
anks!<br><br>Warm=C2=A0regards,<br>Priyanshu Sharma</div></div>

--000000000000b7a7c305bdb3a50c--
