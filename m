Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66FB3E00816
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 05:33:44 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Jan 2014 05:33:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,624,1384329600"; d="scan'208";a="463494928"
Received: from unknown (HELO helios.localnet) ([10.252.122.128])
	by orsmga002.jf.intel.com with ESMTP; 08 Jan 2014 05:33:35 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
Date: Wed, 08 Jan 2014 13:33:34 +0000
Message-ID: <8631278.WqvAtfDsah@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-35-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAB3sqtY8VkwaU8fLT3C28a-WWkW6rTHST6WEv+ijZj6_moT-_w@mail.gmail.com>
References: <CAB3sqtY8VkwaU8fLT3C28a-WWkW6rTHST6WEv+ijZj6_moT-_w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Smart PM for upgrade the full image
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
X-List-Received-Date: Wed, 08 Jan 2014 13:33:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Tarek,

On Wednesday 08 January 2014 12:52:42 Tarek El-Sherbiny wrote:
> I have several targets deployed in multiple sites. Each target might  be
> running  a different version of the product rootfs image. When I release a
> new rootfs image I would like to use the smart command on each target at
> the customer site to upgrade the software to the latest image. Going
> through each package and install it separately is inefficient way of
> handling the upgrade and I don't expect the customer to have the knowledge
> for doing so.
> 
> What we really need is a smart command to compare the latest rootfs image
> and install, remove or un-change packages based on what is currently
> installed.
> 
> Can the smart command achieve that or do I need to write my own script?

Isn't this the same question you asked the other day? i.e., this is "smart 
upgrade".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

