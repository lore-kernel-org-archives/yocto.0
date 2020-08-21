Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.134066.1598015693849618191
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 06:14:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SwsaL+T+;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: lefevre.da@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id a15so1886129wrh.10
        for <yocto@lists.yoctoproject.org>; Fri, 21 Aug 2020 06:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=2JsxU0LWlNCAyRLJKU9WeBgg63cenfgtFPoXUrBrW+4=;
        b=SwsaL+T++HPb0lIgCo3E92GG3+qF1t0SPRHqm7RtGvDS2BTakMrN86vRfLYarjMYPK
         boOllSRemZEQsiLf24nZCShhT5t7XCliAKG/YR7YoboPNHkaaSgeSvKCx3tsHsS0MHB+
         iMPLRnfizZ54yPTVSws17SrzPbeCLE1ABxCuI7UPvAPz0m7qPIpRnHayn0GD1zi7NFMc
         XGKQGbHzxeoF93oERwjbyqtVVDtT1V62kKA1tdXmOH8St7CmoGEAW8tAJTls/MMDZ65J
         dvdNNvTDKJFc6mKVHmxNHZAkENVGhSONCiGUMiejg4gbE/qBkCg5WE4vmdg8YZGfKWZh
         nimQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2JsxU0LWlNCAyRLJKU9WeBgg63cenfgtFPoXUrBrW+4=;
        b=MMrR/fdTVoY2O/fAT49dOAv65yW0mj32KZKI5NQz606KWaVSNtfMtLnlJ0uXrImlFV
         77Qdyyx2tmuJZLbP8jK2xfi7dxbZTYoHnH3GIX4gbbUDL+KH+qgsr/tWzL8zpXE7Shpf
         eW8RlPFgv686Xoft7ll3h+T6A0t35RRLPJFgvLW3X5v19/aPzJFrpSTyXfHgh7BAlGro
         PkIf2MX7paRMajsvqBrIhQcR5W+T70Qg8W2kQucHfAszNuTqr6CFt+5CYmuF3ZbUz9JO
         xBM5RGYam9vrRpEj28bsWMwzJMUWJmQvucknspDapWw2jPaFjGo7DeBL5/QyVp4ATLxl
         ITdQ==
X-Gm-Message-State: AOAM531aoc9OtMHPrKq2HGeqIbAXvFXD1lZ5IMU718bEfXPuLr0aAFIS
	OIclCOdxO5XPgKo4uFC71aQjSN9Y3uOfuYz7+e71DF5zjA==
X-Google-Smtp-Source: ABdhPJx7N4X6mrATvfLBBBI9uw7nTOQfp2ZoNLD6Tz9qr4EMUyKPbD1JcJ1Trk2rt6LCzTlNW7uJ6w4lsb5A9dlZeVE=
X-Received: by 2002:a5d:484d:: with SMTP id n13mr2691433wrs.297.1598015691915;
 Fri, 21 Aug 2020 06:14:51 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Fri, 21 Aug 2020 16:14:41 +0300
Message-ID: <CA+FhBv9ZurpyfDd_33WVxKZk-TQBuiLYKQea=MqFvj_Jz0URig@mail.gmail.com>
Subject: Changing SDKPATH
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a9841605ad630553"

--000000000000a9841605ad630553
Content-Type: text/plain; charset="UTF-8"

Hi,

I would need that to change the default location for the SDK install script
to avoid mistakes with multiple SDKs and ease installations. How can I
change the SDKPATH?

My distro includes conf/distro/poky.conf and I overwrite
SDKPATH =
"/opt/${IMAGE_BASENAME}-${SDK_VERSION}-${DISTRO_CODENAME}-${MACHINE}"

If I set SDKPATH to something other than /opt/${DISTRO}/${SDK_VERSION} ,
nativesdk-libgcc-initial fails some sanity test:
...
checking how to run the C preprocessor... x86_64-pokysdk-linux-gcc -E
--sysroot=/data/yocto/zeus/build-jetson-xavier/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-initial/7.3.0-r0/recipe-sysroot
configure: error: in
`/data/yocto/zeus/build-jetson-xavier/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-initial/7.3.0-r0/gcc-7.3.0/build.x86_64-pokysdk-linux.x86_64-pokysdk-linux/libgcc':
configure: error: C preprocessor "x86_64-pokysdk-linux-gcc -E
--sysroot=/data/yocto/zeus/build-jetson-xavier/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-initial/7.3.0-r0/recipe-sysroot
" fails sanity check
See `config.log' for more details.
WARNING: exit code 1 from a shell command.
...

Thanks,
-Damien

--000000000000a9841605ad630553
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I would need that to change the default locatio=
n for the SDK install script to avoid mistakes with multiple SDKs and ease =
installations. How can I change the SDKPATH? <br><br>My distro=C2=A0include=
s conf/distro/poky.conf and I overwrite<div>SDKPATH =3D &quot;/opt/${IMAGE_=
BASENAME}-${SDK_VERSION}-${DISTRO_CODENAME}-${MACHINE}&quot;<br><br>If I se=
t SDKPATH to something other than=C2=A0/opt/${DISTRO}/${SDK_VERSION} , nati=
vesdk-libgcc-initial fails some sanity test:<br>...<br></div><div>checking =
how to run the C preprocessor... x86_64-pokysdk-linux-gcc -E --sysroot=3D/d=
ata/yocto/zeus/build-jetson-xavier/tmp/work/x86_64-nativesdk-pokysdk-linux/=
nativesdk-libgcc-initial/7.3.0-r0/recipe-sysroot<br></div><div>configure: e=
rror: in `/data/yocto/zeus/build-jetson-xavier/tmp/work/x86_64-nativesdk-po=
kysdk-linux/nativesdk-libgcc-initial/7.3.0-r0/gcc-7.3.0/build.x86_64-pokysd=
k-linux.x86_64-pokysdk-linux/libgcc&#39;:<br>configure: error: C preprocess=
or &quot;x86_64-pokysdk-linux-gcc -E --sysroot=3D/data/yocto/zeus/build-jet=
son-xavier/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-initial=
/7.3.0-r0/recipe-sysroot &quot; fails sanity check<br>See `config.log&#39; =
for more details.<br>WARNING: exit code 1 from a shell command.<br></div><d=
iv>...</div><div><br></div><div>Thanks,</div><div>-Damien</div></div>

--000000000000a9841605ad630553--
