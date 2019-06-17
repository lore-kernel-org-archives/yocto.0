Return-Path: <stangerm2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DACD4E00D4E; Mon, 17 Jun 2019 16:55:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stangerm2[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2435EE00D4C
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 16:55:06 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id i8so11663516oth.10
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 16:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=KHjJFPiJRcj1SnlsHnt9cnAYxdEeImtI+N/wboIeD7o=;
	b=f6BGm6aBO9UQY9LzLCZcrzfi1FLivGCorTZATGjKY3jy/5U8SmJaDiUvavyX1+DO25
	VVuL88RBcHpCdiO5i2w8ajfrIem3d0XorOtmrc61AfzZktndMqep6wDyg9gZTHgqjeYz
	ECL11kx0DbEq+LHpGxGkmDz9XeLXYDQFrtfyDm2YcCdl8hGZ+rtF3wFGqLFs/vobQeUg
	syPB0FWAeB4E/OC7ad6H2q/XzxYtOJTP3o5cj0Cey4EFh1RsyoiTTy9wa0cqPNz5V2vQ
	m4NqL4qxgXxt061r0iAQbNUXmZ1iCMccpl5+pCKngIJYl+lph5SPw7JnUtg49Pzn9RzP
	7XMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KHjJFPiJRcj1SnlsHnt9cnAYxdEeImtI+N/wboIeD7o=;
	b=MVkmxFRPP3L1gEPo/eoFks3yBLlOPbv/NtCio40oeghn4DB+d1dbO9ADT0Lg+3bq5m
	yhcsiib15E5eoy8+bJZnXRGbDp122lEqe2mDFDoMCXh7zL24PUPX9OxKWM8VFX3CqIET
	PlNK+n9Pf8eSnEgEFgd0b269qacWP1r6LHWYZIc9m/lQC9VBDbbmzOmmkeiA6puLpC4r
	j54PAnh937wh1n8RrKHo6SkjDxxJoRDnGXgpuEbwo0SsOvkpZ2j641Yxj6Y+HrjXG7eF
	wp8aEY1c4AR8oYQQlpPc85JRyyhaqcIoLwhhMIJt7oCF2g49g/D/OfQpc9VYPT56k9zn
	473w==
X-Gm-Message-State: APjAAAV7LL/CNPIhDmOflmwICdxJZKoaTuHmpdIusAFXxrwSRP6lSOQ1
	0XkXz3UZ45Z/0CwcnKs8C8KaKABKboVCakIT1ALzoQSr/A==
X-Google-Smtp-Source: APXvYqzB+QEok68OwT+WVNBhEnqvoo0QHh+WEjjmPzPm0KwNh68bXvNBZeMAEkObAK55z9d0iEjPh2WA58QUBpbPiRA=
X-Received: by 2002:a9d:64d6:: with SMTP id n22mr1555818otl.326.1560815706040; 
	Mon, 17 Jun 2019 16:55:06 -0700 (PDT)
MIME-Version: 1.0
From: matthew stanger <stangerm2@gmail.com>
Date: Mon, 17 Jun 2019 17:54:30 -0600
Message-ID: <CAGni2MiauEboBBr0qsqn1jB57AQoEEaOw3wRoavnuQX8TJGtNA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: devshell env in warrior
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jun 2019 23:55:07 -0000
Content-Type: multipart/alternative; boundary="000000000000b7f057058b8db9da"

--000000000000b7f057058b8db9da
Content-Type: text/plain; charset="UTF-8"

I'm trying to figure out why when running devshell in Warrior CC/CFLAGS are
not the same as do_compile for a recipe. For example.
devshell printenv yields:
CC=aarch64-poky-linux-gcc   -fuse-ld=bfd
-fmacro-prefix-map=/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0=/usr/src/debug/ursr/18.3+AUTOINC+0a6fb7430f-0
-fdebug-prefix-map=/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0=/usr/src/debug/ursr/18.3+AUTOINC+0a6fb7430f-0
-fdebug-prefix-map=/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroot=
-fdebug-prefix-map=/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroot-native=
 -fdebug-prefix-map=/home/matt/rdk_warrior/build/tmp/work-shared/tmobile-7271-kaon-mini/kernel-source=/usr/src/kernel

do_compile() {
    /usr/bin/printenv | sort > debug.log
}
yields...
CC=aarch64-poky-linux-gcc  -mcpu=cortex-a53+crc+crypto
-fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security
-Werror=format-security
--sysroot=/home/matt/rdk_warrior/build/tmp/work/tmobile_7271_kaon_mini-poky-linux/ursr/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroot

This causes some very different behavior out of the makefile. The recipe
I"m working with has no do_configure, and only calls a makefile through
do_compile. No appends/prepends or custom functions in the recipe. This
recipe is for a lovely Broadcom driver/userspace glob and I'm trying to
troubleshoot it with x64 but not being able to get a correct working env
makes life hard. Any idea's of where I might be going wrong?

Cheers

--000000000000b7f057058b8db9da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m trying to figure out why when running devshell in =
Warrior CC/CFLAGS are not the same as do_compile for a recipe. For example.=
=C2=A0<div>devshell printenv yields:<div>CC=3Daarch64-poky-linux-gcc =C2=A0=
 -fuse-ld=3Dbfd -fmacro-prefix-map=3D/home/matt/rdk_warrior/build/tmp/work/=
7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0=3D/usr/src/debug/ursr/18.3+A=
UTOINC+0a6fb7430f-0 -fdebug-prefix-map=3D/home/matt/rdk_warrior/build/tmp/w=
ork/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0=3D/usr/src/debug/ursr/18=
.3+AUTOINC+0a6fb7430f-0 -fdebug-prefix-map=3D/home/matt/rdk_warrior/build/t=
mp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroot=3D -f=
debug-prefix-map=3D/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/br=
cm/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroot-native=3D =C2=A0-fdebug-prefix-=
map=3D/home/matt/rdk_warrior/build/tmp/work-shared/tmobile-7271-kaon-mini/k=
ernel-source=3D/usr/src/kernel<br></div><div><br></div><div>do_compile() {<=
br>=C2=A0 =C2=A0 /usr/bin/printenv | sort &gt; debug.log<br></div><div>}</d=
iv><div>yields...</div><div>CC=3Daarch64-poky-linux-gcc =C2=A0-mcpu=3Dcorte=
x-a53+crc+crypto -fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 -Wfor=
mat -Wformat-security -Werror=3Dformat-security --sysroot=3D/home/matt/rdk_=
warrior/build/tmp/work/tmobile_7271_kaon_mini-poky-linux/ursr/18.3+AUTOINC+=
0a6fb7430f-0/recipe-sysroot<br></div><div><br></div><div>This causes some v=
ery different behavior out of the makefile. The recipe I&quot;m working wit=
h has no do_configure, and only calls a makefile through do_compile. No app=
ends/prepends or custom functions in the recipe. This recipe is for a lovel=
y Broadcom driver/userspace glob and I&#39;m trying to troubleshoot it with=
 x64 but not being able to get a correct working env makes life hard. Any i=
dea&#39;s of where I might be going wrong?</div></div><div><br></div><div>C=
heers</div></div>

--000000000000b7f057058b8db9da--
