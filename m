Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0622BE008ED; Tue,  4 Nov 2014 05:08:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46006E00874
	for <yocto@yoctoproject.org>; Tue,  4 Nov 2014 05:08:48 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2BFA4F811DD; Tue,  4 Nov 2014 06:08:47 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7AD7CF811DB;
	Tue,  4 Nov 2014 06:08:46 -0700 (MST)
Message-ID: <5458CFE0.8080803@mlbassoc.com>
Date: Tue, 04 Nov 2014 06:08:48 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Shared library questions
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
X-List-Received-Date: Tue, 04 Nov 2014 13:08:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Sorry if this is a bit off topic, but I'm having issues with
how [some of my] shared libraries are being packaged and used.

I have a library recipe which uses this line to pack up it's
shared libraries:
     oe_libinstall -C lib -so libflx_fes ${D}${libdir}
This yields this in it's install image:

     $ ls -l tmp/work/ppc603e-amltd-linux/flx-fes-lib/1.2.1-r0/image/usr/lib
     total 20
     lrwxrwxrwx 1 gthomas gthomas    19 Nov  3 12:53 libflx_fes.so -> libflx_fes.so.1.2.1
     lrwxrwxrwx 1 gthomas gthomas    19 Nov  3 12:53 libflx_fes.so.1 -> libflx_fes.so.1.2.1
     -rwxr-xr-x 3 gthomas gthomas 17238 Nov  3 12:53 libflx_fes.so.1.2.1

This all looks good to me.  This is then packaged as:

     tmp/work/ppc603e-amltd-linux/flx-fes-lib/1.2.1-r0/packages-split/flx-fes-lib-dev/usr/lib:
     total 0
     lrwxrwxrwx 1 gthomas gthomas 19 Nov  3 13:00 libflx_fes.so -> libflx_fes.so.1.2.1

     tmp/work/ppc603e-amltd-linux/flx-fes-lib/1.2.1-r0/packages-split/flx-fes-lib/usr/lib:
     total 12
     lrwxrwxrwx 1 gthomas gthomas   19 Nov  3 13:00 libflx_fes.so.1 -> libflx_fes.so.1.2.1
     -rwxr-xr-x 2 gthomas gthomas 8296 Nov  3 13:00 libflx_fes.so.1.2.1

So the libflx_fes.so ends up in the -dev package and the rest
in the -lib package.

I then have another package that depends on flx-fes-lib.  It
uses the library via this link line:
     powerpc-amltd-linux-gcc  -m32 -mhard-float -mcpu=603e \
       --sysroot=/home/local/efacec-latest_2014-10-15/map8001-ppc8379-v2/tmp/sysroots/map8001-ppc8379-revF \
       -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -L../lib/ \
       -o ../bin/flx_redundancy_supervision redundancy_supervision.o redundancy_supervision_ctrl.o
       -lpacket_lib -lsupervision_lib -lflx_fes -lrt

The weird thing is that this ends up with the program depending
on the libflx_fes.so, not the versioned library libflx_fes.so.1
     # ldd /usr/sbin/flx_redundancy_daemon
         linux-vdso32.so.1 (0x00100000)
         libpacket_lib.so.0 => /usr/lib/libpacket_lib.so.0 (0x0ffdd000)
         libsupervision_lib.so.0 => /usr/lib/libsupervision_lib.so.0 (0x0ffb8000)
         libflx_fes.so => not found
         librt.so.1 => /lib/librt.so.1 (0x0ff90000)
         libc.so.6 => /lib/libc.so.6 (0x0fe18000)
         libpthread.so.0 => /lib/libpthread.so.0 (0x0fdde000)
         /lib/ld.so.1 (0x48000000)

I also get a warning from bitbake:
     WARNING: QA Issue: flx-redundancy-supervision requires libflx_fes.so, but no providers in its RDEPENDS [file-rdeps]

Can someone explain why this is happening and how I fix it?

Sadly, I can't share these recipes or the code (they are available
to me only under NDA).  If needed, I could try to replicate the
issue with something I can share.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

