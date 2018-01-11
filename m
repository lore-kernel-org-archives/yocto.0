Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A5CCE00E49; Wed, 10 Jan 2018 17:04:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37882E00DA4
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 17:04:08 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jan 2018 17:04:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,342,1511856000"; d="scan'208";a="20641834"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.221.21.145])
	([10.221.21.145])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jan 2018 17:04:07 -0800
To: yocto@yoctoproject.org
References: <5ea24980c9c34e419e5d6fc535bfbaaf@ERDCSEXCH01.SMITHSSII.NET>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <4f0b0659-23da-aa36-3f58-46ab20930738@intel.com>
Date: Thu, 11 Jan 2018 09:04:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <5ea24980c9c34e419e5d6fc535bfbaaf@ERDCSEXCH01.SMITHSSII.NET>
Subject: Re: Change initscript level
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
X-List-Received-Date: Thu, 11 Jan 2018 01:04:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 01/11/2018 03:49 AM, Bishop, Mark (STRT) wrote:
> I am just trying to change modutils.sh to run from
> /etc/rcS.d/S05modutils.sh to /etc/rcS.d/S15modutils.sh
> 
>  
> 
> I can’t figure this out.  I have modified the
> yocto/source/arm/layers/core/meta/recipes-kernel/modutils-initscripts.bb
> 
>  
> 
> From: INITSCRIPT_PARAMS = "start 05 S ."
> 
> To: INITSCRIPT_PARAMS = "start 10 S ."
> 
>  
> 
> And I still only have S05modutils.sh
> 
> 
> The pkg_postinst_modutils-initscripts still has “start 05 S .” in
> build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/modutils-initscripts/1.0-r7/pkgdata/runtime/modutils-initscripts

I tried this and I can see the correct values. Which version of
poky/OE-core are you using? Can you try to bitbake -c cleansstate and
build modutils-initscripts again?

> 
>  
> 
> It’s quite apparent that I don’t know what I’m doing here and I could
> use some sage advice on how to move these startup levels around. 
> 
>  
> 
> Thank you.
> 
>  
> 
> *Mark Bishop*
> 
> *Sr. Firmware/Software Engineer – Microwave Subsystems***
> 
> * *
> 
> cid:image001.png@01D281ED.A45F0A90**
> 
> 4726 Eisenhower Blvd.
> 
> Tampa, FL 33634
> 
> USA
> 
> 	
> 
>  
> 
> T  +1 813 901 7293
> 
> *mbishop@smithsinterconnectinc.com
> <mailto:mbishop@smithsinterconnectinc.com>*
> 
> 	
> 
> *smithsinterconnect.com* <http://www.smithsinterconnect.com/>
> 
> *TRAK MICROWAVE IS NOW SMITHS INTERCONNECT!***
> 
>  
> 
>  
> 
> 
> This e-mail contains proprietary information some or all of which may be
> legally privileged. It is intended for the recipient only. If an
> addressing or transmission error has misdirected this e-mail, please
> notify the authority by replying to this e-mail. If you are not the
> intended recipient you must not use, disclose, distribute, copy, print,
> or rely on this e-mail. In addition, information contained in or
> attached to this e-mail may be subject to either 22 C.F.R. Parts
> 120?130, or 15 C.F.R. Parts 730-774. These regulations prohibit the
> release or disclosure of certain information contained herein to anyone
> who is not a U.S. citizen or permanent resident alien, without a license
> first having been issued. Failure to observe such requirements is a
> violation of U.S. law that carries serious penalties.   ­­  
> 
> 


