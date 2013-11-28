Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B500DE00535
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 06:42:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2013 06:42:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,791,1378882800"; d="scan'208";a="435680681"
Received: from unknown (HELO helios.localnet) ([10.252.122.17])
	by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2013 06:42:00 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Date: Thu, 28 Nov 2013 14:41:59 +0000
Message-ID: <38493043.aTSfxjGLd9@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CANwz6nzTqH+-zA0B8YodrpEW_kVwGp-FF2zi3jDdQE6L+5od8A@mail.gmail.com>
References: <CANwz6nzTqH+-zA0B8YodrpEW_kVwGp-FF2zi3jDdQE6L+5od8A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: chkconfig
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
X-List-Received-Date: Thu, 28 Nov 2013 14:42:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Edward,

On Friday 22 November 2013 11:00:44 Edward Vidal wrote:
> Is chkconfig part of any image?

It's part of the LSB images and the self-hosted image, but you probably don't 
want to build those unless you're looking for those things exactly. You can 
add chkconfig to any image just by adding the "chkconfig" package to 
IMAGE_INSTALL.

> Also to force what is the best procedure?

To force what?

> In my /etc/network/interfaces I have tried the following
> auto eth0
> iface eth0 inet static
>         address 192.168.0.29
>         hwaddress ether 00:0A:35:00:00:00
>         netmask 255.255.255.0
>         network 192.168.0.0
>         gateway 192.168.0.1
> Since I have a router on my network I get an IP using dhcp,
> if I ifdown eth0 and ifup eth0 then the 192.168.0.29 get setup.

Do you have connman in the image? If so the above might be being ignored.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

