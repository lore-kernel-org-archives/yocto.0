Return-Path: <mhubig@imko.de>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 679DAE0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 06:54:53 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so3959799wgb.11
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 06:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=eAaVgysT2WCwmD7wduOi9IDeJ+4d7u7ZmrEkIV+oLwk=;
	b=v4NoRWLQPFyQca8S5yvUd8bs42vuPvKa3shuSzZHNnIvI8sxmWteef+VIbN6ZMzHRY
	kmNx7efr2ouoQJxUkJQq3RZg8WyngV98lY9ZmtuTOFgWxN5BNFhJJX6wWFcrhroU6Tn3
	Le45P8SMThhvIvXBUUWYOhrH49Zc2X7PEANXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=eAaVgysT2WCwmD7wduOi9IDeJ+4d7u7ZmrEkIV+oLwk=;
	b=XYm/BZQG7XlGzqOTz7jq/v1mOdr5Q2oaqd/2BwJU/O5/ReRdh93sBwLoL9lA9GBhCL
	ZOXCR0RzuXPme7Hta6rYi76FueEyTyRcoXFD0PO/HyDww1tS5KboPaHlNUaHC817koGB
	OKxf4z9kVe1m89y5yYStdaoEOPS4jm9G+nMVLCkf66Gv8hAqauNZ0kCdm5ygb4GFDfZs
	aG+3yiDz3x16v+N9tuypK/+EDt/9wMpd6oV62fs29GKpYbvhjxNJvX53rcqFxj62vv0Y
	6LkiGhvk/8BaL3zuLMbITeiDcq7hZSWiMFH9skdLeJjRF2pPG8b3vJ4CJgCtuAywPbfU
	vi7g==
MIME-Version: 1.0
Received: by 10.216.194.23 with SMTP id l23mr8166123wen.121.1340718891802;
	Tue, 26 Jun 2012 06:54:51 -0700 (PDT)
Received: by 10.180.94.194 with HTTP; Tue, 26 Jun 2012 06:54:51 -0700 (PDT)
In-Reply-To: <CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
	<4FE9B6EE.4010901@windriver.com>
	<CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
Date: Tue, 26 Jun 2012 15:54:51 +0200
Message-ID: <CAGws1Tu9rF-dHVz-v7p6-HXU=jNMRA4pAGUu5WnnBu6Jn7hK7A@mail.gmail.com>
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQlQSPsbl25JoRBU3MliUXKR1wULcATfypwM59RpvqLqCc3i7YotXCH8PPLuFAHcH3OgMEY3
Subject: BSP for taskit stamp9g20
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
X-List-Received-Date: Tue, 26 Jun 2012 13:54:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 26, 2012 at 3:19 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> On 12-06-26 07:08 AM, Markus Hubig wrote:
>>
>> AT91SAM9G20 based CPU board). This is when I came across the YoctoProjec=
t.
>> Now I'm trying to build a BSP Layer for this Board.
>>
>> There are a lot of documentation out there, but I still miss the whole
>> picture ... :-(
>>
>> This is what I've done so far:
>
> This is on master ? Yocto 1.2 ? Some other release ?

I'm using Yocto 1.2 at the moment ...

>> $ yocto-bsp create stamp9g20 arm
>> -> kernel 3.2 [y]
>> -> new machine branch [y]
>> -> machine branch to base this BSP on [standard/default/arm-versatile-92=
6ejs]
>> -> Do you need SMP support? [n]
>> -> Which machine tuning would you like to use? [arm926ejs]
>> -> value for UBOOT_MACHINE [default: omap3_beagle_config]
>> -> UBOOT_ENTRYPOINT: [default: 0x80008000]
>> -> UBOOT_LOADADDRESS: [default: 0x80008000]
>> -> Do you need support for X? [n]
>> -> Does your BSP have a touchscreen? [default: n]
>> -> Does your BSP have a keyboard? [n]
>>
>> (U-Boot stuff needs some adjustments but I save this for later ...)
>>
>> Now I have a nice BSP layer for the Stamp9G20. Year! But whats the next
>> step? To get the right kernel configuration for the stamp9g20 I can easi=
ly
>> configure the kernel with:
>>
>> $ make ARCH=3Darm stamp9g20_defconfig
>>
>> Here is what I "think" I have to do next. Please, please correct me if I
>> got it all wrong!
>>
>> # make a bare clone
>> $ git clone --bare git://git.yoctoproject.org/linux-yocto-3.2
>> <http://git.yoctoproject.org/linux-yocto-3.2> linux-yocto-3.2.git
>>
>> # make a *working clone* of the *bare clone*
>>
>> $ git clone linux-yocto-3.2.git linux-yocto-3.2-work
>>
>> # create a new branch based on arm-versatile-926ejs *inside my working
>> clone*
>>
>> $ git checkout -b yocto/standard/stamp9g20
>> remotes/origin/standard/default/arm-versatile-926ejs
>>
>> # push the new branch back to the *bare clone*. Now I have a branch my
>>
>> bsp-layer is based on?!
>> $ git push origin yocto/standard/stamp9g20:standard/default/stamp9g20
>>
>> # check out the *meta branch* inside the *working clone*
>>
>> $ git checkout -b meta-stamp9g20 remotes/origin/meta
>>
>> # now I just copy the *arm-versatile-926ejs* dir to *stamp9g20* and
>>
>> rename everything ...
>> $ cd meta/cfg/kernel-cache/bsp
>> $ cp -a arm-versatile-926ejs stamp9g20
>> $ cd stamp9g20
>> $ rename 's/arm-versatile-926ejs/stamp9g20/' *
>> $ sed -i 's/arm-versatile-926ejs/stamp9g20/' *
>>
>> Now it get's in to the details. Since I have a working kernel config
>> from "make ARCH=3Darm stamp9g20_defconfig" I *think*
>> all I have to do is using the resulting .config file and put *parts of
>> it* into stamp9g20.cfg, right? Later more on this, but since
>>
>> I'm more interested in the "big picture" I will leave these files as
>> they are for now.
>>
>> # Add, commit and push the changes to the bare clone
>> $ git add stamp9g20
>> $ git commit -a -s
>> $ git push origin meta-stamp9g20:meta
>>
>> # Now I change meta-stamp9g20/recipes-kernel/linux/linux-yocto_3.2.bbapp=
end
>> # to point to my new branch
>> KBRANCH_stamp9g20 =3D "standard/default/stamp9g20"
>> YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20 =3D "standard/default/stamp9g20"
>
>
> You don't actually have an external branch, because you made the right
> choice to use git to manage your BSP :P So you don't need this.

OK so I just remove the=A0YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20 line?

>>
>> # Clone poky-extras *into poky* ...
>>
>> $ git clone git://git.yoctoproject.org/poky-extras
>> <http://git.yoctoproject.org/poky-extras> poky-extras
>>
>>
>> # edit
>> poky-extras/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.2.bbappen=
d
>> KSRC_linux_yocto_3_2 ?=3D "/home/mhubig/Development/linux-yocto-3.2.git"
>> SRC_URI =3D
>> "git://${KSRC_linux_yocto_3_2};protocol=3Dfile;nocheckout=3D1;branch=3D$=
{KBRANCH},meta;name=3Dmachine,meta"
>
>
> This is all good, I run with this all day every day .. so far so good.

OK ...

>> [INFO]: checkpoint is already restored, nothing to do
>> + [ 0 -ne 0 ]
>> +
>> sccs=3D/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux=
/files/stamp9g20-standard.scc
>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/=
stamp9g20.scc
>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/=
stamp9g20.cfg
>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/files/=
user-config.cfg
>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kern
>> el/linux/files/user-patches.scc
>
> Aha. This is the problem, if you've decided to create a local repo,
> and a BSP branch, you don't need these files outside of the tree. But
> I'm betting these were created by the BSP tool .. hence the confusion
> as two methods are being mixed.

Aha this is hardly understandable from the Yocto Documentation ...

> If you stop using the local repository, and just use the BSP tool that
> should at least clarify the error messages and I can help more after
> that.

OK If I got this right, I don't need the poky-extra stuff and no local
kernel repository.
I can just go with the yocto-bsp created meta-stamp9g20 layer? Is this
right? This would
make things much easier ...

OK to summarize it again, I have two choices

1. Use a custom branch on the linux-yocto kernel repo and poky-extra
to point to it
2. Use the standard linux-yocto kernel and a own meta-bsp layer.

And if I go with methode 2 I just my kernel config into
"meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg"?

Thank you, very much! ;-)

