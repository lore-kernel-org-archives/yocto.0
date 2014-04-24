Return-Path: <richaw@gmail.com>
Received: from mail-yh0-f52.google.com (mail-yh0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D11B3E00716
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 19:45:02 -0700 (PDT)
Received: by mail-yh0-f52.google.com with SMTP id 29so1705948yhl.25
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 19:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Mhd1peoITTUrVcFK5pZrL+3zddxSUcicaVoDuxeF40o=;
	b=WmWL0Hdup0Q6JB0rX5zvAZvY57i1+bkI1o53G3PTTRVjUYLb3fT4ls+iMCeslBzcY8
	NpVitwAxT7GEePLHNyBhfrmyjtP3UbW88CaKRchU4shaYLmr48p9cpRDZCNEZGucNjP1
	/z5q/TebuWWTfOTqER+DVGP7SHuU6ulUAon8rLCINqi9t4UF1NbmAy8w3KA+4wFnH+EP
	lAqIBH6Eq92+sR1J7zt2J5f73o5WqhZ9A08q8ZM+TxTsGfIi/3hwu6Bddz0QdinC0c7T
	LGaE/yDfW5DKIw1m405SkP9uIQ1C5PjtOmuOp8c+nSP3VzaDOPOCVqP3vdjclQPd/yAp
	c+Jg==
MIME-Version: 1.0
X-Received: by 10.236.53.5 with SMTP id f5mr75110803yhc.53.1398307501970; Wed,
	23 Apr 2014 19:45:01 -0700 (PDT)
Received: by 10.170.131.197 with HTTP; Wed, 23 Apr 2014 19:45:01 -0700 (PDT)
Date: Wed, 23 Apr 2014 19:45:01 -0700
Message-ID: <CAPTvksA3s+7SVVqjJ1Vu7U-VcFYmxQYKk0V0UV78po86CCwyeA@mail.gmail.com>
From: Rich Wilson <richaw@gmail.com>
To: yocto@yoctoproject.org
Subject: How to run c++ programs?
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
X-List-Received-Date: Thu, 24 Apr 2014 02:45:06 -0000
Content-Type: multipart/alternative; boundary=089e0115e9f6f1199604f7c0d524

--089e0115e9f6f1199604f7c0d524
Content-Type: text/plain; charset=UTF-8

I have my core-image-minimal distribution working.
Now, I would like to compile and run c++ programs.
How do get there from here?

I'm a newbie here, so please be gentle :-)

(I'm hoping I can use the Xilinx SDK for the compiler and
debugger; I think I just need the libraries)

Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "openSUSE-project-12.3"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "zedboard-zynq7"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5.1"
TUNE_FEATURES     = " armv7a vfp neon zynq"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "<unknown>:<unknown>"
meta-xilinx       = "dora:aa7d677515ab7d45bbd3bdd6c5383f4143147c6d"

-- 
Rich Wilson

--089e0115e9f6f1199604f7c0d524
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have my core-image-minimal distribution working.<div>Now=
, I would like to compile and run c++ programs.</div><div>How do get there =
from here?</div><div><br></div><div>I&#39;m a newbie here, so please be gen=
tle :-)</div>
<div><br></div><div>(I&#39;m hoping I can use the Xilinx SDK for the compil=
er and</div><div>debugger; I think I just need the libraries)</div><div><br=
></div><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;1.20.0&quot;</div>
<div>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</di=
v><div>NATIVELSBSTRING =C2=A0 =3D &quot;openSUSE-project-12.3&quot;</div><d=
iv>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&q=
uot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;zedboar=
d-zynq7&quot;</div>
<div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</=
div><div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.5.1&quot;</div><div>TUNE_F=
EATURES =C2=A0 =C2=A0 =3D &quot; armv7a vfp neon zynq&quot;</div><div>TARGE=
T_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp-neon&quot;</div><div>meta =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div>
<div>meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto-bsp =C2=A0=
 =C2=A0=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</div><div>meta-xilin=
x =C2=A0 =C2=A0 =C2=A0 =3D &quot;dora:aa7d677515ab7d45bbd3bdd6c5383f4143147=
c6d&quot;</div><div><br></div>-- <br>Rich Wilson<div>
<br></div>
</div></div>

--089e0115e9f6f1199604f7c0d524--
