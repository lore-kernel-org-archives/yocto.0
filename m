Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
 by mx.groups.io with SMTP id smtpd.web11.11626.1575902251722394233
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 06:37:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=COJJTa3Z;
 spf=pass (domain: gmail.com, ip: 209.85.208.193, mailfrom: dimtass@gmail.com)
Received: by mail-lj1-f193.google.com with SMTP id z17so15847581ljk.13
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2019 06:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=dRJ+UI0zDNx7UfrzfdEtUDY/j4nUVBKMgd8G5ylZu8k=;
        b=COJJTa3ZHcY3mXv2C2Xg/RkRsXUhxantXb9VH6ylbht0ShiYJN+VC0Noyap70DXj4P
         2TV+ZseErWh+tjsRYL2ZBnY6ga0d0/R1Ok+TcsUjZJB2SoauS1NV0oOycnG7Bp5TJOvo
         RKI06AY+xN4M46+qTCxgWJFs5E0jEBWM0oKJEhHqTmle1eyL9qTsNJj1bK/cpfBHOzFt
         e3P+7G9DVKRPJ58/df4gmpdZZpNnaZzcfflXloGoHmPkakWKTKFT4Cvs+7dTVqOOQ5mq
         sYXjzQ4hbI+wdWabPY9eomlYJNEapRaCA25xDZX/VyV8CXwCn39DmflYCBYmhq6mk0tB
         2LPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dRJ+UI0zDNx7UfrzfdEtUDY/j4nUVBKMgd8G5ylZu8k=;
        b=mjlOgI3mxcEY3RXMQ2UoDMmQ5DT4WbGdapD/SjuBcviZMWHvSrF3bCADBfYkg1DGQm
         u7EBepGAamSpyRBkqjhnIm5lhxCrWTAexKCHJSQBdm8P5kMP/5HM+vGNx6YLb605ObCb
         +LTagk8aWcV/Kd0a6HMzMIkTgL/AWQUbiAZCd+ct7M7yS3E118nQ/kQ7Pj/hV3u/HU4d
         HE5TMHtKlTIfh5xWf14CHj8wqImCJmf2y41x6e5ZbuB8O2uz5+NJ2+sCSo79it4pzl5J
         ofggm5bhB9bZ9HW0C48nNkRJ6oZE/vfhtw99Do17CaF+AlHAODYy5H20mlZxu6X/qmuU
         yNGg==
X-Gm-Message-State: APjAAAXTayGrWw5dDzhpcrK1XNVdRUJvkfRHaaoKfo3DJlqVdkHk6Q8N
	g4LpWFMUXyRswwBmC2ZDLUdJoZHjU+gTxt6x/KrvIpzVyCk=
X-Google-Smtp-Source: APXvYqwMHSrpLzHBwU3Sm4HryhMuFu3cRWFKAxBC92OztfCp31oDd7Nxfv3X9zoLPxumorlPEG7+Uq6oFxfjLMTyNOA=
X-Received: by 2002:a05:651c:204f:: with SMTP id t15mr17861685ljo.240.1575902249151;
 Mon, 09 Dec 2019 06:37:29 -0800 (PST)
MIME-Version: 1.0
From: dimtass@gmail.com
Date: Mon, 9 Dec 2019 15:37:18 +0100
Message-ID: <CACKFPN2CqV_hDFJXZmtEcHC_tcoBTSUv4jpdprq=8E1OLviKEw@mail.gmail.com>
Subject: Kernel modules build fails with bitbake but not host toolchain
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c2f09a05994655c5"

--000000000000c2f09a05994655c5
Content-Type: text/plain; charset="UTF-8"

Hi all.

I'm having difficult to debug an issue I have.
Although I'm able to build my kernel, overlays, dtb and modules without any
errors using a specific git repo and my toolchain on my host, the bitbake
fails to build in the `do_compile_kernelmodules` step and the error I get
is:

```
|
/docker/build/tmp/work-shared/nanopi-duo2/kernel-source/drivers/net/wireless/realtek/rtl8189fs/core/rtw_cmd.c:22:10:
fatal error: drv_types.h: No such file or directory
|    22 | #include <drv_types.h>
|       |          ^~~~~~~~~~~~~
| compilation terminated.
|
/docker/build/tmp/work-shared/nanopi-duo2/kernel-source/scripts/Makefile.build:280:
recipe for target 'drivers/net/wireless/realtek/rtl8189fs/core/rtw_cmd.o'
failed
| make[6]: *** [drivers/net/wireless/realtek/rtl8189fs/core/rtw_cmd.o]
Error 1
|
/docker/build/tmp/work-shared/nanopi-duo2/kernel-source/scripts/Makefile.build:497:
recipe for target 'drivers/net/wireless/realtek/rtl8189fs' failed
| make[5]: *** [drivers/net/wireless/realtek/rtl8189fs] Error 2
|
/docker/build/tmp/work-shared/nanopi-duo2/kernel-source/scripts/Makefile.build:497:
recipe for target 'drivers/net/wireless/realtek' failed
| make[4]: *** [drivers/net/wireless/realtek] Error 2
| make[4]: *** Waiting for unfinished jobs....
```

Of course the drv_types.h file is there and I've said the kernel builds
fine using any toolchain from version 7.2 up to 8, I've tried locally on my
workstation.

The kernel recipe is located here:
https://bitbucket.org/dimtass/meta-allwinner-hx/src/a168d58cb142e246b3185b920552ac5e7f7afc0c/recipes-kernel/linux/linux-megous_5.3.bb?at=feature%2Fupgrade-to-kernel-5.3.y

I've also tried to override the default do_compile_kernelmodules and
simplify it down to this, but it still fails with the same error:
```
oe_runmake modules
```

Any good ideas?

Thanks!

--000000000000c2f09a05994655c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all.<div><br></div><div>I&#39;m having difficult=C2=A0t=
o debug an issue I have.</div><div>Although=C2=A0I&#39;m able to build my k=
ernel, overlays, dtb and modules without=C2=A0any errors using a specific g=
it repo and my toolchain on my host, the bitbake fails to build in the `do_=
compile_kernelmodules` step and the error I get is:</div><div><br></div><di=
v>```</div><div>| /docker/build/tmp/work-shared/nanopi-duo2/kernel-source/d=
rivers/net/wireless/realtek/rtl8189fs/core/rtw_cmd.c:22:10: fatal error: dr=
v_types.h: No such file or directory<br>| =C2=A0 =C2=A022 | #include &lt;dr=
v_types.h&gt;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^~~~~~~~~~~~~<br>| compilation terminated.<br>| /docker/build/tmp/work-s=
hared/nanopi-duo2/kernel-source/scripts/Makefile.build:280: recipe for targ=
et &#39;drivers/net/wireless/realtek/rtl8189fs/core/rtw_cmd.o&#39; failed<b=
r>| make[6]: *** [drivers/net/wireless/realtek/rtl8189fs/core/rtw_cmd.o] Er=
ror 1<br>| /docker/build/tmp/work-shared/nanopi-duo2/kernel-source/scripts/=
Makefile.build:497: recipe for target &#39;drivers/net/wireless/realtek/rtl=
8189fs&#39; failed<br>| make[5]: *** [drivers/net/wireless/realtek/rtl8189f=
s] Error 2<br>| /docker/build/tmp/work-shared/nanopi-duo2/kernel-source/scr=
ipts/Makefile.build:497: recipe for target &#39;drivers/net/wireless/realte=
k&#39; failed<br>| make[4]: *** [drivers/net/wireless/realtek] Error 2<br>|=
 make[4]: *** Waiting for unfinished jobs....<br></div><div>```</div><div><=
br></div><div>Of course the drv_types.h file is there and I&#39;ve said the=
 kernel builds fine using any toolchain from version 7.2 up to 8, I&#39;ve =
tried locally on my workstation.</div><div><br></div><div>The kernel recipe=
 is located here:</div><div><a href=3D"https://bitbucket.org/dimtass/meta-a=
llwinner-hx/src/a168d58cb142e246b3185b920552ac5e7f7afc0c/recipes-kernel/lin=
ux/linux-megous_5.3.bb?at=3Dfeature%2Fupgrade-to-kernel-5.3.y">https://bitb=
ucket.org/dimtass/meta-allwinner-hx/src/a168d58cb142e246b3185b920552ac5e7f7=
afc0c/recipes-kernel/linux/linux-megous_5.3.bb?at=3Dfeature%2Fupgrade-to-ke=
rnel-5.3.y</a><br></div><div><br></div><div>I&#39;ve also tried to override=
 the default=C2=A0do_compile_kernelmodules and simplify it down to this, bu=
t it still fails with the same error:</div><div>```</div><div>oe_runmake mo=
dules</div><div>```</div><div><br></div><div>Any good ideas?</div><div><br>=
</div><div>Thanks!</div></div>

--000000000000c2f09a05994655c5--
