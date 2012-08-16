Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32999E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 11:56:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Aug 2012 11:56:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,780,1336374000"; d="scan'208";a="209483870"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 16 Aug 2012 11:56:02 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 16 Aug 2012 11:56:02 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.138]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.3]) with mapi id
	14.01.0355.002; Thu, 16 Aug 2012 11:56:01 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Zanussi, Tom" <tom.zanussi@intel.com>,
	"bruce.ashfield@windriver.com" <bruce.ashfield@windriver.com>, "Bodke, 
	Kishore K" <kishore.k.bodke@intel.com>
Thread-Topic: [yocto] [PATCH 0/1][meta-intel] Cover letter to upgrade
	meta-cedartrail pvr driver to v1.0.2
Thread-Index: AQHNe9/14BEiLHNMsUWB1SMlkeQMj5dcyQSg
Date: Thu, 16 Aug 2012 18:56:01 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003311678@ORSMSX103.amr.corp.intel.com>
References: <cover.1345077384.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1345077384.git.rahul.saxena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH 0/1][meta-intel] Cover letter to upgrade	meta-cedartrail pvr driver to v1.0.2
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
X-List-Received-Date: Thu, 16 Aug 2012 18:56:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The patch is for denzil branch of meta-intel.

Thanks
Rahul

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of rahul.saxena@intel.com
Sent: Thursday, August 16, 2012 11:36 AM
To: yocto@yoctoproject.org; Zanussi, Tom; bruce.ashfield@windriver.com; Bod=
ke, Kishore K
Subject: [yocto] [PATCH 0/1][meta-intel] Cover letter to upgrade meta-cedar=
trail pvr driver to v1.0.2

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter to upgrade meta-cedartrail pvr driver to v1.0.2
   =20
This update of the driver enables support for B3 stepping of Cedarview proc=
essor and also support for DP/eDP ports.
   =20
Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
--
The following changes since commit 2552a046878e4352595f6e081ad371538cceda10=
:

  meta-n450: explicitly specify KBRANCH we expect to use (2012-07-12 16:32:=
58 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib denzelv102checkin15augOK
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=3Ddenzelv102c=
heckin15augOK

Rahul Saxena (1):
  meta-cedartrail: update PVR graphics driver to version 1.0.2

 meta-cedartrail/README                             |    2 +-
 meta-cedartrail/conf/machine/cedartrail.conf       |    2 +-
 .../xorg-driver/cdv-pvr-driver.inc                 |   37 -----
 .../xorg-driver/cdv-pvr-driver_1.0.2.bb            |  143 ++++++++++++++++=
++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |   99 --------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 +-
 6 files changed, 148 insertions(+), 141 deletions(-)  delete mode 100644 m=
eta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-dr=
iver_1.0.2.bb
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-dr=
iver_1.0.bb

--
1.7.4.1

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

