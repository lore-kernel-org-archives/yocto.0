Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91D83E014B4
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2013 02:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=0RzkaTJ1sHEVgSuDTAc9eAayOYoPxxTibgnmeBlLA6c=; 
	b=d3QAmnzj1vUiBSjMp9YFpTTBkeYw61kqlAjBzm+RbJMXBlPAxkoAZybBA89CyPVl0Ounr8Gkm7tT7sI4RgI+W8+EEnF5hCdTVthTkQ4h54eiIZO780xCZ/LlPkxYlFMa;
Received: from [109.224.129.17] (port=40477
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UIxsr-000ZTF-KF; Fri, 22 Mar 2013 09:03:33 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <C797901E086446C2A1E1C4637ED4262B@PAULD>
Date: Fri, 22 Mar 2013 09:03:33 +0000
Message-Id: <8B53A185-C840-438C-B74B-D5267DD14F10@keylevel.com>
References: <C797901E086446C2A1E1C4637ED4262B@PAULD>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: yocto@yoctoproject.org
Subject: Re: Problem creating bootable flash
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
X-List-Received-Date: Fri, 22 Mar 2013 09:03:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 22 Mar 2013, at 07:25, Paul D. DeRocco wrote:

> I've successfully (theoretically) built =
core-image-base-cedartrail-nopvr. I
> plugged a 1GB eUSB SSD onto one of my USB headers, Ubuntu automounted =
the
> empty drive /dev/sdb1 as /media/somethingorother, I unmounted it, and =
then
> followed the instructions on the Yocto page for the cedartrail BSP: I =
used
> dd to copy the image to /dev/sdb1, synced, ejected it, and rebooted. I =
got
> the dreaded "Error loading operating system" from the BIOS.
>=20
> Waitaminnit, I thought, isn't this image supposed to include the =
partition
> table, too? After all, the example given in the instructions showed =
the
> image being copied to /dev/sdf, not sdf1. I went back into Ubuntu, saw =
that
> /dev/sdb1 had been mounted as /mnt/boot_, and it contained initrd and =
the
> four other files. I unmounted it, and this time used dd to copy the =
image to
> /dev/sdb, synced, ejected it, and rebooted. This time, the BIOS =
wouldn't
> recognize the drive at all, so all I could do was go back into Ubuntu.
>=20
> Now, Ubuntu had mounted /dev/sdb as /mnt/boot_, and it still contained =
the
> five files. That suggests to me that the image doesn't contain a =
partition
> table, and that there is now no partition table on this drive, just a =
single
> file system, like an old floppy. I ran parted, end it says the =
partition
> table type is "loop", with a single FAT16 partition running from 0.00B =
to
> 1028MB, the entire drive. Is "loop" just a name for an implied =
partition
> table that lists the entire drive, when there is no actual table?
>=20
> Apparently, my BIOS (a modern Intel D2700MUD Atom mobo) looks at this =
USB
> drive and decides it isn't bootable. So what's the right way to do =
this?

I've had a few issues using the Cedartrail PRV images on an eUSB drive =
on an DN2800MT.

I'm not installing the same way as you:

1) I use dd to copy the hddimg to a USB stick;
2) I use this to boot the system using the 'install' syslinux item (have =
to be quick at boot time to catch the prompt).

Everything worked great using a mini-PCIe drive, but was failing to =
install to the eUSB most of the time as the drive wasn't detected - I =
expect it takes too long to be ready before the install script gives up. =
A couple of changes to the script fixed this and the image would then =
install.

However, it wouldn't boot. I found two issues:

1) The install script configured grub to use sdb. This was where the =
eUSB was when the script ran, but it's sda when used as the boot device. =
Another install script fixed this.
2) I also needed to add 'rootwait' to the kernel command line or else =
the rootfs wasn't ready at boot time, resulting in a kernel panic.

The issues with the installer are recorded in the bug tracker at =
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4059.

It's possible that you may need 'rootwait', but I'm not sure anything =
else that I found is related to what you're seeing.

Can you try dd'ing the image on to a USB stick to see if that will boot? =
If it does, that would at least show that the image is good and it's the =
eUSB that is causing the pain, as it was for me.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




