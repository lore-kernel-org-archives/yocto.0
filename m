Return-Path: <mbroadst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D49AEE00C72; Thu,  7 Apr 2016 07:06:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mbroadst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 928F3E007C5
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 07:05:55 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id bg3so53336386obb.1
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2016 07:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=Vf64hUrIwNTQT6fqydJ/xcc+idKSbMYkzPE2xzHQAa8=;
	b=XJjn2EcfDV0T4ihtHeC9h6HD0URmxY8JKpuaIHxL3XDEPYQhRDUuJ58fL67vHzD8pc
	nldQYDWjaJIhODOLiRT0Z10oQZFJmhmjp0xJlvtoo9rFuru1PacleSmpxPJh2VwFgUog
	cRsL5YiZwHbBbnGuAjZMiX1a3aww2VMX9/d03ZTNz841OoGI9FUG2r87k+5XxC3slwwI
	QWJZVeQ8CmV8EaRx/Edn5yBioLOD/DozX7p6YNLg42n1xwXnGaaeXSBBhEAzj7AGmMfa
	CqaLUQKD9wqvNGWjVauPndSqOjNoQUus4Euff7BAA/aVg64+pEmFaqt37up1yzdvlJzS
	4Jkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Vf64hUrIwNTQT6fqydJ/xcc+idKSbMYkzPE2xzHQAa8=;
	b=RxQnBtGm++DT+7uvglzxm49BwwoTqWqoxv0Ibu9hCKRYMvcavg8iQXRyAMwPosBp6+
	MqaXxC9blVuodCuJcoUDsARtcv6BgyQ/y1AhM8STKXnQuxv+O/H5hRHus8sDoQafnLT9
	R5PNe0QxjgcmeH3PH9XnnJoAUyxr6S1VjP/zzvBYlvonq1xt2DRCk4KQ/BX2FpS2MBKz
	ZFhLjHv7MVBiyI7T/lK16sjSvefvhRTgAX/Bdam2PMMr/0OE8nQl8SP+lcsMN60RMa3L
	2wUnudJUTGNqQJNQ50Itg6pzuRE2cghbX7WcOsVpDwhnov3ML+pyLQFbxpQLXssRS4Nr
	RQwQ==
X-Gm-Message-State: AD7BkJK68SHbC10vO5gtTUUuJnTftSwDFNX5l+NQP3pkd3qNzqYbWff00wDmFq6jnTc/VZnBj/gEgE8gG/RJNA==
MIME-Version: 1.0
X-Received: by 10.182.38.199 with SMTP id i7mr1614533obk.86.1460037955369;
	Thu, 07 Apr 2016 07:05:55 -0700 (PDT)
Received: by 10.202.69.215 with HTTP; Thu, 7 Apr 2016 07:05:55 -0700 (PDT)
Date: Thu, 7 Apr 2016 10:05:55 -0400
Message-ID: <CAMsD-yD2njxx9DBTfnEivFUmzUVWQn19+F7pPLsr7HHcVq1Ayw@mail.gmail.com>
From: Matt Broadstone <mbroadst@gmail.com>
To: yocto@yoctoproject.org
Subject: out of tree kernel modules using autotools
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
X-List-Received-Date: Thu, 07 Apr 2016 14:06:00 -0000
Content-Type: multipart/alternative; boundary=001a11c32ddcb0407f052fe59357

--001a11c32ddcb0407f052fe59357
Content-Type: text/plain; charset=UTF-8

Hello,
I'm beginning a process to try to build zfs-on-linux for my image (as I
have yet to find any existing work in this area), and am running into some
trouble building out of tree kernel modules with autotools.

I've been loosely basing my recipe off of the one over here:
https://github.com/Freescale/meta-freescale/blob/master/recipes-kernel/kernel-modules/kernel-module-perf-qoriq_0.8.2.bb

Here is the current recipe:

<snip>
inherit module autotools
SRC_URI = "
http://archive.zfsonlinux.org/downloads/zfsonlinux/spl/spl-0.6.5.6.tar.gz"
SRC_URI[md5sum] = "4544b80018ddc5c39ed395363a582228"
SRC_URI[sha256sum] =
"167595fe76eb5497c3a1ffe396b6300155d0cbe46d06824a710099ca1ae1b8bd"
EXTRA_OECONF += "--with-config=kernel --with-linux=${KERNEL_PATH}"
<snip>

This recipe builds fine, except that it's using the installed kernel
sources for the base ubuntu system rather than those build by yocto. I can
confirm that the kernel has already been built, and sources are available,
however when entering into the devshell for this package neither KERNEL_SRC
nor KERNEL_PATH are defined (they are simply empty), despite what the
documentation for the module bbclass indicates.

It seems I'm missing something important here?  Also any other references
to examples of building these types of modules would be greatly appreciated.

Regards,
Matt

--001a11c32ddcb0407f052fe59357
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I&#39;m beginning a process to try to build zfs=
-on-linux for my image (as I have yet to find any existing work in this are=
a), and am running into some trouble building out of tree kernel modules wi=
th autotools.</div><div><br></div><div>I&#39;ve been loosely basing my reci=
pe off of the one over here:=C2=A0<a href=3D"https://github.com/Freescale/m=
eta-freescale/blob/master/recipes-kernel/kernel-modules/kernel-module-perf-=
qoriq_0.8.2.bb">https://github.com/Freescale/meta-freescale/blob/master/rec=
ipes-kernel/kernel-modules/kernel-module-perf-qoriq_0.8.2.bb</a></div><div>=
<br></div><div>Here is the current recipe:</div><div><br></div><div>&lt;sni=
p&gt;</div><div><div>inherit module autotools</div><div>SRC_URI =3D &quot;<=
a href=3D"http://archive.zfsonlinux.org/downloads/zfsonlinux/spl/spl-0.6.5.=
6.tar.gz">http://archive.zfsonlinux.org/downloads/zfsonlinux/spl/spl-0.6.5.=
6.tar.gz</a>&quot;</div><div>SRC_URI[md5sum] =3D &quot;4544b80018ddc5c39ed3=
95363a582228&quot;</div><div>SRC_URI[sha256sum] =3D &quot;167595fe76eb5497c=
3a1ffe396b6300155d0cbe46d06824a710099ca1ae1b8bd&quot;</div><div>EXTRA_OECON=
F +=3D &quot;--with-config=3Dkernel --with-linux=3D${KERNEL_PATH}&quot;</di=
v></div><div>&lt;snip&gt;</div><div><br></div><div>This recipe builds fine,=
 except that it&#39;s using the installed kernel sources for the base ubunt=
u system rather than those build by yocto. I can confirm that the kernel ha=
s already been built, and sources are available, however when entering into=
 the devshell for this package neither KERNEL_SRC nor KERNEL_PATH are defin=
ed (they are simply empty), despite what the documentation for the module b=
bclass indicates.=C2=A0</div><div><br></div><div>It seems I&#39;m missing s=
omething important here?=C2=A0 Also any other references to examples of bui=
lding these types of modules would be greatly appreciated.</div><div><br></=
div><div>Regards,</div><div>Matt</div></div>

--001a11c32ddcb0407f052fe59357--
