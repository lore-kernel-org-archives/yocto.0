Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id BBAFB4C800A8
	for <yocto@yoctoproject.org>; Thu, 17 Feb 2011 03:09:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Feb 2011 01:09:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,485,1291622400"; d="scan'208";a="390059125"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 17 Feb 2011 01:09:40 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 17 Feb 2011 17:09:32 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 17 Feb 2011 17:09:31 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Yu, Ke"
	<ke.yu@intel.com>
Date: Thu, 17 Feb 2011 17:09:27 +0800
Thread-Topic: fetch_error
Thread-Index: AcvOghNDshCSEBQnSACtJ8D4+cuY1gAACi4w
Message-ID: <789F9655DD1B8F43B48D77C5D306597332CC2C9B@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: FW: fetch_error
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
X-List-Received-Date: Thu, 17 Feb 2011 09:09:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all
When I redo bitbake linux-libc-headers today, I repeatedly meet below do_fe=
tch error, anybody could help to have a look?

Thanks a lot!
criping

> -----Original Message-----
> From: Ke, Liping
> Sent: Thursday, February 17, 2011 5:07 PM
> To: Ke, Liping
> Subject: fetch_error
>=20
> Loading cache...done.
> Loaded 972 entries from dependency cache.
> Parsing recipes...done.
> Parsing of 799 .bb files complete (766 cached, 33 parsed). 1006 targets,
> 34 skipped, 0 masked, 0 errors.
> WARNING: linux-libc-headers-qemux86/201102180910
>=20
> OE Build Configuration:
> BB_VERSION        =3D "1.11.0"
> METADATA_BRANCH   =3D "now"
> METADATA_REVISION =3D "974ea1a190167dcfd831ba1fc5f733e0dc9a6fda"
> TARGET_ARCH       =3D "i586"
> TARGET_OS         =3D "linux"
> MACHINE           =3D "qemux86"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "0.9+snapshot-20110218"
> TARGET_FPU        =3D ""
>=20
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 534 of 757 (ID: 6, /media/poky/new.git/meta/recipes-
> kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb, do_fetch)
> NOTE: package linux-libc-headers-yocto-2.6.37+git-
> 2+49a2e709dd41bcfa206e61b88e5562789a6b8914_2+49a2e709dd41bcfa206e61b88e
> 5562789a6b8914-r3: task do_fetch: Started
> ERROR: '/media/poky/new.git/meta/recipes-kernel/linux-libc-
> headers/linux-libc-headers-yocto_git.bb' failed
> ERROR: Error executing a python function in
> /media/poky/new.git/meta/recipes-kernel/linux-libc-headers/linux-libc-
> headers-yocto_git.bb:
> IOError: [Errno 4] Interrupted system call
>=20
> ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> ERROR:   File "base_do_fetch", line 18, in <module>
> ERROR:
> ERROR:   File "base_do_fetch", line 13, in base_do_fetch
> ERROR:
> ERROR:   File "/media/poky/new.git/bitbake/lib/bb/fetch2/__init__.py",
> line 934, in download
> ERROR:     m.download(u, ud, self.d)
> ERROR:
> ERROR:   File "/media/poky/new.git/bitbake/lib/bb/fetch2/git.py", line
> 137, in download
> ERROR:     runfetchcmd("%s remote prune origin" % ud.basecmd, d)
> ERROR:
> ERROR:   File "/media/poky/new.git/bitbake/lib/bb/fetch2/__init__.py",
> line 386, in runfetchcmd
> ERROR:     line =3D stdout_handle.readline()
> ERROR:
> ERROR: The code that was being executed was:
> ERROR:      0014:        except bb.fetch2.BBFetchException, e:
> ERROR:      0015:            raise bb.build.FuncFailed(e)
> ERROR:      0016:
> ERROR:      0017:
> ERROR:  *** 0018:base_do_fetch(d)
> ERROR:      0019:
> ERROR: (file: 'base_do_fetch', lineno: 18, function: <module>)
> ERROR:      0009:	bb.data.update_data(localdata)
> ERROR:      0010:
> ERROR:      0011:        try:
> ERROR:      0012:            fetcher =3D bb.fetch2.Fetch(src_uri,
> localdata)
> ERROR:  *** 0013:            fetcher.download()
> ERROR:      0014:        except bb.fetch2.BBFetchException, e:
> ERROR:      0015:            raise bb.build.FuncFailed(e)
> ERROR:      0016:
> ERROR:      0017:
> ERROR: (file: 'base_do_fetch', lineno: 13, function: base_do_fetch)
> ERROR: Function 'base_do_fetch' failed
> ERROR: Logfile of failure stored in: /media/poky/new.git/build-
> x86/tmp/work/i586-poky-linux/linux-libc-headers-yocto-2.6.37+git-
> 2+49a2e709dd41bcfa206e61b88e5562789a6b8914_2+49a2e709dd41bcfa206e61b88e
> 5562789a6b8914-r3/temp/log.do_fetch.29373
> Log data follows:
> | ERROR: Error executing a python function in
> /media/poky/new.git/meta/recipes-kernel/linux-libc-headers/linux-libc-
> headers-yocto_git.bb:
> | IOError: [Errno 4] Interrupted system call
> |
> | ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> | ERROR:   File "base_do_fetch", line 18, in <module>
> | ERROR:
> | ERROR:   File "base_do_fetch", line 13, in base_do_fetch
> | ERROR:
> | ERROR:   File "/media/poky/new.git/bitbake/lib/bb/fetch2/__init__.py",
> line 934, in download
> | ERROR:     m.download(u, ud, self.d)
> | ERROR:
> | ERROR:   File "/media/poky/new.git/bitbake/lib/bb/fetch2/git.py",
> line 137, in download
> | ERROR:     runfetchcmd("%s remote prune origin" % ud.basecmd, d)
> | ERROR:
> | ERROR:   File "/media/poky/new.git/bitbake/lib/bb/fetch2/__init__.py",
> line 386, in runfetchcmd
> | ERROR:     line =3D stdout_handle.readline()
> | ERROR:
> | ERROR: The code that was being executed was:
> | ERROR:      0014:        except bb.fetch2.BBFetchException, e:
> | ERROR:      0015:            raise bb.build.FuncFailed(e)
> | ERROR:      0016:
> | ERROR:      0017:
> | ERROR:  *** 0018:base_do_fetch(d)
> | ERROR:      0019:
> | ERROR: (file: 'base_do_fetch', lineno: 18, function: <module>)
> | ERROR:      0009:	bb.data.update_data(localdata)
> | ERROR:      0010:
> | ERROR:      0011:        try:
> | ERROR:      0012:            fetcher =3D bb.fetch2.Fetch(src_uri,
> localdata)
> | ERROR:  *** 0013:            fetcher.download()
> | ERROR:      0014:        except bb.fetch2.BBFetchException, e:
> | ERROR:      0015:            raise bb.build.FuncFailed(e)
> | ERROR:      0016:
> | ERROR:      0017:
> | ERROR: (file: 'base_do_fetch', lineno: 13, function: base_do_fetch)
> | ERROR: Function 'base_do_fetch' failed
> NOTE: package linux-libc-headers-yocto-2.6.37+git-
> 2+49a2e709dd41bcfa206e61b88e5562789a6b8914_2+49a2e709dd41bcfa206e61b88e
> 5562789a6b8914-r3: task base_do_fetch: Failed
> ERROR: Task 6 (/media/poky/new.git/meta/recipes-kernel/linux-libc-
> headers/linux-libc-headers-yocto_git.bb, do_fetch) failed with exit
> code '1'

