Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B02964C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 08:56:41 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6FDuc0U019395
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 15 Jul 2011 06:56:38 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 15 Jul 2011 06:56:38 -0700
Message-ID: <4E204714.6030107@windriver.com>
Date: Fri, 15 Jul 2011 09:56:36 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Darren Hart <darren@dvhart.com>
References: <cover.1310682167.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1310682167.git.dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][linux-yocto] Fix boot failure with less than 17 MB RAM
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
X-List-Received-Date: Fri, 15 Jul 2011 13:56:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/14/11 18:27, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> The following patch from mainline addresses an issues that prevented my
> qemu testing from booting in less than 17M of memory. With this page,
> the kernel can boot to init in 8M of memory.
>
> Apply to yocto/standard/base
>
> The following changes since commit bb8e31f2c99f5e007660d4540df246fb7ecfa746:
>
>    USB: ehci: remove structure packing from ehci_def (2011-06-22 14:23:26 -0400)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/mm
>    http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/mm

This has been merged and pushed to the kernel repos,
the SRCREV updates are pending.

Cheers,

Bruce

>
> Yinghai Lu (1):
>    mm: use alloc_bootmem_node_nopanic() on really needed path
>
>   include/linux/bootmem.h |    2 ++
>   mm/page_alloc.c         |    7 ++++---
>   2 files changed, 6 insertions(+), 3 deletions(-)
>


