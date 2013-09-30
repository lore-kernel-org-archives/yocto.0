Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD090E015D3
	for <yocto@yoctoproject.org>; Sun, 29 Sep 2013 18:54:11 -0700 (PDT)
Received: from [192.168.1.11] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id D3B832221869;
	Mon, 30 Sep 2013 01:54:09 +0000 (UTC)
Message-ID: <5248D9C0.10105@mindchasers.com>
Date: Sun, 29 Sep 2013 21:54:08 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Luo Zhenhua-B19537 <B19537@freescale.com>
References: <CA452391058F6D4E9715FB2C29D9312A0144533E@039-SN2MPN1-021.039d.mgd.msft.net>
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A0144533E@039-SN2MPN1-021.039d.mgd.msft.net>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] The updated proposal of FSL Yocto layers reorg - 4-Mar
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Sep 2013 01:54:13 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Zhenhua,

Can we get an update on Layerscape?  It's been about 6 months since the 
Yocto layers organization for Layerscape was last talked about on this 
board.

When will we first see an instance of the stage 2 organization (e.g., 
meta-fsl-layerscape) in the yocto project source repos 
(http://git.yoctoproject.org/cgit/cgit.cgi/)?

Thanks,

Bob




On 03/03/2013 10:48 PM, Luo Zhenhua-B19537 wrote:
> Hello all,
>
> I have incorporated the comments of previous discussion into the reorg
> design document, please take a look.
>
> *Summary of Yocto reorg*
>
> * To support Layerscape release, both ARM architecture and PPC
> architecture are required to be supported by Yocto.
>
> * Currently Yocto support for i.MX SDK and QorIQ SDK are developed and
> maintained separately, some duplicated packages are not shared between
> ARM SDK and PPC SDK. And will not be efficient and effective maintained
> for Layerscape support.
>
> * More clear naming of Yocto layers for FSL specific will be helpful for
> PPC, ARM and Layercape support simultaneously.
>
> * Subsequent slides introduces the plan and design of FSL Yocto layers
> re-org.
>
> *FSL Yocto Layers Reorg Diagram*
>
> yocto-re-org.png
>
> *FSL Yocto Layers Reorg – Stage1*
>
> * Stage1:  ~ Jun-2013
>
> * Following layers will coexist:
>
>    poky: the opensource version
>
>    meta-oe: the opensource branch corresponding to poky
>
>    meta-virtualization: the opensource virtualization layer
>
>    meta-fsl-ppc-toolchain: fsl toolchain recipes
>
>    meta-fsl-ppc: fsl public packages for PPC targets
>
>    meta-fsl-ppc-private: fsl private packages for PPC targets
>
>    meta-fsl-arm: fsl packages for ARM targets
>
>    meta-fsl-demos: demo rootfs recipes of ARM targets
>
>    meta-fsl-networking: recipes specific to networking SDK
>
>    Other necessary upstream layers
>
> *FSL Yocto Layers Reorg – Stage2*
>
> * Stage2: Jul-2013 ~ Dec-2013
>
> * Following change will be made:
>
>    Poky/meta-oe/meta-virtualization for opensource are reused
>
>   Following architecture specific layers are maintained in
> git.am.freescale.net,   git.freescale.com and git.yoctoproject.org
>
>      meta-fsl-arm: layer for FSL arm machines
>
>     meta-fsl-ppc: layer for FSL ppc machines
>
>    Following SDK specific layers are maintained in git.am.freescale.net
> and git.freescale.com
>
>      meta-fsl-toolchain: layer for fsl toolchain recipes
>
>      meta-fsl-multimedia: layer for multimedia SDK
>
>      meta-fsl-networking: layer for networking SDK
>
>      meta-fsl-layerscape: layer for layerscape SDK
>
> *FSL Yocto Layers Reorg – More info*
>
> * Layer of getting layers specific to Freescale SDK
>
>    * Layer name: meta-freescale-sdk
>
>    * The function of this layer is similar as
> https://github.com/Freescale/fsl-community-bsp-platform and it is
> maintained in FSL internal/external git tree
>
>    * A branch is created for each FSL SDK release to include the scripts
> to fetch necessary layers of specified version
>
> * Multiple branch maintain
>
>    * Align with the branch policy of poky: denzil, danny, master ...
>
>    * A tag of sub-layers will be created for each FSL release
>
>    * Upstream / public branches will try to work with all Yocto
> releases, while SDK releases could contain a lot of hacks to more things
> working, or pre-release things out there door.
>
>    * SDK releases sometimes skip entire Yocto releases (e.g. danny). SDK
> versions may contain slightly different versions. This comes into play
> more with oe-core where we don't have official control and we need to
> include a specific fix for the SDK. Layers themselves tend to have less
> reason to deviate from the upstream versions since we control both sides
> so they should be the same.
>
> * Meta-fsl-toolchain layer maintain
>
>    * This layer is maintained in FSL internal/external git tree
>
>    * Directory structure:
>
>        meta-fsl-toolchain
>
>        |-- meta-gcc4.6-eglib2.13-binutils-2.21a
>
>        |-- meta-gcc4.7-eglib2.15-binutils-2.23
>
> * SCM
>
>    * Unify the mailing list of FSL layers
>
>    * Opensource: _meta-freescale@yoctopoject.org
> <mailto:meta-freescale@yoctopoject.org>_**
>
> * U-boot/Linux on FSL official git tree (git.freescale.com)
>
>   * The source in git.freescale.com will be updated when SDK is formally
> released, since full verification should be conducted  to ensure
> quality. So Kernel in FSL official git tree will not be synced with
> internal git tree during the developing phase.
>
>   * The kernel team can’t have everything upstreamed for an SDK release
> and supporting all feature and bug fixes. Besides we will pick a kernel
> and test and fix it so it will always fall out of sync. (e.g. latest
> kernel release - 1 release + fixes).
>
> * Yocto sync on git.am.freescale.net, gitfrescale.com and
> git.yoctoproject.org
>
>   * These should be much closer to the same for the layers we control.
> Due to the limited resources spread around, we can't always get all
> fixes in the oe-core/poky for an SDK release timely. But a lot of times
> we can get them into the branch for that release and eventually a point
> release. Upstream/public branches will try to work with all Yocto
> releases, while SDK releases could contain a lot of hacks to more things
> working.
>
> Best Regards,
>
> Zhenhua
>
>
>
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale
>


