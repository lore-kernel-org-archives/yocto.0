Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E883CE012F3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 03:16:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 31 Oct 2011 03:16:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="69549434"
Received: from unknown (HELO helios.localnet) ([10.252.121.56])
	by orsmga001.jf.intel.com with ESMTP; 31 Oct 2011 03:16:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Mon, 31 Oct 2011 10:16:00 +0000
User-Agent: KMail/1.13.6 (Linux/2.6.38-11-generic-pae; KDE/4.6.5; i686; ; )
References: <6722EDB4-6AD2-4E51-A826-B00D3AABC6A0@keylevel.com>
In-Reply-To: <6722EDB4-6AD2-4E51-A826-B00D3AABC6A0@keylevel.com>
MIME-Version: 1.0
Message-Id: <201110311016.00534.paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Which filesystem for target?
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
X-List-Received-Date: Mon, 31 Oct 2011 10:16:17 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Friday 28 October 2011 23:11:22 Chris Tapp wrote:
> Which is the 'best' filesystem to use for an embedded device that's
> using a CF card?
> 
> It needs to survive loss-of-power, have a RO root filesystem, allow
> user configuration data to persist and (ideally) only use 'Busybox'
> commands.
> 
> This seems to imply the use of a partition for booting (mount RO) and
> a second partition or a loop-device on the boot partition for
> persistent storage.
> 
> I would normally go for ext3, but Busybox doesn't support it (afaik).
> The Busybox tune2fs also only supports -L, so I can't stop 'disk needs
> checking after <n> mounts' messages.
> 
> Is btrfs a suitable alternative?

Arnd Bergmann gave a talk at ELCE on flash drive performance (something he has 
done quite a lot of research on); I did not attend but Darren and I spoke to 
him later on, and if I recall correctly in his tests btrfs performed the best. 
Hopefully the talk video will be available soon thanks to the folks at Free 
Electrons; in the mean time there's an earlier article by Arnd on this topic 
here:

http://lwn.net/Articles/428584/

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

