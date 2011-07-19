Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 614324C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 13:36:07 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jul 2011 11:36:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,229,1309762800"; d="scan'208";a="32179573"
Received: from unknown (HELO [10.255.13.216]) ([10.255.13.216])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2011 11:36:05 -0700
Message-ID: <4E25CE94.5080806@linux.intel.com>
Date: Tue, 19 Jul 2011 11:36:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: "Li, Simon" <simon.li@intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECD100C5F6@pgsmsx507.gar.corp.intel.com>
In-Reply-To: <23F1A04A50711046AF124F3D4D1EB2ECD100C5F6@pgsmsx507.gar.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Yocto image for EeePC901
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
X-List-Received-Date: Tue, 19 Jul 2011 18:36:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/18/2011 11:17 PM, Li, Simon wrote:
> To whom may concern,
> 
> I tried to build Yocto for a real device, which is EeePC901. Because of
> README.hardware mentioned.
> 
> Here are my steps:
> # source poky-bernard-5.0.1/poky-init-build.env build-poky-5.0.1
> 
> Modify the local.conf (As attachment)
> 
> # bitbake poky-image-sato-directdisk
> 
> However I got the build failed, please refer to the attachment,
> build_fail_log.txt
> 
> I think the key fail message is
> 
> | ERROR: Function 'poky-image-sato-directdisk: LIC_FILES_CHKSUM points
> to invalid file: ${COREBASE}/LICENSE' failed
> 
> Is there any problem I got? Or where can I find the files? Thanks.

I _think_ this has to do with the move from POKY to CORE in the naming.
Looks like the directdisk image type may have been missed.

I suggest you try the poky-image-sato-live image and install from that.
The directdisk images have some known issues that I suspect will prevent
them from working for you.

--
Darren

> 
>  
> 
> Best Regards,
> 
>  
> 
> Simon
> 
>  
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

