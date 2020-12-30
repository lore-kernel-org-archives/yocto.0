Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
 by mx.groups.io with SMTP id smtpd.web10.6933.1609337637913502232
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Dec 2020 06:13:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDwaK2UC;
 spf=pass (domain: gmail.com, ip: 209.85.217.42, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f42.google.com with SMTP id e20so8586939vsr.12
        for <yocto@lists.yoctoproject.org>; Wed, 30 Dec 2020 06:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=9MdHw51yzyrHloL6mBKpXO88amY7xlMu2OiazLmRnew=;
        b=EDwaK2UChUbOXAh6NYkciyMZe4jywU+/aa4pxU+6F3LhgyKNJQtHejIZKTMnAe9n6R
         vGudnbGzVzbkslTUfUscLkOZem9XVSZA4rnLKmw+6k6wX/Mgfa13+Hs2fDLC36mXxBfE
         EG/DMCD/Zhh6iNnWKZKltpOTO9s1/NQUaad2Hhpk1PE4bEMYi0Cju2Y0RRrEwrZETs5n
         3uC7qeoo5D3ZpwALxEW2Po0TNe87ObKCRePUafCZLcDhuonmup/oIFYUn3mnVjjnkbQt
         lPEweDQEogOfqktasZh1eDFjnA4QBe2QDIQtgqbF5fhFGCpWZ1oNTh6GwGrQOjOr9LmU
         wPOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9MdHw51yzyrHloL6mBKpXO88amY7xlMu2OiazLmRnew=;
        b=CA+WP5oQNoQPy/sX+Afz9P2wgNcRaP+IKDK3ZCg7diKtjkTPBrFTyUoAakQkcwHuGJ
         UBtCiHp8z1VIV6BtA+/vuElJYMQL1RK2UBWt86+1oIa15vu8OQ4Zx/tSbZ+98fzpOxWj
         4P4cvofdibC+KS/Sv4L8atqsRqfVMWuaAVrBx2Ksh3fPj7SYsjDMn7hEpNhsVp0nI52p
         HyZoorQlTAhn0+EMjlKARtH1DFaBAjBuv/foPZocqV9dtkT46sRgjVKx6DcbGfvkbzFN
         EEEOksHAr53Lugq4/uFeOut7gY4MxpZY8XY5dhfmoobciwEZLOAty/mR3tbZqHI8ZJO/
         6XRQ==
X-Gm-Message-State: AOAM532qIgbHh9oDmHIuaicFflaAGp1vGOgK5DAkpHlu03Ejy9+I7yv/
	RQoYfDMFS7SZwhJRym1B9JXasiRmVd+vUi94DvgOlSea
X-Google-Smtp-Source: ABdhPJzENzkh0z3JKkGaVdRpGlcGAqjEmNh+80S0EI5a+NSC5Sb0j1sJ2dSOXItCdK0MbnYrLlB2Sn1QuB1nq+3Z5FE=
X-Received: by 2002:a67:32c5:: with SMTP id y188mr31942830vsy.4.1609337636693;
 Wed, 30 Dec 2020 06:13:56 -0800 (PST)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Wed, 30 Dec 2020 19:43:45 +0530
Message-ID: <CAJw=dJ8r5X7enDgu7LaUiu3idxHbYNdc736WeE1Kshveg9p00w@mail.gmail.com>
Subject: Making partitions in .hddimg image
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000028ac5c05b7af1ea2"

--00000000000028ac5c05b7af1ea2
Content-Type: text/plain; charset="UTF-8"

Hi,
   For .wic image partiotions ( EFI , OTAROOT ) are already created
likewise ; How to create a partiotions in *core-image-intel.hddimg* image
? in .hddimg only one partition ( boot ) is there .

--00000000000028ac5c05b7af1ea2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0For .wic image partiotions=C2=A0( EFI=
 , OTAROOT ) are already created=C2=A0 likewise ; How to create=C2=A0a part=
iotions=C2=A0in <b>core-image-intel.hddimg</b> image=C2=A0 ? in .hddimg onl=
y one partition=C2=A0( boot ) is there .</div><div>=C2=A0</div><div><br></d=
iv><div><br></div></div>

--00000000000028ac5c05b7af1ea2--
