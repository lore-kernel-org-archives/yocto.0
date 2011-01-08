Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 998D14C8108C
	for <yocto@yoctoproject.org>; Sat,  8 Jan 2011 17:21:46 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Jan 2011 15:21:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="875712087"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 08 Jan 2011 15:21:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 8 Jan 2011 15:21:45 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Sat, 8 Jan 2011 15:21:45 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 8 Jan 2011 15:21:45 -0800
Thread-Topic: Changes to the autobuilder.
Thread-Index: AQHLr4rQHDZqEztj0EKyraI8+uvLgg==
Message-ID: <DC74E0187B44084E9AD28300B75DFE300557D6FC@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Changes to the autobuilder.
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
X-List-Received-Date: Sat, 08 Jan 2011 23:21:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've made a few changes to the autobuilder that people should know about. C=
urrently, we've been utilizing the milestone builders to split the nightly =
to both the internal and external builders in order to speed things up. I'v=
e renamed them to nightly-internal* and nightly-external*. They were puttin=
g their build output to the milestone directory on the webserver. This was =
incorrect behavior. I've changed this to make the build output go out to th=
e nightly directory of the webserver: http://autobuilder.pokylinux.org/nigh=
tly.

The big change is to how we deal with emenlow, atom-pc, beagleboard, etc. T=
hese are now found under the machines/<machine_name>/<arch> directory in th=
e build output web directory. I'll need to eventually refactor some of the =
autobuilder scripts to deal with BSPs a little more elegantly, but it's fun=
ctional for now and we have a standard to adhere to.

Also, be aware that we now have a functional CURRENT link, so if you go to =
the autobuilder/nightly/CURRENT directory this will point to the last thing=
 the autobuilder built. Keep in mind, it will create that link even if the =
build is broken.=20
I'll have a commit with all of this in it when I finish up the upgrade to 0=
.8.3.

If you have any questions, feel free to ask.

-b=

