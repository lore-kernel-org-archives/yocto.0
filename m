Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web12.8571.1596497281908339096
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Aug 2020 16:28:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=yYertrro;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: ZKX67aGxK4pvgimyOdoMmDGRJYW/fjKVn7ZfOlXCkyqJ10fhRpw85JIefMOc4biCSH3EbWzV4p
 7jhZf+BmU2+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="140146892"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; 
   d="scan'208";a="140146892"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2020 16:28:01 -0700
IronPort-SDR: WluZ6DZodFpmqmyZ04D3m7hnfqPCuvP3xDzOOquVUvdYZeLWQ3BrGC3UDnG0ob2wx1m1tWXvQx
 Y90DTbNDH7JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; 
   d="scan'208";a="466785903"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by orsmga005.jf.intel.com with ESMTP; 03 Aug 2020 16:28:00 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Aug 2020 16:28:00 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Aug 2020 16:27:59 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 3 Aug 2020 16:27:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 3 Aug 2020 16:27:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qx8VHGkB1P8++8IJd8bX60nrAjaBfvVTcZLgPJHSf7mkm5C55akdNPtjhbzyQigf0vO3ZOgeRaybN7tg747kABVxkyRYJlOGinSbRuXMRavHwyGzDE3UKng4v0imfbnA8xofvkKXuJgGZkVF4xqx6z+Tv5pB/SGRhfRMmg7u6roido83rykGbDdt/+SqFqkh6eb0zmyWP6fgac/hOnJsqtFdD9v97+x33BAjHR9hQ1A26m1OjKhFd7e2lZkRsQCXsIEXyqcAEVfksRGV5LUXBGkZpisAb/2f2MtYwxRp9s1IWtfrm6Il/K+1O6fWWXp08gMO1BIgO2fEAkevVOKt0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C78SOvfyBP52DG2lC5pW2do8Vf8qnUNwnI1pbcMALSU=;
 b=XWQ1JfTnN2RzFCKxQP54wb1VTjvzfGYMZ0BrDMJjppTI9UD7Z1HJtlCgripu5YWc+VBD/Q8j8Q7quD7kzTz3zQhBsonX+vk++gIupuoNh1PeJCKRFLJLbsaT/otWjhuQ1lRkZ2RbhJL/oda9Z5THNBjR6OLYhccvpfnxN6AowEoVNfuFyeX+nugH/T6W/gU8wG3Di84ghikdvJaeU5iNTGPAEx23ZGen/n/HGdLZXXwMlxjxQtvblyXz2o6q1R077af/NrYjePcxgoTH6TUnZ6su19cbUyBVzjA6fE8rpbIJL6Tqvm6/ghU+apdwx3K9MVhTcv+48yydrrNcFxrdvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C78SOvfyBP52DG2lC5pW2do8Vf8qnUNwnI1pbcMALSU=;
 b=yYertrroPpPP6HXtsS+xfFdyj2RsTeK3tnU30USEAL/rAJsqkyswm6/Bcs82DLsjbiIbcXwrzAqlbWRnwmRU2cKgYTnrvm5mItr+zx1FI90MRSCODnVdU0fvctdu1VMXn5GwtMQvAmBwlKyk7OJ1AJZi7kXP3RlgVrk9nTlXLfU=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BY5PR11MB4117.namprd11.prod.outlook.com (2603:10b6:a03:18a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.17; Mon, 3 Aug
 2020 23:27:58 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::61bf:2321:b9de:8866]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::61bf:2321:b9de:8866%7]) with mapi id 15.20.3239.021; Mon, 3 Aug 2020
 23:27:57 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.2 (dunfell 23.0.2) Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.2 (dunfell 23.0.2) Released
Thread-Index: AdZp7EDOX+gccrNVT+ueguA9Yk8EwA==
Date: Mon, 3 Aug 2020 23:27:57 +0000
Message-ID: <BYAPR11MB2790B21C8036D86EECD36550884D0@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.234.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6efddbb7-a6cd-43e8-5cb3-08d83804db1b
x-ms-traffictypediagnostic: BY5PR11MB4117:
x-microsoft-antispam-prvs: <BY5PR11MB4117BB0288B9834DF743790E884D0@BY5PR11MB4117.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3O6oQ2LjAOfLj3pkoz84U9kgSGpuP/xvfc1UFp6kaMcOrNyboGd4tRsARI/9p062r0W2njBVQit7ODGKqP8t1doARLFB0tD6MWdV8axxIWoO1Zf+fKSKWszibbdCQmGpi7qE+jNXftYjsSXF2YobIxqPo2Jy8Dec9A92AvO9DGI7F2CMsnFETT2tofujJVEJ2bKRN7aEt8I97SOMx5w65TOZB6WiI2XFg3z43KOujLZ7k5dO5KTyuDJyd7z8PbdxvJDPYO52W9SJguPVL9KCP4HJC2Ocz0KDWyNKrdMNYb36m2CHlxiTooDj3w4+wP5FAw9daVj88F6B1JDQiOpy08/MLsu4w2M8K/6hjIJQYrYp49Ba29XRjim52L3S0Lv074mOQ26+Nf8l6nGf3RRGGWYivTs/65ABxg7prWpwwI3c8covJQnah2remIJtBeQN
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(376002)(136003)(39860400002)(366004)(346002)(396003)(5660300002)(2906002)(30864003)(316002)(52536014)(76116006)(86362001)(66946007)(110136005)(71200400001)(966005)(8936002)(9686003)(55016002)(6506007)(83380400001)(33656002)(186003)(26005)(8676002)(66446008)(66476007)(66556008)(478600001)(7696005)(64756008)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: mGkRlNpzPkFklc1STpCgZDjQlw6DbLSjpw8rTJpnRdDtGudngEZuTm9Y4qjKH6k6t9vPOCe/3m6kgj/59LtK+h7I3pxX2JYVX8GDiTlhZvNw4VB+gYHc10Sadi+usXxxfLZdGd9vu7IKJq9vaMHPXtkpQd6wjNSOR3NwinrnNidxJgAZ+LIb+R9GkHfBcnkh6H8xFmLD+haIrzUM4PIEWy55121W52liCC3dgn1KGh/VXUR3FqtbNw6s7BUEDkv2PLQozEv6JxnxypKIqbxP/2TPS8d977g7khC9Wl4sOnca67XsrcOabk7F9/RKQWFpV1AaoMzZS3ZDgWJKJLl3/cI6gpJMMsIgN2Riu9ZF4M0+dax6Qtc+JUCcRwCfbcs6ThLiV01eByJLR+K64rL2ngiFsuvn86bMC8+jMYLkrtqN42BxdFUeUh2G+JvDwWROdw/uJNhku1mtLz2mpa/b+FDevBi8FS5VNh/SigHXQXOSDraun8baI/ZcUbpWjqzVnDwvWpXiwEjXp2g0C8LY/OsPD8h85xn+c2LRDs8wBOZDZWgJetW5AuFWnIRSHUvT59Tdy5vC/2gpUqdIe3Nty82FepFDrMK6e+6MxZDA0hJWpuDIRWu350UXLfkY4iezCnFNYRb6jFuzlnKrYgE5vw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6efddbb7-a6cd-43e8-5cb3-08d83804db1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2020 23:27:57.8214
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uVjFPQsOaGdy1B9pXgrUswzvGufdw1aBr58UHXdNt6FjsPl+BYTIN/Cv3mMgkckj4tMZioZiBeuHKUFEYDM3iY7bVagftl1EE2tPX72YGnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4117
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.2 (dunfell-23.0.2) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.2/poky-dunfell-2=
3.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.2/poky-dunfell-23.0.2.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.2/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.2/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com


--------------------------
yocto-3.1.2 Release Notes
--------------------------

--------------------------
 Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.2
Git Revision: 569b1f5d67c57de957e243997c53ec2f81dc8dfe
Release Artefact: poky-dunfell-23.0.2
sha: bd907ad11f9fe3409b86c1284eedb635a19c254fb07576e41d959867f5c60a54
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.2/poky-dunfell-2=
3.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.2/poky-dunfell-23.0.2.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.2-dunfell
Git Revision: ea886d57db917a41a0d106a15e1e96c72d6407b0
Release Artefact: oecore-dunfell-23.0.2
sha: 27e070c3f02139e314f5e3567b0510c3467a3022c2d7cc531e20bc074ed21e44
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.2/oecore-dunfell=
-23.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.2/oecore-dunfell-23.0.2.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.2
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.2
sha: 8746dfbacbc4932e61b34dac2e7ab451b8624055380045e53aadfed3067db97e
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.2/meta-mingw-dun=
fell-23.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.2/meta-mingw-dunfell-23.0.2=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.2
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.2
sha: 3283ae32402d69b02d68cf30499622ea81cc353198ae33d24dc902fa29678f29
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.2/meta-gplv2-dun=
fell-23.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.2/meta-gplv2-dunfell-23.0.2=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: dunfell
Tag: 2020-04.2-dunfell
Git Revision: cc11dfa4eb3616547a8a3909f89da0cc4f35dc57
Release Artefact: bitbake-dunfell-23.0.2
sha: 3da626d411f0abc159d1ce6c6f7dfa52f43d9cccea1fdd6bd925a7b472fcd932
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.2/bitbake-dunfel=
l-23.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.2/bitbake-dunfell-23.0.2.ta=
r.bz2


---------------
Contributors
---------------
Adrian Bunk
akuster
Alexander Kanavin
Alex Kiernan
Andreas M?ller
Andrej Valek
Andrey Zhizhikin
Anuj Mittal
Armin Kuster
Bjarne Michelsen
Bruce Ashfield
Changqing Li
Charlie Davies
Chen Qi
Chris Laplante
Christian Eggers
Daniel McGregor
David Khouya
Douglas
haiqing
Hannu Lounento
hongxu
Hongxu Jia
Jacob Kroon
Jain Sangeeta
Jens Rehsack
Joe Slater
Joshua Watt
Kai Kang
Khem Raj
Konrad Weihmann
Lee Chee Yang
Lili Li
Marco Felsch
Martin Jansa
Michael Halstead
Ming Liu
Mingli Yu
Nicolas Dechesne
Otavio Salvador
Paul Barker
Peter Kjellerstedt
Pierre-Jean Texier
Rahul Chauhan
Ralph Siemsen
Rasmus Villemoes
Richard Leitner
Richard Purdie
Ross Burton
Steve Sakoman
Stephen Jolley
Timon Ulrich
Tim Orling
Tuomas Salokanto
Vacek, Patrick
Vineela Tummalapalli
Wang Mingyu
wenlin.kang@windriver.com
Yi Zhao
Yongxin Liu
zhengruoqin

---------------
 Known Issues
---------------
A Toaster issue was found in this release and affects situations where buil=
ds
are being run from within toaster (but not from the commandline or in monit=
or
mode). The fix has been merged onto the bitbake 1.46 and dunfell branches.
so if you use Toaster in this way , please use the latest branch HEADs.


---------------
Security Fixes
---------------
glibc: whitelist CVE-2010-10029
systemd : fix CVE-2020-13776
busybox: Security Fix For CVE-2018-1000500
python3: fix CVE-2020-14422
qemu: fix CVE-2020-10702/10761/13362/13659/13800
sqlite3: Security fix for CVE-2020-15358
wpa-supplicant: Security fix CVE-2020-12695
curl: Security fixes for CVE-2020-{8169/8177}
perl: fix CVE-2020-10543 & CVE-2020-10878
dbus: fix CVE-2020-12049
qemu: fix CVE-2020-13361


---------------
Fixes
---------------
kernel-yocto: account for extracted defconfig in elements check
bitbake: cooker: Handle multiconfig name mappings correctly
oeqa/utils/qemurunner: Fix missing pid file tracebacks
qemurunner: Add extra debug info when qemu fails to start
qemurunner: Ensure pid location is deterministic
babeltrace: correct the git SRC_URI
scripts/lib/recipetool/create.py: fix regex strings
lib/oe/recipeutils.py: add AUTHOR; BBCLASSEXTEND
nativesdk: Set the CXXFLAGS to the BUILDSDK_CXXFLAGS
nativesdk: clear MACHINE_FEATURES
ptest: append to FILES
go-dep: Fix build on riscv64
go: Disbale CGO for riscv64
u-boot: fix condition to allow use of *.cfg
serf: extend for nativesdk
subversion: extend for nativesdk
oeqa/selftest/sstatetests: Avoid polluting DL_DIR
avahi: Fix typo in recipe
bison: fix Argument list too long error
linux-firmware: move ibt-misc to the end of ibt packages
linux-firmware: fix the wrong file path for ibt-misc
insane: consolidate skipping of temporary do_package files
poky: Add fedora32 as a supported distro
bitbake: server/process: Fix note reference -> info
Documenation: Prepared for the 3.1.2 release
poky.conf: Bump version for 3.1.2 release
bitbake: server/process: Ensure UI-less servers don't sit in infinite loops
bitbake: server/process: Fix a rare lockfile race
bitbake: pyshyacc: allow double COMMA statements
bitbake: fetch2: Change git fetcher not to destroy old references
bitbake: server/process: Increase timeout for commands
bitbake: ui/teamcity: don't use removed logging classes
bitbake: lib/ui/taskexp: Fix missing Gtk import
bitbake: lib/ui/taskexp: Validate gi import
coreutils: don't split stdbuf to own package with single-binary
libnl: Extend for native/nativesdk
devtool: default to empty string, if LIC_FILES_CHKSUM is not available
openssl: move ${libdir}/[...]/openssl.cnf to ${PN}-conf
linux-yocto/5.4: update to v5.4.50
oeqa/core/loader: fix regex to include numbers
systemd: remove kernel-install from base pkg
kernel.bbclass: add lz4 dependency and fix the call to lz4
kernel/yocto: fix search for defconfig from src_uri
kernel/yocto: ensure that defconfigs are processed first
classes/archive: do_configure should not depend on do_ar_patched
classes/archiver: run do_unpack_and_patch after do_preconfigure
icu: make filtered data generation optional, serial and off by default
gobject-introspection: add a patch to fix a build race
yocto-bsps: bump reference boards to v5.4.49
linux-yocto: bump genericx86 kernel version to v5.4.40
iso-codes: switch upstream branch master -> main
rootfs-postcommands: Improve/fix rootfs_check_host_user_contaminated
logrotate.py: fix testimage occasionally failure
oeqa/targetcontrol: Attempt to fix log closure warning message
oeqa/selftest: recipetool/devtool: Avoid load_plugin test race
oeqa/core/loader: refine regex to find module
gtk-icon-cache.bbclass: add runtime dependency
oescripts: ignore whitespaces when comparing lines
oescripts.py: fix typo
python3-libarchive-c: add the missing rdepends
common-licenses: fix filename of BSD-2-Clause-Patent
initscripts: update postinst
modutils-initscripts: update postinst
linux-yocto/5.4: update to v5.4.49 and -rt28
linux-yocto/5.4: update to v5.4.47
linux-yocto/5.4: update to v5.4.46
linux-yocto-rt/5.4: update to rt25
linux-yocto/5.4: update to v5.4.45
u-boot: avoid blind merging all *.cfg
u-boot: support merging .cfg files for UBOOT_CONFIG
libdrm: upgrade 2.4.100 -> 2.4.101
u-boot: move redundant-yyloc-global patch to u-boot-common.inc
populate_sdk_ext: Fix to use python3, not python
oeqa/selftest: Clean up separate builddir in success case when non-threaded
checklayer: parse LAYERDEPENDS with bb.utils.explode_dep_versions2()
linux-firmware: upgrade 20200519 -> 20200619
kernel.bbclass: Fix Module.symvers support
scripts/install-buildtools: Handle new format checksum files
scripts/install-buildtools: Update to 3.2 M1 buildtools
testimage: enable ovmf support
runqemu: add QB_ROOTFS_EXTRA_OPT parameter
oeqa/runtime/cases/ptest: Make output content path absolute
oeqa/utils/command: Improve stdin handling in runCmd
oeqa/selftest/runcmd: Add better debug for thread count mismatch failures
pseudo: Fix attr errors due to incorrect library resolution issues
mime.bbclass: fix post install scriptlet error
systemd-serialgetty: do not use BindsTo
ell: upgrade 0.31 -> 0.32
u-boot: introduce UBOOT_INITIAL_ENV
bitbake: msg: Avoid issues where paths have relative components
bitbake: runqueue: Avoid unpickle errors in rare cases
bitbake: siggen: Fix error when hash equivalence has an exception
bitbake: hashserv: Chunkify large messages
bitbake: test/fetch: change to better svn source
gstreamer1.0-plugins-bad: add support for vdpau
meson.bbclass: avoid unexpected operating-system names
recipetool: create: fix SRCBRANCH not being passed to params
apr-util: make gdbm optional
linux-firmware: add ice for Intel E800 series driver
go.bbclass: Add `-trimpath` to default build flags
go-dep: Avoid use of 'go mod' support
glide: Avoid use of 'go mod' support
go-mod.bbclass: Add class for `go mod` support
net-tools: backport a patch from upstream to use the same ifconfig format a=
s debian/ubuntu
classes/archiver: Create patched archive before configuring
common-licenses: add BSD-2-Clause-Patent
buildhistory-collect-srcrevs: sort directories
perl: Fix host specific modules problems
bind: update to 9.11.19
libpam: Remove option 'obscure' from common-password
install-buildtools: remove hardcoded x86-64 architecture
install-buildtools: fail if an error occurs
relocatable.bbclass: Avoid an exception if an empty pkgconfig dir exist
mtd-utils: Fix return value of ubiformat
systemd: Sync systemd-serialgetty@.service with upstream
buildtools-tarball: export OPENSSL_CONF in environment setup
recipetool: Fix list concatenation when using edit
vim: restore the 'chmod -x' workaround in do_install
encodings: clear postinst script
wpa-supplicant: remove service templates from SYSTEMD_SERVICE
mdadm: remove service template from SYSTEMD_SERVICE
ltp: Add missing dependencies on coreutils, bc, e2fsprogs and gdb
populate_sdk_base.bbclass: fix warning: name not matched
powertop: switch to Arjan's git
patchelf: switch to git
u-boot-tools: backport patch from upstream to fix gcc 10 builds
acpica: Upgrade 20200214 -> 20200430 for gcc-10 fixes
valgrind: Backport upstream patch to fix __getauxval needs
valgrind: Do not use outline-atomics on aarch64
syslinux: Fix build with gcc10
squashfs-tools: Backport fix for compiling with gcc 10
wayland: fix condition for strndup detection
glibc: Update to latest on 2.31 branch
matchbox-wm: Replace -fcommon with fix
menu-cache: Replace -fcommon with fix
at-spi2-atk: Remove -fcommon
mesa: Remove -fcommon
libxcrypt2: Remove -fcommon
iproute2: Remove -fcommon
cpio: add patch to fix issues with gcc 10
binutils: add patch to fix issues with gcc 10
libcomps: update to 0.1.15
dtc: update to 1.6.0
gdbm: add patch to fix link failure against gcc 10
libtirpc: remove extra "-fcommon" from CFLAGS
libtirpc: upgrade 1.2.5 -> 1.2.6
bitbake: tests/fetch: Switch from git.infradead.org to a YP mirror
vim: _FORTIFY_SOURCE=3D2 be gone
build-sysroots: add sysroot paths with native binaries to PATH
linux-firmware: upgrade 20200421 -> 20200519
db: do not install db_verify if 'verify' is not enabled
qemu: force build type to production
oe-selftest: Recursively patch test case paths
oe-selftest: Allow overriding the build directory used for tests
archiver: Fix test case for srpm archiver mode
patchelf: Add patch to address corrupt shared library issue
cogl: point to correct HOMEPAGE
cve-check: include epoch in product version output
oeqa/targetcontrol: Rework exception handling to avoid warnings
cairo: Do not try to remove nonexistent directories
logrotate: Drop obsolete setting/comment
maintainers: Update Ross' email address
lz4: disable static library
sysfsutils: rem leftover settings for libsysfs-dev
util-linux: alternatify rtcwake
ltp: Exclude the memcg_stress tests due to timeout problems
core-image-minimal-initramfs: keep restriction with initramfs-module-instal=
l
