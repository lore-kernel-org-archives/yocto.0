Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B20064C81003
	for <yocto@yoctoproject.org>; Thu,  4 Nov 2010 19:58:32 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Nov 2010 17:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,299,1286175600"; d="scan'208";a="674509096"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 04 Nov 2010 17:58:27 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 5 Nov 2010 08:58:04 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Fri, 5 Nov 2010
	08:58:03 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Fri, 5 Nov 2010 08:58:02 +0800
Thread-Topic: [PULL] fixes to eglibc and busybox
Thread-Index: Act8hH9AesovLd4ESCeHrGJca1qpMA==
Message-ID: <1865303E0DED764181A9D882DEF65FB67A65C6F4BB@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PULL] fixes to eglibc and busybox
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
X-List-Received-Date: Fri, 05 Nov 2010 00:58:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is a rebased and resent version of that I sent to poky@pokylinux.org (=
Thanks to Mark and Saul's suggestion).
Since this is a non poky core change, I post this version in this mailing l=
ist.
Please review it and comment.

Thanks,
-- Dexuan

$ scripts/create-pull-request -r 2ecf311fbca970f6ea2d80accc3f925b097b664e -=
b dcui/master
Note: <commit_id> parameter assumed as 'HEAD'

 meta/recipes-core/busybox/busybox-1.16.2/defconfig  |   14 +++++++-------
 meta/recipes-core/eglibc/eglibc-2.12/etc/ld.so.conf |    2 --
 meta/recipes-core/eglibc/eglibc-package.inc         |    2 +-
 meta/recipes-core/eglibc/eglibc_2.12.bb             |    2 +-
 4 files changed, 9 insertions(+), 11 deletions(-)

Dexuan Cui (2):
      busybox: enable more options for tar to support more file formats.
      eglibc: install an empty /etc/ld.so.conf into target

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddcui/mast=
er

commit 032856f340075390052eeeee15d1e1495fe2d94b
Author: Dexuan Cui <dexuan.cui@intel.com>
Date:   Fri Nov 5 08:35:54 2010 +0800

    eglibc: install an empty /etc/ld.so.conf into target

    We add ${sysconfdir} into FILES_${PN} to avoid the below spurious warni=
ng

    ldconfig: Can't open configuration file /etc/ld.so.conf: No such file o=
r
    directory

    The file ld.so.conf can be empty because now we don't install
    /usr/local/lib and /usr/X11R6/.

    Fixes [BUGID #511]

    Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>

commit b952fae48c45e39a14ec9c24b0ee544a741c3f69
Author: Dexuan Cui <dexuan.cui@intel.com>
Date:   Tue Oct 26 15:10:26 2010 +0800

    busybox: enable more options for tar to support more file formats.

    Fixes [BUGID #495]

    Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>

