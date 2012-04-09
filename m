Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46FACE0059A
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:18:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2012 15:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130452361"
Received: from unknown (HELO envy.home) ([10.7.199.62])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2012 15:18:28 -0700
Message-ID: <4F83600E.9090204@linux.intel.com>
Date: Mon, 09 Apr 2012 15:17:50 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <cover.1333994199.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333994199.git.dvhart@linux.intel.com>
X-Enigmail-Version: 1.4
Subject: Re: [PATCH 0/1] meta-skeleton: Move hello-mod example kernel module to meta-skeleton
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
X-List-Received-Date: Mon, 09 Apr 2012 22:18:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

DO NOT APPLY

This needs to be done in oe-core.

On 04/09/2012 10:57 AM, Darren Hart wrote:
> The following changes since commit 190f6d791d51aaa4cfb9f1cf932bc205ff674fb5:
> 
>   runqemu-internal: Add console=tty for qemuppc and NFS (2012-04-06 01:12:47 +0100)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib dvhart/skeleton
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/skeleton
> 
> Darren Hart (1):
>   meta-skeleton: Move hello-mod example kernel module to meta-skeleton
> 
>  .../recipes-kernel/hello-mod/files/COPYING         |  340 ++++++++++++++++++++
>  .../recipes-kernel/hello-mod/files/Makefile        |   14 +
>  .../recipes-kernel/hello-mod/files/hello.c         |   33 ++
>  .../recipes-kernel/hello-mod/hello-mod_0.1.bb      |   15 +
>  4 files changed, 402 insertions(+), 0 deletions(-)
>  create mode 100644 meta-skeleton/recipes-kernel/hello-mod/files/COPYING
>  create mode 100644 meta-skeleton/recipes-kernel/hello-mod/files/Makefile
>  create mode 100644 meta-skeleton/recipes-kernel/hello-mod/files/hello.c
>  create mode 100644 meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

