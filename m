Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21FD6E0086E; Fri,  9 Jan 2015 01:32:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C64E004D6
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 01:31:49 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id r20so1186272wiv.0
	for <yocto@yoctoproject.org>; Fri, 09 Jan 2015 01:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=KqnZnTQDMObnkNnIoDnr+Ym1Fvuxh7z8zyB9FPgMJlg=;
	b=C4rxVlKtgsb+xUez/W4EWbBMZ/jsL6mfaPUO9dNLTkIoiUvXd9nVpIuEMuePwQVnOB
	0npH7/kKMwLwfmwCsCrEAtwsjvmGIXviThzaNG+1I+1lVuWo4ECwHellmjfv/2JCsuJ6
	yFXTtYy+hETraOR5Is4cMXTGBa0aKZqRsLcDK8VgWPsYktoI0x9+oEI6eKeDj71ifXuC
	vFFl7g6MjhkOWnxYYVe1p2OliIj8EvLx58bTRdwdVyr5Xq//NbAkthDhf4K1jzklxMDm
	uJrjGj4/NwaNW3zsRMyMUv8zyg1NJempvQLF8YC8mHiqjUjfHTgZsbet2BOleco3hhvC
	3JSg==
X-Received: by 10.194.206.70 with SMTP id lm6mr17566755wjc.30.1420795907077;
	Fri, 09 Jan 2015 01:31:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.179.137 with HTTP; Fri, 9 Jan 2015 01:31:26 -0800 (PST)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Fri, 9 Jan 2015 10:31:26 +0100
Message-ID: <CAEfap_Dj_XDpqYcOfHmf1kDqWoM-pzKvnaH-=ZvDt7H_PvLTaA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Atom-pc, usb installation - NO BOOTABLE DEVICE
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
X-List-Received-Date: Fri, 09 Jan 2015 09:32:03 -0000
Content-Type: multipart/alternative; boundary=047d7bb70b6656fa8f050c34d333

--047d7bb70b6656fa8f050c34d333
Content-Type: text/plain; charset=UTF-8

Hi,

The following is the case:
1) atom-pc with ssd 80 GB hard drive(the only one, no optical, no usb,
etc.) as a target device
2) core-image-sato bitbaked and moved to usb device successfully
3) usb 'install' to atom-pc successfull (so the install script says)
4) after removing the usb device, pressing enter the boot says NO BOOTABLE
DEVICE

WHY?

At the same time, ISO image (generated at the same bitbake run) is working
in virtual box like a charm. 'Install' was successfull and booting fine - i
get GRUB menu with one 'Linux' entry as expected.

On the Atom-pc this is not working. So something has to be missing. Maybe
you will have a clue.
Here are the details:
The SSD HDD is /dev/sda  with the partition table:
/dev/sda1 - boot
/dev/sda2 - rootfs
/dev/sda3 - swap
there is no asterix at boot partition

under /dev/sda1/grub there is grub.cfg with:
menuentry "Linux" {
   set root=(hd0,1)
   linux /vmlinux root=/dev/sda2 rw
}
  - so first HDD, first/boot partition
  - it points to /vmlinuz and /dev/sda2
It looks fine for me.
I already tried to dd if=/dev/zero of=/dev/sda bs=4M, and 'install' from
usb again, but no luck.
I already tried to put asterix on the boot partition, but than BOOT gets me
to *grub rescue>*

If you have any ideas, where to look for, please let me know.

thank you and best regards
simon :-)

--047d7bb70b6656fa8f050c34d333
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br><br></div><div>The following is the case: <br=
></div><div>1) atom-pc with ssd 80 GB hard drive(the only one, no optical, =
no usb, etc.) as a target device<br></div><div>2) core-image-sato bitbaked =
and moved to usb device successfully<br></div><div>3) usb &#39;install&#39;=
 to atom-pc successfull (so the install script says)<br></div><div>4) after=
 removing the usb device, pressing enter the boot says NO BOOTABLE DEVICE<b=
r><br></div><div>WHY?<br><br></div><div>At the same time, ISO image (genera=
ted at the same bitbake run) is working in virtual box like a charm. &#39;I=
nstall&#39; was successfull and booting fine - i get GRUB menu with one &#3=
9;Linux&#39; entry as expected.<br><br></div><div>On the Atom-pc this is no=
t working. So something has to be missing. Maybe you will have a clue. <br>=
</div><div>Here are the details:<br></div><div>The SSD HDD is /dev/sda=C2=
=A0 with the partition table: <br></div><div>/dev/sda1 - boot<br></div><div=
>/dev/sda2 - rootfs<br></div><div>/dev/sda3 - swap<br></div><div>there is n=
o asterix at boot partition<br></div><div><br></div><div>under /dev/sda1/gr=
ub there is grub.cfg with:<br></div><div>menuentry &quot;Linux&quot; {<br>=
=C2=A0=C2=A0 set root=3D(hd0,1)<br></div><div>=C2=A0=C2=A0 linux /vmlinux r=
oot=3D/dev/sda2 rw<br></div><div>}<br></div><div>=C2=A0 - so first HDD, fir=
st/boot partition <br></div><div>=C2=A0 - it points to /vmlinuz and /dev/sd=
a2 =C2=A0 <br></div><div>It looks fine for me.<br></div><div>I already trie=
d to dd if=3D/dev/zero of=3D/dev/sda bs=3D4M, and &#39;install&#39; from us=
b again, but no luck.<br></div><div>I already tried to put asterix on the b=
oot partition, but than BOOT gets me to <i>grub rescue&gt;</i><br></div><di=
v><br>If you have any ideas, where to look for, please let me know.<br></di=
v><div><br></div>thank you and best regards<br>simon :-)<br></div>

--047d7bb70b6656fa8f050c34d333--
