Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
 by mx.groups.io with SMTP id smtpd.web11.8204.1625150873052902662
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Jul 2021 07:47:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ey/LA+YZ;
 spf=pass (domain: gmail.com, ip: 209.85.166.174, mailfrom: tomasz.dziendzielski@gmail.com)
Received: by mail-il1-f174.google.com with SMTP id f12so297101ils.11
        for <yocto@lists.yoctoproject.org>; Thu, 01 Jul 2021 07:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Y6o3GtI7xTXlRAs4NPZkntLhn68yvk9bo++wYqXaZ2g=;
        b=Ey/LA+YZFDhWYVLIx0HumI4z2rDQu+sGYI/GXfeOkNVzFR4kuIVWb8Rxz4HPLaTtaS
         d9rCNbR/jidWRU29nwD7dekgFpi5uEdlLJ9o4KnjmpinfXP747f+uPxkydCZviXnicYK
         0XIc24z55WW5qrtgjxU1wERzSr7yLRuMx1N5kr/eDxemDfR7Kdgi2JSBFeqGPpcmQDt8
         obMa9lwfVor1is9qn7Uss6lBEzAs6KrLTQwXYUEld2Ispefm5tFQUT7ykvZsN+OBsoL2
         3dvfhLovpMA5eFg/i5EFLuoALlqwzXdbRM/O6eDOKp59ZD4NeuV0JR5/L1a7D3sz+ZnB
         zLGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Y6o3GtI7xTXlRAs4NPZkntLhn68yvk9bo++wYqXaZ2g=;
        b=F6nJinmg/yp7bBZafOjGOWdLSF+sqdUscDJFHDtJ7X7LqTAmjnEE/T4kEa+elH5FS5
         REuObybP+EVgUQIWSWHA2R8vlP6KSo5ReLaDswnKsAovmYDsHm16ybaU1LkASxpo/UKH
         WkpP81G4jXoJoaQsN1k9U5ybCuWvwjP8qythqaQUY6ARPFHetZiYfBGCI7tEyGnpZK07
         GYm66QrSjk/Cx9OVazT8dR1c6IyOGmG5Pbu3hxY7SkCqu3qNCpb6YyB5cLnOoGF8ve7F
         BZvn0x4QlEVVoU0VqrzgJrG3yGxdmjMFPh1DjpZNoQehLB1miSp+9KjDL9Mdf9aTh4VU
         kSyA==
X-Gm-Message-State: AOAM531CNAoI8HiQEt0n2k0vAhxcfip3LPutHjI67JawoMef/8CgKDkG
	XqPWUEshwIFnjgHqPIrdAY7Sg5WLZk6QxifsfepHw6gspL8=
X-Google-Smtp-Source: ABdhPJw0Vn+dBQvksZjoowXxeDKLHQR71JUoQh2rvcXr767VPLQ8YMR4pjPRSsr3M8BE3cJzLsVdJEwMW8SEkKdiO0E=
X-Received: by 2002:a92:c56c:: with SMTP id b12mr10770181ilj.13.1625150871979;
 Thu, 01 Jul 2021 07:47:51 -0700 (PDT)
MIME-Version: 1.0
From: "Tomasz Dziendzielski" <tomasz.dziendzielski@gmail.com>
Date: Thu, 1 Jul 2021 16:48:05 +0200
Message-ID: <CAJkqNs31M4AgbfzBcfVH3ekTEMuRAXE2XC7JdqFhkjuSfxLgsw@mail.gmail.com>
Subject: Zuul - Project Gating System with Yocto Project
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006e4bae05c610ec9a"

--0000000000006e4bae05c610ec9a
Content-Type: text/plain; charset="UTF-8"

Hello,
is anyone here using Zuul along with Yocto Project? We are thinking about
integrating Zuul to our project that already uses Yocto, but we are not too
familiar with Zuul and we want it to conform to good open source practices,
without losing any advantages of both projects and we want to avoid
creating some hacky monster.
Could you share some suggestions on how it can be combined together and
what is the best approach/structure to do this? Please also share if you
have some "what I wish I'd known" about Zuul integration to Yocto. Any
hints are appreciated.

Best regards,
Tomasz Dziendzielski

--0000000000006e4bae05c610ec9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>is anyone here using Zuul along with=
 Yocto Project? We are thinking about integrating Zuul to our project that =
already uses Yocto, but we are not too familiar with Zuul and we want it to=
  conform to good open source practices, without losing any advantages of b=
oth projects and we want to avoid creating some hacky monster.</div><div>Co=
uld you share some suggestions on how it can be combined together and what =
is  the best approach/structure to do this? Please also share if you have s=
ome &quot;what I wish I&#39;d known&quot; about Zuul integration to Yocto. =
Any hints are appreciated.</div><div><br></div><div>Best regards,</div><div=
>Tomasz Dziendzielski<br></div></div>

--0000000000006e4bae05c610ec9a--
