Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60461E00347
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 08:26:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q73FQqhs022515
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 3 Aug 2012 08:26:55 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Fri, 3 Aug 2012 08:26:52 -0700
Message-ID: <501BEDBA.9070900@windriver.com>
Date: Fri, 3 Aug 2012 11:26:50 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <kishore.k.bodke@intel.com>
References: <cover.1343932163.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1343932163.git.kishore.k.bodke@intel.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
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
X-List-Received-Date: Fri, 03 Aug 2012 15:26:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-02 02:35 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Hi,
>
> This is a revised patch set is for creating the new Crystal Forest Machine.
> Crystal Forest Machine is Sandybridge CPU with Cave Creek Chipset.
>
> This machine is based on standard/default/common-pc-64.
>
> Please create a new branch called standard/default/common-pc-64/crystalforest
> for linux-yocto-3.4 kernel and push this new meta branch.

I'd rather not push this out right on the M3 pull request deadline,
but there is very little risk to it .. so I'm not really opinionated
on it.

Can this wait a few days, or do we want/need it in M3 ?

Cheers,

Bruce

>
> Thanks
> Kishore.
>
> The following changes since commit 459165c1dd61c4e843c36e6a1abeb30949a20ba7:
>
>    kconf: add 8250 Kconfig to hardware listing audit (2012-07-26 16:23:26 -0400)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-crystalforest
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-crystalforest
>
> Kishore Bodke (1):
>    meta: Crystal Forest Machine Created.
>
>   .../bsp/crystalforest/crystalforest-preempt-rt.scc |    9 ++++++
>   .../bsp/crystalforest/crystalforest-standard.scc   |    8 +++++
>   .../bsp/crystalforest/crystalforest.cfg            |   32 ++++++++++++++++++++
>   .../bsp/crystalforest/crystalforest.scc            |   23 ++++++++++++++
>   4 files changed, 72 insertions(+)
>   create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
>   create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
>   create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
>


