Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 623DDE013D0
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 03:03:26 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 May 2013 03:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,627,1363158000"; d="scan'208";a="237960704"
Received: from unknown (HELO helios.localnet) ([10.255.12.75])
	by AZSMGA002.ch.intel.com with ESMTP; 07 May 2013 03:03:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: seth bollinger <seth.boll@gmail.com>
Date: Tue, 07 May 2013 11:03:05 +0100
Message-ID: <151993811.Q22DjuRsNS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <51857159.8000502@gmail.com>
References: <51857159.8000502@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: resize_inode
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
X-List-Received-Date: Tue, 07 May 2013 10:03:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 04 May 2013 15:36:41 seth bollinger wrote:
> I'm trying to create a small SD card image that I can quickly dd to card
> and then do an online resize as a post process step to take advantage of
> the entire space of the card.  Similar to how the raspbian image works.
> Unfortunately genext2fs doesn't seem to set this flag (and reserve the
> required resources), so the online resize fails.  I tried using tune2fs,
> as it looked like there was some interest in adding support, but it
> looks like it never happened.  Has anyone else run into this issue?  Is
> there a solution?
> 
> resize2fs 1.42.1 (17-Feb-2012)
> Filesystem at /dev/mmcblk0p2 is mounted on /; on-line resizing required
> old_desc_blocks = 1, new_desc_blocks = 15
> resize2fs: Filesystem does not support online resizing
> 
> | Setting filesystem feature 'resize_inode' not supported.
> | tune2fs 1.42.1 (17-Feb-2012)

genext2fs is a bit limited, this is just one example of how.

Could you not just do an offline resize of the filesystem though? Why does it 
need to be mounted?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

