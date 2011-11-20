Return-Path: <jeff@kokofitclub.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17ECDE006BF
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2011 04:57:54 -0800 (PST)
Received: by vcbfk13 with SMTP id fk13so6689239vcb.35
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2011 04:57:54 -0800 (PST)
Received: by 10.52.30.130 with SMTP id s2mr11228170vdh.55.1321793874079;
	Sun, 20 Nov 2011 04:57:54 -0800 (PST)
Received: from [10.0.1.6] (c-24-63-246-141.hsd1.ma.comcast.net.
	[24.63.246.141])
	by mx.google.com with ESMTPS id c7sm9724781vdh.12.2011.11.20.04.57.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 20 Nov 2011 04:57:53 -0800 (PST)
References: <A4579E89-DAD0-4BA2-BD7D-976040983CBF@kokofitclub.com>
	<1321785120.18926.3.camel@ted>
In-Reply-To: <1321785120.18926.3.camel@ted>
Mime-Version: 1.0 (1.0)
Message-Id: <B6DFC1CF-2AF2-4A3D-B5A0-8CA0520664A0@kokofitclub.com>
X-Mailer: iPhone Mail (9A405)
From: Jeffrey Moore <jeff@kokofitclub.com>
Date: Sun, 20 Nov 2011 07:57:47 -0500
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?UmU6ICfigKZiekltYWdlJzogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeSB3aGVuIGJ1aWxkaW5nIGNvcmUtaW1hZ2UtbWluaW1hbC1pbml0cmFtZnM=?=
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
X-List-Received-Date: Sun, 20 Nov 2011 12:57:55 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Richard.  Thank you for the response.  This is with the Edison release.  I=
 even pulled down a fresh copy to doubly make sure I didn't inadvertently co=
rrupt any thing.  I've been building all different types of images with no p=
roblem at all.  This image type of "minimal-initramfs" is the only problem t=
hat I have encountered.  I am using Ubuntu 11.10 32 bit for my host but that=
 is probably immaterial.

Jeff



On Nov 20, 2011, at 5:32 AM, Richard Purdie <richard.purdie@linuxfoundation.=
org> wrote:

> On Sat, 2011-11-19 at 16:20 -0500, Jeffrey Moore wrote:
>> I have a problem in  that the kernel bzImage is apparently not being
>> built.  Here is my error:
>> | install: cannot stat
>> `/media/jwm/minimal-initramfs/tmp/sysroots/crownbay-noemgd/kernel/bzImage=
': No such file or directory
>> | ERROR: Function 'build_boot_bin' failed
>> (see /media/jwm/minimal-initramfs/tmp/work/crownbay_noemgd-poky-linux/cor=
e-image-minimal-initramfs-1.0-r0/temp/log.do_bootimg.25097 for further infor=
mation)
>> NOTE: package core-image-minimal-initramfs-1.0-r0: task do_bootimg:
>> Failed
>> ERROR: Task 9
>> (/home/jeff/poky-edison-6.0/meta/recipes-core/images/core-image-minimal-i=
nitramfs.bb, do_bootimg) failed with exit code '1'
>> ERROR:
>> '/home/jeff/poky-edison-6.0/meta/recipes-core/images/core-image-minimal-i=
nitramfs.bb' failed
>>=20
>> My setup:
>>=20
>> vanilla, out of the box poky setup with the addition of:
>>=20
>> meta-intel layer for meta-crownbay  in the bblayers.conf=20
>> &=20
>> MACHINE ?=3D "crownbay-noemgd" in the local.conf
>>=20
>> bitbake -k core-image-minimal-initramfs
>>=20
>> If I build any other type of image such
>> as: core-image-minimal-mtdutils or core-image-minimal, everything is
>> fine and I get a clean build.  Any help would be appreciated.
>=20
> I'm chasing a bug that looks very like this at the moment. I don't have
> a proper fix for it yet but you could try and "bitbake linux-yocto -c
> populate_sysroot -f" and then try and build your image again which
> should work around the problem.
>=20
> I'm assuming this is with master rather than the release and you might
> have rm_work enabled?
>=20
> Cheers,
>=20
> Richard
>=20
>=20

