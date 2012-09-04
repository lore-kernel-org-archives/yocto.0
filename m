Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C34EE01371
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 16:23:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Sep 2012 16:23:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,369,1344236400"; d="scan'208";a="188815009"
Received: from unknown (HELO envy.home) ([10.255.13.106])
	by azsmga001.ch.intel.com with ESMTP; 04 Sep 2012 16:23:41 -0700
Message-ID: <50468D68.50608@linux.intel.com>
Date: Tue, 04 Sep 2012 16:23:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: William Mills <wmills@ti.com>
References: <50450DC6.20303@r-finger.com>	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>	<50451947.2090401@r-finger.com>	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>	<5045C2B7.1070406@r-finger.com>	<CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
	<504637F5.8090603@linux.intel.com> <504663C0.6050907@ti.com>
In-Reply-To: <504663C0.6050907@ti.com>
X-Enigmail-Version: 1.4.4
Cc: yocto@yoctoproject.org, "Dmytriyenko, Denys" <denys@ti.com>
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Tue, 04 Sep 2012 23:24:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/04/2012 01:25 PM, William Mills wrote:

> Darren: Is it true you can't get @ the Intel BSP's w/o also getting the 
> poky distro defs?  That does seem to mixing things a bit.  (I am not 
> claiming meta-ti is clean yet but I want to understand the Intel examples.)
> 

It isn't something we test as part of the QA that we perform. I mostly
expect people building meta-intel to be building with meta-yocto
(although I wouldn't take a hard line on requiring it). That said, I
removed meta-yocto from a meta-intel/meta-fri2 build and removed
DISTRO=poky from my local.conf and successfully built and booted a
core-image-minimal build on an FRI2 this afternoon without any changes.

This was with latest master of both poky and meta-intel. I have not
tried this with oe-core and bitbake pulled down separately, I'll leave
that as an exercise for the reader.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

