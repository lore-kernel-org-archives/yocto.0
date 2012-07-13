Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75AA9E00280
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 09:33:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Jul 2012 09:32:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="167778374"
Received: from unknown (HELO helios.localnet) ([10.252.121.15])
	by azsmga001.ch.intel.com with ESMTP; 13 Jul 2012 09:32:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Jul 2012 17:32:52 +0100
Message-ID: <4250030.cc4L1r78V2@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <cover.1342029029.git.paul.eggleton@linux.intel.com>
References: <cover.1342029029.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [meta-baryon] [PATCH 0/4] Baryon build fixes
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
X-List-Received-Date: Fri, 13 Jul 2012 16:33:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 11 July 2012 18:51:56 Paul Eggleton wrote:
> Some fixes for issues preventing successful builds with master and
> edison. It includes a sync of the samba recipe with the current version
> in meta-oe - it's still not completely in sync, hopefully that can be
> done as a separate exercise in the near future.
> 
> 
> The following changes since commit 1784e3a18f8e5b56568d971fcce0521172007f90:
> 
>   meta-baryon: update proftpd SRC_URI (2012-07-10 18:37:44 +0100)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib paule/baryon-fixes1
>  
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/baryon-fixes
> 1
> 
> Paul Eggleton (4):
>   faad2: split out staticdev files
>   faac: split out staticdev files
>   samba: merge with meta-oe
>   baryon-image: use IMAGE_INSTALL instead of CORE_IMAGE_EXTRA_INSTALL
> 
>  recipes-connectivity/samba/samba-basic.inc |   12 ++++--------
>  recipes-connectivity/samba/samba_3.5.6.bb  |   18 +++++++-----------
>  recipes-extended/images/baryon-image.bb    |    5 +++--
>  recipes-multimedia/faac/faac_1.24.bb       |    5 +++--
>  recipes-multimedia/faad2/faad2_2.7.bb      |   10 ++++++----
>  5 files changed, 23 insertions(+), 27 deletions(-)

I've merged these along with a trivial patch to remove PRIORITY from all 
recipes that still had it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

