Return-Path: <mhubig@imko.de>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5305E013F7
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 07:56:30 -0700 (PDT)
Received: by wibhn17 with SMTP id hn17so1077381wib.11
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 07:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=P2D6CVhxC4bU5B0TTZmXm+Y+7lL3psklUYb2TkHSdCQ=;
	b=LfMrzkB4DZGhE1g3E5KqdpqxgZFVHpUqoD5vhsqTTRoEzo/NblSCamcu/Tqmbpo0Vc
	JBkSUZLszoJ9UZMilrV7uFYXoBSacCq5RMdp2TN/Yhwwkcx/jUAdC388ff9kCnSv2y6B
	b/Aj6Mh/V+sJTuBabzSIeWDl2GkZYDKZgSaHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=P2D6CVhxC4bU5B0TTZmXm+Y+7lL3psklUYb2TkHSdCQ=;
	b=RKpSJUwqhSvxUEpTX/jJYmna6Vgfdn8dlXYJhj4s5mQ0ESRAPMPAmX/I++P07yx0Sk
	PU22bkln67BlFg+n6W/SM40+jPaPCbHXoiRuo+oklfTHR88lRJCofYeaQ7/6I7kmEHB9
	BHYWtXg9CQP9NNDCsolU+NIxK4t9nUuHjoc7AWXPMh/OuIDuGj585bMrB+66Olz/3YOJ
	lmafhLcJS0LOLxY+nuKiZZ6N3KampMryS8G+e6lOO7uP9LRBdxjdbML+hPAetZZqv4d4
	beyhWqeVWCgHV2SIH9goQhe+fWHKEJYjgDs9+w+ATZMPfc1F5Xpc+G6XEFPLipap/xWr
	5QGw==
MIME-Version: 1.0
Received: by 10.216.202.160 with SMTP id d32mr8265725weo.147.1340722586198;
	Tue, 26 Jun 2012 07:56:26 -0700 (PDT)
Received: by 10.180.94.194 with HTTP; Tue, 26 Jun 2012 07:56:26 -0700 (PDT)
In-Reply-To: <4FE9C097.60400@windriver.com>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
	<4FE9B6EE.4010901@windriver.com>
	<CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
	<4FE9C097.60400@windriver.com>
Date: Tue, 26 Jun 2012 16:56:26 +0200
Message-ID: <CAGws1TtBH8wvXAL9KDaA1EAE_hb-Lxv32EkpgPyem1fyP5U2ZA@mail.gmail.com>
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmzqHdTHwb/vsjVG8oXbFEm1j/jjY1o1VBCocKMAac0SeIkE0u03Fozcoki1q5EfTMS1dF7
Subject: Re: BSP for taskit stamp9g20
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
X-List-Received-Date: Tue, 26 Jun 2012 14:56:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yhea! My first successful build!

Thank you very much!

On Tue, Jun 26, 2012 at 4:00 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 12-06-26 09:49 AM, Markus Hubig wrote:
>>
>> On Tue, Jun 26, 2012 at 3:19 PM, Bruce Ashfield
>> <bruce.ashfield@windriver.com> =A0wrote:
>>>
>>>
>>> On 12-06-26 07:08 AM, Markus Hubig wrote:
>>>>
>>>>
>>>> AT91SAM9G20 based CPU board). This is when I came across the
>>>> YoctoProject.
>>>> Now I'm trying to build a BSP Layer for this Board.
>>>>
>>>> There are a lot of documentation out there, but I still miss the whole
>>>> picture ... :-(
>>>>
>>>> This is what I've done so far:
>>>
>>>
>>> This is on master ? Yocto 1.2 ? Some other release ?
>>
>>
>> I'm using Yocto 1.2 at the moment ...
>>
>>>> $ yocto-bsp create stamp9g20 arm
>>>> -> =A0kernel 3.2 [y]
>>>> -> =A0new machine branch [y]
>>>> -> =A0machine branch to base this BSP on
>>>> [standard/default/arm-versatile-926ejs]
>>>> -> =A0Do you need SMP support? [n]
>>>> -> =A0Which machine tuning would you like to use? [arm926ejs]
>>>> -> =A0value for UBOOT_MACHINE [default: omap3_beagle_config]
>>>> -> =A0UBOOT_ENTRYPOINT: [default: 0x80008000]
>>>> -> =A0UBOOT_LOADADDRESS: [default: 0x80008000]
>>>> -> =A0Do you need support for X? [n]
>>>> -> =A0Does your BSP have a touchscreen? [default: n]
>>>> -> =A0Does your BSP have a keyboard? [n]
>>>>
>>>> (U-Boot stuff needs some adjustments but I save this for later ...)
>>>>
>>>> Now I have a nice BSP layer for the Stamp9G20. Year! But whats the nex=
t
>>>> step? To get the right kernel configuration for the stamp9g20 I can
>>>> easily
>>>> configure the kernel with:
>>>>
>>>> $ make ARCH=3Darm stamp9g20_defconfig
>>>>
>>>> Here is what I "think" I have to do next. Please, please correct me if=
 I
>>>> got it all wrong!
>>>>
>>>> # make a bare clone
>>>> $ git clone --bare git://git.yoctoproject.org/linux-yocto-3.2
>>>> <http://git.yoctoproject.org/linux-yocto-3.2> =A0linux-yocto-3.2.git
>>>>
>>>> # make a *working clone* of the *bare clone*
>>>>
>>>> $ git clone linux-yocto-3.2.git linux-yocto-3.2-work
>>>>
>>>> # create a new branch based on arm-versatile-926ejs *inside my working
>>>> clone*
>>>>
>>>> $ git checkout -b yocto/standard/stamp9g20
>>>> remotes/origin/standard/default/arm-versatile-926ejs
>>>>
>>>> # push the new branch back to the *bare clone*. Now I have a branch my
>>>>
>>>> bsp-layer is based on?!
>>>> $ git push origin yocto/standard/stamp9g20:standard/default/stamp9g20
>>>>
>>>> # check out the *meta branch* inside the *working clone*
>>>>
>>>> $ git checkout -b meta-stamp9g20 remotes/origin/meta
>>>>
>>>> # now I just copy the *arm-versatile-926ejs* dir to *stamp9g20* and
>>>>
>>>> rename everything ...
>>>> $ cd meta/cfg/kernel-cache/bsp
>>>> $ cp -a arm-versatile-926ejs stamp9g20
>>>> $ cd stamp9g20
>>>> $ rename 's/arm-versatile-926ejs/stamp9g20/' *
>>>> $ sed -i 's/arm-versatile-926ejs/stamp9g20/' *
>>>>
>>>> Now it get's in to the details. Since I have a working kernel config
>>>> from "make ARCH=3Darm stamp9g20_defconfig" I *think*
>>>> all I have to do is using the resulting .config file and put *parts of
>>>> it* into stamp9g20.cfg, right? Later more on this, but since
>>>>
>>>> I'm more interested in the "big picture" I will leave these files as
>>>> they are for now.
>>>>
>>>> # Add, commit and push the changes to the bare clone
>>>> $ git add stamp9g20
>>>> $ git commit -a -s
>>>> $ git push origin meta-stamp9g20:meta
>>>>
>>>> # Now I change
>>>> meta-stamp9g20/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>>> # to point to my new branch
>>>> KBRANCH_stamp9g20 =3D "standard/default/stamp9g20"
>>>> YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20 =3D "standard/default/stamp9g20=
"
>>>
>>>
>>>
>>> You don't actually have an external branch, because you made the right
>>> choice to use git to manage your BSP :P So you don't need this.
>>
>>
>> OK so I just remove the YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20 line?
>>
>>>>
>>>> # Clone poky-extras *into poky* ...
>>>>
>>>> $ git clone git://git.yoctoproject.org/poky-extras
>>>> <http://git.yoctoproject.org/poky-extras> =A0poky-extras
>>>>
>>>>
>>>> # edit
>>>>
>>>> poky-extras/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.2.bbapp=
end
>>>> KSRC_linux_yocto_3_2 ?=3D "/home/mhubig/Development/linux-yocto-3.2.gi=
t"
>>>> SRC_URI =3D
>>>>
>>>> "git://${KSRC_linux_yocto_3_2};protocol=3Dfile;nocheckout=3D1;branch=
=3D${KBRANCH},meta;name=3Dmachine,meta"
>>>
>>>
>>>
>>> This is all good, I run with this all day every day .. so far so good.
>>
>>
>> OK ...
>>
>>>> [INFO]: checkpoint is already restored, nothing to do
>>>> + [ 0 -ne 0 ]
>>>> +
>>>>
>>>> sccs=3D/home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/lin=
ux/files/stamp9g20-standard.scc
>>>>
>>>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/file=
s/stamp9g20.scc
>>>>
>>>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/file=
s/stamp9g20.cfg
>>>>
>>>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kernel/linux/file=
s/user-config.cfg
>>>> /home/mhubig/Development/poky/meta-stamp9g20/recipes-kern
>>>> el/linux/files/user-patches.scc
>>>
>>>
>>> Aha. This is the problem, if you've decided to create a local repo,
>>> and a BSP branch, you don't need these files outside of the tree. But
>>> I'm betting these were created by the BSP tool .. hence the confusion
>>> as two methods are being mixed.
>>
>>
>> Aha this is hardly understandable from the Yocto Documentation ...
>
>
> The BSP tool came after the sections that talk about local git trees,
> so the docs are still debouncing a bit. They do need to make this
> clear about the approaches, and that you should use one or the other
> (and why).
>
>
>>
>>> If you stop using the local repository, and just use the BSP tool that
>>> should at least clarify the error messages and I can help more after
>>> that.
>>
>>
>> OK If I got this right, I don't need the poky-extra stuff and no local
>> kernel repository.
>> I can just go with the yocto-bsp created meta-stamp9g20 layer? Is this
>> right? This would
>> make things much easier ...
>
>
> That's the design. But there may of course still be issues .. there
> always seem to be :)
>
>
>>
>> OK to summarize it again, I have two choices
>>
>> 1. Use a custom branch on the linux-yocto kernel repo and poky-extra
>> to point to it
>> 2. Use the standard linux-yocto kernel and a own meta-bsp layer.
>>
>> And if I go with methode 2 I just my kernel config into
>> "meta-stamp9g20/recipes-kernel/linux/files/stamp9g20.cfg"?
>
>
> Yes. And in method 1, you'd just put that config into the meta branch
> where you created your BSP files based on the existing BSP.
>
> Cheers,
>
> Bruce
>
>
>>
>> Thank you, very much! ;-)
>
>



--=20
__________________________________________________________________

IMKO Micromodultechnik GmbH
Markus Hubig
Development &=A0Research
Im Stoeck 2
D-76275 Ettlingen / GERMANY

HR: HRB 360936 Amtsgericht Mannheim
President: Dipl.-Ing. (FH) Kurt Koehler

Tel: 0049-(0)7243-5921-26
Fax: 0049-(0)7243-5921-40
e-mail: mhubig@imko.de
internet: www.imko.de
_________________________________________________________________

