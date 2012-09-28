Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10142E00348
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 01:16:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Sep 2012 01:16:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,501,1344236400"; d="scan'208";a="227644970"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by fmsmga001.fm.intel.com with ESMTP; 28 Sep 2012 01:16:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Fri, 28 Sep 2012 09:16:36 +0100
Message-ID: <2332194.UJXiG7VFYG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <cover.1348791431.git.kevin.strasser@linux.intel.com>
References: <cover.1348791431.git.kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 0/4] clear up build warnings
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
X-List-Received-Date: Fri, 28 Sep 2012 08:16:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 27 September 2012 17:30:48 Kevin Strasser wrote:
> This patch set clears up some of the warnings that are generated when
> building baryon against the tip of the 1.3_M3 branch of poky.
> 
> The following changes since commit 500a124831e292d76d864a3c64a57a5007c4553a:
> 
>   kernel: enable nfsd when using the 3.4 kernel (2012-09-13 10:43:26 -0700)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib strassek/baryon-warnings
>  
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-wa
> rnings
> 
> Kevin Strasser (4):
>   proftpd: remove unused directories after install
>   samba: remove unused directories after install
>   orc: specify the generic licenses being used
>   talloc: specify the version of LGPL and include the license text
> 
>  recipes-connectivity/samba/samba.inc       |    2 ++
>  recipes-extended/proftpd/proftpd_1.3.4b.bb |    1 +
>  recipes-multimedia/orc/orc.inc             |    2 +-
>  recipes-multimedia/orc/orc_0.4.5.bb        |    2 +-
>  recipes-support/talloc/talloc_2.0.1.bb     |    6 +++---
>  5 files changed, 8 insertions(+), 5 deletions(-)

Merged to meta-baryon master, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

