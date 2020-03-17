Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web12.9208.1584459861781856996
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 08:44:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=p+kcIulc;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: easmith5555@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id v3so21471700iom.13
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 08:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Td/J/QveSEpcIawjtUXXpSweZm/TpPQeYaLkymY7E+c=;
        b=p+kcIulc+O/WjcAFUFeTwFUpDtHdqNSaJP0fbmFFehoFaOyEEiqfFcec/DNlzzGWMT
         2Aw6xXcaFuOro2aRCo+iZVad9xKz+XUm5xG/NK8zjT2OcGpR+ZAoH80bjjn2LAaZF2mX
         8qjzfMfVrgRgDi9+TskjT+eCFoOkQDQRLfGNCXhJOQnYv9CYV0X7kP7vxwt903DI/cVU
         JUCVkNXxHXE9GDAlAqfIeFVSsJvBe+jj+MfbEJ9svc05LNOj+iESJ25NHjorWZsHVBGI
         K73laXoHuMz5ksyY4zFuUf7CY31UiJ87pddjgdsybWK4djNi4UKeSwKuCw36j5UZ7w8z
         WAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Td/J/QveSEpcIawjtUXXpSweZm/TpPQeYaLkymY7E+c=;
        b=g/BTAvh1noFdQFatlI2H8O2mvxETLGQFgqoz9sexzRXKS0+0lrs2rzl4S7oOIsIYNr
         jjh0AOtN0J15/adTM/QAJmANM9T9PcVcBPxNPio7z11h6b9ZHy9rbpJ0lY75R0wIRufr
         BgTFMEj0pP0g+D+I9hiVIM5dUvsxAgJcvoeY0tXUnoJ4pRF/c1aByrijhDCXHR39dHrz
         YJgqmPU4D7Vv4pBlM/e64tpWnHS+dTmkm/Iq8U5tjEBUCo8op33kF8wTJAbCgFT5eCTe
         wf2d6SPwBnSSXpaBVv5C2WP5dfKAxfLmY59aEf+/Zg0lY81E5+5E2m7N8n3L9QhhYyEK
         ZWCw==
X-Gm-Message-State: ANhLgQ3WAXNLQoFex+VS74xeObXe86YEjaWuCKrh/ebQh9n3H2BbKYmK
	Go2DoYw/Rn1tGffqr9qtCMqzXMBUdx6SwrIe3p0MEhshwh4=
X-Google-Smtp-Source: ADFU+vvUgOaQeHslUqgrvzl9pwZCdCnoluP7iQ3usKv62rQ+uKOJr1Vcmf9ryadNqNZ8onEUxWa+eTIlSHkwxhnBkH4=
X-Received: by 2002:a05:6602:1304:: with SMTP id h4mr4687727iov.50.1584459860736;
 Tue, 17 Mar 2020 08:44:20 -0700 (PDT)
MIME-Version: 1.0
From: "Emily" <easmith5555@gmail.com>
Date: Tue, 17 Mar 2020 10:44:10 -0500
Message-ID: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
Subject: How to PROVIDE boost-python
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000028fde705a10ecf3a"

--00000000000028fde705a10ecf3a
Content-Type: text/plain; charset="UTF-8"

Hi all -

I'm trying to build an opca recipe (
https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb)
and it's giving me a build error like:

|
/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
cannot find -lboost_python-mt

Which seems to indicated I need to add boost-python to my list of DEPENDS.
When I do that I get the error:

ERROR: Nothing PROVIDES 'boost-python' (but
/local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/opc-ua/
opc-ua-server-gfex_git.bb DEPENDS on or otherwise requires it). Close
matches:
  boost RPROVIDES boost-python

I've tried adding PACKAGECONFIG_pn-boost="python" to both my local.conf and
to the image definition as I saw this online, but neither seems to work. It
seems like boost-python is being built (I can see it in the list when I run
oe-pkgdata-utils list-pkgs -p boost) but it doesn't seem to be available at
build for this recipe.

If I remove boost from my list of DEPENDS I get an error about that, so
obviously boost itself is available at build for the original recipe. I've
also tried adding boost-native to DEPENDS, also did not work.

Is there something obvious I'm missing, or some trick to making
boost-python available at build for this other recipe?

Thanks!
Emily Smith

--00000000000028fde705a10ecf3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all -=C2=A0<div><br></div><div>I&#39;m trying to build =
an opca recipe (<a href=3D"https://github.com/kratsg/meta-l1calo/blob/add/o=
pcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb">https://github.com/=
kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfe=
x_git.bb</a>) and it&#39;s giving me a build error like:=C2=A0</div><div><b=
r></div><div>| /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64=
-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-=
native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarc=
h64-poky-linux/7.3.0/ld: cannot find -lboost_python-mt<br></div><div><br></=
div><div>Which seems to indicated I need to add boost-python to my list of =
DEPENDS. When I do that I get the error:=C2=A0</div><div><br></div><div>ERR=
OR: Nothing PROVIDES &#39;boost-python&#39; (but /local/d6/easmith5/rocko_b=
itbake/meta-l1calo/recipes-core/opc-ua/<a href=3D"http://opc-ua-server-gfex=
_git.bb">opc-ua-server-gfex_git.bb</a> DEPENDS on or otherwise requires it)=
. Close matches:</div><div>=C2=A0 boost RPROVIDES boost-python=C2=A0</div><=
div><br></div><div>I&#39;ve tried adding=C2=A0PACKAGECONFIG_pn-boost=3D&quo=
t;python&quot; to both my local.conf and to the image definition as I saw t=
his online, but neither seems to work. It seems like boost-python is being =
built (I can see it in the list when I run oe-pkgdata-utils list-pkgs -p bo=
ost) but it doesn&#39;t seem to be available at build for this recipe.=C2=
=A0</div><div><br></div><div>If I remove boost from my list of DEPENDS I ge=
t an error about that, so obviously boost itself is available at build for =
the original recipe. I&#39;ve also tried adding boost-native to DEPENDS, al=
so did not work.=C2=A0</div><div><br></div><div>Is there something=C2=A0obv=
ious I&#39;m missing, or some trick to making boost-python available at bui=
ld for this other recipe?=C2=A0</div><div><br></div><div>Thanks!</div><div>=
Emily Smith</div></div>

--00000000000028fde705a10ecf3a--
