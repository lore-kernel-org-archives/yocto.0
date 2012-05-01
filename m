Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 510FFE0132F
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 04:00:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 May 2012 04:00:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160373394"
Received: from unknown (HELO helios.localnet) ([10.252.120.35])
	by fmsmga002.fm.intel.com with ESMTP; 01 May 2012 04:00:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, giovanni.pavoni@exorint.it
Date: Tue, 01 May 2012 12:00:06 +0100
Message-ID: <4741860.8uVCLd3Ttu@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <CAMKF1sriRCYmBPGNy-9KCCaR5DoBpOSFQWry1bA0_bw159uBug@mail.gmail.com>
References: <OF41F9B7AE.FA4B98D4-ONC12579E2.0026189F-C12579E2.00264CB0@Sitek.it>
	<CAMKF1sriRCYmBPGNy-9KCCaR5DoBpOSFQWry1bA0_bw159uBug@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Failure building qte4-demo-image
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
X-List-Received-Date: Tue, 01 May 2012 11:00:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 28 April 2012 19:15:54 Khem Raj wrote:
> 2012/4/15  <giovanni.pavoni@exorint.it>:
> > Also, how can I specify qt4.8.0 as preferred version rather then qt4.7.4?
> > (the former performs much better on neon enabled targets).
> 
> 4.8.1 recipes have DEFAULT_PREFERENCE = "-1" in them just delete that
> line from all 4.8.1 recipes
> and then they will be picked

The easier way to do this (without modifying the recipes) is to add the 
following to your local.conf, or distro config if you have your own:

PREFERRED_VERSION_qt4-x11-free = "4.8.0"
PREFERRED_VERSION_qt4-embedded = "4.8.0"
PREFERRED_VERSION_qt4-native = "4.8.0"
PREFERRED_VERSION_qt4-tools-nativesdk = "4.8.0"

(change to 4.8.1 for latest master)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

