Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70400E0027F
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 15:27:21 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Sep 2012 15:27:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,376,1344236400"; d="scan'208";a="189290861"
Received: from unknown (HELO helios.localnet) ([10.252.121.177])
	by azsmga001.ch.intel.com with ESMTP; 05 Sep 2012 15:27:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: ml@communistcode.co.uk
Date: Wed, 05 Sep 2012 23:27:19 +0100
Message-ID: <6099464.5q5kWXbBUM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <5047CAC2.2020405@communistcode.co.uk>
References: <5047970C.8010208@mlbassoc.com> <2238601.rFqqxpWrI4@helios>
	<5047CAC2.2020405@communistcode.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: raspberrypi image questions
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
X-List-Received-Date: Wed, 05 Sep 2012 22:27:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 September 2012 22:57:22 Jack Mitchell wrote:
> On 05/09/2012 22:46, Paul Eggleton wrote:
> > On Wednesday 05 September 2012 12:16:44 Gary Thomas wrote:
> >> Also, is it possible to just build the SD image much like I do for
> >> other devices like the BeagleBoard, albeit with different contents
> >> in /boot?  Sloshing around 4GB images is rather painful, plus it
> >> takes forever to DD it to the SD card.
> > 
> > I must be missing something - do you want the rootfs larger or don't you?
> > If it's expanded it will take up 4GB minus the boot partition size so
> > you're into a large dd again...
> 
> I think what he means (or this is what I would like to see ) is a
> boot.tar.gz and a rootfs.tar.gz which can then be extracted straight
> onto the partitions? Hence only a ~40mb boot write and ~50mb rootfs
> write rather than a 4GB dd slog.

Ah, I see, that makes more sense. Another thing to add to the meta-raspberrypi 
issue tracker.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

