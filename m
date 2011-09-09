Return-Path: <rahul.saxena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8AEDE012AA
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 12:04:21 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Sep 2011 12:04:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,357,1312182000"; d="scan'208";a="15641509"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Sep 2011 12:03:47 -0700
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Fri, 9 Sep 2011 12:03:39 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 9 Sep 2011 12:03:35 -0700
Thread-Topic: [yocto] [PATCH 0/3] [KERNEL] Cover letter for seperating
	10/100 LAN feature from 1G and 10G
Thread-Index: AcxvIY54woYywGugQ0GFbGI2Nc1+AgAAXXVw
Message-ID: <4FF5AC937153B0459463C1A88EB478F2012E3F48D0@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E3F41BD@orsmsx505.amr.corp.intel.com>
	<4E6A604C.40304@windriver.com>
In-Reply-To: <4E6A604C.40304@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [PATCH 0/3] [KERNEL] Cover letter for seperating 10/100 LAN feature from 1G and 10G
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
X-List-Received-Date: Fri, 09 Sep 2011 19:04:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

Sorry about that. I will push them to a git contrib branch and send you a l=
ink.

Thanks
Rahul

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Friday, September 09, 2011 11:52 AM
To: Saxena, Rahul
Cc: yocto@yoctoproject.org; Bruce Ashfield; Zanussi, Tom
Subject: Re: [yocto] [PATCH 0/3] [KERNEL] Cover letter for seperating 10/10=
0 LAN feature from 1G and 10G

On 11-09-08 07:30 PM, Saxena, Rahul wrote:
> Cover letter for separating 10/100 LAN feature from 1G and 10G.
> Typically a machine does not need both of 10/100 and 1G/10G drivers.

These look good now, but when I went to merge the patches I see they
are multipart, and html-ized. Which is causing me considerable pain
in getting them applied.

Can you resend the patches via git-send-email ? Or push them to a
contrib branch ? If you are not sure about how to do either of these,
we can help and Tom may have some practical tips to share.

Cheers,

Bruce

>
> Signed-off-by: Rahul SaxenaRahul.saxena@intel.com
> <mailto:Rahul.saxena@intel.com>
>
> Rahul Saxena (3):
>
> Remove 10/100 LAN support. 10/100 LAN will be configured by seperate
>
> files
>
> Added seperate feature for 10/100 LAN support
>
> Added e100 feature configuration to remaining boards
>
> .../kernel-cache/bsp/common-pc-64/common-pc-64.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc | 2 +-
>
> meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/fri2/fri2.scc | 1 +
>
> meta/cfg/kernel-cache/bsp/romley/romley.scc | 1 +
>
> .../features/intel-e1xxxx/intel-e100.cfg | 2 ++
>
> .../features/intel-e1xxxx/intel-e100.scc | 1 +
>
> .../features/intel-e1xxxx/intel-e1xxxx.cfg | 1 -
>
> 10 files changed, 10 insertions(+), 2 deletions(-)
>
> create mode 100644
> meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.cfg
>
> create mode 100644
> meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.scc
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


