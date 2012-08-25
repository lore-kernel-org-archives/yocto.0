Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2638E0027E
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 23:47:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Aug 2012 23:47:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,309,1344236400"; d="scan'208";a="211218584"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2012 23:47:46 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 24 Aug 2012 23:47:46 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.52]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.138]) with mapi id
	14.01.0355.002; Fri, 24 Aug 2012 23:47:46 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Zanussi, Tom" <tom.zanussi@intel.com>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>
Thread-Topic: [yocto] [PATCH 0/2][meta-intel] Cover letter to update pvr
	driver to v1.0.2 in meta-cedartral,
	denzil branch: Correction master branch
Thread-Index: AQHNgk/DPjjlRrT8zEiTvkcPgKAmm5dqFVcw
Date: Sat, 25 Aug 2012 06:47:45 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003317EAD@ORSMSX104.amr.corp.intel.com>
References: <cover.1345849179.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1345849179.git.rahul.saxena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH 0/2][meta-intel] Cover letter to update pvr driver to v1.0.2 in meta-cedartral, denzil branch: Correction master branch
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
X-List-Received-Date: Sat, 25 Aug 2012 06:47:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Need to make a correction: This patch series is not for denzil branch, it i=
s for the master branch.

Pl pull into master branch. My apologies  for any confusion this may have c=
aused.

Thanks
Rahul

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of rahul.saxena@intel.com
Sent: Friday, August 24, 2012 4:11 PM
To: yocto@yoctoproject.org; Zanussi, Tom; dvhart@linux.intel.com
Subject: [yocto] [PATCH 0/2][meta-intel] Cover letter to update pvr driver =
to v1.0.2 in meta-cedartral, denzil branch

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter to update pvr driver to v1.0.2 in meta-cedartrail.

This update of the driver supports B3 stepping of the Cedarview processor a=
nd also supports DP/eDP ports.

Please update denzil branch with this patch series.

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>

--
The following changes since commit ff7fdafba88a5b7676f601b3d16a97ce7d48c4a9=
:

  crownbay: make v3.4 the default kernel (2012-07-31 23:08:05 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena_1_3_M3
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=3Drsaxena_1_3=
_M3

Rahul Saxena (2):
  meta-cedartrail: Update SRCREV for the linux-yocto kernel pvr branch
  meta-cedartrail: Update PVR graphics driver to version 1.0.2

 meta-cedartrail/README                             |    2 +-
 .../xorg-driver/cdv-pvr-driver.inc                 |   37 -----
 .../xorg-driver/cdv-pvr-driver_1.0.2.bb            |  143 ++++++++++++++++=
++++
 .../xorg-driver/cdv-pvr-driver_1.0.bb              |   99 --------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 5 files changed, 145 insertions(+), 138 deletions(-)  delete mode 100644 m=
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

