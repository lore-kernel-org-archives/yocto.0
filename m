Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8A92E0082D
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2014 12:24:45 -0800 (PST)
Received: from [192.168.1.11] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 347B82241666;
	Thu,  9 Jan 2014 20:24:43 +0000 (UTC)
Message-ID: <52CF0589.4040905@mindchasers.com>
Date: Thu, 09 Jan 2014 15:24:41 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Zhenhua Luo <zhenhua.luo@freescale.com>, 
	Software Development Power Arch Multicore <MCSWDEV@freescale.com>
References: <CA452391058F6D4E9715FB2C29D9312A0181242A@039-SN2MPN1-021.039d.mgd.msft.net>
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A0181242A@039-SN2MPN1-021.039d.mgd.msft.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto branches policy for concurrent SDK releases
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
X-List-Received-Date: Thu, 09 Jan 2014 20:24:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2013 05:43 AM, Zhenhua Luo wrote:
> Hi all,
>
> Currently concurrent SDKs are on-going(e.g. SDK 1.5, T1040/T2080, LS1, etc), the same Yocto branch is used for multiple releases, there is conflict of Yocto recipes for different SDKs.
>
> To resolve above issue, following branch mechanism will be used:
>
> 1. For those layers without conflict(poky, meta-oe, meta-virtualization and layers reused from community), same branch will be used and no extra branches need to be created, change for those layer should be upstreamed synchronously.
>
> 2. For those layers with conflict, the branch specific to SDK are created, currently meta-fsl-ppc and meta-fsl-networking have conflict for different SDKs. Following branches will co-exist for such layers.
>     a. Yocto release branch: dylan, dora. the common changes for all SDKs should be submitted against this branch and cherry-picked to SDK specific branches. The changes should be upstreamed synchronously.
>     b. SDK specific branch: dylan-sdk1.5, dylan-t1_t2, etc. The SDK specific change should be submitted against SDK branch, when SDK is formally released, the changes will be upstreamed.


Hi Zhenhua,

Any plans to create a repo for meta-fsl-networking on git.yoctoproject 
for Power / QorIQ developers?

It would be good for yocto users, such as myself, to be able to build 
something incremental between the SDK releases using updated / patched 
recipes pulled from the yocto repos, which should include 
meta-fsl-networking.

Say I wanted to propose a patch to a recipe like fsl-image-full, which 
is in meta-fsl-networking, how would I go about it?

Last February (2013), you proposed an FSL Yocto layers reorg that merged 
layerscape/ARM with Power for QorIQ.  I imagine you're getting close to 
having something internally.  Can you please share the vision with us 
along with whether it will be public on the yocto project (as opposed to 
kept under wraps with incremental SDK releases)?

Thank you,

Bob






>
> Please let me know if any comment.
>
>
> Best Regards,
>
> Zhenhua
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


