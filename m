Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9F7BE00D20; Sat, 23 Jul 2016 14:31:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A408E00D0A
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 14:31:17 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id q83so133268592iod.1
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 14:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=w5lfnkXGw49SvnZSik+L6seU0Q6qmKttfFVVKASl7IE=;
	b=tUNzBm6hh1yh1Ty4X2c9CxYI/inhJrRud6qbmvXyzUTEpe4tFLXZgEdTN+NQ08yvym
	pgUAy5XRKM5OGJx2XHc9q+SR4ravDsNlUGC5u8Do/udXYsBeSEgqmiM+Yh/AKB+MoCOw
	rScSV+jBgNoI7U9zO53ZI1K6ji4SQPuYS8aiw94vzLXaDv5HXVxGVNngLksCZtNa7XW+
	vjTBY/OdHlVYT+7j7SQqvLjoh3EIjvBNE62HDvDQ1bbIB6QDDLqzmBT3UpS5GWXWV6Ep
	JNE+kH7d60j8GE3Cvu7wG5M76Sox9WRnI5kCe/gREbiv7UYjdqTKnW9eJ7IzAkt5v3k4
	cgwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=w5lfnkXGw49SvnZSik+L6seU0Q6qmKttfFVVKASl7IE=;
	b=j3FQJkZulLDHtqwSyIZmQqkhtRQd1uKhtARDh4mVPmzkRRik+Wol7us3Oh9pfholke
	8aNRyUz09nlL+B52OmHM5fT0wsExeanesMAWcpix+t0PTv4mmoXE9oG1jvw+AvRE65+4
	hfgafsnnhXFaaB55P5kQGaHmI93fStiJQkNhPleD2A7ssQp2ss2wQ0tSF5kTbbs+wNxp
	7pFByZ9uU3Dm53csiuZSbL5Qn1Ijz76S3kcxYwlU7uPtTW250SzItM83MN5h5EZJwHWr
	6eglCTcV8VaCK+AxGW5mk392sACC41XPmHE0IejgDACD3psOC/TZn3mqX6rUVw8FP+tG
	Ua5A==
X-Gm-Message-State: AEkoouvTg21uogrYr8Rx7gePXrjT990TxsrN7rzeV3bb8v1zReihvXpvFgYfNwSx8nnhKaK9wPdwsRI+Y7a/yg==
X-Received: by 10.107.1.20 with SMTP id 20mr12882135iob.74.1469309477173; Sat,
	23 Jul 2016 14:31:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Sat, 23 Jul 2016 14:30:57 -0700 (PDT)
In-Reply-To: <CAEfap_C0qC4vY4nEHzyns4z+hy4FSA7ADv_OCEnbwVyn5+mODQ@mail.gmail.com>
References: <CAEfap_ADomjxhF0nEfJFwvWZ04bvJZ=+puboRLzX+4hAJrL4eg@mail.gmail.com>
	<BFCE6CA4-9E2A-4212-8F5A-4B31439AB944@gmail.com>
	<CAEfap_A4horxvBuf+awOrPRNJajfeX18+qon8edPeY-syeu4VQ@mail.gmail.com>
	<CAMKF1spEA3hWMUv5+Lob2xvGSuQJFPkhmN0PdDTurdftJGwF3w@mail.gmail.com>
	<CAEfap_DiAeLSfnH9RKCiWhKJNLizFJa5TLboukzZG2FvYQ5A2A@mail.gmail.com>
	<CAMKF1sp3nvxZdrGVFJDp7Ks2_DjON-44=PtJT8c585Wd4PFrVA@mail.gmail.com>
	<CAEfap_C0qC4vY4nEHzyns4z+hy4FSA7ADv_OCEnbwVyn5+mODQ@mail.gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Sat, 23 Jul 2016 23:30:57 +0200
Message-ID: <CAEfap_CJHHJmAmtUoZO_Jr7svdydFtw1ehmWTQxKk-x9tvoFFQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [genericx86-jethro] core-image-sato - VFS: Cannot open root device "PARTUUID=8316.." or unknown-block(0, 0): error -6
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
X-List-Received-Date: Sat, 23 Jul 2016 21:31:21 -0000
Content-Type: multipart/alternative; boundary=001a11397da873c1500538544583

--001a11397da873c1500538544583
Content-Type: text/plain; charset=UTF-8

One more questions about the Grub2 and EFI system for /dev/sda1
Is it actually possible to boot the system without initrd set?
It is not set during installation process in grub.cfg
It was also not in the FIDO install.sh, but FIDO was not:
parted ${device} mktable gpt
but:
parted /dev/${device} mklabel msdos

and the grub.cfg worked OK:
menuentry "Linux" {
    set root=(hd0,1)
    linux /vmlinuz root=/dev/sda2 rw quiet
}

So the initramfs you are talking about is actually missing now?

kind regards
Simon :-)


On Sat, Jul 23, 2016 at 8:31 PM, Simon Bolek <simon.bolek@googlemail.com>
wrote:

> On Sat, Jul 23, 2016 at 7:33 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Sat, Jul 23, 2016 at 9:49 AM, Simon Bolek <simon.bolek@googlemail.com>
>> wrote:
>> > Thanks, sorry that I bother you all the time, but I do not seem to make
>> any
>> > progress :(
>> > Is there anything else I can check?
>> > It seems, on boot time this device is not mounted, only ram0...15.
>>
>> It so seems that driver may be missing in initramfs could be one
>> reason.
>
> You mean in on the boot partition under /grub/i386-pc/ among *.mod files?
> In this case, that would be /dev/sda2.
> Or am should I look for that somewhere else?
>
>
>
>> other reason could
>> be that udev is not settling down for this device. So may be changing
>> the udevadm to wait
>> a bit for devices to mount might help
>>
> Could you tell me where would I do that? I mean, where exactly is the
> udevadm set-up at boot? I cannot find the place. Is it somewhere inside
> /vmlinuz on /dev/sda2 ?
>
> thanks
> s:-)
>
>
>>
>> >
>> > thank you
>> > Simon :-)
>> >
>> >
>> >
>> > On Sat, Jul 23, 2016 at 6:07 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> On Sat, Jul 23, 2016 at 8:57 AM, Simon Bolek <
>> simon.bolek@googlemail.com>
>> >> wrote:
>> >> > Hi,
>> >> >
>> >> > Well it is, as far as what
>> >> > parted /dev/sda print
>> >> >  says.
>> >> >
>> >> > generated grub.cfg matches that with PARTUUID, so it looks fine.
>> >> >
>> >> > menuentry "Linux" {
>> >> >     search --no-floppy --fs-uuid e88ec2c7-3438-4fe3-9033-83eb81957875
>> >> > --set
>> >> > root
>> >> >     linux /vmlinuz root=PARTUUID=8316255c-f839-43fa-b2c6-d83bbed80962
>> >> > rw
>> >> > quiet
>> >>
>> >> this seems ok to me.
>> >>
>> >> >
>> >> > }
>> >> >
>> >> > However fdisks -l shows only /dev/sda1, which ist strange.
>> >> >
>> >> > Is there something wrong with install.sh script?
>> >> > Compared to FIDO, it is GPT, not MSDOS. But i did not touch anything
>> >> > there.
>> >> > Maybe you can take a look at it?
>> >> >
>> >> >
>> http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/initrdscripts/files/init-install.sh?h=jethro
>> >> > It always checks the grub version, however in FIDO Grub was also
>> 2.00,
>> >> > so I
>> >> > do not get the IFs.
>> >> >
>> >> > thank you!
>> >> > Simon :-)
>> >> >
>> >> >
>> >> > On Sat, Jul 23, 2016 at 4:52 PM, Khem Raj <raj.khem@gmail.com>
>> wrote:
>> >> >>
>> >> >>
>> >> >> > On Jul 23, 2016, at 5:25 AM, Simon Bolek <
>> simon.bolek@googlemail.com>
>> >> >> > wrote:
>> >> >> >
>> >> >> > Hello!
>> >> >> >
>> >> >> > I am trying to install genericx86 core-image-sato on a atom-pc
>> device
>> >> >> > with 80GB Intel SSD drive.
>> >> >> > I have created an image with
>> >> >> > bitbake core-image-sato
>> >> >> > without changing anything in the kernel via menuconfig, etc.
>> >> >> >
>> >> >> > ps. after installation I had to set /dev/sda1 to bootable with
>> disk
>> >> >>
>> >> >> it seems your rootfs is on /dev/sda3 can you check kernel parameters
>> >> >> what
>> >> >> is it passing for root=
>> >> >>
>> >> >> >
>> >> >> > After installation I have got this ugly error while booting the
>> >> >> > device.
>> >> >> > PLEASE HELP ME!
>> >> >> >
>> >> >> >
>> >> >> > "...
>> >> >> > VFS: Cannot open root device "PARTUUID=8316.." or
>> unknown-block(0,0):
>> >> >> > error -6
>> >> >> > Pease append a correct "root=" boot option; here are the available
>> >> >> > partitions:
>> >> >> > 0100 4096 ram0 (driver?)
>> >> >> > ...
>> >> >> > 010f 4096 ram15 (driver?)
>> >> >> > ..."
>> >> >> >
>> >> >> >
>> >> >> > I noticed that install.sh script is creating GPT
>> >> >> > parted ${device} mktable gpt
>> >> >> > not MSDOS as in previous yocto versions, e.g. fido.
>> >> >> >
>> >> >> > Any hint is more than welcome. The device will just not boot :((((
>> >> >> >
>> >> >> > Here are some details about the device:
>> >> >> >
>> >> >> >
>> >> >> > +++
>> >> >> > blkid says:
>> >> >> > /dev/sda2: UUID="e88ec2c7-3438-4fe3-9033-83eb81957875" TYPE="ext3"
>> >> >> > PARTLABEL="boot" PARTUUID="57f43ab0-6e30-4721-81e2-c565f6c184c8"
>> >> >> > /dev/sda3: UUID="cbb77742-c9fe-4f19-85d7-399af99c3aa8" TYPE="ext3"
>> >> >> > PARTLABEL="root" PARTUUID="8316255c-f839-43fa-b2c6-d83bbed80962"
>> >> >> > /dev/sda4: TYPE="swap" PARTLABEL="swap"
>> >> >> > PARTUUID="15ddbd73-15b3-40a8-97e7-6377048a79eb"
>> >> >> > /dev/sdb: SEC_TYPE="msdos" LABEL="boot" UUID="3C80-C1D7"
>> TYPE="vfat"
>> >> >> > /dev/sda1: PARTLABEL="bios_boot"
>> >> >> > PARTUUID="11cf26d2-2333-4c5b-a876-59d65929085f"
>> >> >> >
>> >> >> > +++
>> >> >> > /etc/fstab says
>> >> >> > # stock fstab - you probably want to override this with a machine
>> >> >> > specific one
>> >> >> >
>> >> >> > /dev/root            /                    auto       defaults
>> >> >> > 1  1
>> >> >> > proc                 /proc                proc       defaults
>> >> >> > 0  0
>> >> >> > devpts               /dev/pts             devpts
>>  mode=0620,gid=5
>> >> >> > 0  0
>> >> >> > tmpfs                /run                 tmpfs
>> >> >> > mode=0755,nodev,nosuid,strictatime 0  0
>> >> >> > tmpfs                /var/volatile        tmpfs      defaults
>> >> >> > 0  0
>> >> >> >
>> >> >> > # uncomment this if your device has a SD/MMC/Transflash slot
>> >> >> > #/dev/mmcblk0p1       /media/card          auto
>> >> >> > defaults,sync,noauto  0  0
>> >> >> >
>> >> >> > /dev/sda2         /                      ext3         rw
>> >> >> > 0  1
>> >> >> > /dev/disk/by-partuuid/15ddbd73-15b3-40a8-97e7-6377048a79eb
>> >> >> > swap             swap       defaults              0  0
>> >> >> > UUID=e88ec2c7-3438-4fe3-9033-83eb81957875              /boot
>> >> >> > ext3       defaults              1  2
>> >> >> >
>> >> >> >
>> >> >> > +++
>> >> >> > fdisk -l says
>> >> >> > Disk /dev/sda: 80.0 GB, 80026361856 bytes
>> >> >> > 255 heads, 63 sectors/track, 9729 cylinders
>> >> >> > Units = cylinders of 16065 * 512 = 8225280 bytes
>> >> >> >
>> >> >> >    Device Boot      Start         End      Blocks  Id System
>> >> >> > /dev/sda1   *           1        9730    78150743+ ee EFI GPT
>> >> >> >
>> >> >> > +++
>> >> >> > parted /dev/sda says
>> >> >> > Model: ATA INTEL SSDSA2M080 (scsi)
>> >> >> > Disk /dev/sda: 80.0GB
>> >> >> > Sector size (logical/physical): 512B/512B
>> >> >> > Partition Table: gpt
>> >> >> > Disk Flags: pmbr_boot
>> >> >> >
>> >> >> > Number  Start   End     Size    File system     Name       Flags
>> >> >> >  1      1049kB  2097kB  1049kB                  bios_boot
>> bios_grub
>> >> >> >  2      2097kB  19.9MB  17.8MB  ext3            boot
>> >> >> >  3      22.0MB  76.0GB  76.0GB  ext3            root
>> >> >> >  4      76.0GB  80.0GB  4001MB  linux-swap(v1)  swap
>> >> >> >
>> >> >> > +++
>> >> >> > lspci says
>> >> >> > Device:    00:1f.2
>> >> >> > Class:    IDE interface
>> >> >> > Vendor:    Intel Corporation
>> >> >> > Device:    NM10/ICH7 Family SATA Controller [IDE mode]
>> >> >> > SVendor:    Intel Corporation
>> >> >> > SDevice:    Device 464c
>> >> >> > Rev:    01
>> >> >> > ProgIf:    8a
>> >> >> > Driver:    ata_piix
>> >> >> > Module:    ata_piix
>> >> >> >
>> >> >> >
>> >> >> > thank you
>> >> >> > Simon :-)
>> >> >> >
>> >> >> >
>> >> >> >
>> >> >>
>> >> >
>> >
>> >
>>
>
>

--001a11397da873c1500538544583
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>One more questions about the Grub2 and=
 EFI system for /dev/sda1<br></div>Is it actually possible to boot the syst=
em without initrd set?<br></div>It is not set during installation process i=
n grub.cfg<br></div>It was also not in the FIDO install.sh, but FIDO was no=
t:<br>parted ${device} mktable gpt<br></div>but:<br><div><div><div><div><di=
v>parted /dev/${device} mklabel msdos<div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">and the grub.cfg worked OK:<br>menuentry &quot;Li=
nux&quot; {<br>=C2=A0=C2=A0=C2=A0 set root=3D(hd0,1)<br>=C2=A0=C2=A0=C2=A0 =
linux /vmlinuz root=3D/dev/sda2 rw quiet<br>}<br><br></div><div class=3D"gm=
ail_extra">So the initramfs you are talking about is actually missing now?<=
br><br></div><div class=3D"gmail_extra">kind regards<br></div><div class=3D=
"gmail_extra">Simon :-)<br></div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Jul 23, 2016 a=
t 8:31 PM, Simon Bolek <span dir=3D"ltr">&lt;<a href=3D"mailto:simon.bolek@=
googlemail.com" target=3D"_blank">simon.bolek@googlemail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span class=3D"">O=
n Sat, Jul 23, 2016 at 7:33 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span>On Sat=
, Jul 23, 2016 at 9:49 AM, Simon Bolek &lt;<a href=3D"mailto:simon.bolek@go=
oglemail.com" target=3D"_blank">simon.bolek@googlemail.com</a>&gt; wrote:<b=
r>
&gt; Thanks, sorry that I bother you all the time, but I do not seem to mak=
e any<br>
&gt; progress :(<br>
&gt; Is there anything else I can check?<br>
&gt; It seems, on boot time this device is not mounted, only ram0...15.<br>
<br>
</span>It so seems that driver may be missing in initramfs could be one<br>
reason. </blockquote></span><div>You mean in on the boot partition under /g=
rub/i386-pc/ among *.mod files?<br>In this case, that would be /dev/sda2.<b=
r></div><div>Or am should I look for that somewhere else?<br></div><span cl=
ass=3D""><div><br>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">other reason could<br>
be that udev is not settling down for this device. So may be changing<br>
the udevadm to wait<br>
a bit for devices to mount might help<br></blockquote></span><div>Could you=
 tell me where would I do that? I mean, where exactly is the udevadm set-up=
 at boot? I cannot find the place. Is it somewhere inside /vmlinuz on /dev/=
sda2 ?<br><br></div><div>thanks<span class=3D""><font color=3D"#888888"><br=
></font></span></div><span class=3D""><font color=3D"#888888"><div>s:-)<br>=
</div></font></span><div><div class=3D"h5"><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
<div><div><br>
&gt;<br>
&gt; thank you<br>
&gt; Simon :-)<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Sat, Jul 23, 2016 at 6:07 PM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Sat, Jul 23, 2016 at 8:57 AM, Simon Bolek &lt;<a href=3D"mailto=
:simon.bolek@googlemail.com" target=3D"_blank">simon.bolek@googlemail.com</=
a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Well it is, as far as what<br>
&gt;&gt; &gt; parted /dev/sda print<br>
&gt;&gt; &gt;=C2=A0 says.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; generated grub.cfg matches that with PARTUUID, so it looks fi=
ne.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; menuentry &quot;Linux&quot; {<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0search --no-floppy --fs-uuid e88ec2c7-3438=
-4fe3-9033-83eb81957875<br>
&gt;&gt; &gt; --set<br>
&gt;&gt; &gt; root<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0linux /vmlinuz root=3DPARTUUID=3D8316255c-=
f839-43fa-b2c6-d83bbed80962<br>
&gt;&gt; &gt; rw<br>
&gt;&gt; &gt; quiet<br>
&gt;&gt;<br>
&gt;&gt; this seems ok to me.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; }<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; However fdisks -l shows only /dev/sda1, which ist strange.<br=
>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Is there something wrong with install.sh script?<br>
&gt;&gt; &gt; Compared to FIDO, it is GPT, not MSDOS. But i did not touch a=
nything<br>
&gt;&gt; &gt; there.<br>
&gt;&gt; &gt; Maybe you can take a look at it?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/plain/me=
ta/recipes-core/initrdscripts/files/init-install.sh?h=3Djethro" rel=3D"nore=
ferrer" target=3D"_blank">http://git.yoctoproject.org/cgit.cgi/poky/plain/m=
eta/recipes-core/initrdscripts/files/init-install.sh?h=3Djethro</a><br>
&gt;&gt; &gt; It always checks the grub version, however in FIDO Grub was a=
lso 2.00,<br>
&gt;&gt; &gt; so I<br>
&gt;&gt; &gt; do not get the IFs.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; thank you!<br>
&gt;&gt; &gt; Simon :-)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Sat, Jul 23, 2016 at 4:52 PM, Khem Raj &lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<=
br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; On Jul 23, 2016, at 5:25 AM, Simon Bolek &lt;<a href=
=3D"mailto:simon.bolek@googlemail.com" target=3D"_blank">simon.bolek@google=
mail.com</a>&gt;<br>
&gt;&gt; &gt;&gt; &gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Hello!<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I am trying to install genericx86 core-image-sato on=
 a atom-pc device<br>
&gt;&gt; &gt;&gt; &gt; with 80GB Intel SSD drive.<br>
&gt;&gt; &gt;&gt; &gt; I have created an image with<br>
&gt;&gt; &gt;&gt; &gt; bitbake core-image-sato<br>
&gt;&gt; &gt;&gt; &gt; without changing anything in the kernel via menuconf=
ig, etc.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; ps. after installation I had to set /dev/sda1 to boo=
table with disk<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; it seems your rootfs is on /dev/sda3 can you check kernel=
 parameters<br>
&gt;&gt; &gt;&gt; what<br>
&gt;&gt; &gt;&gt; is it passing for root=3D<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; After installation I have got this ugly error while =
booting the<br>
&gt;&gt; &gt;&gt; &gt; device.<br>
&gt;&gt; &gt;&gt; &gt; PLEASE HELP ME!<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &quot;...<br>
&gt;&gt; &gt;&gt; &gt; VFS: Cannot open root device &quot;PARTUUID=3D8316..=
&quot; or unknown-block(0,0):<br>
&gt;&gt; &gt;&gt; &gt; error -6<br>
&gt;&gt; &gt;&gt; &gt; Pease append a correct &quot;root=3D&quot; boot opti=
on; here are the available<br>
&gt;&gt; &gt;&gt; &gt; partitions:<br>
&gt;&gt; &gt;&gt; &gt; 0100 4096 ram0 (driver?)<br>
&gt;&gt; &gt;&gt; &gt; ...<br>
&gt;&gt; &gt;&gt; &gt; 010f 4096 ram15 (driver?)<br>
&gt;&gt; &gt;&gt; &gt; ...&quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I noticed that install.sh script is creating GPT<br>
&gt;&gt; &gt;&gt; &gt; parted ${device} mktable gpt<br>
&gt;&gt; &gt;&gt; &gt; not MSDOS as in previous yocto versions, e.g. fido.<=
br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Any hint is more than welcome. The device will just =
not boot :((((<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Here are some details about the device:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; +++<br>
&gt;&gt; &gt;&gt; &gt; blkid says:<br>
&gt;&gt; &gt;&gt; &gt; /dev/sda2: UUID=3D&quot;e88ec2c7-3438-4fe3-9033-83eb=
81957875&quot; TYPE=3D&quot;ext3&quot;<br>
&gt;&gt; &gt;&gt; &gt; PARTLABEL=3D&quot;boot&quot; PARTUUID=3D&quot;57f43a=
b0-6e30-4721-81e2-c565f6c184c8&quot;<br>
&gt;&gt; &gt;&gt; &gt; /dev/sda3: UUID=3D&quot;cbb77742-c9fe-4f19-85d7-399a=
f99c3aa8&quot; TYPE=3D&quot;ext3&quot;<br>
&gt;&gt; &gt;&gt; &gt; PARTLABEL=3D&quot;root&quot; PARTUUID=3D&quot;831625=
5c-f839-43fa-b2c6-d83bbed80962&quot;<br>
&gt;&gt; &gt;&gt; &gt; /dev/sda4: TYPE=3D&quot;swap&quot; PARTLABEL=3D&quot=
;swap&quot;<br>
&gt;&gt; &gt;&gt; &gt; PARTUUID=3D&quot;15ddbd73-15b3-40a8-97e7-6377048a79e=
b&quot;<br>
&gt;&gt; &gt;&gt; &gt; /dev/sdb: SEC_TYPE=3D&quot;msdos&quot; LABEL=3D&quot=
;boot&quot; UUID=3D&quot;3C80-C1D7&quot; TYPE=3D&quot;vfat&quot;<br>
&gt;&gt; &gt;&gt; &gt; /dev/sda1: PARTLABEL=3D&quot;bios_boot&quot;<br>
&gt;&gt; &gt;&gt; &gt; PARTUUID=3D&quot;11cf26d2-2333-4c5b-a876-59d65929085=
f&quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; +++<br>
&gt;&gt; &gt;&gt; &gt; /etc/fstab says<br>
&gt;&gt; &gt;&gt; &gt; # stock fstab - you probably want to override this w=
ith a machine<br>
&gt;&gt; &gt;&gt; &gt; specific one<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; /dev/root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 auto=
=C2=A0 =C2=A0 =C2=A0 =C2=A0defaults<br>
&gt;&gt; &gt;&gt; &gt; 1=C2=A0 1<br>
&gt;&gt; &gt;&gt; &gt; proc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0/proc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
proc=C2=A0 =C2=A0 =C2=A0 =C2=A0defaults<br>
&gt;&gt; &gt;&gt; &gt; 0=C2=A0 0<br>
&gt;&gt; &gt;&gt; &gt; devpts=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0/dev/pts=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0devpts=C2=
=A0 =C2=A0 =C2=A0mode=3D0620,gid=3D5<br>
&gt;&gt; &gt;&gt; &gt; 0=C2=A0 0<br>
&gt;&gt; &gt;&gt; &gt; tmpfs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /run=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0tmpfs<br>
&gt;&gt; &gt;&gt; &gt; mode=3D0755,nodev,nosuid,strictatime 0=C2=A0 0<br>
&gt;&gt; &gt;&gt; &gt; tmpfs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /var/volatile=C2=A0 =C2=A0 =C2=A0 =C2=A0 tmpfs=C2=A0 =C2=A0 =C2=
=A0 defaults<br>
&gt;&gt; &gt;&gt; &gt; 0=C2=A0 0<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; # uncomment this if your device has a SD/MMC/Transfl=
ash slot<br>
&gt;&gt; &gt;&gt; &gt; #/dev/mmcblk0p1=C2=A0 =C2=A0 =C2=A0 =C2=A0/media/car=
d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 auto<br>
&gt;&gt; &gt;&gt; &gt; defaults,sync,noauto=C2=A0 0=C2=A0 0<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; /dev/sda2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ext3=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rw<br>
&gt;&gt; &gt;&gt; &gt; 0=C2=A0 1<br>
&gt;&gt; &gt;&gt; &gt; /dev/disk/by-partuuid/15ddbd73-15b3-40a8-97e7-637704=
8a79eb<br>
&gt;&gt; &gt;&gt; &gt; swap=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
swap=C2=A0 =C2=A0 =C2=A0 =C2=A0defaults=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0=C2=A0 0<br>
&gt;&gt; &gt;&gt; &gt; UUID=3De88ec2c7-3438-4fe3-9033-83eb81957875=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /boot<br>
&gt;&gt; &gt;&gt; &gt; ext3=C2=A0 =C2=A0 =C2=A0 =C2=A0defaults=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 2<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; +++<br>
&gt;&gt; &gt;&gt; &gt; fdisk -l says<br>
&gt;&gt; &gt;&gt; &gt; Disk /dev/sda: 80.0 GB, 80026361856 bytes<br>
&gt;&gt; &gt;&gt; &gt; 255 heads, 63 sectors/track, 9729 cylinders<br>
&gt;&gt; &gt;&gt; &gt; Units =3D cylinders of 16065 * 512 =3D 8225280 bytes=
<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 Device Boot=C2=A0 =C2=A0 =C2=A0 Start=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0End=C2=A0 =C2=A0 =C2=A0 Blocks=C2=A0 Id S=
ystem<br>
&gt;&gt; &gt;&gt; &gt; /dev/sda1=C2=A0 =C2=A0*=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A0 =C2=A0 9730=C2=A0 =C2=A0 78150743+ ee EF=
I GPT<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; +++<br>
&gt;&gt; &gt;&gt; &gt; parted /dev/sda says<br>
&gt;&gt; &gt;&gt; &gt; Model: ATA INTEL SSDSA2M080 (scsi)<br>
&gt;&gt; &gt;&gt; &gt; Disk /dev/sda: 80.0GB<br>
&gt;&gt; &gt;&gt; &gt; Sector size (logical/physical): 512B/512B<br>
&gt;&gt; &gt;&gt; &gt; Partition Table: gpt<br>
&gt;&gt; &gt;&gt; &gt; Disk Flags: pmbr_boot<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Number=C2=A0 Start=C2=A0 =C2=A0End=C2=A0 =C2=A0 =C2=
=A0Size=C2=A0 =C2=A0 File system=C2=A0 =C2=A0 =C2=A0Name=C2=A0 =C2=A0 =C2=
=A0 =C2=A0Flags<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 1=C2=A0 =C2=A0 =C2=A0 1049kB=C2=A0 2097kB=C2=
=A0 1049kB=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bi=
os_boot=C2=A0 bios_grub<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 2=C2=A0 =C2=A0 =C2=A0 2097kB=C2=A0 19.9MB=C2=
=A0 17.8MB=C2=A0 ext3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boot<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 3=C2=A0 =C2=A0 =C2=A0 22.0MB=C2=A0 76.0GB=C2=
=A0 76.0GB=C2=A0 ext3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 root<br>
&gt;&gt; &gt;&gt; &gt;=C2=A0 4=C2=A0 =C2=A0 =C2=A0 76.0GB=C2=A0 80.0GB=C2=
=A0 4001MB=C2=A0 linux-swap(v1)=C2=A0 swap<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; +++<br>
&gt;&gt; &gt;&gt; &gt; lspci says<br>
&gt;&gt; &gt;&gt; &gt; Device:=C2=A0 =C2=A0 00:1f.2<br>
&gt;&gt; &gt;&gt; &gt; Class:=C2=A0 =C2=A0 IDE interface<br>
&gt;&gt; &gt;&gt; &gt; Vendor:=C2=A0 =C2=A0 Intel Corporation<br>
&gt;&gt; &gt;&gt; &gt; Device:=C2=A0 =C2=A0 NM10/ICH7 Family SATA Controlle=
r [IDE mode]<br>
&gt;&gt; &gt;&gt; &gt; SVendor:=C2=A0 =C2=A0 Intel Corporation<br>
&gt;&gt; &gt;&gt; &gt; SDevice:=C2=A0 =C2=A0 Device 464c<br>
&gt;&gt; &gt;&gt; &gt; Rev:=C2=A0 =C2=A0 01<br>
&gt;&gt; &gt;&gt; &gt; ProgIf:=C2=A0 =C2=A0 8a<br>
&gt;&gt; &gt;&gt; &gt; Driver:=C2=A0 =C2=A0 ata_piix<br>
&gt;&gt; &gt;&gt; &gt; Module:=C2=A0 =C2=A0 ata_piix<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; thank you<br>
&gt;&gt; &gt;&gt; &gt; Simon :-)<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div></div></div><br></div></div>
</blockquote></div><br></div></div></div></div></div></div></div>

--001a11397da873c1500538544583--
