Return-Path: <autif.mlist@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEFA6E00B0A
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 06:16:14 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so469169vbb.35
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 06:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=6rMP+/U6U3sXeoseBPFSHr6ruywriPA/Jw0yIdP6+DY=;
	b=Sf7aqz3kn9PTCc8w3Wbzv+PKFpMUiQozg2sQHzowy0zC2yYKuxjMjCSqLO6T9iehaw
	IkG9OcUEUXNP1fz1ef0T6wjHFwXvyzsP8bD9dHzzmL0mIitkoHsdjDYuAWFxlBxKYnz6
	loW6Wvh5pi5osBXLr5m91HmBtQbVE8L37+huY=
MIME-Version: 1.0
Received: by 10.52.22.46 with SMTP id a14mr13766109vdf.102.1327068974436; Fri,
	20 Jan 2012 06:16:14 -0800 (PST)
Received: by 10.52.108.37 with HTTP; Fri, 20 Jan 2012 06:16:14 -0800 (PST)
In-Reply-To: <CANFv2En8WfmoBpzqRYU9hhOH9aCMGTBgML41Ee+uaXc1MJrNjg@mail.gmail.com>
References: <CANFv2En8WfmoBpzqRYU9hhOH9aCMGTBgML41Ee+uaXc1MJrNjg@mail.gmail.com>
Date: Fri, 20 Jan 2012 09:16:14 -0500
Message-ID: <CADzUK1LK3+P7kiP-QDG6zB3H3sAtnBcUnGtfkju4vJXg=U+1fA@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: core-image-sato-directdisk
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
X-List-Received-Date: Fri, 20 Jan 2012 14:16:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I have been using core-image-sato and core-image-sato-sdk on the hard
disk on Intel Atom (crownbay in my case).

I perform the following broad steps:

1) have a suitable partition on the disk - say partition #3
2) this partition will show up as sde3 on my host machine and sda3 on the a=
tom
3) mkfs.ext3 /dev/sde3
4) mount /dev/sde3 /mnt/target
5) mount -o loop tmp/deploy/images/core-image-sato-sdk.ext3 /mnt/target-tex=
t3
6) cp -a /mnt/target-ext3/* /mnt/target
7) grub-install --recheck --root-directory=3D/mnt/target /dev/sde

If grub install passed, I copy the following to /mnt/target/boot/grub/grub.=
cfg

set default=3D"0"
set timeout=3D"30"

menuentry 'Yocto SDK' {
	insmod part_msdos
	insmod ext2
	set root=3D'(hd0,msdos3)'
	linux /boot/bzImage root=3D/dev/sda3
}


Thats it - this boots for me.

Eventually, when I move to some other media, I will have to
investigate other bootloaders - like syslinux.

All the best, do tell if this works.


On Thu, Jan 19, 2012 at 7:51 PM, James Abernathy <jfabernathy@gmail.com> wr=
ote:
> The README.hardware file in the poky directory talks about creating image=
s
> on 2 types of disk for the Atom based PCs like the n450. The one I've
> successfully tested is the core-image-sato on a USB key.=A0 I have no luc=
k
> with the directdisk method because the image recipe doesn't exist for
> core-image-minimal-directdisk or core-image-sato-directdisk.
>
> Is there a way to put Yocto on the hard drive on a Atom PC?
>
> Jim A
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

