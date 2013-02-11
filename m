Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 7F9D4E01482;
	Sun, 10 Feb 2013 20:25:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r1B4PuRt025748
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 10 Feb 2013 20:25:56 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.10) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Sun, 10 Feb 2013 20:25:54 -0800
Message-ID: <511872D1.2050307@windriver.com>
Date: Sun, 10 Feb 2013 23:25:53 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <kishore.k.bodke@intel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1360365190.git.kishore.k.bodke@intel.com>
Cc: linux-yocto@yoctoproject.org, dvhart@linux.intel.com,
	yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 11 Feb 2013 04:25:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-02-08 6:18 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
>
> Hi,
>
> This patch set is to remove the Cedartail Machine from
> Linux-yocto-3.4 Kernel.
> Cedartrail BSP will not be supported for Yocto 1.4 Release.
>
> Also Please remove the standard/cedartrail branch.
>
> Please pull into linux-yocto-3.4/meta branch.

Ack'd. I'll merge and push this out on Monday.

Cheers,

Bruce

>
> Thanks
> Kishore.
>
> The following changes since commit f697e099bc76d5df3a307a5bc0cc25021dd6dfe0:
>
>    meta: bump to v3.4.28, rt-40 (2013-02-04 00:14:21 -0500)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/linux-yocto-contrib kishore/cedartrail_remove
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-contrib/log/?h=kishore/cedartrail_remove
>
> Kishore Bodke (1):
>    meta: Remove Cedartrail Machine
>
>   .../bsp/cedartrail/cedartrail-preempt-rt.scc       |   13 ------
>   .../bsp/cedartrail/cedartrail-standard.scc         |    8 ----
>   .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   46 --------------------
>   .../cfg/kernel-cache/bsp/cedartrail/cedartrail.scc |   15 -------
>   4 files changed, 82 deletions(-)
>   delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-preempt-rt.scc
>   delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail-standard.scc
>   delete mode 100755 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
>   delete mode 100644 meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.scc
>


