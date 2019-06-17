Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42627E00D45; Mon, 17 Jun 2019 05:13:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C57E00951
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1560773631;
	bh=OpwXCn31WFNr1SeUSirC/Fi68Z4ioWe1dBpd6dcB3vo=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=RuxUY4JmAviV1/7QARUyEWL/+aInGRWhVV9txZolaiPFdrQUAI5DfoRdGbeNBdMoJ
	RcJsTPSBE01UsnO9FtH7VaU8K7d60nBp3yb/NtyIjg4Kl1iHMAWEcqMcQrBRoyfKlk
	phnBj82Jh+ispXe56EloA9mmP8GzXn5lYXu8f7ew=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx005
	[212.227.17.190]) with ESMTPSA (Nemesis) id 1M3lY1-1hc1Ai0Aeh-000qc3;
	Mon, 17 Jun 2019 14:13:51 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
	<CAGAf8LzTzOPr8p0Jf61tOu2U50fVafFiwV1X3WTVtPEYtv+BXg@mail.gmail.com>
	<trinity-c1af16bc-9d60-4a88-a48b-24690878e39b-1560507591276@3c-app-gmx-bs22>
	<bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de>
	<7935c256-d143-e826-8021-db787d98477c@gmx.de>
	<68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de>
	<a42b0c0a-bf68-92c0-1e91-d767485b7de8@gmx.de>
	<CAGAf8Ly+kKCeK5KVxh1qAQp8CRwOks5et+phN2Sju9PBhPORUA@mail.gmail.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <fa201976-fef8-e2d5-533b-4528611aa931@gmx.de>
Date: Mon, 17 Jun 2019 14:13:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8Ly+kKCeK5KVxh1qAQp8CRwOks5et+phN2Sju9PBhPORUA@mail.gmail.com>
X-Provags-ID: V03:K1:g7dB76au8QZwbK1kG11CglPwRm7eHq4ajN4+jlkmVnjOkrAKvZK
	Vj7LyjjQgiuHy0CcR7dRp6/O6aTED2fr70dhZoM6sYNRBGYy9UPiFYEQzLcVxqN8r59S8Sk
	BnZZhffK9vr4Efyx3IvbLlagSJYBKdW5vJ62CxWerPRqza/2JYajjmQXiX75e6Y56PmshEK
	t5I40rmBlHSc0VvZ8ZVbg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:wldmD7Vgbl0=:Jx43MM2SA5t+V6Mi3gxe5b
	ro6iWeIjaWO1zsnpBO5KktiGqEPn+dRVktM9psondb7RaX/chNmWYU2kA3OlUrh6xYqfGZkjP
	ZaRk/9J89VHe40fSW8CiQoCFX0bXShuInXdZc8q9HetzV26uSQPtFuAGzCB9nWBz4BTHR4lkH
	InSBDUm1VaulVz9wwqcduXXWlIjDOFFOawOMgPLOeBKNUKgUyWTCzU0TI4YNYHdA8KTgTeyjh
	1kY4cbJLNT9d7rnoWC3OXvtNVkK4uqzMtu/4pTOzGBnYodCcwhV/QAg0CZOFWLQ0M4scXArBp
	6j4pSbr+uGKgFxs8tu7weu/kx2x+FzannsctDEYRxG1wG3rYyItOZvZnYPb9X+8xw/h3rECzN
	BM+LSt7CPQFNgKCc+2TXD7KfGDPR/jxNhqLmN2+S9YHbW7hYaOi2yWEoViEJfqw1D+0QXSXpx
	QctQ2EuU/v/w6BKQ/c/3I+taYshRX/ui7VaA5GW/gsnn52Gh99cLxA/8cdvf5huTbvmiAlafr
	n0H1ucauome4JW75BPRIbVRmjXiZRQErFICx2rK3ruG5qdC80HiUXfVZhJhmRqNOuOw7iIjat
	zkbBtQeHz5m2dsnFNdKI/DBGr0IM5XT6S9H7omFMq3wlTUabLIOm9drkmiTg5o0uF4Qb1fdtW
	zoH3xu467g9YIR0Q688jL/00SssveL/MzOD7jzL7WIsZSJkriqjlikCbiRcTKSPBEzQneAkbO
	OSSF2nWZWh9L5RcDt0dMszV1+cND4raEg+bL2cxn1U7jWwDsJG1dLjz0xE6XzOkbg1XzJrSfO
	LKZtHqVwO7RojfIX9hG4s04G0rWhkLEBpTJIwWSqB/h+K3Seq83GsvuQuc1NqdFHz/uSAqyad
	8zMOJ9jPUdBqRq+uLpv3I/AoKUrYyqF+uWXlmrK0IhrZtI/ZBYaZ+Vk627uvgm/61p+BPkDKQ
	00maO9aAqPQUxO3cTst5Ds68DdINYPFhilmY1ohnlHTuKOkIDSQyuSrF1/ZXAqqSVRKwzRzMc
	7SXUATSSsZThJ9dnj6Nvzi9lQzOlNFiegJ+BhKj6ZmQTyg8HTgwqraC+tJZGpgs8gw==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-swupdate] failed update leads to kernel panic
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
X-List-Received-Date: Mon, 17 Jun 2019 12:13:58 -0000
Content-Type: multipart/alternative;
	boundary="------------0D445A071E007C8B29EB5111"
Content-Language: en-US

--------------0D445A071E007C8B29EB5111
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Zoran

On 17.06.19 12:55, Zoran Stojsavljevic wrote:
>> I have a feeling that I misunderstand something about the ramdisk.
>> To my understanding this is the microcode.cpio file which is invoked
>> lastly in the grub entry.
> Being you, I would for the starters exclude swupdate layer and see if
> everything works without swupdate: does normally work with initramfs
> (from grub). Maybe it works already.

I see the bundle_initramfs task being executed if I do any changes. The
boot process works without swupdate in the image. If anything was wrong
with the initramfs the whole system shouldn't be able to boot properly.
I don't get what you suggest me to try.

Best regards

Moritz

>
> But this is only me with my hints.
>
> Zoran
> _______
>
> On Mon, Jun 17, 2019 at 11:59 AM Moritz Porst <moritz.porst@gmx.de> wrot=
e:
>> Hi Stefano
>>
>> On 17.06.19 09:19, Stefano Babic wrote:
>>
>> Hi Moritz,
>>
>> On 17/06/19 08:23, Moritz Porst wrote:
>>
>> Hello Stefano,
>> Thanks very much for your answer
>>
>> On 14.06.19 14:14, Stefano Babic wrote:
>>
>> Hi Moritz,
>>
>> On 14/06/19 12:19, Moritz Porst wrote:
>>
>> (Sorry, the answer should go to everyone)
>> Thanks for your response, unfortunately it didn't work out for me.
>> Because I am not 100% sure whether I did the correct thing I describe i=
t:
>> In my layer I went to recipes-kernel/kernel/files, here I added a file
>> defconfig which I filled with the content of your config-initramfs
>> my linux-yocto_%.bbappend, residing one level lower (kernel), got this
>> file added so it reads (in its entirety):
>>
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>> SRC_URI +=3D "file://0001-sdcard-power-management-off.patch"
>> SRC_URI +=3D "file://defconfig"
>>
>> However I *also* have a file called defconfig in meta-swupdate which is
>> basically the swupdate config that comes from menuconfig. I let this
>> untouched but since this is not the kernel defconfig I guess you didn't
>> mean this file ?
>>
>> Additionally I can't mount the rootfs with the failed boot so I cannot
>> access the dmesg log file. Any advice here ?
>>
>> Best regards
>> Moritz
>>
>>
>>
>> *Gesendet:* Freitag, 14. Juni 2019 um 11:00 Uhr
>> *Von:* "Zoran Stojsavljevic" <zoran.stojsavljevic@gmail.com>
>> *An:* "Moritz Porst" <Moritz.Porst@gmx.de>
>> *Cc:* "Yocto Project" <yocto@yoctoproject.org>
>> *Betreff:* Re: [yocto] [meta-swupdate] failed update leads to kernel pa=
nic
>>
>> However if I abort the update while running (i.e. simulating a power cu=
t)
>> and then reboot I end up in a kernel panic: "Unable to mount rootfs on
>> unknown block". My understanding is that I should at least end up in a
>> busybox or that the update is retried, but this does not happen.
>>
>> You missed to attach failed dmesg while the system booted and aborted.
>> Nevertheless, I expect problem with your defconfig, which does NOT
>> have options set for initramfs. These ones:
>> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/conf=
ig-initramfs
>>
>> Please, could you add these one to your current .config, this might
>> very well solve your problem.
>>
>> Best Regards,
>> Zoran
>> _______
>>
>> On Fri, Jun 14, 2019 at 10:15 AM Moritz Porst <Moritz.Porst@gmx.de> wro=
te:
>>
>> Hello,
>>
>> I am currently having trouble to get swupdate working properly.
>> My problem:
>> I can execute swupdate -i normally and if the update fits I have no
>>
>> problem. However if I abort the update while running (i.e. simulating a
>> power cut) and then reboot I end up in a kernel panic: "Unable to mount
>> rootfs on unknown block". My understanding is that I should at least en=
d
>> up in a busybox or that the update is retried, but this does not happen=
.
>>
>> I receive 1 error when updating which does not stop the update: "Could
>>
>> not find MTD".
>>
>> My configuration:
>> I have a single rootfs and a separate boot partition. I build the
>>
>> initramfs using:
>>
>> You have a *single* rootfs, you stop an upgrade (resulting of course in
>> a corrupted rootfs or worse), and you wonder that kernel cannot mount
>> it....your update concept is broken.
>>
>> Well conceptually I want to go through the bootloader, I just fail to
>> understand how I tell swupdate to do this.
>>
>> You *must* check the bootloader marker in U-Boot (default is the
>> "recovery_status" variable) and you *mus*t start again the updater (the
>> ramdisk) until the marker (it is a transaction flag) is set. It is
>> erased by SWUpdate only after a successful update. You are now starting
>> your board with a half-completed update.
>>
>> So I configured swupdate in menuconfig to work with grub which I set in
>> my machine as "EFI_PROVIDER". Doesn't this single rootfs update strateg=
y
>> work with grub ?
>>
>> Yes, but you have to set / configure yourself how Grub start, that is a
>> suitable grub.cfg where variables in grubenv are evalutated (do not
>> forget load_env in grub.cfg).
>>
>> Ok I was not aware about this. my grub.cfg now reads:
>> entry {
>> load_env
>> linux ./bzImage [options...]
>> initrd microcode.cpio
>> }
>>
>> The interface between SWUpdate and Grub is grubenv - SWUpdate just sets
>> variables, but it is duty of bootloader to evaluated them.
>>
>> (I prefer to stick to EFI because partitioning of
>> images works out of the box with .wic images)
>> When you say "you must start again the updater", that's where I'm lost.
>>  From the documentation I understand that I initiate an update using
>> "swupdate -i abc.swu" but this just runs the update without setting any
>> flag for the bootloader.
>>
>> SWUpdate sets
>>
>> I have an update that is actually too large for the rootfs partition to=
 produce an update failure. SWUpdate then sets recovery_status=3Dfailed. O=
n boot I end up in a kernel panic
>> If I power off before the update finishes I get no recovery_status in g=
rubenv.
>> Manually adding recovery_status=3Din_progress also does not work (of co=
urse maintaining the 1024 file size). "Does not work" means I end up in a =
kernel panic.
>>
>>
>> One more thing: swupdate complains that there is no grubenv file.
>>
>> Then it does not work, you have to fix it...
>>
>> I
>> defined a path in the config file and create this file using
>> "grub-editenv /path/as/in/config create".
>>
>> Grubenv is just a simple 1KB file, you can dump it.
>>
>> swupdate does not give an
>> error after I have done this.
>>
>> If the interface to bootloader (for grub, this means grubenv) is
>> specified and correct, SWUpdate will set the variable "recovery_status"
>> as transaction flag. You have to evaluate it in grub.cfg and start the
>> ramdisk again if the variable is set.
>>
>> This confuses me. The only way I see of making swupdate set "recovery_s=
tatus" is to invoke swupdate -i updatefile.swu. However this immediately i=
nvokes the update, no chance for me to intercept or "start the ramdisk aga=
in".
>>
>> I have a feeling that I misunderstand something about the ramdisk. To m=
y understanding this is the microcode.cpio file which is invoked lastly in=
 the grub entry. It then should execute the swupdate init scripts I guess =
? They again should be able to understand the recovery_status variable and=
 interpret it.
>> Is this correct or am I entirely wrong about it ? Sorry for the trouble=
 but I feel a bit lost here.
>>
>> Best regards
>> Moritz
>>
>> Best regards,
>> Stefano Babic
>>
>> Best regards,
>> Stefano Babic
>>
>> Best regards
>> Moritz
>>
>> ---
>> IMAGE_INSTALL =3D "base-files \
>> base-passwd \
>> swupdate \
>> busybox \
>> libconfig \
>> util-linux-sfdisk \
>> mtd-utils \
>> mtd-utils-ubifs \
>> ${@bb.utils.contains('SWUPDATE_INIT', 'tiny',
>>
>> 'virtual/initscripts-swupdate', 'initscripts sysvinit', d)} \
>>
>> "
>> ---
>> This is taken from swupdate-image. I include the same packages (via
>>
>> _append) in my base image, is this necessary ?
>>
>> I bundle the initramfs with my image using INITRAMFS_IMAGE_BUNDLE =3D "=
1"
>>
>> Can you see a mistake I made ?
>>
>> Best regards
>> Moritz
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

--------------0D445A071E007C8B29EB5111
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Hi Zoran<br>
      </font></p>
    <div class="moz-cite-prefix">On 17.06.19 12:55, Zoran Stojsavljevic
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGAf8Ly+kKCeK5KVxh1qAQp8CRwOks5et+phN2Sju9PBhPORUA@mail.gmail.com">
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">I have a feeling that I misunderstand something about the ramdisk.
To my understanding this is the microcode.cpio file which is invoked
lastly in the grub entry.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Being you, I would for the starters exclude swupdate layer and see if
everything works without swupdate: does normally work with initramfs
(from grub). Maybe it works already.</pre>
    </blockquote>
    <p><font size="-1">I see the bundle_initramfs task being executed if
        I do any changes. The boot process works without swupdate in the
        image. If anything was wrong with the initramfs the whole system
        shouldn't be able to boot properly. I don't get what you suggest
        me to try.</font></p>
    <p><font size="-1">Best regards</font></p>
    <p><font size="-1">Moritz</font><br>
    </p>
    <blockquote type="cite"
cite="mid:CAGAf8Ly+kKCeK5KVxh1qAQp8CRwOks5et+phN2Sju9PBhPORUA@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">

But this is only me with my hints.

Zoran
_______

On Mon, Jun 17, 2019 at 11:59 AM Moritz Porst <a class="moz-txt-link-rfc2396E" href="mailto:moritz.porst@gmx.de">&lt;moritz.porst@gmx.de&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Hi Stefano

On 17.06.19 09:19, Stefano Babic wrote:

Hi Moritz,

On 17/06/19 08:23, Moritz Porst wrote:

Hello Stefano,
Thanks very much for your answer

On 14.06.19 14:14, Stefano Babic wrote:

Hi Moritz,

On 14/06/19 12:19, Moritz Porst wrote:

(Sorry, the answer should go to everyone)
Thanks for your response, unfortunately it didn't work out for me.
Because I am not 100% sure whether I did the correct thing I describe it:
In my layer I went to recipes-kernel/kernel/files, here I added a file
defconfig which I filled with the content of your config-initramfs
my linux-yocto_%.bbappend, residing one level lower (kernel), got this
file added so it reads (in its entirety):

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += <a class="moz-txt-link-rfc2396E" href="file://0001-sdcard-power-management-off.patch">"file://0001-sdcard-power-management-off.patch"</a>
SRC_URI += <a class="moz-txt-link-rfc2396E" href="file://defconfig">"file://defconfig"</a>

However I *also* have a file called defconfig in meta-swupdate which is
basically the swupdate config that comes from menuconfig. I let this
untouched but since this is not the kernel defconfig I guess you didn't
mean this file ?

Additionally I can't mount the rootfs with the failed boot so I cannot
access the dmesg log file. Any advice here ?

Best regards
Moritz



*Gesendet:* Freitag, 14. Juni 2019 um 11:00 Uhr
*Von:* "Zoran Stojsavljevic" <a class="moz-txt-link-rfc2396E" href="mailto:zoran.stojsavljevic@gmail.com">&lt;zoran.stojsavljevic@gmail.com&gt;</a>
*An:* "Moritz Porst" <a class="moz-txt-link-rfc2396E" href="mailto:Moritz.Porst@gmx.de">&lt;Moritz.Porst@gmx.de&gt;</a>
*Cc:* "Yocto Project" <a class="moz-txt-link-rfc2396E" href="mailto:yocto@yoctoproject.org">&lt;yocto@yoctoproject.org&gt;</a>
*Betreff:* Re: [yocto] [meta-swupdate] failed update leads to kernel panic

However if I abort the update while running (i.e. simulating a power cut)
and then reboot I end up in a kernel panic: "Unable to mount rootfs on
unknown block". My understanding is that I should at least end up in a
busybox or that the update is retried, but this does not happen.

You missed to attach failed dmesg while the system booted and aborted.
Nevertheless, I expect problem with your defconfig, which does NOT
have options set for initramfs. These ones:
<a class="moz-txt-link-freetext" href="https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/config-initramfs">https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/config-initramfs</a>

Please, could you add these one to your current .config, this might
very well solve your problem.

Best Regards,
Zoran
_______

On Fri, Jun 14, 2019 at 10:15 AM Moritz Porst <a class="moz-txt-link-rfc2396E" href="mailto:Moritz.Porst@gmx.de">&lt;Moritz.Porst@gmx.de&gt;</a> wrote:

Hello,

I am currently having trouble to get swupdate working properly.
My problem:
I can execute swupdate -i normally and if the update fits I have no

problem. However if I abort the update while running (i.e. simulating a
power cut) and then reboot I end up in a kernel panic: "Unable to mount
rootfs on unknown block". My understanding is that I should at least end
up in a busybox or that the update is retried, but this does not happen.

I receive 1 error when updating which does not stop the update: "Could

not find MTD".

My configuration:
I have a single rootfs and a separate boot partition. I build the

initramfs using:

You have a *single* rootfs, you stop an upgrade (resulting of course in
a corrupted rootfs or worse), and you wonder that kernel cannot mount
it....your update concept is broken.

Well conceptually I want to go through the bootloader, I just fail to
understand how I tell swupdate to do this.

You *must* check the bootloader marker in U-Boot (default is the
"recovery_status" variable) and you *mus*t start again the updater (the
ramdisk) until the marker (it is a transaction flag) is set. It is
erased by SWUpdate only after a successful update. You are now starting
your board with a half-completed update.

So I configured swupdate in menuconfig to work with grub which I set in
my machine as "EFI_PROVIDER". Doesn't this single rootfs update strategy
work with grub ?

Yes, but you have to set / configure yourself how Grub start, that is a
suitable grub.cfg where variables in grubenv are evalutated (do not
forget load_env in grub.cfg).

Ok I was not aware about this. my grub.cfg now reads:
entry {
load_env
linux ./bzImage [options...]
initrd microcode.cpio
}

The interface between SWUpdate and Grub is grubenv - SWUpdate just sets
variables, but it is duty of bootloader to evaluated them.

(I prefer to stick to EFI because partitioning of
images works out of the box with .wic images)
When you say "you must start again the updater", that's where I'm lost.
From the documentation I understand that I initiate an update using
"swupdate -i abc.swu" but this just runs the update without setting any
flag for the bootloader.

SWUpdate sets

I have an update that is actually too large for the rootfs partition to produce an update failure. SWUpdate then sets recovery_status=failed. On boot I end up in a kernel panic
If I power off before the update finishes I get no recovery_status in grubenv.
Manually adding recovery_status=in_progress also does not work (of course maintaining the 1024 file size). "Does not work" means I end up in a kernel panic.


One more thing: swupdate complains that there is no grubenv file.

Then it does not work, you have to fix it...

I
defined a path in the config file and create this file using
"grub-editenv /path/as/in/config create".

Grubenv is just a simple 1KB file, you can dump it.

swupdate does not give an
error after I have done this.

If the interface to bootloader (for grub, this means grubenv) is
specified and correct, SWUpdate will set the variable "recovery_status"
as transaction flag. You have to evaluate it in grub.cfg and start the
ramdisk again if the variable is set.

This confuses me. The only way I see of making swupdate set "recovery_status" is to invoke swupdate -i updatefile.swu. However this immediately invokes the update, no chance for me to intercept or "start the ramdisk again".

I have a feeling that I misunderstand something about the ramdisk. To my understanding this is the microcode.cpio file which is invoked lastly in the grub entry. It then should execute the swupdate init scripts I guess ? They again should be able to understand the recovery_status variable and interpret it.
Is this correct or am I entirely wrong about it ? Sorry for the trouble but I feel a bit lost here.

Best regards
Moritz

Best regards,
Stefano Babic

Best regards,
Stefano Babic

Best regards
Moritz

---
IMAGE_INSTALL = "base-files \
base-passwd \
swupdate \
busybox \
libconfig \
util-linux-sfdisk \
mtd-utils \
mtd-utils-ubifs \
${@bb.utils.contains('SWUPDATE_INIT', 'tiny',

'virtual/initscripts-swupdate', 'initscripts sysvinit', d)} \

"
---
This is taken from swupdate-image. I include the same packages (via

_append) in my base image, is this necessary ?

I bundle the initramfs with my image using INITRAMFS_IMAGE_BUNDLE = "1"

Can you see a mistake I made ?

Best regards
Moritz
--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>

--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------0D445A071E007C8B29EB5111--
