Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 271174C81081
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 13:45:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 11:45:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,220,1291622400"; d="scan'208";a="586753004"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 11:45:14 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 23 Dec 2010 11:45:14 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Thu, 23 Dec 2010 11:45:14 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 23 Dec 2010 11:45:00 -0800
Thread-Topic: Autobuilder upgrade to Buildbot 0.8.3
Thread-Index: AQHLotnieLIb83jZjEOr0ky1Y5Dolw==
Message-ID: <DC74E0187B44084E9AD28300B75DFE300557D6E7@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Autobuilder upgrade to Buildbot 0.8.3
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
X-List-Received-Date: Thu, 23 Dec 2010 19:45:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I've now finished the upgrade of the autobuilder repo to include buildbot 0=
.8.3. I've rewritten the installer and updated a bunch of build helper file=
s. I wanted to take a few moments to explain some of the changes regarding =
installation.

The big change is the upgrade to buildbot 0.8.3. Buildbot now keeps the mas=
ter and slave code in different tarballs, so I've split up the installer to=
 allow people to install either a master, a slave or both.

I've also added some command line args to help people in configuration of a=
 local BB. To see the long form of usage:

git clone git://git.pokylinux.org/poky-autobuilder
cd poky-autobuilder
./scripts/poky-setup-autobuilder --help

The quickest way to set up the autobuilder for developer use, is to do:=20

./scripts/poky-setup-autobuilder both
cd ~/poky-master
make start
cd ~/poky-slave
make start
open a browser to http://localhost:8010

If for some reason the bb uses too many cpu cycles, you *should* be able to=
 do:

nice -n 20 make start

I haven't tested this though so YMMV.

This creates a minimal pokyABConfig.py within ~/poky-master. There is a lon=
ger more complex pokyABConfig.py within scripts called pokyABConfig.py.exam=
ple but for most developers, the default should suffice. If you need to tur=
n off some buildsets in pokyABConfig.py, just edit it and comment out the b=
uild steps you don't need and issue a

make reconfig

If something went funny (ie you don't see your changes) tail out the twistd=
.log file for debug info.

I've tested this on opensuse and ubuntu, but would appreciate any feedback,=
 especially for folks doing more complicated installs (multiple slave build=
ers, etc)=

