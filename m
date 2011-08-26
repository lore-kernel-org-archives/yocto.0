Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F42CE00777
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 08:45:55 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Aug 2011 08:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="42264592"
Received: from unknown (HELO [10.255.13.247]) ([10.255.13.247])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2011 08:45:54 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Aug 2011 08:45:49 -0700
In-Reply-To: <4E57BC7E.7070209@mlbassoc.com>
References: <4E57BC7E.7070209@mlbassoc.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1314373554.2214.2.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Strange build warning
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
X-List-Received-Date: Fri, 26 Aug 2011 15:45:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-08-26 at 09:32 -0600, Gary Thomas wrote:
> Building 'bitbake core-image-sato' from scratch:
> OE Build Configuration:
> BB_VERSION        = "1.13.3"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.0+snapshot-20110826"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto        = "master:6c2b7beac3cd23ed44bd3e195c6360a0932876bf"
> 
> I saw this warning:
> =======================================================
> This BSP sets 1 invalid/obsolete kernel options.
> These config options are not offered anywhere within this kernel.
> The full list can be found in your workspace at:
> /local/pc_poky/tmp/work/atom_pc-poky-linux/linux-yocto-3.0.3+git1+5b535279e61197cb194bb2dfceb8b7a04128387c_1+ead7d8334e4c075906d029789333f43e54f6257a-r1/linux/meta/cfg/yocto/standard/common-pc/atom-pc/invalid.cfg
> 
> This BSP sets 11 kernel options that are possibly non-hardware related.
> The full list can be found in your workspace at:
> /local/pc_poky/tmp/work/atom_pc-poky-linux/linux-yocto-3.0.3+git1+5b535279e61197cb194bb2dfceb8b7a04128387c_1+ead7d8334e4c075906d029789333f43e54f6257a-r1/linux/meta/cfg/yocto/standard/common-pc/atom-pc/specified_non_hdw.cfg
> 
> WARNING: There were 88 hardware options requested that do not
>           have a corresponding value present in the final ".config" file.
>           This probably means you aren't getting the config you wanted.
> The full list can be found in your workspace at:
> /local/pc_poky/tmp/work/atom_pc-poky-linux/linux-yocto-3.0.3+git1+5b535279e61197cb194bb2dfceb8b7a04128387c_1+ead7d8334e4c075906d029789333f43e54f6257a-r1/linux/meta/cfg/yocto/standard/common-pc/atom-pc/mismatch.cfg
> ========================================================
> along with a note that the build was pausing for a few seconds so I
> would notice the error/warning.
> 
> Is this important?  If not, why scare me like this?

The generic infrastructure is important to maintain, if you're
developing BSP's you likely want to know that your custom kernel config
isn't producing the expected results.

In this instance the BSP is a Yocto maintained one and therefore this is
a bug.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


