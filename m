Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 621FFE00897
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 05:36:56 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jan 2014 05:36:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,624,1384329600"; d="scan'208";a="461997342"
Received: from unknown (HELO helios.localnet) ([10.252.122.128])
	by fmsmga002.fm.intel.com with ESMTP; 08 Jan 2014 05:36:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
Date: Wed, 08 Jan 2014 13:36:54 +0000
Message-ID: <4695985.pdFe6Ipsgs@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-35-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAB3sqtb6bujs6EB+cBs_AhUgjkAWPOiST0RXe4wSUD3QKKwz9w@mail.gmail.com>
References: <CAB3sqtb6bujs6EB+cBs_AhUgjkAWPOiST0RXe4wSUD3QKKwz9w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Upgrade Kernel using smart
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
X-List-Received-Date: Wed, 08 Jan 2014 13:36:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Tarek,

On Monday 06 January 2014 18:13:39 Tarek El-Sherbiny wrote:
> When I typed the command "smart upgrade" smart detected over a 100 kernel
> module that needs to be installed.
> Most of these modules are not relevant and not installed on my system.
> How do I tell smart to check and upgrade only  for the currently installed
> modules?

I don't know why this would be happening, but smart just uses the dependencies 
declared in the RPM packages in order to determine what to install; so if it's 
looking to install packages you do not currently have installed in the image, 
in the absence of bug(s) that means somewhere a dependency has been added and 
smart is just responding to that. If it looks like it's installing all kernel 
module packages that probably means the "kernel-modules" meta-package is being 
brought in by something else. I would suggest using "smart query" on the 
target to find where this dependency exists.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

