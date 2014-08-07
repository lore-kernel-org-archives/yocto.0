Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFE70E00801; Thu,  7 Aug 2014 02:19:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20EF6E007FE
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 02:19:31 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 07 Aug 2014 02:12:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,816,1400050800"; d="scan'208";a="573005259"
Received: from bidesilv-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.223])
	by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2014 02:19:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Maxin B. John" <maxin.john@enea.com>
Date: Thu, 07 Aug 2014 10:19:28 +0100
Message-ID: <2640271.T0pHfEVomL@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.7-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <1407401294-53559-1-git-send-email-maxin.john@enea.com>
References: <1407401294-53559-1-git-send-email-maxin.john@enea.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH] README: Update Maintainers list
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Aug 2014 09:19:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Maxin,

On Thursday 07 August 2014 10:48:14 Maxin B. John wrote:
> Update the maintainers list
> ---
>  README | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/README b/README
> index e65bd7b..7dea1ea 100644
> --- a/README
> +++ b/README
> @@ -30,7 +30,15 @@ in build configuration file (conf/local.conf)
> 
>  Where to Send Patches
>  =====================
> -Please submit any patches against this layer to the Yocto mailing list
> -(yocto@yoctoproject.org) and cc: the maintainer:
> +Please submit any patches against this layer to the Yocto mailing list
> like:
> 
> -Maintainer: Nitin A Kamble <nitin.a.kamble@intel.com>
> +git send-email --to=yocto@yoctoproject.org -M -1
> --subject-prefix="meta-oracle-java][PATCH" +
> +Please substitute "PATCH" with "PATCH v2" if you are submitting a revised
> version after +addressing feedback (or v3, v4 etc.)
> +
> +Maintainers:
> +Bruce Ashfield <bruce.ashfield@windriver.com>
> +Pavel Shumeika <Pavel_Shumeika@epam.com>
> +Maxin B. John <maxin.john@enea.com>
> +Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>

FYI I've updated the layer index entry accordingly:

http://layers.openembedded.org/layerindex/branch/master/layer/meta-oracle-java/

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

