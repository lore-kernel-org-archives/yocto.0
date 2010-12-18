Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 070D54C80039
	for <yocto@yoctoproject.org>; Sat, 18 Dec 2010 12:16:44 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Dec 2010 10:16:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,194,1291622400"; d="scan'208";a="637870950"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 18 Dec 2010 10:16:14 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Sat, 18 Dec 2010 10:16:14 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 18 Dec 2010 10:14:18 -0800
Thread-Topic: Autobuilder changes and Milestone2
Thread-Index: AQHLnt9iWnzICsvLRUuXn8fA6v+1cQ==
Message-ID: <DC74E0187B44084E9AD28300B75DFE300557D6E2@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Autobuilder changes and Milestone2
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
X-List-Received-Date: Sat, 18 Dec 2010 18:16:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

This morning I stopped the autobuilder and fixed a few scripts that caused =
our first milestone build to not generate a source release tarball. I also =
removed a few unneeded sdk targets from milestone-internal and fixed the CU=
RRENT linking issue. I'll have these all packaged up and ready to pull into=
 the poky-autobuilder repo next week but I wanted to go through the changes=
 before I left for the weekend (so I don't forget what I did :) )

The first change was with poky-autobuild-generate-sources-tarball. The tarb=
all generation failed due to git trying to archive a hardcoded branch (mast=
er). This script now takes an optional third arg of $BRANCH. If the third a=
rg isn't set, it defaults to 'master'. This should fix the source tarball g=
eneration.=20

The second change was to poky-autobuild-generate-release. This script now t=
akes an optional third arg of 'current', which causes it to just create a C=
URRENT symlink to the latest release directory. I want to remove this funct=
ionality from this script as issuing a 'current' doesn't actually generate =
a release and the functionality should be extracted and put in it's own scr=
ipt. It was just a convenient place to put it for now.

I also removed all the non-IA arch  sdk builds from milestone-internal. Bui=
lding these happens on milestone-external and is not needed.

M2 build 2 is now running and judging from the last build, milestone-extern=
al should be done around 12 noon PST tomorrow and milestone-internal finish=
ed around 8am PST.

If you have any questions or concerns, I'll be checking email intermittentl=
y this weekend.

-b=

