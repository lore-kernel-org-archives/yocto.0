Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
 by mx.groups.io with SMTP id smtpd.web12.9436.1602759152289643110
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Oct 2020 03:52:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zh9eJciM;
 spf=pass (domain: gmail.com, ip: 209.85.217.43, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f43.google.com with SMTP id u74so1231957vsc.2
        for <yocto@lists.yoctoproject.org>; Thu, 15 Oct 2020 03:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=3WOaXCw5omtCaO8H+WwVIph+X30AsW8cZ4giD8CxVEk=;
        b=Zh9eJciM1iVS/CNgFaR/DMCDzatJuEqXjdPs6uvflVkgOYu8umobgwHROjYkx5gzWN
         lApMpwuo2LdytT0Cc9X31FEIsPhYFoEr/G+jQHeO2QEZxVZEmv4fTEqe6U6NcdMkaMxY
         4Rs7eftivsjHfP1Yki2ueBVuACZiOW5mFZ7Q4guIIwPtUIl0ASPlTJ1Bf8dS+9D+rxZh
         juzuBZH8k/snm754YWmQ1YWrxnYejW+tLr/iR2RpgEv+c+4EKa7AHDuiyKvx5ZVzFCRn
         mxMZNQTLqO/jCzJPBkOS49bYW/mE3VQ5yg++LadtqOnIm4OAzqnB7Krcj4vMLwYGXBDB
         6/NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3WOaXCw5omtCaO8H+WwVIph+X30AsW8cZ4giD8CxVEk=;
        b=IIqf+gA11EBclJGrxg88sCbwYp5HfkKk/4B83RdzHxPRe1s4UYZgQEcvoy0W0Ppjqt
         fQTNiBgpX8rLQzwrCg4pkUGrUqci1TMrtB6RlfSMggbbTUxCUyXekX4Sbdv2q3Y6LZUj
         VVRzD1tVu0fjHXYLQTk1LDx4ZNOaNTYZbjdJ1x6Gz+xQSK/vjlpfqirVlsZ6buy6vnkl
         1X4C8b0wmnrA4v1FEGAEPq4ZAo8pyGLmi5dbvlhi1rS+ipyh6GZxlTrdNYdPaZ11RsVi
         qmzvj1YiaDVslA4dQepF7/MaLvZcpmrZE25brqHy8EjgOu6UkTkFXPSzyrgE/AEySdhv
         xo6g==
X-Gm-Message-State: AOAM531ATPg24J/79Y8WFvjSh5iES7hvA2SM8MPgvApu89pqd62jGtZX
	LtSDlGiZ72vznfe4GBEbprStUnmK9gZ59KT4IZXAQD5zPL0=
X-Google-Smtp-Source: ABdhPJw40IdF8CDHbvpZmkzYX1Xy0BwKODCaAZFyMm0HDHTqICyqon9zL2hd0Nc9f40u4Xjm/ZU+2fl19lhnXrUCvRU=
X-Received: by 2002:a67:2f81:: with SMTP id v123mr2034869vsv.16.1602759150948;
 Thu, 15 Oct 2020 03:52:30 -0700 (PDT)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 15 Oct 2020 16:22:19 +0530
Message-ID: <CAJw=dJ-UPSPnJ2Xi6EhxV4TC5BRU8ENTy8yaLBJQ_O7byPxvzw@mail.gmail.com>
Subject: i2c and i2s configuartion in yocto.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000da543c05b1b371cc"

--000000000000da543c05b1b371cc
Content-Type: text/plain; charset="UTF-8"

Hi team,
      We are using audio codec (tlv320aic3109) connected to soc (intel
E3900) via i2c . i2s is for audio transfer . ( Soc is a master and codec as
a slave) .

         We are Using yocto sdk for x86 platform . for x86 platform , dts
file is not there , so where i can mention all codec related stuffs.  ( If
it is ARM architecture means dts file there and we can mention codec stuffs
there.)

        I enabled driver (tlv320aic32xx.c) in menuconfig. for i2cdetect
command it shows slave address . but MCLK i am not getting on
Oscilloscope while probing .
1) how we can configure for i2c and i2s in yocto ?
2) how we can initiate a MCLK from Soc side ?
3) Instead of dts file what is there for x86 arch ?

--000000000000da543c05b1b371cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi team,<div><div>=C2=A0 =C2=A0 =C2=A0 We are using audio =
codec (tlv320aic3109) connected to soc (intel E3900) via i2c . i2s is for a=
udio transfer . ( Soc is a master and codec as a slave) .</div><div>=C2=A0 =
=C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0We are Using yoct=
o sdk for x86 platform . for x86 platform , dts file is not there , so wher=
e i can mention all codec related stuffs.=C2=A0 ( If it is ARM architecture=
 means dts file there and we can mention codec stuffs there.)</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 I enabled dr=
iver (tlv320aic32xx.c) in menuconfig. for i2cdetect command it shows slave =
address=C2=A0. but MCLK i am not getting on Oscilloscope=C2=A0while probing=
 .</div><div>1) how we can configure for i2c and i2s in yocto ?</div><div>2=
) how we can initiate a MCLK from Soc side ?=C2=A0 =C2=A0</div><div>3) Inst=
ead=C2=A0of dts file what is there for x86 arch ?</div></div><div>=C2=A0</d=
iv></div>

--000000000000da543c05b1b371cc--
