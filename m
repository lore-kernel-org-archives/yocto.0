Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 141B94C80889
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:58:06 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4RKw4Q6011125
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 27 May 2011 13:58:04 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 27 May 2011 13:58:04 -0700
Message-ID: <4DE01059.6090807@windriver.com>
Date: Fri, 27 May 2011 16:58:01 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.15) Gecko/20110419 Thunderbird/3.1.9 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1306514719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306514719.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3][KERNEL] base patches needed for romley
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
X-List-Received-Date: Fri, 27 May 2011 20:58:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-05-27 04:45 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> These upstreamed post-2.6.37 patches are needed by the romley BSP
> for 2.6.37.
>
> Note that I've removed the e-mail addresses from these posted patches,
> but the git branch retains them.
>
> Please pull into linux-yocto-2.6.37.

Good timing, I was just in re-working 2.6.37 and
2.6.39, so I'll stack these on top.

changes look good to me, I've fetched this.

It'll go out over the weekend to the kernel repo, and SRCREV
updates to follow.

Bruce

>
> Thanks,
>
> Tom
>
> Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/romley-new-options-and-refactor-base
>    Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/romley-new-options-and-refactor-base
>
> Greg Rose (1):
>    Remove extra struct page member from the buffer info structure
>
> Seth Heasley (2):
>    x86/PCI: irq and pci_ids patch for Intel Patsburg
>    ahci: AHCI mode SATA patch for Intel Patsburg SATA RAID controller
>
>   arch/x86/pci/irq.c        |    3 ++-
>   drivers/ata/ahci.c        |    1 +
>   drivers/net/igbvf/igbvf.h |    1 -
>   include/linux/pci_ids.h   |    3 ++-
>   4 files changed, 5 insertions(+), 3 deletions(-)
>


