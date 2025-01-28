Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56EF2C0218A
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 19:01:09 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.163])
 by mx.groups.io with SMTP id smtpd.web10.5188.1738090867538160941
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2025 11:01:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=G2ijPC6c;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=qi7NLw1c;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.163, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1738090865; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=p1qiGgPydkjMJyHXqY7KowJk5gqGE0IRmWMWic6S/rlXcrtZ6Rvm7pH+id/6MVtreH
    rKEjm/EnyhmqrQYKSGORrRXpfVgmbGRskxap5uZHTbQqrWYjEsFItBpshFZjOsWGNNbn
    pbw4nMqRskoRBt7lLBrQKq7eXtDTu8FtodDZapvpWKn2wg9HFDuomDDMcFC3OO2qTv0r
    /qjV6ypTo17aaDEnwbxnUirtrU2ogwD+VQ4+RMV9OTQRBUqQ4i6ogQxh+Oy7VJtlfyRf
    YPnzhK/sl7tTDOrFbVMgMuuJ3kfxElvIRnJQfviEDm2VP2TncQnxvTqfh1LZDaZW2pWm
    ycTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1738090865;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=62VBw+ys6Ak+HFl9DzsAMCF3182F+auO5JMEkT/sh8M=;
    b=TDkZ0Nfz5TVrndsY2LBVwWw5q/0lNAzJoTw4bV4JSQeiARoWLIK8pOmFXeNgRDu2YL
    r3dZkQ1SN4nQ7pb08SPIZbC2PsQ+TstZWfdS6A5cdIdoe3EC4q3jo6xhCUCstc6JKGNy
    TM+WfKWSLukkWdlfntfCEQdaon/5464sFGTyH2Q7QNMvctk8a7aZjsF9a8HSZNUbRf7g
    Lx/kwQc3njXNntKStxF3szgpDg/JDxx9gDtU5Tcj87v3yo7aBbu+jXN3JRdl3I2dFMIm
    ZwZtuwFxV1CALcIvY7AbtVHPsxZgqm0y2IN/RXUYFwLv0SU+5EZQKh5IU+olw/iX+8gZ
    yr+g==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1738090865;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=62VBw+ys6Ak+HFl9DzsAMCF3182F+auO5JMEkT/sh8M=;
    b=G2ijPC6cH/sqDAMQ5a9sSBZ4wR7u6uG3FwzUKT56/O8uIqDp0L5KiyFn5g2heS6KWm
    W9SdNgQGXNDOzmUKg8IacFQsHi1BtMzr6LEj/D3BItYmf6CnrkXlTWppIjZfpu8/onF/
    Dxg1c0KZ3lrsr8Z3Tx04k9TIuQ4DT86KV9OY7FfWT5B/LdwCjrTpz9orOCMtwakrEBpI
    L69UrRckWVVc53AhDyx8ijRmepDXFpxgMEfZkp11CwEduFojmY7KtPQvuvWxR4ue3W3V
    IEQa/sdJ3T6P7sen/llkTPYo/Dci+/558pIEpNf3xzN/wx9kv9Ooi8RcQJUksTycDIsd
    54Yw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1738090865;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=62VBw+ys6Ak+HFl9DzsAMCF3182F+auO5JMEkT/sh8M=;
    b=qi7NLw1cuCsQXCruJDN/LI7Ux9sQpGvq6jxkEarAtCtQgmDe7oC7lWq8s0vWVCqr9w
    ugdkKv8IpN8wemnDnqCA==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7TVoM22VIJQXcvOsjy38"
Received: from ox-live-app305.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.17 AUTH)
    with ESMTPSA id j04bdd10SJ150d7
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate)
    for <yocto@lists.yoctoproject.org>;
    Tue, 28 Jan 2025 20:01:05 +0100 (CET)
Date: Tue, 28 Jan 2025 20:01:05 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <1646221241.2878887.1738090865572@webmail.strato.de>
Subject: Building Chromium for Toradex Verdin Module (Kirkstone)
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2878886_1594319869.1738090865564"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev72
X-Originating-Client: open-xchange-appsuite
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 19:01:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64667

------=_Part_2878886_1594319869.1738090865564
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
=20
I try to build Chromium for a Toradex module and a custom Kirkstone BSP wit=
h the help of this guide from Toradex: https://developer.toradex.com/linux-=
bsp/6/application-development/gui/how-to-use-web-browser-linux. https://dev=
eloper.toradex.com/linux-bsp/6/application-development/gui/how-to-use-web-b=
rowser-linux
=20
I had a few issues with applying these patches so I had to remove a few bec=
ause Yocto was complaining that some patches were already applied. After fi=
xing this I run into this issue:
=20
| aarch64-tdx-linux-ld.lld: error: undefined symbol: createFrameBuffer(void=
*, void*, int, int)
| >>> referenced by entry_points.cpp:1745 (./../../third_party/swiftshader/=
src/OpenGL/libGLESv2/entry_points.cpp:1745)
| >>> thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(Lib=
GLESv2exports::LibGLESv2exports())
| >>> referenced by entry_points.cpp:1745 (./../../third_party/swiftshader/=
src/OpenGL/libGLESv2/entry_points.cpp:1745)
| >>> thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(Lib=
GLESv2exports::LibGLESv2exports())
| clang-14: error: linker command failed with exit code 1 (use -v to see in=
vocation)
=20
With the following build configuration:
=20
BB_VERSION =3D "2.0.0"
BUILD_SYS =3D "x86_64-linux"
NATIVELSBSTRING =3D "universal"
TARGET_SYS =3D "aarch64-tdx-linux"
MACHINE =3D "verdin-imx8mp"
DISTRO =3D "tdx-wayland"
DISTRO_VERSION =3D "6.8.1-devel-20250128181443+build.0"
TUNE_FEATURES =3D "aarch64 armv8a crc cortexa53"
TARGET_FPU =3D ""
meta-filesystems
meta-gnome
meta-xfce
meta-initramfs
meta-networking
meta-multimedia
meta-python =3D "HEAD:66ec16850573a7ec69248b81f9904cdfba79b930"
meta-clang =3D "kirkstone:d7f827890d0865c9862eeaee42fd367515d59557"
meta =3D "HEAD:8c32d91b64ae296d7832ddeb42983f4f3c237946"
meta-oe
meta-webserver =3D "HEAD:de8681b4a2a101b99dd2c48d89a7de2ccd9a961f"
meta-virtualization =3D "HEAD:a055d7dcafc58855081a5eac9a46b93b9b51012b"
meta-cloud-services
meta-openstack =3D "HEAD:783826eceb1b09496099f00a008062c0f9f4ee4e"
meta-toradex-nxp =3D "HEAD:a82c2e40db2991924b21b12eb141e6fe5b62bb13"
meta-toradex-bsp-common =3D "HEAD:ba654fce46cb76cf9b5141a219506f27db9d81bb"
meta-toradex-demos =3D "HEAD:ad72d14becf6b54c1c76864eb691a369307672fa"
meta-toradex-distro =3D "HEAD:3c38a3acc69b7ad28908044bc2735a9d4f2b4e9f"
meta-toradex-chromium =3D "kirkstone:dabc120c27d7050a5fc881dbfda1bbf8410dbe=
72"
meta-freescale-distro =3D "HEAD:d5bbb487b2816dfc74984a78b67f7361ce404253"
meta-freescale =3D "HEAD:c525e0c19bdc46d45f71873b5f286f49abb69418"
meta-freescale-3rdparty =3D "HEAD:48516272d97f9415e0ee3ab54a923e4c40143e69"
meta-tpm =3D "HEAD:b9cf9cd639bc8d1b4828eb0bd012b71486d35176"
meta-qt5 =3D "HEAD:644ebf220245bdc06e7696ccc90acc97a0dd2566"
meta-poky =3D "HEAD:6e8a5bac75ca114ef2b4d3ca150b3f501519ea8f"
meta-lts-mixins =3D "kirkstone/rust:9bc06b6a761f28cf82aae8a99afe27ed5e2ce4c=
9"
meta-rust-bin =3D "<unknown>:<unknown>"
meta-chromium =3D "HEAD:e232c2e21b96dc092d9af8bea4b3a528e7a46dd6"
=20
Has anybody an idea where the issue comes from?
=20
Thanks!
=20
Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
=20
Ing. Daniel Kampert, M. Sc.
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
Phone: +49 (0)174 6932561
E-Mail: kontakt@daniel-kampert.de mailto:kontakt@daniel-kampert.de
Web: www.daniel-kampert.de https://www.daniel-kampert.de
------=_Part_2878886_1594319869.1738090865564
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div class=3D"default-style">
   Hi,
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   I try to build Chromium for a Toradex module and a custom Kirkstone BSP =
with the help of this guide from Toradex: <a href=3D"https://developer.tora=
dex.com/linux-bsp/6/application-development/gui/how-to-use-web-browser-linu=
x">https://developer.toradex.com/linux-bsp/6/application-development/gui/ho=
w-to-use-web-browser-linux.</a>
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   I had a few issues with applying these patches so I had to remove a few =
because Yocto was complaining that some patches were already applied. After=
 fixing this I run into this issue:
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   <em>| aarch64-tdx-linux-ld.lld: error: undefined symbol: createFrameBuff=
er(void*, void*, int, int)</em>
   <br><em>| &gt;&gt;&gt; referenced by entry_points.cpp:1745 (./../../thir=
d_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp:1745)</em>
   <br><em>| &gt;&gt;&gt; thinlto-cache/llvmcache-4D23FCCCC063500613CA78894=
C3B40A545B5F5A7:(LibGLESv2exports::LibGLESv2exports())</em>
   <br><em>| &gt;&gt;&gt; referenced by entry_points.cpp:1745 (./../../thir=
d_party/swiftshader/src/OpenGL/libGLESv2/entry_points.cpp:1745)</em>
   <br><em>| &gt;&gt;&gt; thinlto-cache/llvmcache-4D23FCCCC063500613CA78894=
C3B40A545B5F5A7:(LibGLESv2exports::LibGLESv2exports())</em>
   <br><em>| clang-14: error: linker command failed with exit code 1 (use -=
v to see invocation)</em>
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   With the following build configuration:
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   <em>BB_VERSION =3D "2.0.0"</em>
   <br><em>BUILD_SYS =3D "x86_64-linux"</em>
   <br><em>NATIVELSBSTRING =3D "universal"</em>
   <br><em>TARGET_SYS =3D "aarch64-tdx-linux"</em>
   <br><em>MACHINE =3D "verdin-imx8mp"</em>
   <br><em>DISTRO =3D "tdx-wayland"</em>
   <br><em>DISTRO_VERSION =3D "6.8.1-devel-20250128181443+build.0"</em>
   <br><em>TUNE_FEATURES =3D "aarch64 armv8a crc cortexa53"</em>
   <br><em>TARGET_FPU =3D ""</em>
   <br><em>meta-filesystems </em>
   <br><em>meta-gnome </em>
   <br><em>meta-xfce </em>
   <br><em>meta-initramfs </em>
   <br><em>meta-networking </em>
   <br><em>meta-multimedia </em>
   <br><em>meta-python =3D "HEAD:66ec16850573a7ec69248b81f9904cdfba79b930"<=
/em>
   <br><em>meta-clang =3D "kirkstone:d7f827890d0865c9862eeaee42fd367515d595=
57"</em>
   <br><em>meta =3D "HEAD:8c32d91b64ae296d7832ddeb42983f4f3c237946"</em>
   <br><em>meta-oe </em>
   <br><em>meta-webserver =3D "HEAD:de8681b4a2a101b99dd2c48d89a7de2ccd9a961=
f"</em>
   <br><em>meta-virtualization =3D "HEAD:a055d7dcafc58855081a5eac9a46b93b9b=
51012b"</em>
   <br><em>meta-cloud-services </em>
   <br><em>meta-openstack =3D "HEAD:783826eceb1b09496099f00a008062c0f9f4ee4=
e"</em>
   <br><em>meta-toradex-nxp =3D "HEAD:a82c2e40db2991924b21b12eb141e6fe5b62b=
b13"</em>
   <br><em>meta-toradex-bsp-common =3D "HEAD:ba654fce46cb76cf9b5141a219506f=
27db9d81bb"</em>
   <br><em>meta-toradex-demos =3D "HEAD:ad72d14becf6b54c1c76864eb691a369307=
672fa"</em>
   <br><em>meta-toradex-distro =3D "HEAD:3c38a3acc69b7ad28908044bc2735a9d4f=
2b4e9f"</em>
   <br><em>meta-toradex-chromium =3D "kirkstone:dabc120c27d7050a5fc881dbfda=
1bbf8410dbe72"</em>
   <br><em>meta-freescale-distro =3D "HEAD:d5bbb487b2816dfc74984a78b67f7361=
ce404253"</em>
   <br><em>meta-freescale =3D "HEAD:c525e0c19bdc46d45f71873b5f286f49abb6941=
8"</em>
   <br><em>meta-freescale-3rdparty =3D "HEAD:48516272d97f9415e0ee3ab54a923e=
4c40143e69"</em>
   <br><em>meta-tpm =3D "HEAD:b9cf9cd639bc8d1b4828eb0bd012b71486d35176"</em=
>
   <br><em>meta-qt5 =3D "HEAD:644ebf220245bdc06e7696ccc90acc97a0dd2566"</em=
>
   <br><em>meta-poky =3D "HEAD:6e8a5bac75ca114ef2b4d3ca150b3f501519ea8f"</e=
m>
   <br><em>meta-lts-mixins =3D "kirkstone/rust:9bc06b6a761f28cf82aae8a99afe=
27ed5e2ce4c9"</em>
   <br><em>meta-rust-bin =3D "&lt;unknown&gt;:&lt;unknown&gt;"</em>
   <br><em>meta-chromium =3D "HEAD:e232c2e21b96dc092d9af8bea4b3a528e7a46dd6=
"</em>
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"io-ox-signature">=20
   <div class=3D"default-style">
    Has anybody an idea where the issue comes from?
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Thanks!
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Ing. Daniel Kampert, M. Sc.=20
    <br>Embedded Systems Solutions
   </div>=20
   <div class=3D"default-style">=20
    <div>
     Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland=20
     <br>Phone: +49 (0)174 6932561=20
     <br>E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de">kontakt@danie=
l-kampert.de</a>=20
     <br>Web:&nbsp;<a href=3D"https://www.daniel-kampert.de">www.daniel-kam=
pert.de</a>
    </div>=20
   </div>=20
  </div>=20
 </body>
</html>
------=_Part_2878886_1594319869.1738090865564--

