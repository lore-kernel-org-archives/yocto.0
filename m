Return-Path: <twoerner@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64769E0059F
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 15:16:07 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by dadp15 with SMTP id p15so1313020dad.35
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2011 15:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=QsmFwm3cLP2aK6l6vGi92bN9MydhNOnqnGYX8xmVtM4=;
	b=AuxjvwbqLLfWpb2QVH4LCyOVn/mm4pHupF4ERTzgvdub6yoMO02AzXZBIItTdzjfPY
	On98jHY2Lqe1Kf2mvphh77D/rZkUtEF1trQUlvcEwuYbYDkGcMBN11jgn2wESNBu+k7C
	6L/6kFHf4Xvk6E12IWmAlq4IZ9vtd6Xpc/z8M=
MIME-Version: 1.0
Received: by 10.68.33.42 with SMTP id o10mr8841068pbi.52.1322781367021; Thu,
	01 Dec 2011 15:16:07 -0800 (PST)
Received: by 10.68.25.4 with HTTP; Thu, 1 Dec 2011 15:16:06 -0800 (PST)
Date: Thu, 1 Dec 2011 18:16:06 -0500
Message-ID: <CAHUNapSdefCpWo1DwBz3K0k=OX8WwXQH0tJDrAp42a+vAmagzw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: override SITEINFO_BITS?
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
X-List-Received-Date: Thu, 01 Dec 2011 23:16:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

First time building Yocto (but have been using OE) on an openSUSE 11.4
64-bit host:
$ bitbake core-image-minimal

One of the first steps is to build pseudo-native. As it turns out I
have the glibc-devel-32bit package installed on my machine. This
appears to confuse meta/classes/siteinfo.bbclass into thinking I'm on
a 32-bit machine. Pseudo, as a consequence, gets misconfigured and
fails to build. Removing the glibc-devel-32bit package solves the
problem.

Is there a way to override or define SITEINFO_BITS (maybe in a site
config file) or on the cmdline?

$gcc -v
Using built-in specs.
COLLECT_GCC=gcc
COLLECT_LTO_WRAPPER=/usr/lib64/gcc/x86_64-suse-linux/4.5/lto-wrapper
Target: x86_64-suse-linux
Configured with: ../configure --prefix=/usr --infodir=/usr/share/info
--mandir=/usr/share/man --libdir=/usr/lib64 --libexecdir=/usr/lib64
--enable-languages=c,c++,objc,fortran,obj-c++,java,ada
--enable-checking=release --with-gxx-include-dir=/usr/include/c++/4.5
--enable-ssp --disable-libssp --disable-plugin
--with-bugurl=http://bugs.opensuse.org/ --with-pkgversion='SUSE Linux'
--disable-libgcj --disable-libmudflap --with-slibdir=/lib64
--with-system-zlib --enable-__cxa_atexit
--enable-libstdcxx-allocator=new --disable-libstdcxx-pch
--enable-version-specific-runtime-libs --program-suffix=-4.5
--enable-linux-futex --without-system-libunwind --enable-gold
--with-plugin-ld=/usr/bin/gold --with-arch-32=i586 --with-tune=generic
--build=x86_64-suse-linux
Thread model: posix
gcc version 4.5.1 20101208 [gcc-4_5-branch revision 167585] (SUSE Linux)

Could this (x86_64-suse-linux) be confusing siteinfo.bbclass?

Best regards,
    Trevor

