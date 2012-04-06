Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26C6EE0137C
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 20:15:12 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Apr 2012 20:15:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="125862238"
Received: from unknown (HELO [10.255.12.141]) ([10.255.12.141])
	by orsmga001.jf.intel.com with ESMTP; 05 Apr 2012 20:15:11 -0700
Message-ID: <4F7E5FBF.3090103@linux.intel.com>
Date: Thu, 05 Apr 2012 20:15:11 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1333572157.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333572157.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Ross Burton <ross.burton@intel.com>
Subject: Re: [PATCH 0/1][1.2] syslinux: Avoid using linux.ext2_fs.h if possible
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
X-List-Received-Date: Fri, 06 Apr 2012 03:15:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/04/2012 01:44 PM, Darren Hart wrote:
> Please apply to poky for 1.2. Should also be applied to oe-core.
>
> The following changes since commit cd4d346c0e83fc9bf5497dd0424368e9244b6e08:
>
>    documentation/yocto-project-qs/yocto-project-qs.xml: Added CentOS distro (2012-04-04 00:34:03 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib dvhart/syslinux
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/syslinux
>
> Darren Hart (1):
>    syslinux: Avoid using linux.ext2_fs.h if possible
>
>   .../libinstaller-Avoid-using-linux-ext2_fs.h.patch |  975 ++++++++++++++++++++
>   meta/recipes-devtools/syslinux/syslinux_4.03.bb    |    5 +-
>   2 files changed, 978 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-devtools/syslinux/files/libinstaller-Avoid-using-linux-ext2_fs.h.patch
>

Merged into OE-Core

Thanks
	Sau!

