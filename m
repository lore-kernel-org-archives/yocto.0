Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85467E0070B
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 08:57:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 May 2012 08:57:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="158751521"
Received: from unknown (HELO [10.255.12.96]) ([10.255.12.96])
	by fmsmga001.fm.intel.com with ESMTP; 30 May 2012 08:57:05 -0700
Message-ID: <4FC64350.60401@linux.intel.com>
Date: Wed, 30 May 2012 08:57:04 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Ross Burton <ross.burton@intel.com>
References: <cover.1338390959.git.ross.burton@intel.com>
In-Reply-To: <cover.1338390959.git.ross.burton@intel.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 0/1] [1.1.2] Fix syslinux on kernel 3.3
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
X-List-Received-Date: Wed, 30 May 2012 15:57:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 30/05/12 08:29, Ross Burton wrote:
> Backporting a patch from master that fixes building syslinux on kernel 3.3.

This change is in my recently proposed series of updates for 
2011-1/edison which was sent to the OE-Core list.

See:
http://thread.gmane.org/gmane.comp.handhelds.openembedded.core/20836

and:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=josh/edison

Joshua

>
> The following changes since commit 1cdea4cf5f8ec8b32aa406b1767338a11618dba5:
>
>    syslinux: Avoid using linux.ext2_fs.h if possible (2012-05-28 12:29:04 +0100)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/poky-contrib ross/edison-2236
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ross/edison-2236
>
> Darren Hart (1):
>    syslinux: Avoid using linux.ext2_fs.h if possible
>
>   .../libinstaller-Avoid-using-linux-ext2_fs.h.patch |  975 ++++++++++++++++++++
>   meta/recipes-devtools/syslinux/syslinux_4.03.bb    |    5 +-
>   2 files changed, 978 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-devtools/syslinux/files/libinstaller-Avoid-using-linux-ext2_fs.h.patch
>

-- 
Joshua Lock
         Yocto Project
         Intel Open Source Technology Centre

