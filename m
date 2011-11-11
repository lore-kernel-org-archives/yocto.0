Return-Path: <autif.mlist@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E724E0059D
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 18:43:36 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ggnc4 with SMTP id c4so4407167ggn.35
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 18:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9epDNzS1AK1Jg7gFNu4sxZof0+N+j1JXfUFiMzCCm+4=;
	b=m5LYLNaNu5bpdejQ6bNy/FEtLFGtaPnRJTsrhfQYNmbFI2S8sRM134hVCIfUfkmnCx
	GBkSO6dlJF/vjFdtQUPbzbAQnMj7GqRJhhn2VA06NMBZvMTz711PD8d3z6WjA3hb1jhF
	5P3oyyrIs5uDRZaQpEnK5SEdXC1Ohp1BpBp+M=
MIME-Version: 1.0
Received: by 10.101.7.23 with SMTP id k23mr4518423ani.76.1320979415764; Thu,
	10 Nov 2011 18:43:35 -0800 (PST)
Received: by 10.236.208.194 with HTTP; Thu, 10 Nov 2011 18:43:35 -0800 (PST)
Date: Thu, 10 Nov 2011 21:43:35 -0500
Message-ID: <CADzUK1KLXD17HGgmXvuFkfYWwSzA=tj5O+XK-LfyQsSkbKZhNQ@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Trying to cross compile Mono - glib link error
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
X-List-Received-Date: Fri, 11 Nov 2011 02:43:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

I followed the instructions and installed the ADT from the 1.1 tarball
as outlined in documentation. And tested a few simple GTK apps.
Everything worked well.

After that I am trying to cross compile mono and I am getting the
following error:

LD	test-glib
libtool: link: warning: library
`/opt/poky/1.1/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.la' was
moved.
libtool: link: cannot find the library `=/usr/lib/libglib-2.0.la' or
unhandled argument `=/usr/lib/libglib-2.0.la'
make[4]: *** [test-glib] Error 1
make[4]: Leaving directory
`/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib/test'
make[3]: *** [all-recursive] Error 1
make[3]: Leaving directory
`/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib'
make[2]: *** [all] Error 2
make[2]: Leaving directory
`/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/home/autif/data/dev/projects/yocto/mono-2.10.6'
make: *** [all] Error 2

compiler flags seem to look fine

autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep LD
BUILDDIR=/home/autif/data/dev/projects/yocto/poky-edison-6.0/build
LDFLAGS='  --sysroot=/opt/poky/1.1/sysroots/i586-poky-linux'
OLDPWD=/home/autif/data/dev/projects/yocto

autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CPP
CPPFLAGS=' -m32   -march=i586 --sysroot=/opt/poky/1.1/sysroots/i586-poky-linux'

autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CXX
CXX=i586-poky-linux-g++
CXXFLAGS=' -m32   -march=i586 --sysroot=/opt/poky/1.1/sysroots/i586-poky-linux'

autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep FLAGS
CFLAGS=' -m32   -march=i586 --sysroot=/opt/poky/1.1/sysroots/i586-poky-linux'
CONFIGURE_FLAGS='--target=i586-poky-linux --host=i586-poky-linux
--build=x86_64-linux
--with-libtool-sysroot=/opt/poky/1.1/sysroots/i586-poky-linux'
CPPFLAGS=' -m32   -march=i586 --sysroot=/opt/poky/1.1/sysroots/i586-poky-linux'
CXXFLAGS=' -m32   -march=i586 --sysroot=/opt/poky/1.1/sysroots/i586-poky-linux'
LDFLAGS='  --sysroot=/opt/poky/1.1/sysroots/i586-poky-linux'

Please advise.

Thanks!

Autif

