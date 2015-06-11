Return-Path: <sm0ketst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19047E00A03; Thu, 11 Jun 2015 03:00:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sm0ketst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4713EE009C2;
	Thu, 11 Jun 2015 03:00:35 -0700 (PDT)
Received: by oihb142 with SMTP id b142so1307633oih.3;
	Thu, 11 Jun 2015 03:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=/1Ymv+awNZvCI7SaQHFpGPuNebyAKYjzGNffdxL46zw=;
	b=mQb8V0bqeUzLPS+3QzLGeOFZVxVmc4vWi1RQavnaIMnLM44/xQ2h61IiSMKrpgR8gL
	F228+pyHw2v5m7HS/5e70xkmpwURPVmBpJGcEOKVeVlldiUr4w+RvWqamjGHh/qSiKqu
	X7YjzTUDqjb9hk0a2Fu+zmAZrjtfNzy0aB1dGgYqwtVqpX7VFSwOcNAMhudQTY30dMXy
	uwXFnKOpvzxzujLJdWtNrXuSgCgdq9eGrIe/SKWYFsfvNtIDCvcbXVudFGj7QJeY8OEl
	jU+2eL4AgVXXkhvtbj6rGc/BxSBn7hUna/Di829j06getDTUQVwd/ihbaVcXrNqyvist
	43bQ==
MIME-Version: 1.0
X-Received: by 10.202.52.138 with SMTP id b132mr6544921oia.125.1434016835340; 
	Thu, 11 Jun 2015 03:00:35 -0700 (PDT)
Received: by 10.60.4.104 with HTTP; Thu, 11 Jun 2015 03:00:35 -0700 (PDT)
Date: Thu, 11 Jun 2015 12:00:35 +0200
Message-ID: <CABMtxuwRxDH2wZfTGSm_Z6_CGm_DSS_qUMc+5O9oVJpW4fObMA@mail.gmail.com>
From: "J.J. Garcia" <sm0ketst@gmail.com>
To: meta-intel@yoctoproject.org
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-intel] MATOM set while using yocto-bsp create i386 (Celeron M targets / ThinkIO unit)
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
X-List-Received-Date: Thu, 11 Jun 2015 10:00:37 -0000
Content-Type: multipart/alternative; boundary=001a113d3e02128ea205183b10be

--001a113d3e02128ea205183b10be
Content-Type: text/plain; charset=UTF-8

Hello all,

Why 'yocto-bsp create ... i386' (Yocto dizzy 1.7.2) is defining a kernel
config with the MATOM=y even if I select the default kernel with the '586'
tune (neither the  'Atom' nor the 'core2')? is this expected? Im using and
old Celeron M (petium M based)

I'm also using the meta-intel layer.

My selections are like the following:

$ yocto-bsp create thinkio i386
Checking basic git connectivity...
Done.

Would you like to use the default (3.14) kernel? (y/n) [default: y]
Do you need a new machine branch for this BSP (the alternative is to re-use
an existing branch)? [y/n] [default: y]
Getting branches from remote repo git://
git.yoctoproject.org/linux-yocto-3.14.git...
Please choose a machine branch to base this BSP on: [default: standard/base]
    1) standard/arm-versatile-926ejs
    2) standard/base
    3) standard/beagleboard
    4) standard/beaglebone
    5) standard/ck
    6) standard/common-pc/base
    7) standard/edgerouter
    8) standard/fsl-mpc8315e-rdb
    9) standard/mti-malta32
    10) standard/mti-malta64
    11) standard/qemuarm64
    12) standard/qemuppc
    13) standard/routerstationpro
    14) standard/xilinx-zynq

Do you need SMP support? (y/n) [default: y]
Which machine tuning would you like to use? [default: tune_core2]
    1) i586 tuning optimizations
    2) Atom tuning optimizations
    3) Core2 tuning optimizations
1
Do you need support for X? (y/n) [default: y]
Please select an xserver for this machine: [default: xserver_i915]
    1) VESA xserver support
    2) i915 xserver support
    3) i965 xserver support

Does your BSP have a touchscreen? (y/n) [default: n] y
Does your BSP have a keyboard? (y/n) [default: y] y

New i386 BSP created in meta-thinkio

$ head meta-thinkio/recipes-kernel/linux/files/thinkio.cfg
CONFIG_X86_32=y
CONFIG_MATOM=y
CONFIG_PRINTK=y


Thanks in advance.

JJ

--001a113d3e02128ea205183b10be
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,<br><br><span>Why &#39;yocto-bsp create ...=
 i386&#39; (Yocto dizzy 1.7.2) is defining a kernel=20
config with the MATOM=3Dy even if I select the default kernel with the=20
&#39;586&#39; tune (neither the<span>=C2=A0=C2=A0</span>&#39;Atom&#39; nor =
the &#39;core2&#39;)? is this expected? Im using and old Celeron M (petium =
M based)</span><br><br></div><div>I&#39;m also using the meta-intel layer.<=
br><br></div><div>My selections are like the following:<br><br><span style=
=3D"font-family:monospace,monospace">$ yocto-bsp create thinkio i386<br>Che=
cking basic git connectivity...<br>Done.<br><br>Would you like to use the d=
efault (3.14) kernel? (y/n) [default: y] <br>Do you need a new machine bran=
ch for this BSP (the alternative is to re-use an existing branch)? [y/n] [d=
efault: y] <br>Getting branches from remote repo git://<a href=3D"http://gi=
t.yoctoproject.org/linux-yocto-3.14.git.">git.yoctoproject.org/linux-yocto-=
3.14.git.</a>..<br>Please choose a machine branch to base this BSP on: [def=
ault: standard/base]<br>=C2=A0=C2=A0=C2=A0 1) standard/arm-versatile-926ejs=
<br>=C2=A0=C2=A0=C2=A0 2) standard/base<br>=C2=A0=C2=A0=C2=A0 3) standard/b=
eagleboard<br>=C2=A0=C2=A0=C2=A0 4) standard/beaglebone<br>=C2=A0=C2=A0=C2=
=A0 5) standard/ck<br>=C2=A0=C2=A0=C2=A0 6) standard/common-pc/base<br>=C2=
=A0=C2=A0=C2=A0 7) standard/edgerouter<br>=C2=A0=C2=A0=C2=A0 8) standard/fs=
l-mpc8315e-rdb<br>=C2=A0=C2=A0=C2=A0 9) standard/mti-malta32<br>=C2=A0=C2=
=A0=C2=A0 10) standard/mti-malta64<br>=C2=A0=C2=A0=C2=A0 11) standard/qemua=
rm64<br>=C2=A0=C2=A0=C2=A0 12) standard/qemuppc<br>=C2=A0=C2=A0=C2=A0 13) s=
tandard/routerstationpro<br>=C2=A0=C2=A0=C2=A0 14) standard/xilinx-zynq<br>=
<br>Do you need SMP support? (y/n) [default: y] <br>Which machine tuning wo=
uld you like to use? [default: tune_core2]<br>=C2=A0=C2=A0=C2=A0 1) i586 tu=
ning optimizations<br>=C2=A0=C2=A0=C2=A0 2) Atom tuning optimizations<br>=
=C2=A0=C2=A0=C2=A0 3) Core2 tuning optimizations<br>1<br>Do you need suppor=
t for X? (y/n) [default: y] <br>Please select an xserver for this machine: =
[default: xserver_i915]<br>=C2=A0=C2=A0=C2=A0 1) VESA xserver support<br>=
=C2=A0=C2=A0=C2=A0 2) i915 xserver support<br>=C2=A0=C2=A0=C2=A0 3) i965 xs=
erver support<br><br>Does your BSP have a touchscreen? (y/n) [default: n] y=
<br>Does your BSP have a keyboard? (y/n) [default: y] y<br><br>New i386 BSP=
 created in meta-thinkio<br><br>$ head meta-thinkio/recipes-kernel/linux/fi=
les/thinkio.cfg <br>CONFIG_X86_32=3Dy<br>CONFIG_MATOM=3Dy<br>CONFIG_PRINTK=
=3Dy<br></span><br><br></div><div>Thanks in advance.<br><br></div><div>JJ</=
div></div>

--001a113d3e02128ea205183b10be--
