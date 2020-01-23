Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web11.4277.1579761854636203148
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 22:44:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=NhJW+H/B;
 spf=pass (domain: linaro.org, ip: 209.85.208.174, mailfrom: sumit.garg@linaro.org)
Received: by mail-lj1-f174.google.com with SMTP id q8so1916735ljj.11
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2020 22:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=vfr/2vKvVJ9lPH/7iUJJ507TvK5P2A5zhJR5T+cOLyE=;
        b=NhJW+H/BO8z04obfAz6Xf5TlLxpk0fSK7Muw1QvFJmnlb4mqlDVcRmwSJu046BJ5wx
         T1/GuRpI4MHHZWio2nEbLwc8i2ml6YuguUyJGDefvDXSKafmew7kfHCHJ20SBELA7CKr
         Q+Llot5SBjvcNMECBySqzHMHdI+1Krvi1L82qJLvl8eYorW1RpScxCKQDmo/2uThMrQw
         EWrG7mVLXWIEPzjLIQMTh6DpkzYRtWc5WTFL7sK2WWpfpB34f4/8vcI3JWeqC+WqRgXt
         hgvW4lH7wjJrTW0siYYgF/nunjzhf4lgZIs0YCrtitcURg7VFebM2AjhGLlSf8sxyV9p
         bSew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=vfr/2vKvVJ9lPH/7iUJJ507TvK5P2A5zhJR5T+cOLyE=;
        b=bM6W5taH15ZizUNn2zrYmjRBN+EbC2lJvB9Cggmyfv8J/ZyrNZUk7L1hUzBYu0sf3w
         NCHQV9BNvW/TlhVL9it0CdhpsMw3LaEdhUN00uqrYmkpsDw2mqF8LFOLG885UqOvbO1O
         STLs9VcZ8UUXnyhAg9VC8J0hA9vbjWAIfghdbBR+8JFCqUXqiQnyyyUBQdb6EPH6r3Ex
         ylTtTv+s9U4J8oaxtOOYhtuPXkTAD0VO5LkvD+eU+AhymVRikDHGvHw7Aw01rGcYZX1g
         nj4V2TF8z0pDFqC5rx+vPIdRtfZ0OoRyHhaev+C6a/wpq8lO0uztRrFAALBS25+uSMUB
         18wQ==
X-Gm-Message-State: APjAAAWp4cbTC7KuSdkM5B5JUrTtQY05BdASML8RKknBBfCJYAkCJ3Zc
	aKjqsUtnMhUNMU33+mjGJSgbs8XpcmGp8cTFAgVKN4fCDQ0=
X-Google-Smtp-Source: APXvYqzsXKRV0BhZyPy5s9rANb9ezOZ2sHCPB/Xl0y8C7vX+oUIlQdnVHEWjORCmPu6ldIP5SrY1gpEWO10KY/GsXow=
X-Received: by 2002:a05:651c:30a:: with SMTP id a10mr21411354ljp.101.1579761852385;
 Wed, 22 Jan 2020 22:44:12 -0800 (PST)
MIME-Version: 1.0
From: "Sumit Garg" <sumit.garg@linaro.org>
Date: Thu, 23 Jan 2020 12:14:01 +0530
Message-ID: <CAFA6WYMT4PYbt9BzCVENyWEBsF4gMyqUOhN5nWioGspzX60B6w@mail.gmail.com>
Subject: meta-linaro support for ARM GCC 9.2-2019.12 toolchain
To: yocto@lists.yoctoproject.org, yocto-announce@lists.yoctoproject.org, 
	meta-arm@lists.yoctoproject.org, openembedded@lists.linaro.org
Cc: Daniel Thompson <daniel.thompson@linaro.org>
Content-Type: multipart/alternative; boundary="0000000000000af511059cc8f8ca"

--0000000000000af511059cc8f8ca
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,

We are pleased to announce that support for ARM GCC 9.2-2019.12 [1]
toolchain has been added in meta-linaro [2].

   - Support for ARM GCC 9.2 toolchain built from source, steps to use it:
      - Add <path-to-meta-linaro-repo>/meta-linaro-toolchain/ to BBLAYERS
      in conf/bblayers.conf.
      - Configure: GCCVERSION = "arm-9.2" in conf/local.conf.


   - Support for prebuilt ARM GCC 9.2 toolchain, steps to use it:
      - Add <path-to-meta-linaro-repo>/meta-linaro-toolchain/ to BBLAYERS
      in conf/bblayers.conf.
      - Configure: TCMODE = "external-arm" in conf/local.conf.
      - For AArch64 (eg. qemuarm64 machine in poky distro)
         - Configure: EXTERNAL_TOOLCHAIN =
         "<installation-path>/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu"
in
         conf/local.conf.
      - For AArch32 (eg. qemuarm machine in poky distro)
         - Configure: EXTERNAL_TOOLCHAIN =
         "<installation-path>/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf"
         in conf/local.conf.

Distro testing:
===========

   - poky distro (branch: zeus, machines: qemuarm and qemuarm64)
      - Build and boot tested.


   - RPB distro (branch: zeus, machine: dragonboard-410c)
      - Build and boot tested.


   - World builds (branch: zeus, machines: qemuarm and qemuarm64) for
   following layers:
      - poky/meta
      - poky/meta-poky
      - poky/meta-yocto-bsp
      - meta-openembedded/meta-oe
      - meta-openembedded/meta-python
      - meta-openembedded/meta-networking

Known issues:
===========

   - mariadb build failure with ARM GCC 9.2 toolchain built from source:
      - Recipe fix patch [3] accepted in OE upstream.


   - Native tools dependency issues seen with multiple recipes (psmisc,
   xclock, ndisc6, dovecot, man-db, drbd-utils and unbound) when using
   prebuilt ARM GCC 9.2 toolchain.
      - Fixes posted in OE upstream [4] [5].

Reporting bugs:
============

Please report any issue here [6].

[1]
https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads
[2] https://git.linaro.org/openembedded/meta-linaro.git/?h=master
[3] https://patchwork.openembedded.org/patch/169296/
[4] https://patchwork.openembedded.org/patch/169289/
[5] https://patchwork.openembedded.org/series/22188/
[6] https://bugs.linaro.org/enter_bug.cgi?product=Linaro%20OpenEmbedded

Happy hacking!,

Regards,
Sumit

--0000000000000af511059cc8f8ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Everyone,<br><br>We are pleased to announce that s=
upport for ARM GCC 9.2-2019.12 [1] toolchain has been added in meta-linaro =
[2].<br><div><ul><li style=3D"margin-left:15px">Support for ARM GCC 9.2 too=
lchain built from source, steps to use it:</li><ul><li style=3D"margin-left=
:15px">Add &lt;path-to-meta-linaro-repo&gt;/meta-linaro-toolchain/ to BBLAY=
ERS in conf/bblayers.conf.</li><li style=3D"margin-left:15px">Configure: GC=
CVERSION =3D &quot;arm-9.2&quot; in conf/local.conf.</li></ul></ul><ul><li =
style=3D"margin-left:15px">Support for prebuilt ARM GCC 9.2 toolchain, step=
s to use it:</li><ul><li style=3D"margin-left:15px">Add &lt;path-to-meta-li=
naro-repo&gt;/meta-linaro-toolchain/ to BBLAYERS in conf/bblayers.conf.</li=
><li style=3D"margin-left:15px">Configure: TCMODE =3D &quot;external-arm&qu=
ot; in conf/local.conf.</li><li style=3D"margin-left:15px">For AArch64 (eg.=
 qemuarm64 machine in poky distro)</li><ul><li style=3D"margin-left:15px">C=
onfigure: EXTERNAL_TOOLCHAIN =3D &quot;&lt;installation-path&gt;/gcc-arm-9.=
2-2019.12-x86_64-aarch64-none-linux-gnu&quot; in conf/local.conf.</li></ul>=
<li style=3D"margin-left:15px">For AArch32 (eg. qemuarm machine in poky dis=
tro)</li><ul><li style=3D"margin-left:15px">Configure: EXTERNAL_TOOLCHAIN =
=3D &quot;&lt;installation-path&gt;/gcc-arm-9.2-2019.12-x86_64-arm-none-lin=
ux-gnueabihf&quot; in conf/local.conf.</li></ul></ul></ul>Distro testing:<b=
r>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><ul><li style=3D"margin-left:15px">p=
oky distro (branch: zeus, machines: qemuarm and qemuarm64)</li><ul><li styl=
e=3D"margin-left:15px">Build and boot tested.</li></ul></ul><ul><li style=
=3D"margin-left:15px">RPB distro (branch: zeus, machine: dragonboard-410c)<=
/li><ul><li style=3D"margin-left:15px">Build and boot tested.</li></ul></ul=
><ul><li style=3D"margin-left:15px">World builds (branch: zeus, machines: q=
emuarm and qemuarm64) for following layers:</li><ul><li style=3D"margin-lef=
t:15px">poky/meta</li><li style=3D"margin-left:15px">poky/meta-poky</li><li=
 style=3D"margin-left:15px">poky/meta-yocto-bsp</li><li style=3D"margin-lef=
t:15px">meta-openembedded/meta-oe</li><li style=3D"margin-left:15px">meta-o=
penembedded/meta-python</li><li style=3D"margin-left:15px">meta-openembedde=
d/meta-networking</li></ul></ul>Known issues:<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br><ul><li style=3D"margin-left:15px">mariadb build failure with =
ARM GCC 9.2 toolchain built from source:</li><ul><li style=3D"margin-left:1=
5px">Recipe fix patch [3] accepted in OE upstream.</li></ul></ul><ul><li st=
yle=3D"margin-left:15px">Native tools dependency issues seen with multiple =
recipes (psmisc, xclock, ndisc6, dovecot, man-db, drbd-utils and unbound) w=
hen using prebuilt ARM GCC 9.2 toolchain.</li><ul><li style=3D"margin-left:=
15px">Fixes posted in OE upstream [4] [5].</li></ul></ul>Reporting bugs:<br=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br>Please report any issue here [=
6].<br><br>[1]=C2=A0<a href=3D"https://developer.arm.com/tools-and-software=
/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads" target=
=3D"_blank">https://developer.arm.com/tools-and-software/open-source-softwa=
re/developer-tools/gnu-toolchain/gnu-a/downloads</a><br>[2]=C2=A0<a href=3D=
"https://git.linaro.org/openembedded/meta-linaro.git/?h=3Dmaster" target=3D=
"_blank">https://git.linaro.org/openembedded/meta-linaro.git/?h=3Dmaster</a=
><br>[3]=C2=A0<a href=3D"https://patchwork.openembedded.org/patch/169296/" =
target=3D"_blank">https://patchwork.openembedded.org/patch/169296/</a><br>[=
4]=C2=A0<a href=3D"https://patchwork.openembedded.org/patch/169289/" target=
=3D"_blank">https://patchwork.openembedded.org/patch/169289/</a><br>[5]=C2=
=A0<a href=3D"https://patchwork.openembedded.org/series/22188/" target=3D"_=
blank">https://patchwork.openembedded.org/series/22188/</a><br>[6]=C2=A0<a =
href=3D"https://bugs.linaro.org/enter_bug.cgi?product=3DLinaro%20OpenEmbedd=
ed" target=3D"_blank">https://bugs.linaro.org/enter_bug.cgi?product=3DLinar=
o%20OpenEmbedded</a><br><br>Happy hacking!,<br><br></div><div>Regards,<br>S=
umit</div></div></div>

--0000000000000af511059cc8f8ca--
