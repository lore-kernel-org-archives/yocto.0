Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21D93E00D6C; Sun, 16 Jun 2019 23:23:39 -0700 (PDT)
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
	*      [212.227.15.15 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B403FE00D44
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2019 23:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1560752616;
	bh=ic30IVuF1iYpoRu567zndGfg/0wGszSONtXKom7vd08=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=lJyX2sJQ3b4hH4yxt/Ebb03Xb07FOzKD8G+9ZsIaYwTZujbunRjMIfiyXyQTYMW6c
	EvfxukM7duAmJAOvYi6pzZl4mYgmbrwUCSt5apN1J2nOW8mzIhLGKvAjQsOknTOSZm
	j/g4rdwlLaWRF/NAr9+Jx6MfucKXhM4Q6obbOtJ0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx002
	[212.227.17.190]) with ESMTPSA (Nemesis) id 0LZz01-1iLh6j1JxV-00lmf9
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 08:23:36 +0200
To: yocto@yoctoproject.org
References: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
	<CAGAf8LzTzOPr8p0Jf61tOu2U50fVafFiwV1X3WTVtPEYtv+BXg@mail.gmail.com>
	<trinity-c1af16bc-9d60-4a88-a48b-24690878e39b-1560507591276@3c-app-gmx-bs22>
	<bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <7935c256-d143-e826-8021-db787d98477c@gmx.de>
Date: Mon, 17 Jun 2019 08:23:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de>
X-Provags-ID: V03:K1:O4DzfWPMX3nU47mAJ+PXKK+sv5KikuU8iVSKnkB0I+2CNfQV5hR
	4AXVASJ+BsPTuv06WrzQDp3o+S6Snx9MwwN6K0QuGBuBuzd19j2tYJxlhCV/K1aDtTgQ2NW
	Xf0bRRltWq9rVn/uN082edlcSv1QC1gapcHXK0H8c0QZE6MuUGpUgimGPlCkpGZ7tpqv/gt
	ARJPEcIPyvW9+dNzDEz0g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:IL5GgIshW4s=:JFL43vrATdDXmgmWCoAC7C
	pKXfUJwk3XnpwsKI4xhQSVLHWkSO6FaIAhpMJ1LYElE5StH20B+mQ50jko97pUhskT60UC1iM
	BA8WEHvclRkD9dJDL/1C4Iz2S+bFoVjZiHQ1kSysfoJX/Hb0EiooZMq64jLwLQDs6pOHnGJWT
	wkSFOykUQ7HA9oUPmnqS6BdqD+Ar8wyZk1P6ZLdt8op+zq29F4XxnZX3t1R3he3drEpnLf6zp
	7rckgGtVm1yGLtBljn+BZUUEmpoAo9Cy1nttL8t+GcZB7KvSephw66KSy4AmVb8nC/lxA/wAH
	Pv3qacta7nNEc+8HK4ebfhHOocYIhqkjGfzTGcIhu8BHDRDABnFAOmzj2vZxlqLPMehaOiuUV
	g7o+JPtGjXpIKdH5ch3XDmzeZAyF4CbBxnZIhEZKM75pE56mjIRhb8c96+6afTK681M944u/J
	G3XLH8QBmP/Qz36gtCFAyemJPqK5+ZY3wj7ob6hfqeTwOR/8jk6CjTDI+TDgrkHpZoNjmZEBb
	y8TpdPB5blruorZWnaCpkA3uQWDX8SZuurp1iHE+JFpGMKpNxWfAkADleSOF+fJLNtRGeBGnn
	ll9HfQELaTGa5x2zh4pzC0GIINIbiaVBXHoQajMLN1KjWOcmC70DyduiSIF3h6MH7IFgkxOVP
	sHTbt+EX4HjnDbJtMboKUHM3D86MQvpHxv1iDqjgcn1azCrXQM3FrTbcrMK5TF7MInCtQiHNS
	MnYZWMYxbw0CVZknjKIe+nLyBuqqchKPLAQrMraP9RDrOZdlc7kTWOHDhFjbAjygJhckKnv5V
	cPkTZ8ow0XlMG/7YfUGWbMH/G6kNlQMuLGV1Mso3GZpC9iUFamkgib5LzUr0ACt68QhLtWyew
	V9CP8+WZYCGAEQSHWXQNP8lOCRMb+F8IZStCukIxtOq/xwJfBDtsiwW+wRyvgnWJa6UI+sd1B
	Ms9lwt7kDUPqI5+nytVFp3HgiRhGbHoquhf32e0DNn5Q3Yw7yfs2D
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
X-List-Received-Date: Mon, 17 Jun 2019 06:23:39 -0000
Content-Type: multipart/alternative;
	boundary="------------9693972DA07FF9F7EEAE56B8"
Content-Language: en-US

--------------9693972DA07FF9F7EEAE56B8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Stefano,
Thanks very much for your answer

On 14.06.19 14:14, Stefano Babic wrote:
> Hi Moritz,
>
> On 14/06/19 12:19, Moritz Porst wrote:
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
>> *Gesendet:*=C2=A0Freitag, 14. Juni 2019 um 11:00 Uhr
>> *Von:*=C2=A0"Zoran Stojsavljevic" <zoran.stojsavljevic@gmail.com>
>> *An:*=C2=A0"Moritz Porst" <Moritz.Porst@gmx.de>
>> *Cc:*=C2=A0"Yocto Project" <yocto@yoctoproject.org>
>> *Betreff:*=C2=A0Re: [yocto] [meta-swupdate] failed update leads to kern=
el panic
>>> However if I abort the update while running (i.e. simulating a power c=
ut)
>>> and then reboot I end up in a kernel panic: "Unable to mount rootfs on
>>> unknown block". My understanding is that I should at least end up in a
>>> busybox or that the update is retried, but this does not happen.
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
>>> Hello,
>>>
>>> I am currently having trouble to get swupdate working properly.
>>> My problem:
>>> I can execute swupdate -i normally and if the update fits I have no
>> problem. However if I abort the update while running (i.e. simulating a
>> power cut) and then reboot I end up in a kernel panic: "Unable to mount
>> rootfs on unknown block". My understanding is that I should at least en=
d
>> up in a busybox or that the update is retried, but this does not happen=
.
>>> I receive 1 error when updating which does not stop the update: "Could
>> not find MTD".
>>> My configuration:
>>> I have a single rootfs and a separate boot partition. I build the
>> initramfs using:
> You have a *single* rootfs, you stop an upgrade (resulting of course in
> a corrupted rootfs or worse), and you wonder that kernel cannot mount
> it....your update concept is broken.
Well conceptually I want to go through the bootloader, I just fail to
understand how I tell swupdate to do this.
>
> You *must* check the bootloader marker in U-Boot (default is the
> "recovery_status" variable) and you *mus*t start again the updater (the
> ramdisk) until the marker (it is a transaction flag) is set. It is
> erased by SWUpdate only after a successful update. You are now starting
> your board with a half-completed update.

So I configured swupdate in menuconfig to work with grub which I set in
my machine as "EFI_PROVIDER". Doesn't this single rootfs update strategy
work with grub ? (I prefer to stick to EFI because partitioning of
images works out of the box with .wic images)
When you say "you must start again the updater", that's where I'm lost.
 From the documentation I understand that I initiate an update using
"swupdate -i abc.swu" but this just runs the update without setting any
flag for the bootloader.
One more thing: swupdate complains that there is no grubenv file. I
defined a path in the config file and create this file using
"grub-editenv /path/as/in/config create". swupdate does not give an
error after I have done this.

>
> Best regards,
> Stefano Babic

Best regards
Moritz

>
>
>>> ---
>>> IMAGE_INSTALL =3D "base-files \
>>> base-passwd \
>>> swupdate \
>>> busybox \
>>> libconfig \
>>> util-linux-sfdisk \
>>> mtd-utils \
>>> mtd-utils-ubifs \
>>> ${@bb.utils.contains('SWUPDATE_INIT', 'tiny',
>> 'virtual/initscripts-swupdate', 'initscripts sysvinit', d)} \
>>> "
>>> ---
>>> This is taken from swupdate-image. I include the same packages (via
>> _append) in my base image, is this necessary ?
>>> I bundle the initramfs with my image using INITRAMFS_IMAGE_BUNDLE =3D =
"1"
>>>
>>> Can you see a mistake I made ?
>>>
>>> Best regards
>>> Moritz
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

--------------9693972DA07FF9F7EEAE56B8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><font size=3D"-1">Hello Stefano,<br>
        Thanks very much for your answer</font><br>
    </p>
    <div class=3D"moz-cite-prefix"><font size=3D"-1">On 14.06.19 14:14,
        Stefano Babic wrote:</font><br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi Moritz,

On 14/06/19 12:19, Moritz Porst wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">(Sorry, the answer should g=
o to everyone)
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
          <pre class=3D"moz-quote-pre" wrap=3D"">However if I abort the up=
date while running (i.e. simulating a power cut)
and then reboot I end up in a kernel panic: "Unable to mount rootfs on
unknown block". My understanding is that I should at least end up in a
busybox or that the update is retried, but this does not happen.
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">
You missed to attach failed dmesg while the system booted and aborted.
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
          <pre class=3D"moz-quote-pre" wrap=3D"">
Hello,

I am currently having trouble to get swupdate working properly.
My problem:
I can execute swupdate -i normally and if the update fits I have no
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">problem. However if I abort=
 the update while running (i.e. simulating a
power cut) and then reboot I end up in a kernel panic: "Unable to mount
rootfs on unknown block". My understanding is that I should at least end
up in a busybox or that the update is retried, but this does not happen.
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">I receive 1 error when up=
dating which does not stop the update: "Could
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">not find MTD".
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">
My configuration:
I have a single rootfs and a separate boot partition. I build the
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">initramfs using:
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
You have a *single* rootfs, you stop an upgrade (resulting of course in
a corrupted rootfs or worse), and you wonder that kernel cannot mount
it....your update concept is broken.</pre>
    </blockquote>
    <font size=3D"-1">Well conceptually I want to go through the
      bootloader, I just fail to understand how I tell swupdate to do
      this.</font><br>
    <blockquote type=3D"cite"
      cite=3D"mid:bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">

You *must* check the bootloader marker in U-Boot (default is the
"recovery_status" variable) and you *mus*t start again the updater (the
ramdisk) until the marker (it is a transaction flag) is set. It is
erased by SWUpdate only after a successful update. You are now starting
your board with a half-completed update.</pre>
    </blockquote>
    <p><font size=3D"-1">So I configured swupdate in menuconfig to work
        with grub which I set in my machine as "EFI_PROVIDER". Doesn't
        this single rootfs update strategy work with grub ? (I prefer to
        stick to EFI because partitioning of images works out of the box
        with .wic images)<br>
        When you say "you must start again the updater", that's where
        I'm lost. From the documentation I understand that I initiate an
        update using "swupdate -i abc.swu" but this just runs the update
        without setting any flag for the bootloader. <br>
        One more thing: swupdate complains that there is no grubenv
        file. I defined a path in the config file and create this file
        using "grub-editenv /path/as/in/config create". swupdate does
        not give an error after I have done this.</font><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Best regards,
Stefano Babic</pre>
    </blockquote>
    <p><font size=3D"-1">Best regards<br>
        Moritz</font><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de">
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
        <pre class=3D"moz-quote-pre" wrap=3D"">'virtual/initscripts-swupda=
te', 'initscripts sysvinit', d)} \
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">"
=2D--
This is taken from swupdate-image. I include the same packages (via
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">_append) in my base image, =
is this necessary ?
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">I bundle the initramfs wi=
th my image using INITRAMFS_IMAGE_BUNDLE =3D "1"

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
        <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
  </body>
</html>

--------------9693972DA07FF9F7EEAE56B8--
