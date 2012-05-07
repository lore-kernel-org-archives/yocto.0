Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D58FE0030B
	for <yocto@yoctoproject.org>; Mon,  7 May 2012 09:22:02 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 May 2012 09:22:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="97269665"
Received: from unknown (HELO [10.255.12.143]) ([10.255.12.143])
	by AZSMGA002.ch.intel.com with ESMTP; 07 May 2012 09:22:01 -0700
Message-ID: <4FA7F6A9.9090108@linux.intel.com>
Date: Mon, 07 May 2012 09:22:01 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1335812928.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1335812928.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] A couple yocto-bsp fixes, v3
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
X-List-Received-Date: Mon, 07 May 2012 16:22:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/30/2012 12:12 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Fixes for a couple yocto-bsp bugs.
>
> v2: fixed up the yocto-bsp help text as suggested by Darren Hart.
> v3: fixed more of the yocto-bsp help text as suggested by William Mills.
>
> The following changes since commit f39ba520d6f2477c99839a92049b1bb279f092cf:
>    Richard Purdie (1):
>          qt-4.8.1: Fix compile failures on qemux86
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-fixes-2219-2330
>    http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-fixes-2219-2330
>
> Tom Zanussi (2):
>    yocto-kernel: use BUILDDIR to find bblayers.conf
>    yocto-bsp: clarify help with reference to meta-intel
>
>   scripts/lib/bsp/help.py   |   48 +++++++++++++++++++++++++++++++++++++++++---
>   scripts/lib/bsp/kernel.py |    7 +++++-
>   2 files changed, 50 insertions(+), 5 deletions(-)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Merged into Poky Master

Thanks
	Sau!

