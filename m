Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F925E01374
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 06:53:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2QDrfvo009730
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 06:53:41 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 26 Mar 2012 06:53:42 -0700
Message-ID: <4F7074DF.9010102@windriver.com>
Date: Mon, 26 Mar 2012 09:53:35 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1332539317.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1332539317.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [linux-yocto-3.2][meta] common-pc: Add PCNET32 to the config
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
X-List-Received-Date: Mon, 26 Mar 2012 13:53:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-23 05:52 PM, Darren Hart wrote:
> In support of the self-hosted-image, add CONFIG_PCNET32 to the common-pc BSP
> default cfg. This enables the qemux86 image to be run on both qemux86 machines
> as well as the vmware 32b machine. Since the qemux86 machine optionally supports
> pcnet, this seems a reasonable compromise to managing a dedicated BSP for a
> self-hosted-image machine which would be superset of the qemux86 machine.
>
> As this is a single CONFIG_ option, add it to the common-pc.cfg directly, rather
> than defining a new feature.

merged. I don't have any other pending commits, so I'll push
this out later today as a standalone update.

Cheers,

Bruce

>
> The following changes since commit 514847185c78c07f52e02750fbe0a03ca3a31d8f:
>
>    meta: update kver to v3.2.11 (2012-03-16 10:42:41 -0400)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/pcnet
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/pcnet
>
> Darren Hart (1):
>    [meta] common-pc: Add PCNET32 to the config
>
>   meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg |    3 +++
>   meta/cfg/kernel-cache/bsp/common-pc/hardware.cfg  |    1 +
>   2 files changed, 4 insertions(+), 0 deletions(-)
>


