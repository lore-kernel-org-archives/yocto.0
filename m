Return-Path: <andrei@gherzan.ro>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37CFAE00347
	for <yocto@yoctoproject.org>; Sat, 25 Aug 2012 08:29:35 -0700 (PDT)
Received: by iagt4 with SMTP id t4so6142581iag.35
	for <yocto@yoctoproject.org>; Sat, 25 Aug 2012 08:29:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=cjATlssbYAzV/h9eUWR6l3Acf3H4WBrkXeFInNgMMx4=;
	b=HC0vDcAn+pFo98hJmiczbqAmuzTmcXdlDH6vzJpQyuTuLbZn8lX3B4/X7ElClvcdvz
	bNwhS1zcNeAUziPSBxT13d/fqGyiXd7E1Q98fJBq4p/tzb+XIk8i5qHTd7JEiKplg9hv
	D8PDNUJGBWGXtQM4DGboWMfHVhAY23yHBUJVotg60u1diAhzdVrZIqIa9siaj0ifmtr+
	RaDfzDTAy31RibCyeE1DOkNUqaCZe5yegMprzWI1DIMZtdeHz2CvHlGgJhbCCXS0y2uj
	airO6/Wd91ypR5oYG8g4SKMAEqtaj8huuPQ5UMSo9z7nHybnSGZt71PrTjh5zqQ2R/zE
	OhEQ==
Received: by 10.50.194.130 with SMTP id hw2mr5340260igc.57.1345908572499; Sat,
	25 Aug 2012 08:29:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.63.50 with HTTP; Sat, 25 Aug 2012 08:29:11 -0700 (PDT)
X-Originating-IP: [79.118.181.96]
In-Reply-To: <33FA7F6F-5C7B-40A0-AE08-18E0058A4C31@gmail.com>
References: <33FA7F6F-5C7B-40A0-AE08-18E0058A4C31@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 25 Aug 2012 18:29:11 +0300
Message-ID: <CAK18fxFu6M11cia+C9EnJovtqFYnV4AaHzmoNZ1vJrRWMtLoUg@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Gm-Message-State: ALoCoQnYSRtETwPExicl/DEjH1LB2r8gH/tomBL8xeazs7mXWun+Kt2SavlaXr8ekXiUpyuHWziK
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the base_prefix, requires a shared library under exec_prefix (/usr)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 25 Aug 2012 15:29:35 -0000
Content-Type: multipart/alternative; boundary=14dae9340bc75d30a404c818c2f4

--14dae9340bc75d30a404c818c2f4
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Aug 25, 2012 at 4:14 PM, Elvis Dowson <elvis.dowson@gmail.com>wrote:

> Hi,
>       I have added support for gcc-4.5 and eglibc-2.13, in the retired
> tool-chain layer, and ran the build, against the latest poky master branch,
> and get the following warnings:
>
> Build Configuration:
> BB_VERSION        = "1.15.3"
> TARGET_ARCH       = "powerpc"
> TARGET_OS         = "linux"
> MACHINE           = "virtex5"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2+snapshot-20120825"
> TUNE_FEATURES     = "m32 ppc440 fpu-soft"
> TARGET_FPU        = "soft"
> meta
> meta-yocto        =
> "master-xilinx-ml507-gcc-4.5:230631343fd1439fcf5c408e1d31870f5490d235"
> toolchain-layer   =
> "master-xilinx-ml507-gcc-4.5:7086c388699be96873d57f1d4c72ceaabf67846b"
> meta-xilinx       =
> "master-xilinx-ml507-gcc-4.5:4625488ffab40bf9eed6ce36906e433430f0155d"
>
>
> WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the
> base_prefix, requires a shared library under exec_prefix (/usr):
> libgobject-2.0.so.0 => /usr/lib/libgobject-2.0.so.0 (0xdead2000)
> WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the
> base_prefix, requires a shared library under exec_prefix (/usr):
> libgthread-2.0.so.0 => /usr/lib/libgthread-2.0.so.0 (0xdead3000)
> WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the
> base_prefix, requires a shared library under exec_prefix (/usr):
> libffi.so.5 => /usr/lib/libffi.so.5 (0xdead4000)
> WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the
> base_prefix, requires a shared library under exec_prefix (/usr):
> libglib-2.0.so.0 => /usr/lib/libglib-2.0.so.0 (0xdead5000)
> WARNING: QA Issue: udev: /lib/udev/udev-acl, installed in the base_prefix,
> requires a shared library under exec_prefix (/usr): libglib-2.0.so.0 =>
> /usr/lib/libglib-2.0.so.0 (0xdead2000)
>
> How can I fix this?
>
>
The fix is very simple. The idea here is that a library from / which needs
something from /usr can have some problems while being on systems where /
and /usr are on different partitions and /usr can be unavailable at an
early stage. The obvious fix would be to move libgudev in /usr but before
doing this we need to be sure that nobody needs this in the early stages of
booting.

I would love to see this warning addressed.

ag

--14dae9340bc75d30a404c818c2f4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Sat, Aug 25, 2012 at 4:14 PM, Elvis Dowson <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:elvis.dowson@gmail.com" target=3D"_bl=
ank">elvis.dowson@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">

<div style=3D"word-wrap:break-word"><div>Hi,</div><div>=A0 =A0 =A0 I have a=
dded support for gcc-4.5 and eglibc-2.13, in the retired tool-chain layer, =
and ran the build, against the latest poky master branch, and get the follo=
wing warnings:</div>

<div><br></div><div><div><font face=3D"Monaco">Build Configuration:</font><=
/div><div><font face=3D"Monaco">BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.15.3&=
quot;</font></div><div><font face=3D"Monaco">TARGET_ARCH =A0 =A0 =A0 =3D &q=
uot;powerpc&quot;</font></div>

<div><font face=3D"Monaco">TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux&quot;<=
/font></div><div><font face=3D"Monaco">MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quo=
t;virtex5&quot;</font></div><div><font face=3D"Monaco">DISTRO =A0 =A0 =A0 =
=A0 =A0 =A0=3D &quot;poky&quot;</font></div>

<div><font face=3D"Monaco">DISTRO_VERSION =A0 =A0=3D &quot;1.2+snapshot-201=
20825&quot;</font></div><div><font face=3D"Monaco">TUNE_FEATURES =A0 =A0 =
=3D &quot;m32 ppc440 fpu-soft&quot;</font></div><div><font face=3D"Monaco">=
TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;soft&quot;</font></div>

<div><font face=3D"Monaco">meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</font></div><di=
v><font face=3D"Monaco">meta-yocto =A0 =A0 =A0 =A0=3D &quot;master-xilinx-m=
l507-gcc-4.5:230631343fd1439fcf5c408e1d31870f5490d235&quot;</font></div><di=
v><font face=3D"Monaco">toolchain-layer =A0 =3D &quot;master-xilinx-ml507-g=
cc-4.5:7086c388699be96873d57f1d4c72ceaabf67846b&quot;</font></div>

<div><font face=3D"Monaco">meta-xilinx =A0 =A0 =A0 =3D &quot;master-xilinx-=
ml507-gcc-4.5:4625488ffab40bf9eed6ce36906e433430f0155d&quot;</font></div></=
div><div><font face=3D"Monaco"><br></font></div><div><font face=3D"Monaco">=
<br></font></div>

<div><div><font face=3D"Monaco">WARNING: QA Issue: udev: /lib/libgudev-1.0.=
so.0.0.1, installed in the base_prefix, requires a shared library under exe=
c_prefix (/usr): libgobject-2.0.so.0 =3D&gt; /usr/lib/libgobject-2.0.so.0 (=
0xdead2000)</font></div>

<div><font face=3D"Monaco">WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.=
0.1, installed in the base_prefix, requires a shared library under exec_pre=
fix (/usr): libgthread-2.0.so.0 =3D&gt; /usr/lib/libgthread-2.0.so.0 (0xdea=
d3000)</font></div>

<div><font face=3D"Monaco">WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.=
0.1, installed in the base_prefix, requires a shared library under exec_pre=
fix (/usr): libffi.so.5 =3D&gt; /usr/lib/libffi.so.5 (0xdead4000)</font></d=
iv>

<div><font face=3D"Monaco">WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.=
0.1, installed in the base_prefix, requires a shared library under exec_pre=
fix (/usr): libglib-2.0.so.0 =3D&gt; /usr/lib/libglib-2.0.so.0 (0xdead5000)=
</font></div>

<div><font face=3D"Monaco">WARNING: QA Issue: udev: /lib/udev/udev-acl, ins=
talled in the base_prefix, requires a shared library under exec_prefix (/us=
r): libglib-2.0.so.0 =3D&gt; /usr/lib/libglib-2.0.so.0 (0xdead2000)</font><=
/div>

<div><br></div></div><div>How can I fix this?=A0</div><div><br></div></div>=
</blockquote><div>=A0</div><div>The fix is very simple. The idea here is th=
at a library from / which needs something from /usr can have some problems =
while being on systems where / and /usr are on different partitions and /us=
r can be=A0unavailable=A0at an early stage. The obvious fix would be to mov=
e libgudev in /usr but before doing this we need to be sure that nobody nee=
ds this in the early stages of booting.</div>

<div><br></div><div>I would love to see this warning addressed.=A0</div><di=
v><br></div><div>ag</div></div>

--14dae9340bc75d30a404c818c2f4--
