Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E165E00C43; Mon, 17 Jun 2019 02:57:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E291E008F2
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 02:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1560765433;
	bh=wht9FsLJCq0fT4Bcv1Dybvke8hmgE8Us9txNaAaypFA=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=etcTjlHsDP8ST2pJnRGW5Xixg9TX6P5GKFrU/xSoLEowB849NNxvh/q+RWSSkc5xa
	a1HtHcVB31ijrju5/PYeUMv3zAD9RJZSiImIlk5q3gv99Q/mZnsIELDUnF7p6uuwbo
	j2gYHKs5rTlr/Hldrexam3Ue9jGfLuPiWkQ1p2VY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx001
	[212.227.17.190]) with ESMTPSA (Nemesis) id 0Lrek1-1idHIC32Oj-013Ppi;
	Mon, 17 Jun 2019 11:57:13 +0200
To: Stefano Babic <sbabic@denx.de>, yocto@yoctoproject.org
References: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
	<CAGAf8LzTzOPr8p0Jf61tOu2U50fVafFiwV1X3WTVtPEYtv+BXg@mail.gmail.com>
	<trinity-c1af16bc-9d60-4a88-a48b-24690878e39b-1560507591276@3c-app-gmx-bs22>
	<bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de>
	<7935c256-d143-e826-8021-db787d98477c@gmx.de>
	<68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <a42b0c0a-bf68-92c0-1e91-d767485b7de8@gmx.de>
Date: Mon, 17 Jun 2019 11:57:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de>
X-Provags-ID: V03:K1:YPM5pl1IZBtE/ZchA97n5cbGul4MMZCViz/QOcTPGzsBl3et9SS
	nxBNayr5CBL56EpU5Kk/f7EP+cKAeLGIj84QYjO/O5gnjI9k6NsI4uIJvhnBBIQJFsNXGah
	Fd3yFRzmjTNApFZHZZ2zr6WsE+enDH36sJavWDVIEZKtkAbMY3ASRtovlm+l2C0oE+EVU6g
	6L4l3XC2M5Tf9D/WO70HQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:MMDj8QubYKU=:gPfJUCrtohQgV/w0gfutCr
	hSNPUvIHchpCHVPgtAhQ7Z+bsHLZdckSOMiTB0imLtty6t2V8bIBoGh5Vi0z+K4op6e4rmotQ
	TRoxxdY4cRClMSzZmjzm94FBoydCPb0g+UGyZQvZ+DQMVs9EdyCKHdakkFwE9Z5gizXQmS7mT
	jvCO+vzF/T9P0sIr3IrwVG4rif/WemjiAAuakJQMFDV7GDvlIdhLtLc3zRrPZwubnkkcthjqb
	u2yjQdJwN3zsHPb04ff/u4xA4ob7DCRwkzkaPKPXGc7hB2f14a7RvlnELbUrp9aKvr8YUqFE6
	p7BNnctSnyM90ov7TDQ7aaZ2pqRawdRHcJiht5beGQtz5TyIGAqEtVl/4ndeyp3lG/r4rXAoD
	Ru/4HfjY6Vt073aGai7nnc00oROMaE2fu8QRSI3s5V5J0YfgAS/Y2TxmuTPG7cP6+8LBy0n7n
	PkwnnYyL/2uRpFfuXry2xWlJMQD5QgII8csMfIoFlLLFoL4CTBxiHntxG0dYbxwHGRie6V0bN
	RJ95cmdebqUVPtqXy+wRKyJAVolNxgnpTV3F0/y8pxon+SbXaxRFXSo59MkibUOGPG2jhvjIt
	/RQPgPWWA5QyH7Y5Gko6JbMc6ReaaivhFCfCmuT8A+JqI3MdOZmNneUL80QiyYXAmsEx2qgvm
	My/87MfqNDtHibRykFzH5N4RY+pL1Q2FRnHDxqP0IC7wYdXjUeNvaLsSdMgU3P6lsLH7HAiyp
	tbSqQOzAfhVGeTbxaK7AyH/QhMMwowjTAQthJSAeRrnNGNfkskKbw01FlI4/Ee/OHQDkTQ4XR
	APpqNv+Wev0JOBItK4usRURqx/9uhpInkK2h6VER1WQwRpZ7NT/TSYXHsEecY9bXx3+cdPEn4
	PgCqUP0pMCKyeoF9Ynh2zx5q3nMZbs6Ch9aI7SF84WJuzcavA1h/2jyeIbIMjsvOTWo6te2Vv
	FbLNsiKYvdb5ejMMFLGEa0ef3pTvCP/tawkrMrlizwUS3fEhmLmqb
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
X-List-Received-Date: Mon, 17 Jun 2019 09:57:17 -0000
Content-Type: multipart/alternative;
	boundary="------------EEFBC508742347F7272E6609"
Content-Language: en-US

--------------EEFBC508742347F7272E6609
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Stefano

On 17.06.19 09:19, Stefano Babic wrote:
> Hi Moritz,
>
> On 17/06/19 08:23, Moritz Porst wrote:
>> Hello Stefano,
>> Thanks very much for your answer
>>
>> On 14.06.19 14:14, Stefano Babic wrote:
>>> Hi Moritz,
>>>
>>> On 14/06/19 12:19, Moritz Porst wrote:
>>>> (Sorry, the answer should go to everyone)
>>>> Thanks for your response, unfortunately it didn't work out for me.
>>>> Because I am not 100% sure whether I did the correct thing I describe=
 it:
>>>> In my layer I went to recipes-kernel/kernel/files, here I added a fil=
e
>>>> defconfig which I filled with the content of your config-initramfs
>>>> my linux-yocto_%.bbappend, residing one level lower (kernel), got thi=
s
>>>> file added so it reads (in its entirety):
>>>>
>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>> SRC_URI +=3D "file://0001-sdcard-power-management-off.patch"
>>>> SRC_URI +=3D "file://defconfig"
>>>>
>>>> However I *also* have a file called defconfig in meta-swupdate which =
is
>>>> basically the swupdate config that comes from menuconfig. I let this
>>>> untouched but since this is not the kernel defconfig I guess you didn=
't
>>>> mean this file ?
>>>>
>>>> Additionally I can't mount the rootfs with the failed boot so I canno=
t
>>>> access the dmesg log file. Any advice here ?
>>>>
>>>> Best regards
>>>> Moritz
>>>>
>>>>
>>>>
>>>> *Gesendet:*=C2=A0Freitag, 14. Juni 2019 um 11:00 Uhr
>>>> *Von:*=C2=A0"Zoran Stojsavljevic" <zoran.stojsavljevic@gmail.com>
>>>> *An:*=C2=A0"Moritz Porst" <Moritz.Porst@gmx.de>
>>>> *Cc:*=C2=A0"Yocto Project" <yocto@yoctoproject.org>
>>>> *Betreff:*=C2=A0Re: [yocto] [meta-swupdate] failed update leads to ke=
rnel panic
>>>>> However if I abort the update while running (i.e. simulating a power=
 cut)
>>>>> and then reboot I end up in a kernel panic: "Unable to mount rootfs =
on
>>>>> unknown block". My understanding is that I should at least end up in=
 a
>>>>> busybox or that the update is retried, but this does not happen.
>>>> You missed to attach failed dmesg while the system booted and aborted=
.
>>>> Nevertheless, I expect problem with your defconfig, which does NOT
>>>> have options set for initramfs. These ones:
>>>> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/co=
nfig-initramfs
>>>>
>>>> Please, could you add these one to your current .config, this might
>>>> very well solve your problem.
>>>>
>>>> Best Regards,
>>>> Zoran
>>>> _______
>>>>
>>>> On Fri, Jun 14, 2019 at 10:15 AM Moritz Porst <Moritz.Porst@gmx.de> w=
rote:
>>>>> Hello,
>>>>>
>>>>> I am currently having trouble to get swupdate working properly.
>>>>> My problem:
>>>>> I can execute swupdate -i normally and if the update fits I have no
>>>> problem. However if I abort the update while running (i.e. simulating=
 a
>>>> power cut) and then reboot I end up in a kernel panic: "Unable to mou=
nt
>>>> rootfs on unknown block". My understanding is that I should at least =
end
>>>> up in a busybox or that the update is retried, but this does not happ=
en.
>>>>> I receive 1 error when updating which does not stop the update: "Cou=
ld
>>>> not find MTD".
>>>>> My configuration:
>>>>> I have a single rootfs and a separate boot partition. I build the
>>>> initramfs using:
>>> You have a *single* rootfs, you stop an upgrade (resulting of course i=
n
>>> a corrupted rootfs or worse), and you wonder that kernel cannot mount
>>> it....your update concept is broken.
>> Well conceptually I want to go through the bootloader, I just fail to
>> understand how I tell swupdate to do this.
>>> You *must* check the bootloader marker in U-Boot (default is the
>>> "recovery_status" variable) and you *mus*t start again the updater (th=
e
>>> ramdisk) until the marker (it is a transaction flag) is set. It is
>>> erased by SWUpdate only after a successful update. You are now startin=
g
>>> your board with a half-completed update.
>> So I configured swupdate in menuconfig to work with grub which I set in
>> my machine as "EFI_PROVIDER". Doesn't this single rootfs update strateg=
y
>> work with grub ?
> Yes, but you have to set / configure yourself how Grub start, that is a
> suitable grub.cfg where variables in grubenv are evalutated (do not
> forget load_env in grub.cfg).

Ok I was not aware about this. my grub.cfg now reads:
entry {
load_env
linux ./bzImage [options...]
initrd microcode.cpio
}

>
> The interface between SWUpdate and Grub is grubenv - SWUpdate just sets
> variables, but it is duty of bootloader to evaluated them.
>
>> (I prefer to stick to EFI because partitioning of
>> images works out of the box with .wic images)
>> When you say "you must start again the updater", that's where I'm lost.
>>  From the documentation I understand that I initiate an update using
>> "swupdate -i abc.swu" but this just runs the update without setting any
>> flag for the bootloader.
> SWUpdate sets

I have an update that is actually too large for the rootfs partition to
produce an update failure. SWUpdate then sets recovery_status=3Dfailed. On
boot I end up in a kernel panic
If I power off before the update finishes I get no recovery_status in
grubenv.
Manually adding recovery_status=3Din_progress also does not work (of
course maintaining the 1024 file size). "Does not work" means I end up
in a kernel panic.

>
>> One more thing: swupdate complains that there is no grubenv file.
> Then it does not work, you have to fix it...
>
>> I
>> defined a path in the config file and create this file using
>> "grub-editenv /path/as/in/config create".
> Grubenv is just a simple 1KB file, you can dump it.
>
>> swupdate does not give an
>> error after I have done this.
> If the interface to bootloader (for grub, this means grubenv) is
> specified and correct, SWUpdate will set the variable "recovery_status"
> as transaction flag. You have to evaluate it in grub.cfg and start the
> ramdisk again if the variable is set.

This confuses me. The only way I see of making swupdate set
"recovery_status" is to invoke swupdate -i updatefile.swu. However this
immediately invokes the update, no chance for me to intercept or "start
the ramdisk again".

I have a feeling that I misunderstand something about the ramdisk. To my
understanding this is the microcode.cpio file which is invoked lastly in
the grub entry. It then should execute the swupdate init scripts I guess
? They again should be able to understand the recovery_status variable
and interpret it.
Is this correct or am I entirely wrong about it ? Sorry for the trouble
but I feel a bit lost here.

Best regards
Moritz

>
> Best regards,
> Stefano Babic
>
>>> Best regards,
>>> Stefano Babic
>> Best regards
>> Moritz
>>
>>>>> ---
>>>>> IMAGE_INSTALL =3D "base-files \
>>>>> base-passwd \
>>>>> swupdate \
>>>>> busybox \
>>>>> libconfig \
>>>>> util-linux-sfdisk \
>>>>> mtd-utils \
>>>>> mtd-utils-ubifs \
>>>>> ${@bb.utils.contains('SWUPDATE_INIT', 'tiny',
>>>> 'virtual/initscripts-swupdate', 'initscripts sysvinit', d)} \
>>>>> "
>>>>> ---
>>>>> This is taken from swupdate-image. I include the same packages (via
>>>> _append) in my base image, is this necessary ?
>>>>> I bundle the initramfs with my image using INITRAMFS_IMAGE_BUNDLE =
=3D "1"
>>>>>
>>>>> Can you see a mistake I made ?
>>>>>
>>>>> Best regards
>>>>> Moritz
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto

--------------EEFBC508742347F7272E6609
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><font size=3D"-1">Hi Stefano</font><br>
    </p>
    <div class=3D"moz-cite-prefix">On 17.06.19 09:19, Stefano Babic wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi Moritz,

On 17/06/19 08:23, Moritz Porst wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Hello Stefano,
Thanks very much for your answer

On 14.06.19 14:14, Stefano Babic wrote:
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">Hi Moritz,

On 14/06/19 12:19, Moritz Porst wrote:
</pre>
          <blockquote type=3D"cite">
            <pre class=3D"moz-quote-pre" wrap=3D"">(Sorry, the answer shou=
ld go to everyone)
Thanks for your response, unfortunately it didn't work out for me.
Because I am not 100% sure whether I did the correct thing I describe it:
In my layer I went to recipes-kernel/kernel/files, here I added a file
defconfig which I filled with the content of your config-initramfs
my linux-yocto_%.bbappend, residing one level lower (kernel), got this
file added so it reads (in its entirety):
=C2=A0
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
SRC_URI +=3D <a class=3D"moz-txt-link-rfc2396E" href=3D"file://0001-sdcard=
-power-management-off.patch">"file://0001-sdcard-power-management-off.patc=
h"</a>
SRC_URI +=3D <a class=3D"moz-txt-link-rfc2396E" href=3D"file://defconfig">=
"file://defconfig"</a>
=C2=A0
However I *also* have a file called defconfig in meta-swupdate which is
basically the swupdate config that comes from menuconfig. I let this
untouched but since this is not the kernel defconfig I guess you didn't
mean this file ?
=C2=A0
Additionally I can't mount the rootfs with the failed boot so I cannot
access the dmesg log file. Any advice here ?
=C2=A0
Best regards
Moritz
=C2=A0
=C2=A0
=C2=A0
*Gesendet:*=C2=A0Freitag, 14. Juni 2019 um 11:00 Uhr
*Von:*=C2=A0"Zoran Stojsavljevic" <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:zoran.stojsavljevic@gmail.com">&lt;zoran.stojsavljevic@gmail.co=
m&gt;</a>
*An:*=C2=A0"Moritz Porst" <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:Moritz.Porst@gmx.de">&lt;Moritz.Porst@gmx.de&gt;</a>
*Cc:*=C2=A0"Yocto Project" <a class=3D"moz-txt-link-rfc2396E" href=3D"mail=
to:yocto@yoctoproject.org">&lt;yocto@yoctoproject.org&gt;</a>
*Betreff:*=C2=A0Re: [yocto] [meta-swupdate] failed update leads to kernel =
panic
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">However if I abort th=
e update while running (i.e. simulating a power cut)
and then reboot I end up in a kernel panic: "Unable to mount rootfs on
unknown block". My understanding is that I should at least end up in a
busybox or that the update is retried, but this does not happen.
</pre>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">You missed to attach fa=
iled dmesg while the system booted and aborted.
Nevertheless, I expect problem with your defconfig, which does NOT
have options set for initramfs. These ones:
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/ZoranStojsav=
ljevic/bbb-yocto/blob/master/custom/config-initramfs">https://github.com/Z=
oranStojsavljevic/bbb-yocto/blob/master/custom/config-initramfs</a>

Please, could you add these one to your current .config, this might
very well solve your problem.

Best Regards,
Zoran
_______

On Fri, Jun 14, 2019 at 10:15 AM Moritz Porst <a class=3D"moz-txt-link-rfc=
2396E" href=3D"mailto:Moritz.Porst@gmx.de">&lt;Moritz.Porst@gmx.de&gt;</a>=
 wrote:
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">Hello,

I am currently having trouble to get swupdate working properly.
My problem:
I can execute swupdate -i normally and if the update fits I have no
</pre>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">problem. However if I a=
bort the update while running (i.e. simulating a
power cut) and then reboot I end up in a kernel panic: "Unable to mount
rootfs on unknown block". My understanding is that I should at least end
up in a busybox or that the update is retried, but this does not happen.
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">I receive 1 error whe=
n updating which does not stop the update: "Could
</pre>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">not find MTD".
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">My configuration:
I have a single rootfs and a separate boot partition. I build the
</pre>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">initramfs using:
</pre>
          </blockquote>
          <pre class=3D"moz-quote-pre" wrap=3D"">You have a *single* rootf=
s, you stop an upgrade (resulting of course in
a corrupted rootfs or worse), and you wonder that kernel cannot mount
it....your update concept is broken.
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">Well conceptually I want to=
 go through the bootloader, I just fail to
understand how I tell swupdate to do this.
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">You *must* check the boot=
loader marker in U-Boot (default is the
"recovery_status" variable) and you *mus*t start again the updater (the
ramdisk) until the marker (it is a transaction flag) is set. It is
erased by SWUpdate only after a successful update. You are now starting
your board with a half-completed update.
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">
So I configured swupdate in menuconfig to work with grub which I set in
my machine as "EFI_PROVIDER". Doesn't this single rootfs update strategy
work with grub ?
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Yes, but you have to set / configure yourself how Grub start, that is a
suitable grub.cfg where variables in grubenv are evalutated (do not
forget load_env in grub.cfg).</pre>
    </blockquote>
    <p><font size=3D"-1">Ok I was not aware about this. my grub.cfg now
        reads:<br>
        entry {<br>
        load_env<br>
        linux ./bzImage [options...]<br>
        initrd microcode.cpio<br>
        }</font><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">

The interface between SWUpdate and Grub is grubenv - SWUpdate just sets
variables, but it is duty of bootloader to evaluated them.</pre>
    </blockquote>
    <blockquote type=3D"cite"
      cite=3D"mid:68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">(I prefer to stick to EFI b=
ecause partitioning of
images works out of the box with .wic images)
When you say "you must start again the updater", that's where I'm lost.
=46rom the documentation I understand that I initiate an update using
"swupdate -i abc.swu" but this just runs the update without setting any
flag for the bootloader.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
SWUpdate sets</pre>
    </blockquote>
    <p><font size=3D"-1">I have an update that is actually too large for
        the rootfs partition to produce an update failure. SWUpdate then
        sets recovery_status=3Dfailed. On boot I end up in a kernel panic<=
br>
        If I power off before the update finishes I get no
        recovery_status in grubenv.<br>
        Manually adding recovery_status=3Din_progress also does not work
        (of course maintaining the 1024 file size). "Does not work"
        means I end up in a kernel panic.<br>
      </font><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">One more thing: swupdate co=
mplains that there is no grubenv file.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Then it does not work, you have to fix it...

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">I
defined a path in the config file and create this file using
"grub-editenv /path/as/in/config create".
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Grubenv is just a simple 1KB file, you can dump it.

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">swupdate does not give an
error after I have done this.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
If the interface to bootloader (for grub, this means grubenv) is
specified and correct, SWUpdate will set the variable "recovery_status"
as transaction flag. You have to evaluate it in grub.cfg and start the
ramdisk again if the variable is set.</pre>
    </blockquote>
    <p><font size=3D"-1">This confuses me. The only way I see of making
        swupdate set "recovery_status" is to invoke swupdate -i
        updatefile.swu. However this immediately invokes the update, no
        chance for me to intercept or "start the ramdisk again".<br>
      </font></p>
    <p><font size=3D"-1">I have a feeling that I misunderstand something
        about the ramdisk. To my understanding this is the
        microcode.cpio file which is invoked lastly in the grub entry.
        It then should execute the swupdate init scripts I guess ? They
        again should be able to understand the recovery_status variable
        and interpret it.<br>
        Is this correct or am I entirely wrong about it ? Sorry for the
        trouble but I feel a bit lost here.</font></p>
    <p><font size=3D"-1">Best regards<br>
        Moritz<br>
      </font></p>
    <blockquote type=3D"cite"
      cite=3D"mid:68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Best regards,
Stefano Babic

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">Best regards,
Stefano Babic
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">
Best regards
Moritz

</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
          <blockquote type=3D"cite">
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">---
IMAGE_INSTALL =3D "base-files \
base-passwd \
swupdate \
busybox \
libconfig \
util-linux-sfdisk \
mtd-utils \
mtd-utils-ubifs \
${@bb.utils.contains('SWUPDATE_INIT', 'tiny',
</pre>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">'virtual/initscripts-sw=
update', 'initscripts sysvinit', d)} \
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">"
=2D--
This is taken from swupdate-image. I include the same packages (via
</pre>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">_append) in my base ima=
ge, is this necessary ?
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">I bundle the initramf=
s with my image using INITRAMFS_IMAGE_BUNDLE =3D "1"

Can you see a mistake I made ?

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
        <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------EEFBC508742347F7272E6609--
