Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C252E00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 12:46:36 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:45900 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TitCN-0005jO-Bi; Wed, 12 Dec 2012 15:46:35 -0500
Date: Wed, 12 Dec 2012 15:46:31 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Trevor Woerner <twoerner@gmail.com>
In-Reply-To: <CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212121541120.14335@oneiric>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Wed, 12 Dec 2012 20:46:36 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 12 Dec 2012, Trevor Woerner wrote:

> Hi Darren,
>
> On Wed, Dec 12, 2012 at 2:59 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> > On 12/11/2012 01:05 PM, Trevor Woerner wrote:
> >> Are per-image ROOTFS sizes (i.e. IMAGE_ROOTFS_SIZE_<image>) still
> >> supported?
> > Interesting, I haven't tried myself. Have you tried and run into an issue?
>
>
> Yes. I had been trying to figure out why my:
>
>     IMAGE_ROOTFS_SIZE_vmdk = "500000"
>
> line in my config file wasn't working when I found the link I provided
> earlier. Right now all I can say is that it doesn't work for _vmdk
> specifically.

  since i was going to play with vmdk soon, i took a look at this and
from a position of extreme ignorance, i can see image-vmdk.bbclass
(which i'm going to assume is the class being used) which contains:

#inherit image-live
inherit boot-directdisk

create_vmdk_image () {
        qemu-img convert -O vmdk ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.hdddirect ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.vmdk
        ln -s ${IMAGE_NAME}.vmdk ${DEPLOY_DIR_IMAGE}/${IMAGE_LINK_NAME}.vmdk

}

so my *guess* is that any sort of rootfs size calculation has to come
from boot-directdisk.bbclass, but if you look there, there's no
apparent reference to IMAGE_ROOTFS_SIZE.  what you see are numerous
references to BLOCKS and ROOTFSBLOCKS and BOOTDD_EXTRA_SPACE and so
on, with:

        ROOTFSBLOCKS=`du -Lbks ${ROOTFS} | cut -f 1`
        TOTALSIZE=`expr $BLOCKS + $ROOTFSBLOCKS`
        END1=`expr $BLOCKS \* 1024`
        END2=`expr $END1 + 512`
        END3=`expr \( $ROOTFSBLOCKS \* 1024 \) + $END1`

        echo $ROOTFSBLOCKS $TOTALSIZE $END1 $END2 $END3
        rm -rf $IMAGE
        dd if=/dev/zero of=$IMAGE bs=1024 seek=$TOTALSIZE count=1

        parted $IMAGE mklabel msdos
        parted $IMAGE mkpart primary fat16 0 ${END1}B
        parted $IMAGE unit B mkpart primary ext2 ${END2}B ${END3}B

so what happens if you try to set the appropriate variables above?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

