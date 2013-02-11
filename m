Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45F1FE0027C;
	Mon, 11 Feb 2013 10:47:29 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Feb 2013 10:47:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,644,1355126400"; d="scan'208";a="255544517"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 11 Feb 2013 10:47:24 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.227]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.248]) with mapi id
	14.01.0355.002; Mon, 11 Feb 2013 10:47:24 -0800
From: "Liu, Song" <song.liu@intel.com>
To: Chris Tapp <opensource@keylevel.com>, "Bodke, Kishore K"
	<kishore.k.bodke@intel.com>
Thread-Topic: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
Thread-Index: AQHOBlJClScDYA+yUUqdQoLATqmcYZhxyngAgAM4WvA=
Date: Mon, 11 Feb 2013 18:47:23 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A6A717A89@ORSMSX101.amr.corp.intel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
	<719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
In-Reply-To: <719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Mon, 11 Feb 2013 18:47:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Chris,

Intel is still supporting critical fixes for the Cedar Trail BSP on Yocto P=
roject 1.3 release. If you need additional support for your project, I can =
connect you with some Intel sales/support people who can help. At the same =
time, would you be able to share more information about your project with m=
e? It will help when I ask them for additional support.

Song

-----Original Message-----
From: Chris Tapp [mailto:opensource@keylevel.com]=20
Sent: Saturday, February 09, 2013 1:33 AM
To: Bodke, Kishore K
Cc: bruce.ashfield@windriver.com; dvhart@linux.intel.com; Saxena, Rahul; Li=
u, Song; Zanussi, Tom; linux-yocto@yoctoproject.org; yocto@yoctoproject.org
Subject: Re: [yocto] [PATCH 0/1][linux-yocto] Remove Cedartrail Machine


On 8 Feb 2013, at 23:18, kishore.k.bodke@intel.com wrote:

> From: Kishore Bodke <kishore.k.bodke@intel.com>
>=20
>=20
> Hi,
>=20
> This patch set is to remove the Cedartail Machine from
> Linux-yocto-3.4 Kernel.
> Cedartrail BSP will not be supported for Yocto 1.4 Release.

Hi Kishore,

Are there any plans to bring support back in? We recently committed a proje=
ct to using this BSP for the Intel DN2800MT...

> Also Please remove the standard/cedartrail branch.
>=20
> Please pull into linux-yocto-3.4/meta branch.
>=20
> Thanks
> Kishore.
>=20
> The following changes since commit f697e099bc76d5df3a307a5bc0cc25021dd6df=
e0:
>=20
>  meta: bump to v3.4.28, rt-40 (2013-02-04 00:14:21 -0500)
>=20
> are available in the git repository at:
>=20
>  git://git.pokylinux.org/linux-yocto-contrib kishore/cedartrail_remove =20
> http://git.pokylinux.org/cgit.cgi/linux-yocto-contrib/log/?h=3Dkishore/c
> edartrail_remove
>=20
> Kishore Bodke (1):
>  meta: Remove Cedartrail Machine
>=20
> .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
> .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46 ---------------=
-----
> .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
> 4 files changed, 82 deletions(-)
> delete mode 100755=20
> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
> delete mode 100755=20
> meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
> delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
> delete mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
>=20
> --
> 1.7.9.5
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




