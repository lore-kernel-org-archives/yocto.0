Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 274B9E014B6
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 13:24:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2013 13:24:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,403,1363158000"; d="scan'208";a="288969187"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.68])
	by orsmga001.jf.intel.com with ESMTP; 03 Apr 2013 13:24:15 -0700
Message-ID: <515C8FEF.2090201@linux.intel.com>
Date: Wed, 03 Apr 2013 13:24:15 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
	<515C4D0D.7030708@linux.intel.com>
	<1FA14170446D481E9E3DB9080F55EEB9@PAULD>
In-Reply-To: <1FA14170446D481E9E3DB9080F55EEB9@PAULD>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
Subject: Re: This one can't be me...
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
X-List-Received-Date: Wed, 03 Apr 2013 20:24:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/03/2013 12:57 PM, Paul D. DeRocco wrote:
>> From: Darren Hart
>>
>> The most obvious question is whether or not the kernel you built has
>> ramdisk support. You can do this by analyzing the .config file in your
>> linux-yocto build tree
>> (build/tmp/work/cedartrail.../linux-yocto*/linux-cedartrail-st
>> andard-build/.config).
>> You want to look for:
>>
>> $ grep BLK_DEV_RAM .config
>> CONFIG_BLK_DEV_RAM=y
>> CONFIG_BLK_DEV_RAM_COUNT=16
>> CONFIG_BLK_DEV_RAM_SIZE=4096
> 
> That directory (full path is
> /home/pauld/yocto-atom/build/tmp/work/cedartrail_nopvr-poky-linux/linux-yoct
> o-3.0.32+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+1e79e03d115ed177882
> ab53909a4f3555e434833-r4.1/linux-cedartrail-nopvr-standard-build) is
> completely empty. Yes, I know it's supposed to be a hidden file. This is
> right after completing a "successful" build of core-image-sato.


Are you building with the rm work setting? Otherwise, that should not be
empty unless you have more than one linux-yocto* directory and the other
is populated.

If not, verify rm work is not on and just build the kernel:

$ bitbake linux-yocto -c cleansstate
$ bitbake linux-yocto

>> Well, see my comment above, the kernel was about as explicit as it can
>> be - it didn't find a block device to mount as root. However, when
>> debugging kernel issues, it is important to be able to record the log.
>> You have a serial port console configured in your kernel parameters
>> (console=ttyS0,115200), it would be a good idea to connect to 
>> the serial
>> console and capture the boot messages to a file using minicom, screen,
>> or similar.
> 
> Done. Attached.
> 

Nothing in there suggests any other failure than it just didn't find a
block device. I didn't see anything in there about loading the initrd
though (I think there usually is...). Check to make sure the initrd file
does indeed exist on the boot drive.

>> Another common problem is the hddimg format itself and conflicts with
>> certain firmware. You can try the zip image format as described in
>> poky/README.hardware under the "Intel Atom based PCs and 
>> devices" section.
> 
> Tried that, same result.


That would hint at either a problem with the initrd or a lack of support
in the kernel.


>> Finally, usb sticks are terrible about just being bad. Many 
>> of them are
>> literally write once devices. They're fine so long as you don't fill
>> them up, which works for shuffling small files around, but 
>> writing full
>> OS images to them tends to kill them in a hurry. Try with a 
>> brand new stick.
> 
> Tried a fresh one, same results. I'm using a 1GB eUSB SSD, which is
> basically an industrial grade flash drive that uses SLC memory, on a card
> that sits on the mobo USB header. The image doesn't come close to filling it
> up. I've successfully done a live-image boot of full Ubuntu from the 2GB
> version of the same drive (same vendor).
> 
> It smells to me like that first problem is the real one. Should I try a
> clean rebuild? Is there anything I can do short of nuking the entire build
> tree with its downloads to ensure a clean rebuild? Or would that be like
> waving a dead chicken over it?

The nuke is the big hammer, try the slightly more subtle linux-yocto
rebuild without rm-work as described above.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

