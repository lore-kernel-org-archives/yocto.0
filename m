Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EA69E00C40; Mon,  1 Jul 2019 07:33:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD8ABE00A49
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 07:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1561991628;
	bh=VecNZsyyYy66i7IrUsB+TCFbKFNOOfd37foFA9DGGKE=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=PxCwhK2msjxS4PyQ9WASARbAi5AIT6BxG3L1vdIkRjAp4be8cuWKsxwJ7RR+E0ih1
	zS6RcCBeKvfvk2y0UdXPeQ8DjSEeaOquTH/D1HZMtmWFmc3l5h0fmiFx7urmFC7VV7
	zJYLVokPWx00Ssv/ULARxZGqxxQFWWKndQ01Aj7g=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx002
	[212.227.17.190]) with ESMTPSA (Nemesis) id 0MGSDw-1hmNEh3B8i-00DDrr;
	Mon, 01 Jul 2019 16:33:47 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
	<CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <66af0e83-056c-ee5a-7bcd-863c14da72de@gmx.de>
Date: Mon, 1 Jul 2019 16:33:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
X-Provags-ID: V03:K1:1oXuVwAURI1eoHGZOY+bb+LgZ84h5ZVke4V2npAsiaiuIx92cuG
	/+XzImUyNu3zwQHI2Fn3rLXiSta5A58FToSp/xaqtFy/QMctrd5tLyyaTqQrrQhR6seu0kD
	lw2HkGB+8BMz3gh8gz/imd+rH8alyY6Af9auzD5QCx1VmSmS3hMnw6ThzZQWsoWhldmDdY7
	EHYMKzJr+1V+OJoVHlumg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:rzrEpAVSZtw=:IohTTUX6H5PLJi2zRF8364
	9e+XqPTTLV5vOPahd+L6torwCKck4ZNzGD2VaE0SJoE12Wzh2AMAtosQKOn3V2EJObBjZ6SXB
	ofETCbxzXiT3xGNiMhqg9S+QN4pKpsvC67WpHMnShn/0540bW9+tBLXOLBNv3uhavYgQF4TxS
	dN3/q8MuJuq/En3l90C10qaNrDmzRkXlSFv34w1j9DAVxdeHeeIvatl00tLFngUyV51WoK1/M
	r/W+AdcDngB8+WttQiZJea36H3gpbfxXDAs9bCK/0gKYjkJ9IiMnGwdzuwnrQZ70CANmCrSAL
	+fMLQJCYDqe1Nc03B0w9UkfKg1psf84qyNZ6EfQwRcfS59SAwqIKzXovYMRwIMUdg9nRJYE4b
	iPq3dO+ZZbk65kaVisXIJKkO0u4sJ4moGIcjNn7P3NrXcOG2Vt8N5eFPjkN80CFC3+sBbOEXx
	uJhmBMjd/zHNlzwbKi26lNwV2dudqdnwUMk67rM+dztfHi0eUShHRsuR/Ck71q2Q4TGbnrA5O
	AmvCDpwrN45O0CnDmpuo1d5Ul3SR6u5bubUmNk0ofO1MGK4445GDOUkOsLyv9vTG0sZrUkLXe
	WWTDIQoQq4WyHQwJpCrfhxcavy14iGYzxk0RwJOmGaR86FPC4BzcrbDPs+zLfxMy1L3OYSY/6
	OFl0NzxxdHeTiZHoOedtzXgGVHfRaSxNfBYL8o2+mw5hodUOpGEO2IBanQik+Ifp3+oeO0QIR
	0OUZRTx15e0S9yi4uYrDyGeIqGkx65ZzJh+WoLuQW3GU134Iu+ffe/h8dUbdZHlnLFJoI+3Bu
	TyDZVv8/JFFEErHU3d1pYPnL50WocNPgTZfGceyQhbmZA0B81TgLd5X4VwfKhjjIew3cygykv
	wTRhO1QFEbrZZzLzLQ6DKBMp7eCFkq8W9Pp+aKI6lrvfZZMg4LbiOmnNeELu0m8KQZx8/nD2y
	jpaCYmfv6cLiM9Yv7PqZrsokiDFl1CTr+tFCpM+vX53zCDBvqGYwe5w85PuWGhyuPfamfooZF
	hr2D/HlMfAZx2QlXvXc53sReqsaYgmgv1gcAi6ebQM5BMQPX8eV4r1jHkS54n5QsRKbd1by37
	BYbtIFAp4JaNei5Wbye9k9xcB1RQGhsjpYc
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
X-List-Received-Date: Mon, 01 Jul 2019 14:33:52 -0000
Content-Type: multipart/alternative;
	boundary="------------50BBFE2BF509D7D9F956762E"
Content-Language: en-US

--------------50BBFE2BF509D7D9F956762E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,
I think I found the issue. ( see below )

On 01.07.19 15:57, Zoran Stojsavljevic wrote:
> Hello Moritz,
>
> Too hot here, in Belgrade... Where I am resting for the Time being
> (actually, this message given to my invisible spying security "angels"
> on this list)...  :-) Projected +38C degrees today. Too hot for this
> too old Siberian untouchable bobcat!
Luckily it's a rather cold day in germany, thanks that you still take
the time to answer !
>
>> I started from the core-image-minimal to have a small image and
>> extended it with the features I need, which is e.g. a graphical system.
>> The console=3D[...] part in the kernel command line is probably a
>> remnant but my image boots into the GUI. Is this a problem ?
> Nope, it is not. If you need to do it correctly, you should use
> bitbake -k core-image-sato build command (my best educated guess).
> Then, I do not feel comfortable seeing in your kernel command line
> serial interface, do you agree?
Yes that is true.
> YOCTO maintainers, any additional
> advices?
>
>> My bootloader is currently grub, the EFI is AM.
> Nope. Eeeeeeeeek. Wrong. Currently, your boot-loader is UEFI AMI. Your
> OS (Linux probably, U name it) boot-loader is GRUB2. Let us keep it
> contained, sane and sober.
>
>> Sorry but I can't find this info in the EFI.
> Could you, please try the following command being root: dmesg | grep
> MCU. or grep mcu, or grep CPUID or grep cpuid?? Please, post results
> to this list (to me).
No luck unfortunately (used grep -i)
>
> Could you, also, send to YOCTO list/me attached file:
> /boot/microcode.cpio so I can somehow (?) inspect it? ;-)
I send it to you directly, so I don't spam the list with a large attachmen=
t.
>
>> 2GB, single channel.
> All Cool. E3825 by HW/silicon design could/does NOT support multiple
> memory channels. ONLY single... But even YOCTO primes (INTEL ones from
> this list) are not gonna tell this to you. Not 'cause they are nasty.
> They are NOT aware/they are ignorant (with the purpose)! ;-))
>
>> No, the boot does not stop. Even if I do issue "break=3Dpremount" I
>> end up in my graphical interface with the rootfs mounted. This is the
>> last message in the log: EXT4-fs (sdb2): re-mounted. Opts: (null)
>> The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2
>> (when booting from stick)
> Yes, from https://pastebin.com/ya7iCtq7, so it is remounted rw, not
> read only. So, it seems that you have passed dracut phase. and mounted
> SD or flash rootfs. So, initramfs is NOT your true problem, is it???
The thing is that the boot works but I want an initramfs that can be
used for updating (in case the rootfs is broken). However I need to be
able to intercept the boot process there because otherwise I can't
deploy an update mechanism, that's what I was trying.
>
> Zoran
> _______
>
>
>> No, the boot does not stop. Even if I do issue "break=3Dpremount" I end=
 up
>> in my graphical interface with the rootfs mounted. This is  the last me=
ssage
>> in the log: EXT4-fs (sdb2): re-mounted. Opts: (null) The rootfs partiti=
on is
>> always 2, so either /dev/sda2 or /dev/sdb2 (when booting from stick)
>
>
So for the issue...
I expected yocto to put the bundled bzImage onto my rootfs. This was not
the case. My image directory contains 2x bzImage, one bundled and one
unbundled. Apparently yocto puts the >un<bundled image onto my /boot
partition and uses it for boot. So of course I couldn't access initramfs
in this case. Now I get to the initramfs statement "dropping to shell"
if I intentionally boot with wrong rootfs.
Still I don't get the interactive shell.
On the github ostroproject site I found this:

# debug: adds debug boot parameters like 'shell' and 'debug', see
#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta/recipes-core/initrdscript=
s/initramfs-framework/debug for
details
# Could be removed in more minimal product image.
PACKAGE_INSTALL +=3D "initramfs-module-debug"

including the module-debug still does not enable me to get an
interactive shell.
I was following this site: https://wiki.debian.org/InitramfsDebug
I am aware that yocto is no debian but I expected that kernel parameters
(like 'break') would be independent of the distribution.

Lastly I do not really need the interactive shell, it is enough if I can
deploy a custom init script in the initramfs. Still I think that getting
an initramfs shell should be as simple as stating the name of the
initramfs image and setting the "INITRAMFS_DO_BUNDLE" variable.

Best regards
Moritz


> On Mon, Jul 1, 2019 at 11:20 AM Moritz Porst <moritz.porst@gmx.de> wrote=
:
>> Hello Zoran,
>> thanks for your answer
>>
>> On 28.06.19 14:26, Zoran Stojsavljevic wrote:
>>
>>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>> ...
>>> You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7I
>> Some hints...
>>
>> [1] Kernel command line: BOOT_IMAGE=3D/bzImage root=3DPARTUUID=3D71d1d9=
4a-83e8-4895-98eb-35309f58119f
>> break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4 console=3Dtt=
yS0,115200 console=3Dtty0
>>
>> input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDE=
O:00/input/input7
>> fbcon: inteldrmfb (fb0) is primary device
>> Console: switching to colour frame buffer device 128x48
>> i915 0000:00:02.0: fb0: inteldrmfb frame buffer device
>> snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops i915_audio_componen=
t_bind_ops [i915])
>>
>> Hmmmmm... You are using console and serial, but full i915 GFX kernel dr=
iver is still included in the build???
>>
>> I started from the core-image-minimal to have a small image and extende=
d it with the features I need, which is e.g. a graphical system. The conso=
le=3D[...] part in the kernel command line is probably a remnant but my im=
age boots into the GUI. Is this a problem ?
>>
>>
>> [2] efi: EFI v2.31 by American Megatrends
>>
>> Using AMI BIOS as boot loader FW... OK?! Am I correct?
>>
>> My bootloader is currently grub, the EFI is AM.
>>
>>
>> [3] smpboot: CPU0: Intel(R) Atom(TM) CPU  E3825  @ 1.33GHz (family: 0x6=
, model: 0x37, stepping: 0x9)
>>
>> This is CPUID ID 0x30679, which uses MCU... Which MicroCodeUnit? M01306=
79xxx (info from AMI BIOS)?
>>
>> Sorry but I can't find this info in the EFI
>>
>>
>> [4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading), implie=
s that you are using
>> 4GB (e820 messages) as single channel (one memory module DDR3 as 4GB)! =
Am I correct (important)?
>>
>> 2GB, single channel.
>>
>>
>> [5] Dracut phase?!
>>> To my understanding the initramfs should be embedded in /boot/bzImage.
>>> However since I use an intel platform I also have a /boot/microcode.cp=
io
>>> which gets loaded via "initrd /microcode.cpio". Removing this line in
>>> grub does not enable me to get an initramfs prompt either (again, usin=
g
>>> break as option).
>> You are obviously stopping in boot phase called dracut. Please, try to =
mount by hand
>> /dev/sda(whatever)... You should use fdisk -l command, or do ls -al /de=
v | grep sda to
>> dig out which partition you need to mount to /tmp dir to see rootfstype=
=3Dext4 (HDD/SSD)
>>
>> No, the boot does not stop. Even if I do issue "break=3Dpremount" I end=
 up in my graphical interface with the rootfs mounted. This is the last me=
ssage in the log:
>> EXT4-fs (sdb2): re-mounted. Opts: (null)
>> The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2 (whe=
n booting from stick)
>>
>> _______
>>
>> Just thinking loud... .. .
>>
>> Hope this helps (has very little to do with YOCTO build system, BTW) . =
;-)
>>
>> Zoran
>> _______
>>
>>
>> On Fri, Jun 28, 2019 at 11:22 AM Moritz Porst <moritz.porst@gmx.de> wro=
te:
>>> Hello,
>>> I currently try to deploy a single rootfs update mechanism for my
>>> embedded device. I can't boot to initramfs using either "break" or
>>> "break=3Dpremount" (without quotes...). I tried this in systemd-boot a=
nd
>>> grub-efi (always efi boot) but the boot process just continues normall=
y.
>>> If I insert at the same point e.g. "quiet" this argument is recognised=
.
>>> I boot the .wic image with a separate boot partition from a USB stick.
>>> in local.conf I have set:
>>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>>
>>> In order to reduce complexity I now use the standard
>>> core-image-minimal-initramfs without .bbappend. I can confirm (from
>>> seeing the task) that bitbake bundled the kernel with the initramfs.
>>>
>>> You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7
>>>
>>> To my understanding the initramfs should be embedded in /boot/bzImage.
>>> However since I use an intel platform I also have a /boot/microcode.cp=
io
>>> which gets loaded via "initrd /microcode.cpio". Removing this line in
>>> grub does not enable me to get an initramfs prompt either (again, usin=
g
>>> break as option).
>>>
>>> Did I forget some configuration or do I have to put the break statemen=
t
>>> at a very specific position within the "linux ..." boot command ? Do y=
ou
>>> know which bitbake variables to check ? (both set in local.conf do not
>>> get overwritten, already checked this). I got the thud branch checked
>>> out in all my meta-layers except for meta-qt which is currently on
>>> master branch.
>>>
>>> Help is much appreciated !
>>>
>>> Best regards
>>> Moritz
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

--------------50BBFE2BF509D7D9F956762E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hello,<br>
      I think I found the issue. ( see below )<br>
    </p>
    <div class=3D"moz-cite-prefix">On 01.07.19 15:57, Zoran Stojsavljevic
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=3DqgKPQMxcUhWiadg@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hello Moritz,

Too hot here, in Belgrade... Where I am resting for the Time being
(actually, this message given to my invisible spying security "angels"
on this list)...  :-) Projected +38C degrees today. Too hot for this
too old Siberian untouchable bobcat!</pre>
    </blockquote>
    Luckily it's a rather cold day in germany, thanks that you still
    take the time to answer !<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=3DqgKPQMxcUhWiadg@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">I started from the core-ima=
ge-minimal to have a small image and
extended it with the features I need, which is e.g. a graphical system.
The console=3D[...] part in the kernel command line is probably a
remnant but my image boots into the GUI. Is this a problem ?
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Nope, it is not. If you need to do it correctly, you should use
bitbake -k core-image-sato build command (my best educated guess).
Then, I do not feel comfortable seeing in your kernel command line
serial interface, do you agree? </pre>
    </blockquote>
    Yes that is true.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=3DqgKPQMxcUhWiadg@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">YOCTO maintainers, any additi=
onal
advices?

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">My bootloader is currently =
grub, the EFI is AM.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Nope. Eeeeeeeeek. Wrong. Currently, your boot-loader is UEFI AMI. Your
OS (Linux probably, U name it) boot-loader is GRUB2. Let us keep it
contained, sane and sober.

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Sorry but I can't find this=
 info in the EFI.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Could you, please try the following command being root: dmesg | grep
MCU. or grep mcu, or grep CPUID or grep cpuid?? Please, post results
to this list (to me).</pre>
    </blockquote>
    No luck unfortunately (used grep -i)<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=3DqgKPQMxcUhWiadg@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Could you, also, send to YOCTO list/me attached file:
/boot/microcode.cpio so I can somehow (?) inspect it? ;-)</pre>
    </blockquote>
    I send it to you directly, so I don't spam the list with a large
    attachment.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=3DqgKPQMxcUhWiadg@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">2GB, single channel.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
All Cool. E3825 by HW/silicon design could/does NOT support multiple
memory channels. ONLY single... But even YOCTO primes (INTEL ones from
this list) are not gonna tell this to you. Not 'cause they are nasty.
They are NOT aware/they are ignorant (with the purpose)! ;-))

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">No, the boot does not stop.=
 Even if I do issue "break=3Dpremount" I
end up in my graphical interface with the rootfs mounted. This is the
last message in the log: EXT4-fs (sdb2): re-mounted. Opts: (null)
The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2
(when booting from stick)
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Yes, from <a class=3D"moz-txt-link-freetext" href=3D"https://pastebin.com/=
ya7iCtq7">https://pastebin.com/ya7iCtq7</a>, so it is remounted rw, not
read only. So, it seems that you have passed dracut phase. and mounted
SD or flash rootfs. So, initramfs is NOT your true problem, is it???</pre>
    </blockquote>
    The thing is that the boot works but I want an initramfs that can be
    used for updating (in case the rootfs is broken). However I need to
    be able to intercept the boot process there because otherwise I
    can't deploy an update mechanism, that's what I was trying.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=3DqgKPQMxcUhWiadg@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Zoran
_______


</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">No, the boot does not stop.=
 Even if I do issue "break=3Dpremount" I end up
in my graphical interface with the rootfs mounted. This is  the last messa=
ge
in the log: EXT4-fs (sdb2): re-mounted. Opts: (null) The rootfs partition =
is
always 2, so either /dev/sda2 or /dev/sdb2 (when booting from stick)
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <p>So for the issue...<br>
      I expected yocto to put the bundled bzImage onto my rootfs. This
      was not the case. My image directory contains 2x bzImage, one
      bundled and one unbundled. Apparently yocto puts the
      &gt;un&lt;bundled image onto my /boot partition and uses it for
      boot. So of course I couldn't access initramfs in this case. Now I
      get to the initramfs statement "dropping to shell" if I
      intentionally boot with wrong rootfs.<br>
      Still I don't get the interactive shell.<br>
      On the github ostroproject site I found this:</p>
    <p># debug: adds debug boot parameters like 'shell' and 'debug', see<b=
r>
      #=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta/recipes-core/initrd=
scripts/initramfs-framework/debug
      for details<br>
      # Could be removed in more minimal product image.<br>
      PACKAGE_INSTALL +=3D "initramfs-module-debug"</p>
    <p>including the module-debug still does not enable me to get an
      interactive shell. <br>
      I was following this site: <a class=3D"moz-txt-link-freetext" href=
=3D"https://wiki.debian.org/InitramfsDebug">https://wiki.debian.org/Initra=
mfsDebug</a><br>
      I am aware that yocto is no debian but I expected that kernel
      parameters (like 'break') would be independent of the
      distribution.</p>
    <p>Lastly I do not really need the interactive shell, it is enough
      if I can deploy a custom init script in the initramfs. Still I
      think that getting an initramfs shell should be as simple as
      stating the name of the initramfs image and setting the
      "INITRAMFS_DO_BUNDLE" variable.</p>
    <p>Best regards<br>
      Moritz<br>
    </p>
    <table class=3D"highlight tab-size js-file-line-container"
      data-tab-size=3D"8">
      <tbody>
        <tr>
          <td id=3D"LC23" class=3D"blob-code blob-code-inner js-file-line"=
><br>
          </td>
        </tr>
        <tr>
        </tr>
      </tbody>
    </table>
    <blockquote type=3D"cite"
cite=3D"mid:CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=3DqgKPQMxcUhWiadg@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">
On Mon, Jul 1, 2019 at 11:20 AM Moritz Porst <a class=3D"moz-txt-link-rfc2=
396E" href=3D"mailto:moritz.porst@gmx.de">&lt;moritz.porst@gmx.de&gt;</a> =
wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">
Hello Zoran,
thanks for your answer

On 28.06.19 14:26, Zoran Stojsavljevic wrote:

</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">INITRAMFS_IMAGE =3D "core=
-image-minimal-initramfs"
INITRAMFS_IMAGE_BUNDLE =3D "1"
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">...
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">You can find the /var/log=
/dmesg here: <a class=3D"moz-txt-link-freetext" href=3D"https://pastebin.c=
om/ya7iCtq7I">https://pastebin.com/ya7iCtq7I</a>
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">
Some hints...

[1] Kernel command line: BOOT_IMAGE=3D/bzImage root=3DPARTUUID=3D71d1d94a-=
83e8-4895-98eb-35309f58119f
break=3Dpremount quiet rootwait rootwait rootfstype=3Dext4 console=3DttyS0=
,115200 console=3Dtty0

input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:0=
0/input/input7
fbcon: inteldrmfb (fb0) is primary device
Console: switching to colour frame buffer device 128x48
i915 0000:00:02.0: fb0: inteldrmfb frame buffer device
snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops i915_audio_component_b=
ind_ops [i915])

Hmmmmm... You are using console and serial, but full i915 GFX kernel drive=
r is still included in the build???

I started from the core-image-minimal to have a small image and extended i=
t with the features I need, which is e.g. a graphical system. The console=
=3D[...] part in the kernel command line is probably a remnant but my imag=
e boots into the GUI. Is this a problem ?


[2] efi: EFI v2.31 by American Megatrends

Using AMI BIOS as boot loader FW... OK?! Am I correct?

My bootloader is currently grub, the EFI is AM.


[3] smpboot: CPU0: Intel(R) Atom(TM) CPU  E3825  @ 1.33GHz (family: 0x6, m=
odel: 0x37, stepping: 0x9)

This is CPUID ID 0x30679, which uses MCU... Which MicroCodeUnit? M0130679x=
xx (info from AMI BIOS)?

Sorry but I can't find this info in the EFI


[4] Using INTEL ATOM BYT E3825 dual core (sans Hyper-threading), implies t=
hat you are using
4GB (e820 messages) as single channel (one memory module DDR3 as 4GB)! Am =
I correct (important)?

2GB, single channel.


[5] Dracut phase?!
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">To my understanding the i=
nitramfs should be embedded in /boot/bzImage.
However since I use an intel platform I also have a /boot/microcode.cpio
which gets loaded via "initrd /microcode.cpio". Removing this line in
grub does not enable me to get an initramfs prompt either (again, using
break as option).
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">
You are obviously stopping in boot phase called dracut. Please, try to mou=
nt by hand
/dev/sda(whatever)... You should use fdisk -l command, or do ls -al /dev |=
 grep sda to
dig out which partition you need to mount to /tmp dir to see rootfstype=3D=
ext4 (HDD/SSD)

No, the boot does not stop. Even if I do issue "break=3Dpremount" I end up=
 in my graphical interface with the rootfs mounted. This is the last messa=
ge in the log:
EXT4-fs (sdb2): re-mounted. Opts: (null)
The rootfs partition is always 2, so either /dev/sda2 or /dev/sdb2 (when b=
ooting from stick)

_______

Just thinking loud... .. .

Hope this helps (has very little to do with YOCTO build system, BTW) . ;-)

Zoran
_______


On Fri, Jun 28, 2019 at 11:22 AM Moritz Porst <a class=3D"moz-txt-link-rfc=
2396E" href=3D"mailto:moritz.porst@gmx.de">&lt;moritz.porst@gmx.de&gt;</a>=
 wrote:
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">
Hello,
I currently try to deploy a single rootfs update mechanism for my
embedded device. I can't boot to initramfs using either "break" or
"break=3Dpremount" (without quotes...). I tried this in systemd-boot and
grub-efi (always efi boot) but the boot process just continues normally.
If I insert at the same point e.g. "quiet" this argument is recognised.
I boot the .wic image with a separate boot partition from a USB stick.
in local.conf I have set:
INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
INITRAMFS_IMAGE_BUNDLE =3D "1"

In order to reduce complexity I now use the standard
core-image-minimal-initramfs without .bbappend. I can confirm (from
seeing the task) that bitbake bundled the kernel with the initramfs.

You can find the /var/log/dmesg here: <a class=3D"moz-txt-link-freetext" h=
ref=3D"https://pastebin.com/ya7iCtq7">https://pastebin.com/ya7iCtq7</a>

To my understanding the initramfs should be embedded in /boot/bzImage.
However since I use an intel platform I also have a /boot/microcode.cpio
which gets loaded via "initrd /microcode.cpio". Removing this line in
grub does not enable me to get an initramfs prompt either (again, using
break as option).

Did I forget some configuration or do I have to put the break statement
at a very specific position within the "linux ..." boot command ? Do you
know which bitbake variables to check ? (both set in local.conf do not
get overwritten, already checked this). I got the thud branch checked
out in all my meta-layers except for meta-qt which is currently on
master branch.

Help is much appreciated !

Best regards
Moritz

=2D-
_______________________________________________
yocto mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@yoctoproject.or=
g">yocto@yoctoproject.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoctoproject.org/=
listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
        </blockquote>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------50BBFE2BF509D7D9F956762E--
