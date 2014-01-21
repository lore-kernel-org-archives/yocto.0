Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BB36E0087A
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 02:04:53 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id uy5so4226811obc.33
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 02:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9xRusCQAKKUtE10Nbv+R00mN7f+HG2IT0CL4Rayn5sQ=;
	b=dI/PytbZSzRDbSP2HpF4pO+E0FXjyjZpAH9HMRt6QQmbG0swATR2kSMILwOjUAEL7r
	tPJHdc4Vkig2BcO27ymtLO/QUOfd0znBohxj8DBanmE5YFCUemaTVzr4kj3dPIGK9FCT
	mqDdb744kl/XTgCJjEzS+2BJqZm1j7jQPVFn7dCgd1KNlNgKzrSH4CMFVCMwWFqWp9Jv
	u2S8fevVppi1Jj9NhyXFh1zNpbTktESL8qhCTXErmGkJcU8QscTd73Pgq/4Cmsxg0WJO
	OEEkEJAQl6+jDTsV+MURgIlZj2cPB4I0eFC5tflAWgF2ofH9evfyYMy2IpbHNAuvk8Lp
	Rcrw==
MIME-Version: 1.0
X-Received: by 10.60.83.134 with SMTP id q6mr7416288oey.6.1390298692358; Tue,
	21 Jan 2014 02:04:52 -0800 (PST)
Received: by 10.182.228.81 with HTTP; Tue, 21 Jan 2014 02:04:52 -0800 (PST)
Date: Tue, 21 Jan 2014 11:04:52 +0100
Message-ID: <CAFyqS9qExjBN0n51k7tibPZ6GFEdzghmr7c5OHehht58HXjCuw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: busybox and mdev, how does it really work?
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
X-List-Received-Date: Tue, 21 Jan 2014 10:04:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. We have a system based on the poky-tiny distro and we use mdev as
our device manager, or at least we do not set it to something at all
in the distro .conf:

# Use tmpdevfs and the busybox runtime services
VIRTUAL-RUNTIME_dev_manager = ""
#VIRTUAL-RUNTIME_login_manager = "tinylogin"
#VIRTUAL-RUNTIME_init_manager = ""
VIRTUAL-RUNTIME_keymaps = ""

and busybox is configured for have CONFIG_MDEV support.
Other from this we have not added or installed any specific mdev packages.

Things looked ok for a while, /dev was populated properly after boot
and all necessary file systems / mount points were created.
We were using an ext2 fs in RAM for mounting /.
Now, we made a change to instead use a CPIO image compressed using xz
and enabled the support in kernel to handle this.
This is when our problems started :( Suddenly our system booted with
just a very minimalistic /dev folder, containing basically only a few
of the devices probed at boot time.
When checking /etc/init.d we discovered that the mdev script actually
is not part of our image at all? In fact, it never was, even when we
used the ext2 boot!
The only way I could see how this script may be added to the image was
to install busybox-mdev, but that resulted in even more problems.
Now our mtd partitions could no longer be accessed!? They were visible
in /dev but not found by tools like flashcp. If I reduced the mdev
script to only do 'mdev -s' it all seems to work, and /dev looks like
it did before the change of ram boot mode.
My guess here is that the re-mounting of /dev that is performed as
part of the mdev init script destroys something? Also, there seems to
be a mess among the scripts executed at boot time with respect to what
is mounted and not.
We have the mountall.sh script, devpts.sh, mdev and a few others that
all seems to think they need to mount core file systems, but nothing
besides mdev seems to mount /dev? How was this done before adding
mdev?
Obviously it worked well without it, but when moving to CPIO.xz it
seems to be mandatory, but requires changes to work as expected?

So, the questions now are:

- how was /dev populated before when there was no /etc/init.d/mdev?
- why does adding /etc/init.d/mdev corrupt our /dev filesystem and
render some of our devices unusable?
- should you really need to explicitly add busybox-mdev? And if so, is
it expected that we need to change the init script?

Anyone that could describe how this is supposed to work, and what we
probably did wrong?
Seems a little bit too "magical" right now, and it would really feel a
lot better if this could be explained.

Thanks.
Hans

Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "SUSE-LINUX-11"
TARGET_SYS        = "arm-poky-linux-gnueabi"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = "armv7a vfp cortexa9"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "dora:75bed4086eb83f1d24c31392f3dd54aa5c3679b1"
meta-oe           = "dora:513e7ca20ddd0a5c3b649bf292a67c3e0473d3a8"

