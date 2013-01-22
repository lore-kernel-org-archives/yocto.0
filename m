Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B906E01473
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 07:57:18 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Jan 2013 07:57:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,515,1355126400"; d="scan'208";a="280601194"
Received: from unknown (HELO helios.localnet) ([10.252.123.171])
	by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2013 07:57:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Tue, 22 Jan 2013 15:57:04 +0000
Message-ID: <1936060.L02r3qFecV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.4 (Linux/3.5.0-22-generic; KDE/4.9.4; i686; ; )
In-Reply-To: <cover.1357591796.git.kevin.strasser@linux.intel.com>
References: <cover.1357591796.git.kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 0/4] baryon updates
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
X-List-Received-Date: Tue, 22 Jan 2013 15:57:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 07 January 2013 13:05:37 Kevin Strasser wrote:
> This patch set contains a change which will not work with versions of poky
> prior to commit 51cbb5ae76a22d465e2f6c5ef923ec2682624e3b, and therefor
> should not be applied until after cutting a danny branch.
> 
> The following changes since commit 9a80f62b1874bbb0819068cf394e9fd920bb84b7:
> 
>   proftpd: conditionally remove /usr/libexec (2012-12-05 16:27:36 +0000)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib strassek/baryon-updates
>  
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-up
> dates
> 
> Kevin Strasser (4):
>   webmin: remove perl-module-warnings-register RDEPENDS
>   ffmpeg: build position independent code where possible
>   baryon-image: use parted instead of util-linux
>   schroedinger: specify the version of MPL in use
> 
>  recipes-extended/images/baryon-image.bb          |    2 +-
>  recipes-extended/webmin/webmin_1.590.bb          |    4 ++--
>  recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb        |    3 ++-
>  recipes-multimedia/schroedinger/schroedinger.inc |    2 +-
>  4 files changed, 6 insertions(+), 5 deletions(-)

I've merged these, and created a danny branch which excludes the perl-module-
warnings-register patch.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

