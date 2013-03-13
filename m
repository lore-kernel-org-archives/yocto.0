Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC5A5E00709
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:03:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2013 10:03:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="305675248"
Received: from unknown (HELO envy.home) ([10.255.13.88])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2013 10:03:14 -0700
Message-ID: <5140B150.7050606@linux.intel.com>
Date: Wed, 13 Mar 2013 10:03:12 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
In-Reply-To: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
Subject: Re: Loading a new yocto image to Intel Fri2 board
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
X-List-Received-Date: Wed, 13 Mar 2013 17:03:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 03/10/2013 04:16 AM, Insop Song wrote:
> Hi,
> 
> I have a question on loading a new yocto image to Intel Fri2 board.
> 
> 1. Board: Intel Fri2
> --------------------------
> 
> 2. Image: self built sato image with meta-fri2
> --------------------------
> I've followed an instruction from
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-fri2/README
> so do dd image of my sato image to usb as described
> - "dd if=core-image-sato-fri2-20101207053738.hddimg of=/dev/sdf"


Assuming you have the Intel provided UEFI fastboot firmware, I would
suggest using scripts/contrib/mkefidisk.sh rather than dd'ing the
hddimg. The hddimg is not in a format that is well supported by EFI.

mkefidisk.sh partitions the target device and creates a proper EFI
partition and a root partition.


> 
> 3. Sympton: stuck during boot and no ttyusb access
> --------------------------
> And connect it to the host USB port.
> Then I can see the new grub menu that has "boot" and "install", so
> selected "boot"
> 
> However, booting was stuck at around this line,
> - "0000:03:0a.2: ttyPCH1 at I/O 0x2050 (irq = 41) is a pch_uart"
> 
> And I am not able to get the ttyUSB console working either.


You don't see GRUB over the serial port? Do you see the UEFI shell on
the serial port. Does the ttyUSB* device appear on your host machine?
Are you configured at 115200 8n1?


> 4. Others: official sato image for Fri2 is not working either
> --------------------------
> Also just to make sure I "dd" the image from the official hdd img, but
> the result is the same as my own image.
> 
> Anyone has tried the same? please let me know.


Try mkefidisk.sh and let us know the result.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

