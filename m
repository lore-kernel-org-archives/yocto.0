Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0765D4C80044
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 04:51:59 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA29pwIL001913;
	Tue, 2 Nov 2010 09:51:58 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01661-05; Tue,  2 Nov 2010 09:51:54 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA29pq3k001907
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 2 Nov 2010 09:51:53 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Hector Oron <hector.oron@gmail.com>
In-Reply-To: <AANLkTik7jWT2WiQJbAYNQKyN+ywGW9xG5soW2ms5AeVa@mail.gmail.com>
References: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
	<AANLkTik7jWT2WiQJbAYNQKyN+ywGW9xG5soW2ms5AeVa@mail.gmail.com>
Date: Tue, 02 Nov 2010 09:51:44 +0000
Message-ID: <1288691504.28481.905.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Build failures on yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 09:52:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-02 at 09:17 +0000, Hector Oron wrote:
> Hi,
> 
> 2010/11/1 Hector Oron <hector.oron@gmail.com>:
> > #! /bin/sh
> >
> > # Hello,
> 
> >  case $Debian_build_system in
> >  unstable_amd64)
> > cat <<EOF
> >  Still building......
> 
> NOTE: package libtool-cross-2.2.10-r1: task do_package_write: Succeeded
> NOTE: Running task 1448 of 1529 (ID: 433,
> /srv/build/builds/menuconfig2-test/build/rootfs/yocto/laverne-4.0/meta/recipes-kernel/linux/linux-dummy.bb,
> do_package_write_ipk)
> NOTE: package linux-dummy-1.0-r1: task do_package_write_ipk: Started
> ERROR: Task failed: opkg-build execution failed
> NOTE: package linux-dummy-1.0-r1: task do_package_write_ipk: Failed
> ERROR: Task 433
> (/srv/build/builds/menuconfig2-test/build/rootfs/yocto/laverne-4.0/meta/recipes-kernel/linux/linux-dummy.bb,
> do_package_write_ipk) failed with 1
> Waiting for 1 active tasks to finish:
> 1: perl-5.8.8-r20 do_package_write_ipk (pid 6797)
> NOTE: Not creating empty archive for perl-module-cgi-eg-make-links-5.8.8-r20
> NOTE: package perl-5.8.8-r20: task do_package_write_ipk: Succeeded
> ERROR: '/srv/build/builds/menuconfig2-test/build/rootfs/yocto/laverne-4.0/meta/recipes-kernel/linux/linux-dummy.bb'
> failed
> make: *** [/srv/build/builds/menuconfig2-test/build/rootfs/yocto/laverne-4.0/foo]
> Error 1

Which MACHINE is that set for? Its unusual for the system to be using
linux-dummy.

Cheers,

Richard



