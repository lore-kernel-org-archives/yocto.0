Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4CACE0044A
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 02:55:11 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 May 2012 02:55:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="146176795"
Received: from unknown (HELO helios.localnet) ([10.252.120.151])
	by azsmga001.ch.intel.com with ESMTP; 22 May 2012 02:55:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 May 2012 10:55:09 +0100
Message-ID: <1509185.JnoU7hWXgp@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <CAAA4K6Jqjx=g9-JFQrm4__CJs69xPYVoVS-2FM+Ce8088ta8Yg@mail.gmail.com>
References: <CAAA4K6Jqjx=g9-JFQrm4__CJs69xPYVoVS-2FM+Ce8088ta8Yg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: How to set a DISTRO_FEATURE?
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
X-List-Received-Date: Tue, 22 May 2012 09:55:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 22 May 2012 13:07:34 Jegan Chandru wrote:
> You can either set it in local.conf as you have mentioned or you can define
> the variable in your machine conf.
> You can do something like this,
> 
> require conf/distro/include/default-distrovars.inc
> ................
> ........................
> DISTRO_FEATURES = "alsa ....... "

You should *not* do this in your machine configuration. Machine configuration 
should only contain items that are machine-specific. This belongs in distro 
configuration, or in local.conf if you want to test something.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

