Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0E11E0044A
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 10:33:46 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 06 Apr 2012 10:33:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="86139659"
Received: from unknown (HELO [10.255.12.176]) ([10.255.12.176])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Apr 2012 10:33:45 -0700
Message-ID: <4F7F28F9.8000305@linux.intel.com>
Date: Fri, 06 Apr 2012 10:33:45 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1333660034.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333660034.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/4][edison] Fix bootimg bug 2138 for 1.1.2
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
X-List-Received-Date: Fri, 06 Apr 2012 17:33:46 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 05/04/12 14:09, Darren Hart wrote:
> Backport the following patches to edison. The backport involves massaging
> this minimal set of patches to apply to bootimg.bbclass without pulling
> in the refactoring or EFI support added in master about the same time.
>
> These patches have been tested by building atom-pc core-image-minimal with
> edison, a dosfsck and mount test on resulting image, and booting on the n450.
>
> The following changes since commit 0fbd6a161576b2cafa8583adde0ffb15347c884a:
>
>    poky.conf: Bumping SKD_VERSION (2012-03-14 15:49:33 -0700)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib dvhart/edison/bug/2138
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/edison/bug/2138
>
> Darren Hart (4):
>    bootimg: Use mcopy to construct the hddimg
>    bootimg: Account for FAT filesystem overhead in image size
>    bootimg: Fix a math thinko in the block count calculation
>    bootimg: Do not force FAT32 on all images, it violates the FAT
>      specification
>
>   meta/classes/bootimg.bbclass |   53 ++++++++++++++++++++++++++++++++++++-----
>   1 files changed, 46 insertions(+), 7 deletions(-)
>

Thanks! I've merged these to my Edison test branch and (assuming testing 
goes well) will submit a consolidated pull shortly.

Cheers,
Joshua
-- 
Joshua '贾詡' Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

