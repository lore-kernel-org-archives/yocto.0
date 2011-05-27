Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 51C154C802F2
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:56:54 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4RKur0B011007
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 27 May 2011 13:56:53 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 27 May 2011 13:56:52 -0700
Message-ID: <4DE01010.4030803@windriver.com>
Date: Fri, 27 May 2011 16:56:48 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.15) Gecko/20110419 Thunderbird/3.1.9 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 00/14][KERNEL] add a few new kernel features and related cleanup
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
X-List-Received-Date: Fri, 27 May 2011 20:56:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-05-27 04:44 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This adds a few new features needed by the in-progress romley BSP
> (but useable by anyone).
>
> Along the way, I noticed several areas that could usefully be featurized
> and cleaned up those as well.
>
> Please pull into linux-yocto-2.6.37.

great series. I've fetched it here, and will push it
at some point over the weekend.

Cheers,

Bruce

>
> Thanks,
>
> Tom
>
> Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/romley-new-options-and-refactor-meta
>    Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/romley-new-options-and-refactor-meta
>
> Tom Zanussi (14):
>    meta: add hpet feature
>    meta: replace open-coded hpet options with hpet feature
>    meta: add uio feature
>    meta: add hugetlb feature
>    meta: add dmaengine feature
>    meta: replace open-coded dma engine options with dmaengine feature
>    meta: add ixgbe feature
>    meta: add igb feature
>    meta: replace open-coded igb options with igb feature
>    meta: add intel-e1xxxx feature
>    meta: replace open-coded E1XXXX options with intel-e1xxxx feature
>    meta: add dca feature
>    meta: remove 'not set' lines from netfilter.cfg
>    meta: add romley features
>
>   .../arm-versatile-926ejs/arm-versatile-926ejs.cfg  |    1 -
>   .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    8 -----
>   .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    4 ++
>   .../kernel-cache/bsp/common-pc/common-pc-net.cfg   |    2 -
>   meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg  |    1 -
>   meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    2 +-
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |    2 -
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |   10 ++++--
>   meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg       |    2 -
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |    2 -
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    7 +++-
>   .../bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.cfg      |    2 -
>   .../bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc      |    1 +
>   .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    2 -
>   .../kernel-cache/bsp/jasperforest/jasperforest.scc |    6 ++-
>   .../cfg/kernel-cache/bsp/qemu-ppc32/qemu-ppc32.cfg |    1 -
>   meta/cfg/kernel-cache/bsp/romley/romley.cfg        |    2 -
>   meta/cfg/kernel-cache/bsp/romley/romley.scc        |    4 ++
>   meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |    2 -
>   meta/cfg/kernel-cache/features/dca/dca.cfg         |    4 ++
>   meta/cfg/kernel-cache/features/dca/dca.scc         |    3 ++
>   .../kernel-cache/features/dmaengine/dmaengine.cfg  |    2 +
>   .../kernel-cache/features/dmaengine/dmaengine.scc  |    1 +
>   meta/cfg/kernel-cache/features/hpet/hpet.cfg       |    6 +++
>   meta/cfg/kernel-cache/features/hpet/hpet.scc       |    1 +
>   meta/cfg/kernel-cache/features/hugetlb/hugetlb.cfg |    2 +
>   meta/cfg/kernel-cache/features/hugetlb/hugetlb.scc |    1 +
>   meta/cfg/kernel-cache/features/igb/igb.cfg         |    4 ++
>   meta/cfg/kernel-cache/features/igb/igb.scc         |    3 ++
>   .../features/intel-e1xxxx/intel-e1xxxx.cfg         |    4 ++
>   .../features/intel-e1xxxx/intel-e1xxxx.scc         |    1 +
>   meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg     |    6 +++
>   meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc     |    3 ++
>   .../kernel-cache/features/netfilter/netfilter.cfg  |   34 --------------------
>   meta/cfg/kernel-cache/features/uio/uio.cfg         |    1 +
>   meta/cfg/kernel-cache/features/uio/uio.scc         |    1 +
>   36 files changed, 69 insertions(+), 69 deletions(-)
>   delete mode 100644 meta/cfg/kernel-cache/bsp/common-pc/common-pc-net.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/dca/dca.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/dca/dca.scc
>   create mode 100644 meta/cfg/kernel-cache/features/dmaengine/dmaengine.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/dmaengine/dmaengine.scc
>   create mode 100644 meta/cfg/kernel-cache/features/hpet/hpet.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/hpet/hpet.scc
>   create mode 100644 meta/cfg/kernel-cache/features/hugetlb/hugetlb.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/hugetlb/hugetlb.scc
>   create mode 100644 meta/cfg/kernel-cache/features/igb/igb.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/igb/igb.scc
>   create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc
>   create mode 100644 meta/cfg/kernel-cache/features/ixgbe/ixgbe.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/ixgbe/ixgbe.scc
>   create mode 100644 meta/cfg/kernel-cache/features/uio/uio.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/uio/uio.scc
>


