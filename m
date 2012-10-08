Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 127F0E0027E
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 10:14:06 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 Oct 2012 10:13:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,555,1344236400"; d="scan'208";a="153786023"
Received: from unknown (HELO helios.localnet) ([10.252.122.50])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Oct 2012 10:13:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 08 Oct 2012 18:13:35 +0100
Message-ID: <5195719.iDMf9X1rpv@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [yocto-docs][PATCH 00/11] Documentation improvements
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
X-List-Received-Date: Mon, 08 Oct 2012 17:14:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 08 October 2012 16:38:06 Paul Eggleton wrote:
> Add some missing variables to the variable reference and improve
> the descriptions of others. Also fix references to "package" where
> we mean "recipe" and a couple of other issues I noticed at the same
> time.
> 
> 
> The following changes since commit 821162221818f5ce53bb903aeef57c85314f5083:
> 
>   documentation: dev-manual - mentioned SRC_URI in the kernel example
> (2012-10-05 11:25:03 -0700)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib paule/doc-fixes-5
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/doc-fixes-5
> 
> Paul Eggleton (11):
>   documentation: dev-manual: fix spelling
>   documentation: poky-ref-manual: correct LICENSE_DIR -> LICENSE_PATH
>   documentation: poky-ref-manual: improve MACHINE_* variable
>     descriptions
>   documentation: poky-ref-manual: extend description of MACHINE
>     variable
>   documentation: poky-ref-manual: add PACKAGECONFIG variable
>   documentation: poky-ref-manual: extend DISTRO description
>   documentation: poky-ref-manual: add information on
>     *_FEATURES_BACKFILL
>   documentation: poky-ref-manual: fix description of SUMMARY variable
>   documentation: poky-ref-manual: remove references to ipkg
>   documentation: poky-ref-manual: replace "package" with "recipe" where
>     appropriate
>   documentation: poky-ref-manual: update directory structure
>     information
> 
>  documentation/dev-manual/dev-manual-newbie.xml  |    2 +-
>  documentation/poky-ref-manual/faq.xml           |    2 +-
>  documentation/poky-ref-manual/ref-features.xml  |   46 ++++
>  documentation/poky-ref-manual/ref-structure.xml |   30 ++-
>  documentation/poky-ref-manual/ref-variables.xml |  267
> +++++++++++++++-------- 5 files changed, 249 insertions(+), 98 deletions(-)

Apologies if 10/11 comes through twice, there was some kind of issue with 
getting the original mail through to the mailing list server so I resent it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

