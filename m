Return-Path: <maxim.radugin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 772E0E00509; Thu, 26 Jun 2014 00:07:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxim.radugin[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2E72E00524
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 00:07:39 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id y10so3149904wgg.17
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 00:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=B7r7SdVQAU10WAP7OB+g4rJLQA39wyAVx0VmWZA5rSE=;
	b=jSB+mOFoZCi/ouRYqJrU0nkTLcdgWACiSxXMmBT8s7mdYbGAcohdpwuBJ5Dwuww7Pi
	e5d8EK+xVB6/6L1ikG938rLnspNVPKCePO06otWUAScnLUm4LuhUiMgZS/Z8JXMJcwLe
	WneadUMLSa79xlUZBLg9xj79e9cGH8j+/I0j871b9m4pCXRZRLM4CsL+kEPhN7qJ6NUc
	HMFcKx2zEIkmniKPDd1HLWZ7rzoPzFCIGePQ4VmxOdT4imfo/4US4qsJtbAAb9D24dCR
	ud4mKYKednabsLl7HnQPEgv3SYuVvkjGWOgi0oLnl1ZmLrgHEarx6RkdsyGElez/AP1l
	bAjA==
MIME-Version: 1.0
X-Received: by 10.194.90.51 with SMTP id bt19mr14900060wjb.105.1403766457669; 
	Thu, 26 Jun 2014 00:07:37 -0700 (PDT)
Received: by 10.194.17.193 with HTTP; Thu, 26 Jun 2014 00:07:37 -0700 (PDT)
In-Reply-To: <CACjDgAMwz1_OgND8VSLcze78Mb9oKVieP=uUAS3S0AmjT+SSLA@mail.gmail.com>
References: <CACjDgAMwz1_OgND8VSLcze78Mb9oKVieP=uUAS3S0AmjT+SSLA@mail.gmail.com>
Date: Thu, 26 Jun 2014 10:07:37 +0300
Message-ID: <CABWuD8dAYsunT0Sn463A3SQ4ycRrfGpRh1DsmQewZq-u7_aBjA@mail.gmail.com>
From: Maxim Radugin <maxim.radugin@gmail.com>
To: Albert K <alberk@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto on X86 Question
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
X-List-Received-Date: Thu, 26 Jun 2014 07:07:44 -0000
Content-Type: multipart/alternative; boundary=047d7bfd00660e9e5604fcb7d9db

--047d7bfd00660e9e5604fcb7d9db
Content-Type: text/plain; charset=UTF-8

Hello Albert,

You can use initramfs to accomplish all of your tasks.
1) Take a look at meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
as a starting point, it provides ability to mount rootfs with overlay fs in
ram (but all the modifications to rootfs are lost after reboot); You'll
have to write your own implementation where other partition or file is used
as an overlay;
2) You will have to create web interface yourself; Typically you have to
upload update files using web ui to some location which is accessible from
initramfs; then from the initramfs script check if there are update files
available, validate them, and replace existing initrd, vmlinuz rootfs.img,
remove update files and reboot;
3) I don't think that there is such functionality out of the box, because
it is very application-specific, but you can write your own implementation;
Again, this can be done from the initramfs script, just recreate partition
or file with overlay, this will return rootfs to its initial state;

Probably you will have to re-partition your CF card for your specific
needs, take a look at meta-raspberrypi/classes/sdcard_image-rpi.bbclass.

BR,
Maxim.


On Thu, Jun 26, 2014 at 6:22 AM, Albert K <alberk@gmail.com> wrote:

> Hi,
>
> I am a newbie and would like help to point me the right direction with
> regards to yocto project on X86 system with CF card as boot disk with AMI
> or Phoenix Bios.   I have a few questions listed below
>
> 1) How do i build a project with read-only filesystem with an overylay
> filesystem ?
>    something similar to squashfs and jffs2 or something else.
> 2) How to i update the firmware after the initial burn to CF?  A web
> interface update would be appreciated.
> 3) Is there a recipe or build-in function to reset the firmware to factory
> setting via serial console or SSH, etc?
>
> Thank you for helping.
>
> Regards.
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7bfd00660e9e5604fcb7d9db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Albert,<div><br></div><div>You can use initramfs to =
accomplish all of your tasks.</div><div>1) Take a look at=C2=A0meta/recipes=
-core/initrdscripts/<a href=3D"http://initramfs-live-boot_1.0.bb">initramfs=
-live-boot_1.0.bb</a> as a starting point, it provides ability to mount roo=
tfs with overlay fs in ram (but all the modifications to rootfs are lost af=
ter reboot); You&#39;ll have to write your own implementation where other p=
artition or file is used as an overlay;</div>
<div>2) You will have to create web interface yourself; Typically you have =
to upload update files using web ui to some location which is accessible fr=
om initramfs; then from the initramfs script check if there are update file=
s available, validate them, and replace existing initrd, vmlinuz rootfs.img=
, remove update files and reboot;=C2=A0<br>
</div><div>3) I don&#39;t think that there is such=C2=A0functionality out o=
f the box, because it is very application-specific, but you can write your =
own implementation; Again, this can be done from the initramfs script, just=
 recreate partition or file with overlay, this will return rootfs to its in=
itial state;</div>
<div><br></div><div>Probably you will have to re-partition your CF card for=
 your specific needs, take a look at=C2=A0meta-raspberrypi/classes/sdcard_i=
mage-rpi.bbclass.</div><div><br></div><div>BR,</div><div>Maxim.</div></div>=
<div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Jun 26, 2014 at 6:22 AM, Albert =
K <span dir=3D"ltr">&lt;<a href=3D"mailto:alberk@gmail.com" target=3D"_blan=
k">alberk@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>
<div dir=3D"ltr">Hi,<div><br></div><div>I am a newbie and would like help t=
o point me the right direction with regards to yocto project on X86 system =
with CF card as boot disk with AMI or Phoenix Bios. =C2=A0 I have a few que=
stions listed below</div>

<div><br></div><div>1) How do i build a project with read-only filesystem w=
ith an overylay filesystem ?</div><div>=C2=A0 =C2=A0something similar to sq=
uashfs and jffs2 or something else.=C2=A0</div><div>2) How to i update the =
firmware after the initial burn to CF? =C2=A0A web interface update would b=
e appreciated.</div>

<div>3) Is there a recipe or build-in function to reset the firmware to fac=
tory setting via serial console or SSH, etc?</div><div><br></div><div>Thank=
 you for helping.</div><div><br></div><div>Regards.</div><div><br></div>

<div><br></div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7bfd00660e9e5604fcb7d9db--
