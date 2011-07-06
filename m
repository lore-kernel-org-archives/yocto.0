Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5881C4C8009E
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2011 11:42:24 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jul 2011 09:42:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,488,1304319600"; d="scan'208";a="24460826"
Received: from unknown (HELO [10.255.14.20]) ([10.255.14.20])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jul 2011 09:42:23 -0700
Message-ID: <4E14906E.4050606@linux.intel.com>
Date: Wed, 06 Jul 2011 09:42:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: G Rajender <G.Rajender@lnties.com>
References: <9AAFA2F5BB120A448121E0997AE4438834482092@POCITMSEXMB03.LntUniverse.com>
In-Reply-To: <9AAFA2F5BB120A448121E0997AE4438834482092@POCITMSEXMB03.LntUniverse.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: minimal yocto images not booting on Beagleboard-xM rev B
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
X-List-Received-Date: Wed, 06 Jul 2011 16:42:25 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 07/06/2011 07:00 AM, G Rajender wrote:
> Hi,
> 
>  
> 
> I am new to Yocto project and Beagleboard.
> 
>  
> 
> I am using Beagleboard-xM rev B. I got the information about Yocto
> project by search. Yocto is a good open platform for Embedded developers
> for target specific architectures.
> 
>  
> 
> I have started working on Yocto project to build a LTP (Linux Test
> Project) Test frame work for Beagleboard-xM rev B. I have downloaded the
> Yocto release 1.0.1 and Beagleboard-xM BSP from the Yocto website. I
> have installed the Yocto project poky build tool and demo image in my
> Host PC (Ubuntu 10.04)as per poky quick start guide.
> 
>  
> 
> *Now I am trying to execute the meta-bsp (meta-beagleboard) binaries
> (built images) on beagleboard-xM rev B as per README. Hardware file. But
> the beagleboard-xM revision B is not booting with theses BSP images.*

Hi Rajender,

Welcome to the Yocto Project.

We just recently completed a major overhaul to the meta-yocto
beagleboard BSP, bringing it closer in line with the
meta-texasinstruments BSP. I have tested on a C4 and an xM Rev A. I have
reports of it working on rev B and not working on rev C, which we are
looking into.

For the best Yocto beagleboard support, I suggest building from the git
repository until the 1.1 release later this year.

--
Darren

> 
> * *
> 
> *Also I want add the Beagleboard BSP to the BBlayers of poky. I am
> unable to understand the procedure explained in BSP developer’s guide.*
> 
>  
> 
> *Can anyone suggest or share the experiences about above problems.*
> 
>  
> 
> Thanks in advance and looking for your kind response.
> 
>  
> 
>  
> 
> Thanks and regards,
> 
>  
> 
> Rajender.G
> 
>  
> 
>  
> 
>  
> 
>  
> 
>  
> 
> 
> 
> *Larsen & Toubro Limited
> 
> www.larsentoubro.com
> 
> *This Email may contain confidential or privileged information for the
> intended recipient (s) If you are not the intended recipient, please do
> not use or disseminate the information, notify the sender and delete it
> from your system.
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

