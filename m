Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC880E0044A
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 10:35:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Apr 2012 10:35:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="86139861"
Received: from unknown (HELO [10.255.12.176]) ([10.255.12.176])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Apr 2012 10:34:59 -0700
Message-ID: <4F7F2943.6010107@linux.intel.com>
Date: Fri, 06 Apr 2012 10:34:59 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1333572471.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333572471.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Ross Burton <ross.burton@intel.com>
Subject: Re: [PATCH 0/1][1.1.2] syslinux: Avoid using linux.ext2_fs.h if possible
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
X-List-Received-Date: Fri, 06 Apr 2012 17:35:00 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 04/04/12 13:50, Darren Hart wrote:
> Please apply to poky/edison branch for 1.1.2 release. A corresponding patch has
> been sent for oe-core and poky/master for the 1.2 release.
>
> The following changes since commit 0fbd6a161576b2cafa8583adde0ffb15347c884a:
>
>    poky.conf: Bumping SKD_VERSION (2012-03-14 15:49:33 -0700)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib dvhart/bug2236
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bug/2036

For folks playing along at home, that http url is wrong.
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bug2236

>
> Darren Hart (1):
>    syslinux: Avoid using linux.ext2_fs.h if possible
>
>   .../libinstaller-Avoid-using-linux-ext2_fs.h.patch |  975 ++++++++++++++++++++
>   meta/recipes-devtools/syslinux/syslinux_4.03.bb    |    5 +-
>   2 files changed, 978 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-devtools/syslinux/files/libinstaller-Avoid-using-linux-ext2_fs.h.patch

Thanks! I've merged these to my Edison test branch and (assuming testing 
goes well) will submit a consolidated pull shortly.

Cheers,
Joshua
-- 
Joshua '贾詡' Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

