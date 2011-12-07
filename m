Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E305E0030C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 11:43:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pB7JhbPY017347
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 7 Dec 2011 11:43:37 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 7 Dec 2011 11:43:37 -0800
Message-ID: <4EDFC1E8.8090005@windriver.com>
Date: Wed, 7 Dec 2011 14:43:36 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <darren@dvhart.com>
References: <cover.1323285225.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323285225.git.dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3][linux-yocto-3.0] EFI support backports
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
X-List-Received-Date: Wed, 07 Dec 2011 19:43:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-07 02:19 PM, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> The following patches have been merged back from upstream to address various
> issues with the EFI boot process. These are intended to be merged with
> yocto/standard/base.
>
> Please watch for a subsequent patch adding a series of efi config fragments.

Merged to base and all the BSP branches. I've put it in with my
pending 3.0.12 pull request, which should be out ASAP.

Bruce

>
> The following changes since commit ab1de8c21d2b1d084b8488496d75cc54fcd94f02:
>
>    Merge commit 'v3.0.10' into yocto/standard/base (2011-11-23 00:31:29 -0500)
>
> are available in the git repository at:
>
>    git://git.infradead.org/users/dvhart/linux-yocto-3.0.git dvhart/standard/efi
>    http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/dvhart/standard/efi
>
> Matt Fleming (2):
>    x86/rtc: Don't recursively acquire rtc_lock
>    x86, efi: Make efi_call_phys_prelog() CONFIG_RELOCATABLE-aware
>
> Maurice Ma (1):
>    x86, efi: Convert efi_phys_get_time() args to physical addresses
>
>   arch/x86/kernel/rtc.c          |   23 ++++++++++++-----------
>   arch/x86/platform/efi/efi.c    |    3 ++-
>   arch/x86/platform/efi/efi_32.c |   22 +++++++++++++---------
>   arch/x86/platform/mrst/vrtc.c  |    9 +++++++++
>   4 files changed, 36 insertions(+), 21 deletions(-)
>


