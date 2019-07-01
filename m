Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DC82E00D42; Mon,  1 Jul 2019 02:20:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98FA3E00BAF
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 02:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1561972803;
	bh=X+fgAeiGZ1wCpDbSrEMuObjIpl+rNZF0Fvm9skP6qTY=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=SqPx819HTORCA3i20fZDFhtqlJS3hVz+Dv0H3hS9aFcQBswOc4cwSJbArVvfulapN
	7rO35KxyUF2g/LG5WbkbFfPOAO/reihVoHAZb0pELTc+E3NetO44ZW2UBeCSEz/D2C
	hz3SokQJ0gP+fAyKwmKa5WZORKBwX/gpL0sc4fG8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx105
	[212.227.17.168]) with ESMTPSA (Nemesis) id 1MybGX-1iSgsZ3IVh-00z1nY;
	Mon, 01 Jul 2019 11:20:02 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
Date: Mon, 1 Jul 2019 11:19:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
X-Provags-ID: V03:K1:Zl/kzu71jsJWdcXtQoVYRlcs5qFwiBbOOUDz8EKKHOD5tXMPdCV
	emc0Wod2cfj68ZBjriPg/wMgaHdGraBFd4cllFffERks3Gv0FwflaYdS9+1ma4OSptWGmt9
	4V2wxJPLCkvjt12aENGumRmFEtYOzWoxkEdUo3Rh9pX4O+ApZ3SFcDPJg4zAk70KJAa0DUW
	yceMxoAcYyePU9D3NlyEw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:EPjyMmbAPDs=:JtApw4Y6Eau087/QmKlw/J
	D6q3OgJKfHoy8ZdxfJPvWdflKRr/DUHiIgfFmdHvCOd63G8DtjguTnWR31h0rtMTkTYR63xiI
	MAI8k7YfUXi8UtUWcbNQ1EBbRgVEMLstkYebboYC/351bzRegQhxIcQxPokTVaYqw18b1NQWo
	rW1YB21yZlGcQlyW6589eZEaA4kR6LJaP2LlKvk38oRadVQMB3J6nAL+sk8Fa5yHPdmfZ+2aB
	VioWHFW9XB7Ai1bxKmoJ5qKH8+GCdvYlHmvjFEWdpGSOXM+uNxNVM3QfHKi/VTfhiqcC+YqZk
	mZgMz/y1EhqVgD/ANR8BR6GI3PPoevbnaW87dyvqlV6s0PHAHRoi6hRn9GTRswIt/18Mok8lK
	ff7ixLZKz0kKmj7EHMlkM4FR+3/bJLD6acy4V1+FBAP0n/76GuTqMBO8zBQ3Zwa9adsQk5K9Z
	ueBqwJuECxksgA+lPuKSCvuosGZB1LckHhANDDBrxsoDLTSiya5zof7OQVQQW+fnekoU0MdQh
	RDIGHuVnQSw51Bg3oro0vNSCG9GJzuNdnAgFCdc8TqCRWNA4VjA6cdJQ4iE02OYI80njcMNln
	RkcU9UvMk2+1NplvWeby9J9iokEVANVDjTwXiQiamnUHJ/USE9xyXjPf0RHf6R4ZkJRu+A//A
	R5zKqInL3HTn4yaKk8lJeSU0ez+6k3DwXlWyj0NUQbC9RyolY96SFLRZ5WWHpBeAX2juvWQcV
	bqX5GHOLatHAFCPU5+ZGVQhIyDCl3uUurszXYxe0KrZGxnM94m7KOiW5cT2ZVtFc8ykE1ynBs
	0cUsx4oxRp9pkR1twYqierA8iKDKCQyIcH8OiNSQqLdt3p2bP0Qxal1Z1J2WUhnhXWFdYZutW
	hDHPay+6caqgAmx1ENglpNH7ljQkoYmeoDEHTZCsubVX40TomqZVtXpHlT1SjCN3Z8WSFFYkJ
	yE+2mwEbJYt0FJA6RzAZPX51EyPYIuVUSjOntx3cuxcH89U65OFJvJkBTgqUHfD+UvIDfqWCv
	J7r6AyHg/5Reoamdd2PyXLeA1U2anon51PVjbQc2HEFz23K+PnB/f19mUR5nHnPtI1wNvhH3c
	RsU52LCiGNyXrTqo+ahqw/QttYS1xIUqxcL
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't boot to initramfs
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
X-List-Received-Date: Mon, 01 Jul 2019 09:20:06 -0000
Content-Type: multipart/alternative;
	boundary="------------E7BB8C45CD426FB28AAFCF4F"
Content-Language: en-US

--------------E7BB8C45CD426FB28AAFCF4F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Zoran,
thanks for your answer

On 28.06.19 14:26, Zoran Stojsavljevic wrote:
> > INITRAMFS_IMAGE =3D /*"core-image-minimal-initramfs"*/
> > INITRAMFS_IMAGE_BUNDLE =3D "1"
> ...
> > You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7I
>
> Some hints...
>
> [1] Kernel command line: BOOT_IMAGE=3D/bzImage
> root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309f58119f
> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4
> /*console=3DttyS0,115200 console=3Dtty0*/
> /*
> */
> input: Video Bus as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input7
> fbcon: inteldrmfb (fb0) is primary device
> Console: switching to colour frame buffer device 128x48
> /*i915 0000:00:02.0: fb0: inteldrmfb frame buffer device*/
> snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops
> i915_audio_component_bind_ops [i915])
>
> Hmmmmm... You are using console and serial, but full i915 GFX kernel
> driver is still included in the build???
I started from the core-image-minimal to have a small image and extended
it with the features I need, which is e.g. a graphical system. The
console=3D[...] part in the kernel command line is probably a remnant but
my image boots into the GUI. Is this a problem ?
> /*
> */
> [2] efi: EFI v2.31 by American Megatrends
>
> Using AMI BIOS as boot loader FW... OK?! Am I correct?
My bootloader is currently grub, the EFI is AM.
>
> [3] smpboot: CPU0: Intel(R) Atom(TM) CPU =C2=A0E3825 =C2=A0@ 1.33GHz (fa=
mily:
> 0x6, model: 0x37, stepping: 0x9)
>
> This is CPUID ID 0x30679, which uses MCU... Which MicroCodeUnit?
> M0130679xxx (info from AMI BIOS)?
Sorry but I can't find this info in the EFI
>
> [4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading),
> implies that you are using
> 4GB (e820 messages) as single channel (one memory module DDR3 as 4GB)!
> Am I correct (important)?
2GB, single channel.
>
> [5] Dracut phase?!
> > To my understanding the initramfs should be embedded in /boot/bzImage.
> > However since I use an intel platform I also have a /boot/microcode.cp=
io
> > which gets loaded via "initrd /microcode.cpio". Removing this line in
> > grub does not enable me to get an initramfs prompt either (again, usin=
g
> > break as option).
>
> You are obviously stopping in boot phase called dracut. Please, try to
> mount by hand
> /dev/sda(whatever)... You should use fdisk -l command, or do ls -al
> /dev | grep sda to
> dig out which partition you need to mount to /tmp dir to see
> rootfstype=3Dext4 (HDD/SSD)
No, the boot does not stop. Even if I do issue "break=3Dpremount" I end up
in my graphical interface with the rootfs mounted. This is the last
message in the log:
EXT4-fs (sdb2): re-mounted. Opts: (null)
The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2 (when
booting from stick)
> _______
>
> Just thinking loud... .. .
>
> Hope this helps (has very little to do with YOCTO build system, BTW) . ;=
-)
>
> Zoran
> _______
>
>
> On Fri, Jun 28, 2019 at 11:22 AM Moritz Porst <moritz.porst@gmx.de
> <mailto:moritz.porst@gmx.de>> wrote:
>
>     Hello,
>     I currently try to deploy a single rootfs update mechanism for my
>     embedded device. I can't boot to initramfs using either "break" or
>     "break=3Dpremount" (without quotes...). I tried this in systemd-boot=
 and
>     grub-efi (always efi boot) but the boot process just continues
>     normally.
>     If I insert at the same point e.g. "quiet" this argument is
>     recognised.
>     I boot the .wic image with a separate boot partition from a USB stic=
k.
>     in local.conf I have set:
>     INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>     INITRAMFS_IMAGE_BUNDLE =3D "1"
>
>     In order to reduce complexity I now use the standard
>     core-image-minimal-initramfs without .bbappend. I can confirm (from
>     seeing the task) that bitbake bundled the kernel with the initramfs.
>
>     You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7
>
>     To my understanding the initramfs should be embedded in /boot/bzImag=
e.
>     However since I use an intel platform I also have a
>     /boot/microcode.cpio
>     which gets loaded via "initrd /microcode.cpio". Removing this line i=
n
>     grub does not enable me to get an initramfs prompt either (again,
>     using
>     break as option).
>
>     Did I forget some configuration or do I have to put the break
>     statement
>     at a very specific position within the "linux ..." boot command ?
>     Do you
>     know which bitbake variables to check ? (both set in local.conf do n=
ot
>     get overwritten, already checked this). I got the thud branch checke=
d
>     out in all my meta-layers except for meta-qt which is currently on
>     master branch.
>
>     Help is much appreciated !
>
>     Best regards
>     Moritz
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>

--------------E7BB8C45CD426FB28AAFCF4F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hello Zoran, <br>
      thanks for your answer</p>
    <div class=3D"moz-cite-prefix">On 28.06.19 14:26, Zoran Stojsavljevic
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">&gt; INITRAMFS_IMAGE =3D <span
          style=3D"color:rgb(255,0,0)"><i><b>"core-image-minimal-initramfs=
"</b></i></span><br>
        &gt; INITRAMFS_IMAGE_BUNDLE =3D "1"<br>
        ...<br>
        &gt; You can find the /var/log/dmesg here: <a
          href=3D"https://pastebin.com/ya7iCtq7I" target=3D"_blank"
          moz-do-not-send=3D"true">https://pastebin.com/ya7iCtq7I</a><br>
        <div><br>
        </div>
        <div>Some hints...<br>
        </div>
        <div><br>
        </div>
        <div>[1] Kernel command line: BOOT_IMAGE=3D/bzImage
          root=3DPARTUUID=3D71d1d94a-83e8-4895-98eb-35309f58119f</div>
        <div> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4 <=
span
            style=3D"color:rgb(255,0,0)"><i><b>console=3DttyS0,115200
                console=3Dtty0</b></i></span></div>
        <div><span style=3D"color:rgb(255,0,0)"><i><b><br>
              </b></i></span></div>
        <div>
          <div
class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660518g=
mail-de1">input:
            Video Bus as
            /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/=
input7</div>
          <div
class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660518g=
mail-de2">fbcon:
            inteldrmfb (fb0) is primary device</div>
          <div
class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660518g=
mail-de1">Console:
            switching to colour frame buffer device 128x48</div>
          <div
class=3D"m_7608936463979074663m_8346544213632041194m_-7765005672330660518g=
mail-de1"><span
              style=3D"color:rgb(255,0,0)"><i><b>i915 0000:00:02.0: fb0:
                  inteldrmfb frame buffer device</b></i></span></div>
          snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops
          i915_audio_component_bind_ops [i915])</div>
        <div><br>
        </div>
        <div>Hmmmmm... You are using console and serial, but full i915
          GFX kernel driver is still included in the build???<br>
        </div>
      </div>
    </blockquote>
    I started from the core-image-minimal to have a small image and
    extended it with the features I need, which is e.g. a graphical
    system. The console=3D[...] part in the kernel command line is
    probably a remnant but my image boots into the GUI. Is this a
    problem ?<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
      <div dir=3D"ltr">
        <div><span style=3D"color:rgb(255,0,0)"></span></div>
        <div><span style=3D"color:rgb(255,0,0)"><i><b><br>
              </b></i></span></div>
        <div><span style=3D"color:rgb(0,0,0)">[2] efi: EFI v2.31 by
            American Megatrends</span></div>
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">Using AMI BIOS as boot
            loader FW... OK?! Am I correct?<br>
          </span></div>
      </div>
    </blockquote>
    My bootloader is currently grub, the EFI is AM.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
      <div dir=3D"ltr">
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">[3] smpboot: CPU0: Intel(R)
            Atom(TM) CPU =C2=A0E3825 =C2=A0@ 1.33GHz (family: 0x6, model: =
0x37,
            stepping: 0x9)</span></div>
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)"></span>This is CPUID ID
          0x30679, which uses MCU... Which MicroCodeUnit? <span
            style=3D"font-size:12.8px">M0130679xxx (info from AMI BIOS)</s=
pan>?<span
            style=3D"font-size:12.8px"><br>
          </span></div>
      </div>
    </blockquote>
    Sorry but I can't find this info in the EFI<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
      <div dir=3D"ltr">
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">[4] Using INTEL ATOM BYT
            E3825 dual core (sans Hyper-threading), implies that you are
            using</span></div>
        <div><span style=3D"color:rgb(0,0,0)">4GB (e820 messages) as
            single channel (one memory module DDR3 as 4GB)! Am I correct
            (important)?</span></div>
      </div>
    </blockquote>
    2GB, single channel. <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
      <div dir=3D"ltr">
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">[5] Dracut phase?!<br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">&gt; To my understanding the
            initramfs should be embedded in /boot/bzImage.<br>
            &gt; However since I use an intel platform I also have a
            /boot/microcode.cpio<br>
            &gt; which gets loaded via "initrd /microcode.cpio".
            Removing this line in<br>
            &gt; grub does not enable me to get an initramfs prompt
            either (again, using<br>
            &gt; break as option).<br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">You are obviously stopping
            in boot phase called dracut. Please, try to mount by hand</spa=
n></div>
        <div><span style=3D"color:rgb(0,0,0)">/dev/sda(whatever)... You
            should use fdisk -l command, or do ls -al /dev | grep sda to</=
span></div>
        <div><span style=3D"color:rgb(0,0,0)">dig out which partition you
            need to mount to /tmp dir to see rootfstype=3Dext4 (HDD/SSD)<b=
r>
          </span></div>
      </div>
    </blockquote>
    No, the boot does not stop. Even if I do issue "break=3Dpremount" I
    end up in my graphical interface with the rootfs mounted. This is
    the last message in the log:<br>
    EXT4-fs (sdb2): re-mounted. Opts: (null)<br>
    The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2
    (when booting from stick)<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail=
.com">
      <div dir=3D"ltr">
        <div><span style=3D"color:rgb(0,0,0)">_______<br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">Just thinking loud... .. .<b=
r>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">Hope this helps (has very
            little to do with YOCTO build system, BTW) . ;-)<br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,0,0)">Zoran</span></div>
        <div><span style=3D"color:rgb(0,0,0)">_______<br>
          </span></div>
      </div>
      <br>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 28, 2019 at 11:2=
2
          AM Moritz Porst &lt;<a href=3D"mailto:moritz.porst@gmx.de"
            target=3D"_blank" moz-do-not-send=3D"true">moritz.porst@gmx.de=
</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
ello,<br>
          I currently try to deploy a single rootfs update mechanism for
          my<br>
          embedded device. I can't boot to initramfs using either
          "break" or<br>
          "break=3Dpremount" (without quotes...). I tried this in
          systemd-boot and<br>
          grub-efi (always efi boot) but the boot process just continues
          normally.<br>
          If I insert at the same point e.g. "quiet" this argument is
          recognised.<br>
          I boot the .wic image with a separate boot partition from a
          USB stick.<br>
          in local.conf I have set:<br>
          INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"<br>
          INITRAMFS_IMAGE_BUNDLE =3D "1"<br>
          <br>
          In order to reduce complexity I now use the standard<br>
          core-image-minimal-initramfs without .bbappend. I can confirm
          (from<br>
          seeing the task) that bitbake bundled the kernel with the
          initramfs.<br>
          <br>
          You can find the /var/log/dmesg here: <a
            href=3D"https://pastebin.com/ya7iCtq7" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">https://pastebin.co=
m/ya7iCtq7</a><br>
          <br>
          To my understanding the initramfs should be embedded in
          /boot/bzImage.<br>
          However since I use an intel platform I also have a
          /boot/microcode.cpio<br>
          which gets loaded via "initrd /microcode.cpio". Removing this
          line in<br>
          grub does not enable me to get an initramfs prompt either
          (again, using<br>
          break as option).<br>
          <br>
          Did I forget some configuration or do I have to put the break
          statement<br>
          at a very specific position within the "linux ..." boot
          command ? Do you<br>
          know which bitbake variables to check ? (both set in
          local.conf do not<br>
          get overwritten, already checked this). I got the thud branch
          checked<br>
          out in all my meta-layers except for meta-qt which is
          currently on<br>
          master branch.<br>
          <br>
          Help is much appreciated !<br>
          <br>
          Best regards<br>
          Moritz<br>
          <br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"
            moz-do-not-send=3D"true">yocto@yoctoproject.org</a><br>
          <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true">=
https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------E7BB8C45CD426FB28AAFCF4F--
