Return-Path: <rahul.saxena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06851E00744
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 16:54:13 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 Dec 2011 16:54:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="47356141"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Dec 2011 16:54:13 -0800
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Wed, 14 Dec 2011 16:54:12 -0800
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"bruce.ashfield@windriver.com" <bruce.ashfield@windriver.com>
Date: Wed, 14 Dec 2011 16:54:12 -0800
Thread-Topic: [yocto] [PATCH 0/1][KERNEL] meta: Add cedartrail: Corrected
	machine branch name
Thread-Index: Acy6wIuLM2HwryS4RUWSRgKUA8ziZAAAxH+w
Message-ID: <A75BCAD09CE00A4280CDD4429D85F1F92621BD19C3@orsmsx501.amr.corp.intel.com>
References: <cover.1323878947.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1323878947.git.rahul.saxena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/1][KERNEL] meta: Add cedartrail: Corrected machine branch name
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
X-List-Received-Date: Thu, 15 Dec 2011 00:54:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I made a mistake in specifying the machine branch name:


The new machine branch should be:

"yocto/standard/cedartrail" =20

instead of

 "yocto/standard/cedartview"

Sorry about that.

Thanks
Rahul

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of rahul.saxena@intel.com
Sent: Wednesday, December 14, 2011 9:28 AM
To: yocto@yoctoproject.org; bruce.ashfield@windriver.com
Subject: [yocto] [PATCH 0/1][KERNEL] meta: Add cedartrail

From: Rahul Saxena <rahul.saxena@intel.com>

This is the initial version of a BSP for the Cedar Trail platform.
The Cedar Trail platform consists of the Intel Cedarview Atom processor
and Tiger Point Chipset.  I have succesfully booted Sato image on Cedar Tra=
il
CRB, desktop and mobile pre-production sample boards and tested features
such as wired networking, VESA graphics, SATA, USB ports=20

Please pull into linux-yocto-3.0/meta and linux-yocto-dev/meta

Also, please create a new "yocto/standard/cedarview" machine branch in each
of the above, based on yocto/standard/base.

Thanks
Rahul

Signed=3Doff-by: Rahul Saxena <rahul.saxena@intel.com>
---

The following changes since commit caa74f86f42f6ecc22c3e9f380176b2695579e18=
:
  Darren Hart (1):
        Add EFI scc and cfg files

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib rsaxena/meta-cedart=
rail
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=3D=
rsaxena/meta-cedartrail

Rahul Saxena (1):
  meta: Add cedartrail     Signed-off-by: Rahul Saxena
    <rahul.saxena@.intel.com>

 .../bsp/cedartrail/cedartrail-preempt-rt.scc       |    7 +++
 .../bsp/cedartrail/cedartrail-standard.scc         |    7 +++
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   58 ++++++++++++++++=
++++
 .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   17 ++++++
 4 files changed, 89 insertions(+), 0 deletions(-)
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt=
-rt.scc
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standar=
d.scc
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
 create mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

