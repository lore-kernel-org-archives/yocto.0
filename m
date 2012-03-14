Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65C8FE0044D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 21:15:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2012 21:15:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128734026"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2012 21:15:03 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 13 Mar 2012 21:15:02 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.207]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.160]) with mapi id
	14.01.0355.002; Tue, 13 Mar 2012 21:15:02 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "Bodke, Kishore K"
	<kishore.k.bodke@intel.com>
Thread-Topic: [yocto] [KERNEL][PATCH 0/1] meta: Create scc file for pvr merge
Thread-Index: AQHNAUUSN5GjKMvWYUGNZ0JfW1/dV5ZpockA//+NEyA=
Date: Wed, 14 Mar 2012 04:15:01 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C4900BA357@ORSMSX103.amr.corp.intel.com>
References: <cover.1331661801.git.kishore.k.bodke@intel.com>
	<4F6018B2.3070307@windriver.com>
In-Reply-To: <4F6018B2.3070307@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [KERNEL][PATCH 0/1] meta: Create scc file for pvr merge
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
X-List-Received-Date: Wed, 14 Mar 2012 04:15:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

I plan to submit patches next week to update the meta-cedartrail BSP to use=
 this yocto/pvr branch.


Thanks
Rahul=20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Bruce Ashfield
Sent: Tuesday, March 13, 2012 9:04 PM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [KERNEL][PATCH 0/1] meta: Create scc file for pvr merg=
e

On 12-03-13 2:12 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Hi,
>
> This patch is to create a new scc file for merging the yocto/pvr branch f=
or the targets
> with the appropriate hardware support.

Just so I'm clear, there are no current users of this in the tree, but
we want to stage this for future work, or work that isn't ready yet ?

I'll merge this into the 3.0 kernel and await your confirmation.

Cheers,

Bruce

>
> Adding it into the existing cedartrail.scc, the non-pvr build was not boo=
ting. So we had to separate it out.
>
> Thanks
> Kishore.
>
>
> The following changes since commit e559129b4a6f39f68b75141096b2d516cf7a7f=
35:
>
>    fri2: Add SMP and EFI support (2012-03-02 16:02:35 -0500)
>
> are available in the git repository at:
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-cedart=
rail/pvr-merge
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=3D=
kishore/meta-cedartrail/pvr-merge
>
> Kishore Bodke (1):
>    meta: Create scc file for pvr merge
>
>   .../bsp/cedartrail/cedartrail-pvr-merge.scc        |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-pvr-=
merge.scc
>

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

