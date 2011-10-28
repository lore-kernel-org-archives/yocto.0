Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED876E0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 11:59:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 Oct 2011 11:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,419,1315206000"; d="scan'208";a="31159834"
Received: from unknown (HELO envy.home) ([10.255.15.78])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Oct 2011 11:59:51 -0700
Message-ID: <4EAAFBA6.5040806@linux.intel.com>
Date: Fri, 28 Oct 2011 20:59:50 +0200
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1319826880.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1319826880.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.2
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3] meta-intel: linux-yocto-rt fixes for crownbay and fri2
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
X-List-Received-Date: Fri, 28 Oct 2011 18:59:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/28/2011 08:40 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Trying to build rt images for crownbay and fri2, I ran in to a few build
> problems - this patchset fixes them up.
> 
> The following changes since commit 478969defe862a2779bf7eb3bca30e2067827d7e:
>   Kishore Bodke (1):
>         New Romley BSP created. Uses Matrox MGA graphics driver.
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/meta-intel.git tzanussi/rt-fixes
>   http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/rt-fixes
> 
> Tom Zanussi (3):
>   meta-crownbay: add linux-yocto-rt_3.0.bbappend
>   meta-fri2: allow linux-yocto-rt to be used for fri2-noemgd
>   meta-crownbay: allow linux-yocto-rt to be used for crownbay

For all three:

Acked-by: Darren Hart <dvhart@linux.intel.com>

> 
>  .../linux/linux-yocto-rt_3.0.bbappend              |   20 ++++++++++++++++++++
>  .../linux/linux-yocto-rt_3.0.bbappend              |    2 ++
>  2 files changed, 22 insertions(+), 0 deletions(-)
>  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

