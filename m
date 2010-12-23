Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D8DA4C80FD4
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 16:08:18 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 14:08:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,220,1291622400"; d="scan'208";a="690311188"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 14:08:18 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Thu, 23 Dec 2010 14:08:18 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 23 Dec 2010 14:08:17 -0800
Thread-Topic: Recent build issues.
Thread-Index: AQHLou3mCz/Vk0oUbESUz+kPR/tLDQ==
Message-ID: <DC74E0187B44084E9AD28300B75DFE300557D6E8@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Recent build issues.
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
X-List-Received-Date: Thu, 23 Dec 2010 22:08:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Recent build issues:

- There seem to be a few issues going on with sanity testing:

First, I've made a change to how sanity tests are run on the autobuilder th=
at should speed them up some. bitbake @ -c qemuimagetest creates a rootfs. =
I've switched this to bitbake @ -c qemuimagetest_standalone, so this should=
n't create a rootfs and should use the one already existing. We should see =
some performance improvement with this. I thought this had been included in=
 my pull with BB 0.8.3 but I must have not included it.

Next,  the following bugs have been making it difficult to track down build=
 failures:

Sanity Test Boot test returns invalid results.
http://bugzilla.pokylinux.org/show_bug.cgi?id=3D611

Sanity tests do not always kill QEMU once timeout is reached
http://bugzilla.pokylinux.org/show_bug.cgi?id=3D595

There are also sanity test failures in a few images:

qemuarm poky-image-sato
qemuarm poky-image-minimal
qemumips poky-image-sato

mips seems to have run poky-image-minimal ok, but with Bug #611, I can't be=
 sure that is the case and I doubt it's actually the case. My inclination i=
s that there is an issue with arm and mips builds that should be looked at.

- PPC is broken.

PPC is having serious issues that seem to revolve around linux-yocto-2.6.37=
. Bruce I believe is working on this. Can anyone give an update around wher=
e this stands?

I'm running nightly-incremental and nightly now to pull in some changes mad=
e this morning and to prepare for weekend delivery to QA. I'll send out tho=
se build results on Sunday (or whenever the build finishes.)
-b

