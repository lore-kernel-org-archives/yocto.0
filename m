Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE579E00777
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 08:38:15 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id A4EA41660617; Fri, 26 Aug 2011 09:38:15 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E4D6E1660615;
	Fri, 26 Aug 2011 09:38:13 -0600 (MDT)
Message-ID: <4E57BDE5.9060606@mlbassoc.com>
Date: Fri, 26 Aug 2011 09:38:13 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <4E57BC7E.7070209@mlbassoc.com>
In-Reply-To: <4E57BC7E.7070209@mlbassoc.com>
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
X-List-Received-Date: Fri, 26 Aug 2011 15:38:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-08-26 09:32, Gary Thomas wrote:
> Building 'bitbake core-image-sato' from scratch:
> OE Build Configuration:
> BB_VERSION = "1.13.3"
> TARGET_ARCH = "i586"
> TARGET_OS = "linux"
> MACHINE = "qemux86"

Actually, MACHINE="atom_pc" (I grabbed the wrong screenshot)

> DISTRO = "poky"
> DISTRO_VERSION = "1.0+snapshot-20110826"
> TUNE_FEATURES = "m32 i586"
> TARGET_FPU = ""
> meta
> meta-yocto = "master:6c2b7beac3cd23ed44bd3e195c6360a0932876bf"
>
> I saw this warning:
> =======================================================
> This BSP sets 1 invalid/obsolete kernel options.
> These config options are not offered anywhere within this kernel.
> The full list can be found in your workspace at:
> /local/pc_poky/tmp/work/atom_pc-poky-linux/linux-yocto-3.0.3+git1+5b535279e61197cb194bb2dfceb8b7a04128387c_1+ead7d8334e4c075906d029789333f43e54f6257a-r1/linux/meta/cfg/yocto/standard/common-pc/atom-pc/invalid.cfg
>
>
> This BSP sets 11 kernel options that are possibly non-hardware related.
> The full list can be found in your workspace at:
> /local/pc_poky/tmp/work/atom_pc-poky-linux/linux-yocto-3.0.3+git1+5b535279e61197cb194bb2dfceb8b7a04128387c_1+ead7d8334e4c075906d029789333f43e54f6257a-r1/linux/meta/cfg/yocto/standard/common-pc/atom-pc/specified_non_hdw.cfg
>
>
> WARNING: There were 88 hardware options requested that do not
> have a corresponding value present in the final ".config" file.
> This probably means you aren't getting the config you wanted.
> The full list can be found in your workspace at:
> /local/pc_poky/tmp/work/atom_pc-poky-linux/linux-yocto-3.0.3+git1+5b535279e61197cb194bb2dfceb8b7a04128387c_1+ead7d8334e4c075906d029789333f43e54f6257a-r1/linux/meta/cfg/yocto/standard/common-pc/atom-pc/mismatch.cfg
>
> ========================================================
> along with a note that the build was pausing for a few seconds so I
> would notice the error/warning.
>
> Is this important? If not, why scare me like this?
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

