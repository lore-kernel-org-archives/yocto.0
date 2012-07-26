Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D167E002A8
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 08:05:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jul 2012 08:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="186839453"
Received: from unknown (HELO helios.localnet) ([10.252.121.37])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jul 2012 08:04:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Date: Thu, 26 Jul 2012 16:04:57 +0100
Message-ID: <5419222.ETlGt6EkV3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <CANwz6nwrd79VHuA93vO8DiC83K8eT9W2Y8DWAeGffonHnJ_o8w@mail.gmail.com>
References: <CANwz6nwrd79VHuA93vO8DiC83K8eT9W2Y8DWAeGffonHnJ_o8w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard core-image-sato boots to serial port poky 1.3_M2
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
X-List-Received-Date: Thu, 26 Jul 2012 15:05:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 26 July 2012 08:52:55 Edward Vidal wrote:
> I added the line below to uEnv.txt based on Yi Zhao message.
> bootcmd="mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000"
> Now uEnv.txt is the following
> mpurate=auto
> 
> bootcmd="mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000"
> dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
> vram=16M
> optargs="consoleblank=0"
> console="tty0 console=ttyO2,115200n8"
> The system boots and with the network setup i can ssh into the beagleboard.
> checking dmesg I see the following.
> 
> Unable to get DVI reset GPIO
>  omap-mcbsp.2: alias fck already exists
>  omap-mcbsp.3: alias fck already exists
> OMAP DMA hardware revision 5.0
> 
> I tried id:3:initdefault still no display on beagleboard display.
> Thanks any help will be appreciated :

Edward, 

Unfortunately I can't help much with your problem at this point, sorry about 
that - but could I ask you to keep this discussion as part of a single thread? 
It would make the discussion easier to follow.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

