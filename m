Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAAC94C80815
	for <yocto@yoctoproject.org>; Tue,  9 Nov 2010 20:19:27 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Nov 2010 18:19:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,176,1288594800"; d="scan'208";a="625231461"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 09 Nov 2010 18:19:26 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 10 Nov 2010 10:18:20 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 10 Nov 2010 10:18:19 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>
Date: Wed, 10 Nov 2010 10:18:18 +0800
Thread-Topic: Some investigation on disk space occupation for Yocto Linux
Thread-Index: AcuAfYnr6TlCYNZTStuPBTblMfCCXw==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A301B1C1F@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Some investigation on disk space occupation for Yocto Linux
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
X-List-Received-Date: Wed, 10 Nov 2010 02:19:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Richard,

I just had a quick investigation on disk space occupation for Yocto linux.
Here are some findings and thoughts.

I built poky-image-minimal based on poky green release and yocto-0.9 releas=
e,
within the build directory, I dumped the tmp dir size:

Tmp dir size:
Green: 7.4G
Yocto-0.9: 27G


The "work" dir occupies most of the space (~90%) in both releases.
Here are the details with "work" dir.

Green:
1.5M    all-poky-linux
5.2G    i586-poky-linux
675M    i686-linux
1.1G    qemux86-poky-linux

Yocto-0.9:
1.8M    all-poky-linux
16G     i586-poky-linux
4.8G    qemux86-poky-linux
3.5G    x86_64-linux

For the directory of "i586-poky-linux", Green has 34 sub directories, while=
 Yocto-0.9
has 64 sub directories, which doubles Green's number. However the size is t=
riple.

This should be a problem.

For a certain package directory, for example, ncurses-5.4-r14.

Green:
Total: 112M
12M     image
36M     ncurses-5.4
16M     package
16M     packages-split
18M     staging-pkg
15M     sysroot-destdir
1.1M    temp

Yocto-0.9:
Total: 167M
13M     image
36M     ncurses-5.4
17M     package
17M     packages-split
16M     sysroot-destdir
1.4M    temp
2.5M    deploy-ipks
2.6M    deploy-rpms
4.0K    ncurses.requires
116K    ncurses.spec
40K     pkgdata
12M     pseudo
12K     shlibs
2.5M    sstate-build-deploy-ipk
2.6M    sstate-build-deploy-rpm
33M     sstate-build-package
16M     sstate-build-populate-sysroot

We saw in Yocto-0.9, size is 50% larger than Green release.

Some directories within package are new in Yocto-0.9, like pseudo, sstate-b=
uild-*.=20
I just took a glance at sstate.bbclass, the current logic seems that it wil=
l first
copy directories (like deploy-rpms, deploy-ipks, package, package-split, sy=
sroot, etc)
into sstate-build-*, and then archive it into sstate-cache directory.

So the first step of optimization from my thoughts are:=20
1) Can we remove the sstate-build-* directories after archive is done?
2) Or is it possible to omit the copy process and archive directly from dir=
ectories
(deploy-rpms, deploy-ipks, package, package-split, sysroot, etc) to sstate-=
cache?

Thanks,
Dongxiao =

