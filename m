Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10A11E0137C
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 10:00:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2012 10:00:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120993235"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2012 09:59:57 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 14 Mar 2012 09:59:56 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.128]) with mapi id
	14.01.0355.002; Wed, 14 Mar 2012 09:59:57 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [KERNEL][PATCH 0/1] meta: Create scc file for pvr merge
Thread-Index: AQHNAUTUUWk40wHrq0es55c2chQ8nZZpockAgABiPtA=
Date: Wed, 14 Mar 2012 16:59:56 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2035FD422@ORSMSX105.amr.corp.intel.com>
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
X-List-Received-Date: Wed, 14 Mar 2012 17:00:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, Please go ahead and merge this to 3.0 kernel. =20
We will be releasing the Cedartrail BSP both for Edison and master branch i=
n another couple of weeks.

Thanks
Kishore.

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Tuesday, March 13, 2012 9:04 PM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org
Subject: Re: [KERNEL][PATCH 0/1] meta: Create scc file for pvr merge

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


