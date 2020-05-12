Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2064.1589310810294093811
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2020 12:13:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=By+FBSWx;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: easmith5555@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C59EE01B4C; Tue, 12 May 2020 12:13:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB8FE01B4A
	for <yocto@yoctoproject.org>; Tue, 12 May 2020 12:13:26 -0700 (PDT)
Received: by mail-il1-f193.google.com with SMTP id 17so6403974ilj.3
        for <yocto@yoctoproject.org>; Tue, 12 May 2020 12:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=XOvycnK63eWlPEnCHKqcTwAhc0mydxr9IR0LxDlu384=;
        b=By+FBSWxwGK6DF4dgNengV6HaESGN6G0Eet3ceR52TEWPqfG84M6Exsog7IUfpktBg
         RIwPyCHiaYhn96AymfhiuQSHNEwmp3bEjbKvKGSr6JS1j0J01vOxma+RHnOEdTpymMKh
         8cVuSiF9SclGLgPnD0LHft8nTT3F+43qdpRux76juNz/pd7JJ6VsM0Tc+nWqd8MS5XeL
         Ov/ueDGJfJw25UYJg9A+MOwL9+dAB7XqE9oyqslp7XKOdITE5p94onEe3oSWJrsEIUgL
         aI3Icbz9ki5yXDVQ2p5VgIkyPGrriIRrtufAH1aIeoiEQ6II0Vr5Qrsg7pv0PpNQ9Hgd
         RX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XOvycnK63eWlPEnCHKqcTwAhc0mydxr9IR0LxDlu384=;
        b=Dc9dPDJPQUywnASNRwR6Yxj033eAZHDzaaEcDQnoJPExjbzMvFVVfq/BGQOi6MvkPK
         KK1AODzEfk397piJNWQWkd0o9z5GWjaBlKbpI2c+J7giYCv4OMWFI8Bii7jZKw1v3FjN
         upgGXBckZPKNg6XoJ7GmU2W4vZ8nvUZBqytsBajDUQEmqmLgzFXgYOyVK8CjzF0tMdN1
         QPzUvwHKpEAYCw6BvvsqsNh6zmsvYP9GyjwKfBRrMniH/atLeEuMtllf32wKlGgtLD7Z
         7BQskvyujltYm/8EI98Oo8oOIwqKWoYQd9K+xRW85ornBSQWUkRro5mu7+yEwU5Er3oD
         8Nyg==
X-Gm-Message-State: AGi0PuaWX7rUnOlQRki4o2N7Lz2zMJMAXQRTuWHFhluBUZNtcc8yb5ar
	majG4nlTLfovmwFiHKzdDxXXgFHkI7ql/2HFYMw+mtkj
X-Google-Smtp-Source: APiQypLhR18MbuG5DnXzGt4JJ0tvcsP5dJHw0TlZY5/0V7WdAn7ru7EE6+gf48EyDjPjOJhLb47+DqQ3cxJPu+oyFU8=
X-Received: by 2002:a92:c401:: with SMTP id e1mr18734981ilp.134.1589310805606;
 Tue, 12 May 2020 12:13:25 -0700 (PDT)
MIME-Version: 1.0
From: "Emily" <easmith5555@gmail.com>
Date: Tue, 12 May 2020 14:13:10 -0500
Message-ID: <CAAV2bM32EDpoiMKQ_pfcVH=PPht9OmJ0qA+QeufNnMM_cr0vhw@mail.gmail.com>
Subject: python3 path different from python2
To: Yocto List <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000185ad05a57842cd"

--0000000000000185ad05a57842cd
Content-Type: text/plain; charset="UTF-8"

Hi all -

I'm working with rocko trying to build a recipe with python3 that used to
be build with python2 using cmake. After changing things in the build
files, when I run the devshell for the recipe, I see two different include
paths for python2 and python3. I have tried switching to zeus but I had a
few issues with a xilinx bsp for the machine I wanted to build with.

For python2 (correct):
*root@dc:/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/git#*
python-config --cflags
-I/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/python2.7
-I/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/python2.7
-fno-strict-aliasing -O2 -pipe -g -feliminate-unused-debug-types
-fdebug-prefix-map=/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/python/2.7.14-r1=/usr/src/debug/python/2.7.14-r1
-fdebug-prefix-map=/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native=
-fdebug-prefix-map=/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot=
-DNDEBUG -g -O3 -Wall -Wstrict-prototypes

For python3 (incorrect):
*root@dc:/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/git#*
python3-config --cflags
-I/usr/include/python3.5m -I/usr/include/python3.5m  -Wno-unused-result
-Wsign-compare -g -fstack-protector-strong -Wformat -Werror=format-security
 -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes

The python3 one is obviously incorrect, is there a way to tell where this
path is coming from? Even if I manually include the proper path in the
CMakeLists.txt it doesn't seem to work. Does yocto overwrite this path
somewhere?

Thanks!
Emily Smith

--0000000000000185ad05a57842cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all -=C2=A0<div><br></div><div>I&#39;m working with roc=
ko trying to build a recipe with python3 that used to be build with python2=
 using cmake. After changing things in the build files, when I run the devs=
hell for the recipe, I see two different include paths for python2 and pyth=
on3. I have tried switching to zeus but I had a few issues with a xilinx bs=
p for the machine I wanted to build with.=C2=A0</div><div><br></div><div>Fo=
r python2 (correct):</div><div><b>root@dc:/local/d6/easmith5/rocko_bitbake/=
poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+92=
1c563309-r0/git#</b> python-config --cflags<br>-I/local/d6/easmith5/rocko_b=
itbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUT=
OINC+921c563309-r0/recipe-sysroot/usr/include/python2.7 -I/local/d6/easmith=
5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1=
.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/python2.7 -fno-stric=
t-aliasing -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=
=3D/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/=
python/2.7.14-r1=3D/usr/src/debug/python/2.7.14-r1 -fdebug-prefix-map=3D/lo=
cal/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua=
-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native=3D -fdebug-=
prefix-map=3D/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-p=
oky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot=3D=
 -DNDEBUG -g -O3 -Wall -Wstrict-prototypes<br></div><div><br></div><div>For=
 python3 (incorrect):</div><div><b>root@dc:/local/d6/easmith5/rocko_bitbake=
/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+9=
21c563309-r0/git#</b> python3-config --cflags<br>-I/usr/include/python3.5m =
-I/usr/include/python3.5m =C2=A0-Wno-unused-result -Wsign-compare -g -fstac=
k-protector-strong -Wformat -Werror=3Dformat-security =C2=A0-DNDEBUG -g -fw=
rapv -O3 -Wall -Wstrict-prototypes<br></div><div><br></div><div>The python3=
 one is obviously incorrect, is there a way to tell where this path is comi=
ng from? Even if I manually include the proper path in the CMakeLists.txt i=
t doesn&#39;t seem to work. Does yocto overwrite this path somewhere?=C2=A0=
</div><div><br></div><div>Thanks!</div><div>Emily Smith</div><div><br></div=
></div>

--0000000000000185ad05a57842cd--
