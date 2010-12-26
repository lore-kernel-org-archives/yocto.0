Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A72C4C81021
	for <yocto@yoctoproject.org>; Sun, 26 Dec 2010 11:36:20 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Dec 2010 09:36:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,231,1291622400"; d="scan'208";a="366657145"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 26 Dec 2010 09:36:20 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 26 Dec 2010 09:36:19 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Sun, 26 Dec 2010 09:36:18 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Sun, 26 Dec 2010 09:36:18 -0800
Thread-Topic: [yocto] Autobuilder upgrade to Buildbot 0.8.3
Thread-Index: AcujK2hNTcXOA74eSH6B69ld5ztDsQB9tX+8
Message-ID: <DC74E0187B44084E9AD28300B75DFE300557D6EA@orsmsx504.amr.corp.intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6E7@orsmsx504.amr.corp.intel.com>,
	<4D142F80.3090308@intel.com>
In-Reply-To: <4D142F80.3090308@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder upgrade to Buildbot 0.8.3
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
X-List-Received-Date: Sun, 26 Dec 2010 17:36:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


________________________________________
From: Wold, Saul
Sent: Thursday, December 23, 2010 9:28 PM
To: Flanagan, Elizabeth
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Autobuilder upgrade to Buildbot 0.8.3

>Ok, so what is the User and Password for?  I don't really see any
>explanation for them.

The username and password is for securing the build kick off process. It is=
 what you enter when you want to manually kick off the build from that scre=
en in the web user interface.

>I am trying different options for setting locations and seem to have run
>into trouble.  It would be nice to have a general option to just sent
>bbHome to something other than home directory to move everything to a
>different drive.

There is, kind of. I see your point though. I'll put this in the next revis=
ion of this.

./scripts/poky-setup-autobuilder --masterdir=3D/path/to/directory/poky-mast=
er --slavedir=3D/path/to/directory/poky-slave --outputdir.=3D/path/to/direc=
tory/poky-slave/output --controldir=3D/path/to/directory/poky-autobuilder -=
-pstagedir=3D/path/to/directory/poky-slave/pstaging both

The above should end up being=20

./scripts/poky-setup-autobuilder --installdir=3D/path/to/installdir both

>Sau!

-b=

