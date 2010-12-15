Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0020B4C80BCF
	for <yocto@yoctoproject.org>; Wed, 15 Dec 2010 06:47:01 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 04:47:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,348,1288594800"; d="scan'208";a="361996618"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 04:47:00 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 15 Dec 2010 20:46:59 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 15 Dec 2010 20:46:59 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 15 Dec 2010 20:46:57 +0800
Thread-Topic: quick update about LTP failures
Thread-Index: AcucViirv4ya6ltdSaCB/DkcBcrrRQ==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F40920E@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: quick update about LTP failures
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
X-List-Received-Date: Wed, 15 Dec 2010 12:47:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all,=20

I start looking into our LTP failures now and get some cursory picture.
( http://bugzilla.pokylinux.org/show_bug.cgi?id=3D169 )

I tried qemux86 sato image from latest M2 build, and there're in total 40 f=
ailures. Compared
to previous 0.9-M3 result, the number reduces slightly (some failures are O=
K but other new
failures pop up)

Most failures (around 3/4) are obviously poky related, e.g:

	- no /var/log/messages: sysctl01, sysctl02, ... sysctl10
	- useradd/userdel not found: cron, su01, cron02, cron_deny01, ...
	- use busybox: ar, file, tar, cpio, ...
	- no gcc: ld, ldd, nm

It looks like poky-image-lsb more appropriate here given that it includes m=
ore full-functional=20
packages to satisfy LTP test case requirement. I'll try lsb image later to =
see what will be
changed. On the other hand, lsb image may not be suitable for real boards l=
ike emenlow,
netbook, etc. since there's no gfx support in lsb profile so far.

Since embedded Linux is not like a typical desktop/server linux, I think fi=
nally we may leave
some failures there as long as we understand the reasons coming from the cu=
stomization
purpose. It all depends on how the profile is constructed.

Does above direction sound OK?

I plan to setup a tracking page on wiki for existing LTP/POSIX failures, in=
stead of tracking
by current bug entry. Then we could put all the investigation results there=
 for further
reference in the future.=20

Thanks
Kevin

