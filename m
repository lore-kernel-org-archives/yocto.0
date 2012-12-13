Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B986E011CC
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 23:55:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Dec 2012 23:55:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,273,1355126400"; d="scan'208";a="263385405"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.13.105])
	by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2012 23:55:32 -0800
Message-ID: <50C989F4.90004@linux.intel.com>
Date: Wed, 12 Dec 2012 23:55:32 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
	<alpine.DEB.2.02.1212121541120.14335@oneiric>
	<CAHUNapTPuUUUyVbhoGQAX9jSCGwEop9nyjevXGo0FbQ1PXWXqA@mail.gmail.com>
	<alpine.DEB.2.02.1212121756210.30220@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212121756210.30220@oneiric>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: per-image ROOTFS sizes
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
X-List-Received-Date: Thu, 13 Dec 2012 07:55:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/2012 03:16 PM, Robert P. J. Day wrote:
> On Wed, 12 Dec 2012, Trevor Woerner wrote:
>
>> On Wed, Dec 12, 2012 at 3:46 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>>> so what happens if you try to set the appropriate variables above?
>>
>> When Yocto creates a VMDK, it creates 2 partitions:
>> - an MSDOS partition for the syslinux stuff
>> - the ext{3,4} partition of your root image
>>
>> When it then shmushes these two together into 1 file, it has to make
>> sure all the sizes are set correctly as per the information in the
>> disk's partition table. That's what all these calculations are doing
>> (I recognize it from similar work in my own scripts).
>>
>> Personally I have my own approach that can use either LILO or syslinux
>> for booting x86 (it can also create bootable ARM images with the
>> appropriate uboot/mlo); neither of the x86 solutions require a
>> separate MSDOS partition. Hopefully I'll find some time to examine how
>> Yocto is doing things and perhaps integrate my own findings into the
>> broader project(?).
>>
>> (please see https://github.com/twoerner/qemu-image-builder)
>>
>> I believe Yocto calculates the sizes (using IMAGE_ROOTFS_SIZE) from
>> code in poky/meta/classes/image_types.bbclass, which is also run for
>> the VMDK's calculations too.
>
>    and here's where i'm confused.  i'm *assuming* that the
> image-vmdk.bbclass file defines the creation of vmdk images, yes?  but
> that class file inherits directly only boot-directdisk.bbclass, and if
> i look in that class file, i don't see any further inherits that might
> process IMAGE_ROOTFS_SIZE.  i just see hardcoded calculations that
> build an image based on actual rootfs directory size.
>
>    so what am i missing?
>
Some serious magic!  It took me a while to reload my cache on this one.

All strapped in because here we go!

So you have selected the types of images you want to build by add it's 
type to IMAGE_FSTYPES, of which you can have multiple types.

When the do_rootfs() is run for an image, there is a call into 
image_types.bbclass via the ${@get_imagecmds(d)}, which returns a list 
of cmds to execute to create the various images selected via the above 
IMAGE_FSTYPES.  Of note here is that if vmdk or live is select, but not 
ext3 (soon to be ext4 we hope), then ext3 will be added to the types 
list, and vmdk and/or live will be removed.

in the get_imagecmds code, you can see that the OVERRIDES are updated 
locally to include the filesystem type, so that correct IMAGE_CMD can be 
selected via overrides and set into $cmd while the compressed version is 
set to $ccmd, then the runimagecmd is added to the cmds list (different 
than cmd, yes a little confusing).

runimagecmd is here the size computation occurs and the IMAGE_CMD is run 
via $cmd. Since we are not out side the get_imagecmds() context and do 
not have the localdata that set filesystem type overrides we won't seem 
them and beside runimagecmd will never get called for a vmdk or live 
image type! The underlying filesystem for those is the ext3 fs type.

Now that the rootfs has been created in the correct fs type (ext3) it 
mething to the TOTALSIZE and END3 computations in this code 
fragment:needs to be converted to vmdk, this is done via the 
image-vmdk.bbclass which is optionally inherited in image.bbclass.  This 
class slips the do_vmdkimg() function after do_bootdirectdisk, which is 
needed to get the right disk leve partitioning. The image-vmdk.bbclass 
inherits boot-directdisk.bbclass to get it incorporated correctly.  This 
is where Trevor correctly noted that that we are doing the multiple 
partition approach.

SO we cycle back to the initial question which is how to have 2 
different sizes for ext3 vanilla images vs a fixed size for the vmdk, 
right now that's really hard! Since we create an ext3 (4) for including 
mething to the TOTALSIZE and END3 computations in this code 
fragment:into the vmdk, that's where the sizing occurs.

What I think you are asking for is create a default sized ext3 and then 
allow the partition to be resized in the boot-directdisk partitioning 
code, since that's where the extra space would get accounted for.

Possibly we could add something to the TOTALSIZE and END3 computations 
in this code fragment:

         ROOTFSBLOCKS=`du -Lbks ${ROOTFS} | cut -f 1`
         TOTALSIZE=`expr $BLOCKS + $ROOTFSBLOCKS`
         END1=`expr $BLOCKS \* 1024`
         END2=`expr $END1 + 512`
         END3=`expr \( $ROOTFSBLOCKS \* 1024 \) + $END1`

That code feeds into the parted command, the dd that happens after that 
would have to change since we are dd'ing a ext3 and it does not know it 
has more space, this is the tricky part!  More thought is required, 
maybe a single malt (yes I was jealous).

Anyway, I hope have I not thoroughly confused everyone at this point.


Sau!



> rday
>

