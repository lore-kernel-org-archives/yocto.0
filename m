Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B33E00499
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2013 15:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=wwyzyFg8t68YC6PxDIwgzulzXw48t5hwMNE4uZk6K4c=; 
	b=o9eoqULerrcm1poB3x704Zl5SOpx2S+QRlJKiLrtV1dKdD2UHV3edZXSRZgVpm6nL7lQtN9XHdS8Ru0s+cme4qxmkB9Uv2y+MaDIPWUP0x2vupHktXPlYeeRIW0tQ8zO;
Received: from [109.224.129.17] (port=43076
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UMQZX-001BU3-L3; Sun, 31 Mar 2013 23:17:55 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <58D3047F74434B278AB3C73C399FF6F1@PAULD>
Date: Sun, 31 Mar 2013 23:17:56 +0100
Message-Id: <61CB2848-B7F6-4C0B-8644-65C0CD0DD6F8@keylevel.com>
References: <C797901E086446C2A1E1C4637ED4262B@PAULD><8B53A185-C840-438C-B74B-D5267DD14F10@keylevel.com>
	<09AEF6051AA14B28BF640910EA131219@PAULD>
	<58D3047F74434B278AB3C73C399FF6F1@PAULD>
To: Paul D. DeRocco <pderocco@ix.netcom.com>
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
X-List-Received-Date: Sun, 31 Mar 2013 22:18:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 29 Mar 2013, at 23:15, Paul D. DeRocco wrote:

> I'm still having no luck booting my system. I've built
> core-image-base-cedartrail-nopvr, with only one modification (added =
samba
> from OE), and I'm trying to boot it on an Intel DN2800MT mobo from a =
1GB
> eUSB SSD. Here's what I've done:
>=20
> Opened gparted, selected /dev/sdb, which is the SSD.
>=20
> Created a fresh MSDOS partition table.
>=20
> Selected the 979MB unallocated space, created a new 949MB FAT16 =
partition.
>=20
> Selected the remaining 30MB unallocated space, created a new FAT16
> partition, which will hold my application data.
>=20
> Invoked the pending operations.
>=20
> Selected the first partition, set the "boot" flag.
>=20
> Exited gparted.
>=20
> In terminal, went into my images directory, and did
>=20
>    sudo dd if=3Dcore-image-base-cedartrail-nopvr.hddimg of=3D/dev/sdb1

This should end
   of=3D/dev/sdb

The hddimg file includes the partition info and both partitions, so you =
don't need any of the other steps.

> After a few seconds, it finished.

I'm assuming you did a 'sync' or similar at this point.

> I then unplugged and plugged the SSD from
> the USB header, and it automounted the two partitions and popped up =
two
> windows showing their contents. Closed the second one, and examined =
the
> first one. It contained the usual five files for booting a live image.
>=20
> Opened syslinux.cfg in an editor. It showed that syslinux is =
configured to
> use a serial port, which is wrong for my system. Also, it showed two =
boot
> choices, one called "boot" for running the live image, and the other =
called
> "install".
>=20
> Eventually, I'll get the build to supply a custom syslinux.cfg, but =
for now,
> I figured I'd just manually edit it. Since I want it to interact with =
the
> screen and keyboard, and not a serial port, I removed "serial 1 =
115200". The
> default is supposedly "console 1", which I would expect would use the =
video
> and keyboard from the text mode it inherits from the BIOS. I also =
removed
> the "install" section.
>=20
> The options on the minimal boot kernel included "console=3DttyS0,115200"=
 and
> "console=3Dtty0 video=3Dvesafb vga=3D0x318". Since I don't know what =
my mobo
> supports for VGA video, I figured I'd just let it use text mode, so I
> replaced them both with just "console=3Dtty0". The final contents of
> syslinux.cfg were:
>=20
>    ALLOWOPTIONS 1
>    DEFAULT boot
>    TIMEOUT 10
>    PROMPT 1
>    LABEL boot
>    KERNEL /vmlinuz
>    APPEND initrd=3D/initrd LABEL=3Dboot root=3D/dev/ram0 console=3Dtty0
>=20
> I did a "Safely remove" on the device, unplugged it, plugged it into =
my test
> motherboard, and fired it up.
>=20
> I went into the BIOS boot menu, to make sure the BIOS recognized it as =
a
> bootable device, and it did. I hit Enter to boot it. All I got was a
> standard black VGA text mode screen with a blinking gray cursor. At =
that
> point, Ctrl-Alt-Del wouldn't reboot.
>=20
> If my device wasn't bootable, I'd expect the BIOS to complain. If it =
was
> still in the BIOS, I'd expect to be able to reboot with Ctrl-Alt-Del. =
If it
> actually ran ldlinux.sys, and yet didn't properly use the video, I'd =
expect
> it to time out and boot the live image. But I don't see any evidence =
that
> it's doing that.

I think you've got a bootable device because you configured it to be, =
above.
You shouldn't need to do this as the 'dd' should set it all up for you.

>=20
> Does my syslinux.cfg look correct for showing the syslinux stuff on =
the text
> mode output? Do my kernel options look correct for getting the live =
image
> boot kernel to talk to the screen in text mode? Can anyone see =
anything else
> that might be wrong?
>=20
> --=20
>=20
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




