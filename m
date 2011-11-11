Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72AB5E0059F
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 20:24:12 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Nov 2011 20:24:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,492,1315206000"; d="scan'208";a="83834086"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 10 Nov 2011 20:24:11 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 10 Nov 2011 20:24:11 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.149]) with mapi id
	14.01.0355.002; Thu, 10 Nov 2011 20:24:11 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: autif khan <autif.mlist@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Trying to cross compile Mono - glib link error
Thread-Index: AQHMoBvW5JPBSwUPB0CyAVqH9VykV5WnEXZw
Date: Fri, 11 Nov 2011 04:24:10 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16EB4658@ORSMSX101.amr.corp.intel.com>
References: <CADzUK1KLXD17HGgmXvuFkfYWwSzA=tj5O+XK-LfyQsSkbKZhNQ@mail.gmail.com>
In-Reply-To: <CADzUK1KLXD17HGgmXvuFkfYWwSzA=tj5O+XK-LfyQsSkbKZhNQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Trying to cross compile Mono - glib link error
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
X-List-Received-Date: Fri, 11 Nov 2011 04:24:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Autif,

It seems the libgmodule-2.0.la is missing from the 1.1 tarball sysroot but =
I've checked it does exist under the sysroot that extracted from the core-i=
mage-sato-sdk image.  So, you have to do the following steps:
1. bitbake core-image-sato-sdk
2. source the environment-setup script under /opt/poky/1.1
3. Run runqemu-extract-sdk against the built out image file, it should be u=
nder your .../build/tmp/deploy/image/core-image-sato-sdk.tar.bz2 and the di=
rectory you want the sysroot to be extracted to e.g. $HOME/qemux86
4. change your sysroot setting to point to the newly created sysroot direct=
ory.

Or, you can following the ADT manual and using the part that use adt-instal=
ler to setup your cross development environment.

Hope these can get you going.

Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of autif khan
Sent: Thursday, November 10, 2011 6:44 PM
To: yocto@yoctoproject.org
Subject: [yocto] Trying to cross compile Mono - glib link error

I followed the instructions and installed the ADT from the 1.1 tarball
as outlined in documentation. And tested a few simple GTK apps.
Everything worked well.

After that I am trying to cross compile mono and I am getting the
following error:

LD      test-glib
libtool: link: warning: library
`/opt/poky/1.1/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.la' was
moved.
libtool: link: cannot find the library `=3D/usr/lib/libglib-2.0.la' or
unhandled argument `=3D/usr/lib/libglib-2.0.la'
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
make[1]: Leaving directory `/home/autif/data/dev/projects/yocto/mono-2.10.6=
'
make: *** [all] Error 2

compiler flags seem to look fine

autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep LD
BUILDDIR=3D/home/autif/data/dev/projects/yocto/poky-edison-6.0/build
LDFLAGS=3D'  --sysroot=3D/opt/poky/1.1/sysroots/i586-poky-linux'
OLDPWD=3D/home/autif/data/dev/projects/yocto

autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CPP
CPPFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586-p=
oky-linux'

autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CXX
CXX=3Di586-poky-linux-g++
CXXFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586-p=
oky-linux'

autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep FLAGS
CFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586-pok=
y-linux'
CONFIGURE_FLAGS=3D'--target=3Di586-poky-linux --host=3Di586-poky-linux
--build=3Dx86_64-linux
--with-libtool-sysroot=3D/opt/poky/1.1/sysroots/i586-poky-linux'
CPPFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586-p=
oky-linux'
CXXFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586-p=
oky-linux'
LDFLAGS=3D'  --sysroot=3D/opt/poky/1.1/sysroots/i586-poky-linux'

Please advise.

Thanks!

Autif
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

