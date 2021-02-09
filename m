Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web12.7459.1612856354832295886
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 23:39:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mZWoYsU+;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: amayajindal786@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id 133so4566538ybd.5;
        Mon, 08 Feb 2021 23:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=erjOvaFDKXFHa1jwYs6j6MxViKxgtSzwu6teJtMANTg=;
        b=mZWoYsU+LL9e7k2XrkD70CMP0KprCYN5wTmxU1TtwzWI1wYunWoqfpNvSCI46xnWVm
         Re7xlFzKl4aat5Vx0okhYYXy+i10S/ia0umIkeT7O8k5zjoOJ8EGHlOUiSHEWhblc9eu
         OA42O83av02zTJF2dGf7Ve9o+0sFykJelMOYEHGgaGsaRSH2pL+/RHaMrzIMaM2VbL6d
         rV3aUeLGavh6vxMWSXXKzzI7S64l7NwuhbhuNoeFOCX3I6KVv06q02/B2b/72DC4Hk5o
         cOVK84oimjMfBQF5EmafFmq+5wFsBVecpkLwhYulss2V9t6nluvU73JjpBFOjy9XXy98
         WfUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=erjOvaFDKXFHa1jwYs6j6MxViKxgtSzwu6teJtMANTg=;
        b=nxnACAt5ycmgKbjonEX3Rjmz+enocG/eD8Z2H5xz1qZTw82YxgK9fzhrKNuPyzn81l
         isQG+dp3YqxYALePWncrzSk6E649N65ToEJDUkbq0mJLqc0dwt/DA8M0KKefraXJR0GN
         ucJ0sfhJLS6b0y7x7SW0Wkv4G+MpxwnVX7d9MXGYoXTiG2Ux7iTESSSRHRt0JyXpY4mi
         P5mJdh1PYvgzUrGb/vsjhjfi1I88XEq3ND/ft+q5cAP/LgJEI2HArXCCS7n+DkRZJeqi
         XzAPOegnc0ARM+aHrbbazSIP0cpSoTIFLXrqaUAfmV16rP/Q9NCNTRyCcl3hfn39oAkQ
         QsYA==
X-Gm-Message-State: AOAM530qx9zNM/UYF0gTVCouABRj0UVcqsJe8G/MHV03dlU9QCLA1jFn
	ch8iims6QIf3/5fcCftKiRkDADTZYNZ5D9aMvf4=
X-Google-Smtp-Source: ABdhPJw2hm8R1/SrXwuHyOBsSvCnEgvm4zc0zjg9K5gh2Qe0sPw3WWQal3Nm38QurVqr3TaBOF5+egcNgLUyObQ5rJ8=
X-Received: by 2002:a25:7d01:: with SMTP id y1mr31976383ybc.152.1612856353988;
 Mon, 08 Feb 2021 23:39:13 -0800 (PST)
MIME-Version: 1.0
From: "amaya jindal" <amayajindal786@gmail.com>
Date: Tue, 9 Feb 2021 13:09:01 +0530
Message-ID: <CAHXFBWvcevj2eFiKq2VT=+yDd8SqRyzPzX4AfycFM3J2gQ0Muw@mail.gmail.com>
Subject: Port toolchain source 4.9.3 to Rocko yocto
To: yocto <yocto@yoctoproject.org>, yocto@lists.yoctoproject.org, 
	"Khem Raj via Lists.Yoctoproject.Org" <raj.khem=gmail.com@lists.yoctoproject.org>, 
	"Mikael Falkvidd via lists.yoctoproject.org" <yocto=mjo.se@lists.yoctoproject.org>, robert.berger.yocto.user@gmail.com
Content-Type: multipart/alternative; boundary="0000000000000da18605bae26203"

--0000000000000da18605bae26203
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to port old version of toolchain ie gcc 4.9.3 to Rocko version of
yocto. I am getting errors in libgcc-initial. Please suggest any one has
performed the same. Rocko has currently 5.4 gcc version that we don't want
to use  currently. Please suggest.

Regards,
Rohit

--0000000000000da18605bae26203
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">I =
want to port old version of toolchain ie gcc 4.9.3 to Rocko version of yoct=
o. I am getting errors in libgcc-initial. Please suggest any one has perfor=
med the same. Rocko has currently 5.4 gcc version that we don&#39;t want to=
 use=C2=A0 currently. Please suggest.</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Regards,=C2=A0</div><div dir=3D"auto">Rohit=C2=A0</div></div>

--0000000000000da18605bae26203--
