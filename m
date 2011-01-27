Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 452534C811FB
	for <yocto@yoctoproject.org>; Thu, 27 Jan 2011 16:37:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 14:37:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="701448810"
Received: from doubt.jf.intel.com (HELO [10.7.199.151]) ([10.7.199.151])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 14:37:20 -0800
Message-ID: <4D41F39A.5030001@linux.intel.com>
Date: Thu, 27 Jan 2011 14:37:14 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <AANLkTikG322KfbJ-ZEKXFbsOLkzLE3Kdp4L-096ODvxd@mail.gmail.com>	<46CAF87B-6605-4026-88C3-47258B9FDDB7@keylevel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB7593@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7593@shsmsx502.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rootfs image size
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
X-List-Received-Date: Thu, 27 Jan 2011 22:37:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 03:58 PM, Tian, Kevin wrote:
>> From: Chris Tapp
>> Sent: Wednesday, January 26, 2011 9:09 PM
>>
>> I know this is probably a basic question, but I'm not having much luck !
>>
>> I've built poky-image-minimal for atom-pc using the 0.9 Poky release.
>>
>> This gives me an ext3 rootfs of over 80MB, which doesn't sound minimal
>> to me ;-)
>
> This is a known issue in 0.9. the switch from ipk to rpm leaves some temporary files
> in the final ext3 rootfs, which results the large size.
>
>>
>> Can I reduce the size of the image, or is it expected to be this size?
>>
>> I've tried changing
>>
>> IMAGE_ROOTFS_SIZE_ext3 = "500000"
>
> This configuration option only works when it exceeds the size of generated rootfs,
> or else it will be changed implicitly to the actual size plus some extra buffer
>
>>
>>    in atom-pc.conf to another value, but this didn't make any
>> difference to the image that gets created (by re-running bitbake poky-
>> image-minimal after making the above change).
>>
>> I've also tried using
>>
>> ROOT_FLASH_SIZE = "64"
>>
>> also without any luck.
>>
>> Any help would be much appreciated !
>>
>
> I'd suggest you to use the master to see whether it works for you.
>
> The alternative is to apply below commit to your 0.9 code:
>
> commit 5e384038cbd5035377d61a1b77ad23ab69e0cac0
> Author: Richard Purdie<richard.purdie@linuxfoundation.org>
> Date:   Wed Jan 5 18:56:47 2011 +0000
>
>      rootfs_rpm.bbclass: Remove temporary work files in install directory, saving work files in install directory, saving the manifests as logfiles into ${T}
>
>      Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>
> diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
> index 33abe96..2f7d691 100644
> --- a/meta/classes/rootfs_rpm.bbclass
> +++ b/meta/classes/rootfs_rpm.bbclass
> @@ -202,8 +202,11 @@ EOF
>          # remove lock files
>          rm -f ${IMAGE_ROOTFS}${rpmlibdir}/__db.*
>
> -       # remove resolver files and manifests
> -       rm -f ${IMAGE_ROOTFS}/install/install.manifest
> +       # Move manifests into the directory with the logs
> +       mv ${IMAGE_ROOTFS}/install/*.manifest ${T}/
> +
> +       # Remove all remaining resolver files
> +       rm -f ${IMAGE_ROOTFS}/install


This needs to be "rm -rf", there is another patch in master that takes 
care of this: 21fafc889e81411735de7d04ffe504e5cff4830d

--
Darren


>
>          log_check rootfs
>
> Thanks
> Kevin
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

