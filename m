Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.6761.1625063141622126325
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 07:25:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AI7xl2Wz;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: thisisaash9698@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id 19so2548066qky.13
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 07:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=h9iu8U0DCljcNgpBoAyVP5L93CBsj6uus7/EB3pzqi8=;
        b=AI7xl2WzLlRFWIOs6YSP0sIhGXbDvDQgYR4Bby+Fyft0JtF0/XshT2dxGajZNTGR/j
         lkKMK3yRoGpkafEVm1C0UyYpTsll8HyY6aEoOGdLyMRm6DPY4KnlVmlIFLoC08q6g+XK
         4filAsbccXo1AnzNMxUMyJIogpKcn/za7QJqKXwDbzj16UylJ2wz6ZNZ/9xqzzvPi1bh
         wAJIjq4gMW9kPzXkYrqFcSxD1RTBquBIJ72zCdZsH4UV6SOaWmww+9OfA54nJHJAqXTu
         K/KieRszBwej9DJOjpvxB6pUzT6VcKRxgDxASgaz4tZ7aYKrSnDY/3KGryK+0otOf0av
         YvOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=h9iu8U0DCljcNgpBoAyVP5L93CBsj6uus7/EB3pzqi8=;
        b=RDgqRnp4+otyj25Uw0zv1nG58UvJgD15CocadiRAi3GRC89k7XiPEkZ037QZsfFuJP
         rNr0ym4E9uPcdSrNXgx+NtSEM3d95f2PmTLhIPD0iZv0sFskWfANnD+jrw/b9VXhRqR5
         ptV6q3o5BhBbrSfhlNlevUHQrC2G+VPCG/sA0oJNlJuriODYQdCA4HyWB6/nwM0XlDrx
         OCEDLSCv5OhZX4APst83yXz2VvoI2FDa0nWFrkbBTaBr4o1m6Qxrc9t8RwxU16Ozs/hO
         oHf/poQNwSsj4RezGwpXp3LIYWORUYjniTDE2OROHZbReytcNxHLz6fOeavSVcIDjisp
         l0Ow==
X-Gm-Message-State: AOAM531+5TsQ5ftmnjWWK98blFHzn9pRKV/bfXNLHymMdZ0DiGjoULjH
	QTfNYcRq9HzQIlhEYbmRK6XMGqbftZe1atdGi9Xc+Xw8Qbw=
X-Google-Smtp-Source: ABdhPJzX+U9//IxDNFw8MBn68vRltaERuGCmEOSAD9ygWNu17FFXok65lImgTX7So9s+5Z2CXVfLzZTZTy4Krgxmyxs=
X-Received: by 2002:a05:620a:12ed:: with SMTP id f13mr1581459qkl.389.1625063140547;
 Wed, 30 Jun 2021 07:25:40 -0700 (PDT)
MIME-Version: 1.0
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Wed, 30 Jun 2021 19:55:29 +0530
Message-ID: <CANVQz1Z-qW8hbz3tA0EvUGPR2AaO4BrcBaVN1jbqyia-peMY2w@mail.gmail.com>
Subject: Python2 in Gatesgarth
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003ae04605c5fc7f0f"

--0000000000003ae04605c5fc7f0f
Content-Type: text/plain; charset="UTF-8"

Hello Developers,

We are migrating our platforms from Zeus to Gatesgarth, We could see that
the native Python2 bb file and core modules have been removed.

 As much of our platform code is in Python2, I was wondering if there is
some way we can re-enable python2 support in our yocto environment to
compile/run python2 scripts ?

Thanks in Advance,

Thanks & Regards
Aashik

--0000000000003ae04605c5fc7f0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Developers,<div><br></div><div>We are migrating our =
platforms from Zeus to Gatesgarth, We could see that the native Python2 bb =
file and core modules have been removed.</div><div><br></div><div>=C2=A0As =
much of our platform code is in Python2, I was wondering if there is some w=
ay we can re-enable python2 support in our yocto environment to compile/run=
 python2 scripts ?</div><div><br></div><div>Thanks in Advance,</div><div><b=
r>Thanks &amp; Regards</div><div>Aashik</div></div>

--0000000000003ae04605c5fc7f0f--
