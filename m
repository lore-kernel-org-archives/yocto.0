Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25EE0E0030B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 23:28:10 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2012 23:28:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104116178"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2012 23:28:09 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 5 Jan 2012 23:28:09 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.57]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.229]) with mapi id
	14.01.0355.002; Thu, 5 Jan 2012 23:28:09 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto Eclipse Plugin - Python 'undefined symbol'
Thread-Index: AQHMy8XzCaxap9Dq5UyF3Tu0UQGJYpX+fEuAgABzxdA=
Date: Fri, 6 Jan 2012 07:28:08 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C240329F0@ORSMSX101.amr.corp.intel.com>
References: <4F05CD5B.3060909@communistcode.co.uk>
	<4F05CF5B.1020808@communistcode.co.uk>
In-Reply-To: <4F05CF5B.1020808@communistcode.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Yocto Eclipse Plugin - Python 'undefined symbol'
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
X-List-Received-Date: Fri, 06 Jan 2012 07:28:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jack,

I just tried with latest poky master built out toolchain and remote debug w=
ith latest Eclipse plug-in has no problem.  My host is 32bit Ubuntu, but I =
don't think that makes any difference.  So how up to date is your poky meta=
 data, mine is as of this afternoon  that contains 2 bug fixes that relevan=
t to meta-toolchain build.  Also, seems you're using the build system deriv=
ed toolchain?  If so, I can give that a try...

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jack Mitchell
Sent: Thursday, January 05, 2012 8:27 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Eclipse Plugin - Python 'undefined symbol'

On 05/01/12 16:18, Jack Mitchell wrote:
> I encounter this error when trying to launch a debug session in
> Eclipse. I am using the master branch of poky, and the master branch
> of eclipse-plugin on an ArchLinux 64 host.
>
> Any ideas, it seems as though the Python wasn't built with Unicode
> support but I can't tell if it is using the bitbake built python or
> host python...
>
> Error creating session
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin=
/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
> symbol lookup error:
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin=
/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
> undefined symbol: PyUnicodeUCS4_FromEncodedObject
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin=
/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
> symbol lookup error:
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin=
/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
> undefined symbol: PyUnicodeUCS4_FromEncodedObject
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin=
/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
> symbol lookup error:
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin=
/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
> undefined symbol: PyUnicodeUCS4_FromEncodedObject
>
> Cheers,
> Jack.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

A cheeky ldd of the binary file gives me:

linux-vdso.so.1 =3D>  (0x00007fff68dff000)
     libreadline.so.6 =3D>
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/a=
rmv5te-poky-linux-gnueabi/../../../usr/lib/libreadline.so.6
(0x00007fb5cf3af000)
     libncursesw.so.5 =3D> /lib/libncursesw.so.5 (0x00007fb5cf152000)
     libz.so.1 =3D>
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/a=
rmv5te-poky-linux-gnueabi/../../../usr/lib/libz.so.1
(0x00007fb5cef3b000)
     libm.so.6 =3D> /lib/libm.so.6 (0x00007fb5cec47000)
     libpthread.so.0 =3D> /lib/libpthread.so.0 (0x00007fb5cea2a000)
     libdl.so.2 =3D> /lib/libdl.so.2 (0x00007fb5ce826000)
     libutil.so.1 =3D> /lib/libutil.so.1 (0x00007fb5ce623000)
     libpython2.7.so.1.0 =3D>
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/a=
rmv5te-poky-linux-gnueabi/../../../usr/lib/libpython2.7.so.1.0
(0x00007fb5ce248000)
     libexpat.so.1 =3D>
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/a=
rmv5te-poky-linux-gnueabi/../../../usr/lib/libexpat.so.1
(0x00007fb5ce01e000)
     libc.so.6 =3D> /lib/libc.so.6 (0x00007fb5cdc7b000)
     /lib/ld-linux-x86-64.so.2 (0x00007fb5cf5f1000)

Which seems to indicate that it is using the bitbake built python?

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

