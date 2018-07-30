Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50B57E009AA; Mon, 30 Jul 2018 06:46:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B06DE0084E
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 06:46:19 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id p22-v6so7843816uao.7
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 06:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6Q/MRnRAJqU8wyfRNTF3LNi/5RnqUtXgmC5xli2+k4w=;
	b=hMPW6kgvLve5KDCUESIiGyhw7MVA6CuLqmqbgi+com9ShEMi/0jCsONmGbkFy8BJlR
	ej6Cl3Iv2UHphWksg70IXbWJKg/b4WbqLsY+eKar1azMthFSXEOFXH4jK4nU5yYXqXoi
	qpzuM/zTEhXTfZikFzBYtwUdxotTdBlVUker8euijrazjHv/0iYypk92um+AzfWayCcW
	XYPYK3znLgkfhwT0SOJ+Agx+78VU1qpbEIpn82Hqr/FjNAm0ZQVxxEe1YN0r49LsbwL9
	ZvPEhvCnduf/6C5QNs1s4Z/OjsmDJ8Cx7ywrfkfpGtQlU+d9KmSz679wPenh3mZ57Ht3
	xsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6Q/MRnRAJqU8wyfRNTF3LNi/5RnqUtXgmC5xli2+k4w=;
	b=kLWi9zef+4eqc6RZqPTzmuY53XsrB4S0SCth9+XN9MHuUcPhLFb3hOh8kCq22SNXQt
	jkoxbqiFDpRG9YFxqqjbzcmQNGDBQ8Lk+jpcRW2TkolCClh1Kog/GpoSZPqLfqj1/uJ/
	5xdFs042rWtbmXzXFtDJ9CHd6wj3zu1Sij5+zi09oGbna7Fd/LSD0qnJ0Kq03F6Df5CV
	tT26qxz2JShdaCA4CU/wnww85pBE+RHPx8aPmJcjxMKcIYFKJenokJsUXon700YJ7N+I
	Yw+qehuwEqx8r/Tgl8xcS+ii4k2IyWwF0yoaVM20kuY2k2FkMoqxLNpi3JflChozj7HT
	1Inw==
X-Gm-Message-State: AOUpUlHDyEnAhV+C+9YY4XSW4OH0l2g8cxgLiNXD9hcW38B8XQNe7sqg
	gwfV9t1mDJvWiKykInXnpZ+aYu+fKtuFA9d6tWs=
X-Google-Smtp-Source: AAOMgpdkYZDnmE/raOmS+HUEL6ooRjEz1zGADZIeAE4HBguo1hVVu4IqnoU7r9K/5kmuOvJcozxDAbVKoSTbpxltWf4=
X-Received: by 2002:ab0:4505:: with SMTP id
	r5-v6mr12345014uar.77.1532958379156; 
	Mon, 30 Jul 2018 06:46:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:34dd:0:0:0:0:0 with HTTP; Mon, 30 Jul 2018 06:46:18
	-0700 (PDT)
In-Reply-To: <CA+-BmJYNWFrosD5y73M-=etJJCxNJTPCPg-HakAnKXFYAEmV9g@mail.gmail.com>
References: <CA+-BmJY3L5ur9MWSG4G-+T_5zd3H+8Wo0-cPD7qONimtoXfjUg@mail.gmail.com>
	<CANNYZj8uUuZeLB-ij=towgBEuhxKrLxgxK+XrKpGhCnZtPgECA@mail.gmail.com>
	<5e27708f-be93-08cf-13c3-9d0e494723a5@windriver.com>
	<CA+chaQeBRWX+vKPskEju6h2+BGt=h4Y1vfVKJFxTo6CY8+jP0Q@mail.gmail.com>
	<CA+-BmJaMgfVEbZM8tLW6vxDC_0fdKnKkJqFt-KMVNUj=PDf+nA@mail.gmail.com>
	<CA+chaQfXFx6DsR0giCZq34w1fNmhLZ8dsx9i74ru0MZtWAHDUw@mail.gmail.com>
	<CA+-BmJYNWFrosD5y73M-=etJJCxNJTPCPg-HakAnKXFYAEmV9g@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Mon, 30 Jul 2018 15:46:18 +0200
Message-ID: <CA+-BmJbTjfnDfY6G2pKB+Xczq9wbN7UP8h2ezJOSQECm56Z1DQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Intel machine with 64 Bit kernel and 32 Bit user space
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
X-List-Received-Date: Mon, 30 Jul 2018 13:46:21 -0000
Content-Type: multipart/alternative; boundary="000000000000a5286a057237af03"

--000000000000a5286a057237af03
Content-Type: text/plain; charset="UTF-8"

I just realized that SDK generation does not include the lib32 libraries !

I run for that :

$ MACHINE=my-machine bitbake -c pouplate_sdk my-image




On Mon, Jul 30, 2018 at 2:51 PM, Ayoub Zaki <ayoub.zaki@googlemail.com>
wrote:

> Hi all,
>
> I added to my image:  IMAGE_INSTALL_append = " lib32-glibc" and it solved
> the build problem !
>
> now I can build a mixed image (64 Bit kernel, 32 Bit) user space using
> multilib :
>
> $ MACHINE =mymachine bitbake lib32-my-image
>
> Thank you all for your inputs.
>
> best regards
>
> On Fri, Jul 27, 2018 at 1:19 PM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
>
>> Check with bitbake -g what's pulling gcc-runtime into the image, if your
>> whole userspace should be 32bit, then lib32-gcc-runtime will be enough.
>>
>> My multilib builds contain only following 64bit builds:
>> defaultpkgname  depmodwrapper-cross  linux-yocto  lttng-modules
>> make-mod-scripts  qemuwrapper-cross  vboxguestdrivers
>> the rest is 32bit
>>
>> On Fri, Jul 27, 2018 at 12:23 PM Ayoub Zaki <ayoub.zaki@googlemail.com>
>> wrote:
>>
>>> Hello all,
>>>
>>> thanks for the suggestions: I tried the multilib concept of yocto but as
>>> Martin already wrote is not that simple, my build is breaking during wic
>>> image generation as follow:
>>>
>>> zaki@xps:/opt/build/poky/build$ MACHINE=nx bitbake  lib32-my-image
>>> Loading cache: 100% |#############################
>>> ############################################################
>>> #######################################################################################|
>>> Time: 0:00:00
>>> Loaded 4968 entries from dependency cache.
>>> NOTE: Resolving any missing task queue dependencies
>>>
>>> Build Configuration:
>>> BB_VERSION           = "1.38.0"
>>> BUILD_SYS            = "x86_64-linux"
>>> NATIVELSBSTRING      = "universal"
>>> TARGET_SYS           = "x86_64-poky-linux"
>>> MACHINE              = "nx"
>>> DISTRO               = "poky"
>>> DISTRO_VERSION       = "V00.00.00.00+20180727100935"
>>> TUNE_FEATURES        = "m64 core2"
>>> TARGET_FPU           = ""
>>> meta
>>> meta-poky
>>> meta-yocto-bsp       = "sumo:90f7edb32ac2500d93bb7ca5045a9d048f551223"
>>> meta-intel           = "sumo:2430f73ee06f3315ebebe69899f1977f9a09e29f"
>>> meta-oe
>>> meta-networking
>>> meta-webserver
>>> meta-python          = "sumo:b0950aeff5b630256bb5e25ca15f4d59c115e7c1"
>>>
>>> Initialising tasks: 100% |#############################
>>> ############################################################
>>> ##################################################################################|
>>> Time: 0:00:02
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> WARNING: lib32-my-image-1.0-r0 do_rootfs: lib32-systemd.postinst
>>> returned 1, marking as unpacked only, configuration required on target.
>>> WARNING: lib32-my-image-1.0-r0 do_rootfs: Intentionally failing
>>> postinstall scriptlets of ['lib32-systemd'] to defer them to first boot is
>>> deprecated. Please place them into pkg_postinst_ontarget_${PN} ().
>>> If deferring to first boot wasn't the intent, then scriptlet failure may
>>> mean an issue in the recipe, or a regression elsewhere.
>>> Details of the failure are in /opt/build/poky/build/tmp/work
>>> /nx-pokymllib32-linux/lib32-my-image/1.0-r0/temp/log.do_rootfs.
>>> WARNING: lib32-my-image-1.0-r0 do_rootfs: [log_check] lib32-my-image:
>>> found 1 warning message in the logfile:
>>> [log_check] WARNING: Intentionally failing postinstall scriptlets of
>>> ['lib32-systemd'] to defer them to first boot is deprecated. Please place
>>> them into pkg_postinst_ontarget_${PN} ().
>>> ERROR: lib32-my-image-1.0-r0 do_image_wic: The file
>>> /usr/share/gcc-7.3.0/python/libstdcxx/__init__.py is installed by both
>>> lib32-gcc-runtime and gcc-runtime, aborting
>>> ERROR: lib32-my-image-1.0-r0 do_image_wic: Function failed:
>>> extend_recipe_sysroot
>>> ERROR: Logfile of failure stored in: /opt/build/poky/build/tmp/work
>>> /nx-pokymllib32-linux/lib32-my-image/1.0-r0/temp/log.do_image_wic.16922
>>> ERROR: Task (virtual:multilib:lib32:/opt/build/poky/meta-poky/recipes-co
>>> re/images/my-image.bb:do_image_wic) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 3460 tasks of which 3445 didn't need to
>>> be rerun and 1 failed.
>>>
>>> Summary: 1 task failed:
>>>   virtual:multilib:lib32:/opt/build/poky/meta-poky/recipes-cor
>>> e/images/my-image.bb:do_image_wic
>>> Summary: There were 3 WARNING messages shown.
>>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>>> code.
>>>
>>>
>>> The ERROR: lib32-my-image-1.0-r0 do_image_wic: The file
>>> /usr/share/gcc-7.3.0/python/libstdcxx/__init__.py is installed by both
>>> lib32-gcc-runtime and gcc-runtime, aborting is not self-explanatory!
>>>
>>> gcc-runtime is anyway not part of the image ?!
>>>
>>> any suggestions ?
>>>
>>>
>>> thank you
>>>
>>>
>>> Best regards
>>>
>>> On Thu, Jul 26, 2018 at 8:12 PM, Martin Jansa <martin.jansa@gmail.com>
>>> wrote:
>>>
>>>> It's not as simple as that in some cases, there are some components
>>>> which are pulled in 64bit version even when building lib32-foo-image.
>>>>
>>>> Some are easy to override from the config e.g.:
>>>> ROOTFS_PKGMANAGE = "${LIB32_PREFIX}opkg"
>>>> SPLASH = "${LIB32_PREFIX}psplash"
>>>>
>>>> but to prevent building e.g. syslinux in 64bit version is a bit more
>>>> tricky.
>>>>
>>>> syslinux.bbclass was fixed long time ago:
>>>> commit c8dc421ea18bb7a810501ab6d07efa9c8f6d6eb9
>>>> Author: Ming Liu <ming.liu@windriver.com>
>>>> Date:   Thu Jun 19 16:42:58 2014 +0800
>>>>
>>>>     syslinux.bbclass: Ensure MLPREFIX is applied to depends flag
>>>>
>>>>     Add MLPREFIX to depends flag to ensure the correct syslinux is
>>>>     dependended upon.
>>>>
>>>> -do_bootimg[depends] += "syslinux:do_populate_sysroot \
>>>> +do_bootimg[depends] += "${MLPREFIX}syslinux:do_populate_sysroot \
>>>>
>>>> but wic still depends on syslinux without MLPREFIX:
>>>>
>>>> meta/conf/machine/qemux86-64.conf:do_image_wic[depends] +=
>>>> "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
>>>> mtools-native:do_populate_sysroot dosfstools-nat...
>>>> meta/conf/machine/qemux86.conf:do_image_wic[depends] +=
>>>> "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
>>>> mtools-native:do_populate_sysroot dosfstools-native...
>>>>
>>>> similarly opkg-utils and some other components are pulled in the
>>>> not-prefixed version even when building image with a prefix. I've
>>>> eventually got it working with morty (that it was really building only
>>>> couple 64bit recipes, mostly kernel and recipes providing external modules
>>>> and e.g. depmodwrapper-cross), but it's kind of shaky and error prone, I'll
>>>> send fixes for some of these issues, but as we're using morty it's more
>>>> complicated to find out what is still needed and what was resolved in newer
>>>> OE already.
>>>>
>>>> And there are the issues with allarch recipes mentioned in the other
>>>> multilib thread.
>>>>
>>>> Regards,
>>>>
>>>>
>>>> On Thu, Jul 26, 2018 at 5:59 PM Mark Hatle <mark.hatle@windriver.com>
>>>> wrote:
>>>>
>>>>> On 7/26/18 10:19 AM, Alexander Kanavin wrote:
>>>>> > 2018-07-26 14:56 GMT+02:00 Ayoub Zaki <ayoub.zaki@googlemail.com>:
>>>>> >> Is it possible to define a MACHINE configuration with a 64 Bit
>>>>> kernel and 32
>>>>> >> Bit user space ?
>>>>> >>
>>>>> >> The user space should not be using a  x32 ABI.
>>>>> >
>>>>> > I think (but I am not sure), that you can do it with multilib. Define
>>>>> > a configuration like this:
>>>>> > https://github.com/openembedded/openembedded-core/blob/
>>>>> master/meta-skeleton/conf/multilib-example.conf
>>>>> >
>>>>> > Then build lib32-core-image-minimal. That image should include only
>>>>> 32
>>>>> > bit user space, but the kernel will be 64 bit.
>>>>>
>>>>> Yes this is the typical approach.  Enable multilibs, and then build
>>>>> the image
>>>>> you you want with the approach multilib prefix.
>>>>>
>>>>> This works in any multilib configurations, 64-bit, 32-bit, x32, etc..
>>>>>
>>>>> --Mark
>>>>>
>>>>> > Alex
>>>>> >
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>

--000000000000a5286a057237af03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I just realized that SDK generation does not include the l=
ib32 libraries !<div><br></div><div>I run for that :</div><div><br></div><d=
iv>$ MACHINE=3Dmy-machine bitbake -c pouplate_sdk my-image</div><div><br></=
div><div><br></div><div><br></div></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Mon, Jul 30, 2018 at 2:51 PM, Ayoub Zaki <span di=
r=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@googlemail.com" target=3D"_blank=
">ayoub.zaki@googlemail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">Hi all,=C2=A0<div><br></div><div>I added to my im=
age:=C2=A0 IMAGE_INSTALL_append =3D &quot; lib32-glibc&quot; and it solved =
the build problem !</div><div><br></div><div>now I can build a mixed image =
(64 Bit kernel, 32 Bit) user space using multilib :</div><div><br></div><di=
v>$ MACHINE =3Dmymachine bitbake lib32-my-image</div><div><br></div><div>Th=
ank you all for your inputs.</div><div><br></div><div>best regards</div></d=
iv><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Fri, Jul 27, 2018 at 1:19 PM, Martin Jansa <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_bla=
nk">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr">Check with bitbake -g what&#39;s pulling gcc-runti=
me into the image, if your whole userspace should be 32bit, then lib32-gcc-=
runtime will be enough.<div><br></div><div>My multilib builds contain only =
following 64bit builds:</div><div>defaultpkgname=C2=A0 depmodwrapper-cross=
=C2=A0 linux-yocto=C2=A0 lttng-modules=C2=A0 make-mod-scripts=C2=A0 qemuwra=
pper-cross=C2=A0 vboxguestdrivers<br></div><div>the rest is 32bit</div></di=
v><div class=3D"m_7971172083312703228HOEnZb"><div class=3D"m_79711720833127=
03228h5"><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Jul 27, 20=
18 at 12:23 PM Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki@googlemail.com" =
target=3D"_blank">ayoub.zaki@googlemail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr">Hello all,<div><br></div><div>than=
ks for the suggestions: I tried the multilib concept of yocto but as Martin=
 already wrote is not that simple, my build is breaking during wic image ge=
neration as follow:</div><div><br></div><div><div>zaki@xps:/opt/build/poky/=
build<wbr>$ MACHINE=3Dnx bitbake=C2=A0 lib32-my-image</div><div>Loading cac=
he: 100% |#############################<wbr>##############################<=
wbr>##############################<wbr>##############################<wbr>#=
#############################<wbr>###########################| Time: 0:00:0=
0</div><div>Loaded 4968 entries from dependency cache.</div><div>NOTE: Reso=
lving any missing task queue dependencies</div><div><br></div><div>Build Co=
nfiguration:</div><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;1.38.0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=C2=A0 =C2=
=A0 =C2=A0 =3D &quot;universal&quot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-poky-linux&quot;</div><div>MACHINE=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;nx&quot;</div><d=
iv>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;p=
oky&quot;</div><div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;V00.=
00.00.00+20180727100935&quot;</div><div>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;m64 core2&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div>meta=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-poky=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;sumo:90f7edb32ac2500d93bb7ca5<wbr>045a9d048f551223&quot;</=
div><div>meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:=
2430f73ee06f3315ebebe698<wbr>99f1977f9a09e29f&quot;</div><div>meta-oe=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-networking=
=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-webserver=C2=A0 =C2=A0 =C2=A0 =C2=
=A0</div><div>meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;sumo:=
b0950aeff5b630256bb5e25c<wbr>a15f4d59c115e7c1&quot;</div><div><br></div><di=
v>Initialising tasks: 100% |#############################<wbr>#############=
#################<wbr>##############################<wbr>##################=
############<wbr>##############################<wbr>######################|=
 Time: 0:00:02</div><div>NOTE: Executing SetScene Tasks</div><div>NOTE: Exe=
cuting RunQueue Tasks</div><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: l=
ib32-systemd.postinst returned 1, marking as unpacked only, configuration r=
equired on target.</div><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: Inte=
ntionally failing postinstall scriptlets of [&#39;lib32-systemd&#39;] to de=
fer them to first boot is deprecated. Please place them into pkg_postinst_o=
ntarget_${PN} ().</div><div>If deferring to first boot wasn&#39;t the inten=
t, then scriptlet failure may mean an issue in the recipe, or a regression =
elsewhere.</div><div>Details of the failure are in /opt/build/poky/build/tm=
p/work<wbr>/nx-pokymllib32-linux/lib32-<wbr>my-image/1.0-r0/temp/log.do_<wb=
r>rootfs.</div><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: [log_check] l=
ib32-my-image: found 1 warning message in the logfile:</div><div>[log_check=
] WARNING: Intentionally failing postinstall scriptlets of [&#39;lib32-syst=
emd&#39;] to defer them to first boot is deprecated. Please place them into=
 pkg_postinst_ontarget_${PN} ().</div><div>ERROR: lib32-my-image-1.0-r0 do_=
image_wic: The file /usr/share/gcc-7.3.0/python/li<wbr>bstdcxx/__init__.py =
is installed by both lib32-gcc-runtime and gcc-runtime, aborting<br></div><=
div>ERROR: lib32-my-image-1.0-r0 do_image_wic: Function failed: extend_reci=
pe_sysroot</div><div>ERROR: Logfile of failure stored in: /opt/build/poky/b=
uild/tmp/work<wbr>/nx-pokymllib32-linux/lib32-<wbr>my-image/1.0-r0/temp/log=
.do_<wbr>image_wic.16922</div><div>ERROR: Task (virtual:multilib:lib32:/opt=
/b<wbr>uild/poky/meta-poky/recipes-co<wbr>re/images/my-image.bb:do_image<wb=
r>_wic) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: At=
tempted 3460 tasks of which 3445 didn&#39;t need to be rerun and 1 failed.<=
/div><div><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 virtual:m=
ultilib:lib32:/opt/bu<wbr>ild/poky/meta-poky/recipes-cor<wbr>e/images/my-im=
age.bb:do_image_<wbr>wic</div><div>Summary: There were 3 WARNING messages s=
hown.</div><div>Summary: There were 2 ERROR messages shown, returning a non=
-zero exit code.</div></div><div><br></div><div><br></div><div>The=C2=A0<sp=
an style=3D"font-size:small;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline">E=
RROR: lib32-my-image-1.0-r0 do_image_wic: The file /usr/share/gcc-7.3.0/pyt=
hon/li<wbr>bstdcxx/__init__.py is installed by both lib32-gcc-runtime and g=
cc-runtime, aborting is not self-explanatory!</span></div><div><span style=
=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline"><br></spa=
n></div><div><span style=3D"font-size:small;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline">gcc-runtime is anyway not part of the image ?!</span></div><=
div><span style=3D"font-size:small;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:in=
line"><br></span></div><div><span style=3D"font-size:small;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline">any suggestions ?</span></div><div><span styl=
e=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline"><br></sp=
an></div><div><span style=3D"font-size:small;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline"><br></span></div><div><span style=3D"font-size:small;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial;float:none;display:inline">thank you</span></div><div><span st=
yle=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;float:none;display:inline"><br></=
span></div><div><span style=3D"font-size:small;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline"><br></span></div><div><span style=3D"font-size:small;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline">Best regards</span></div></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jul 26, 201=
8 at 8:12 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.j=
ansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">It&#39;s not as simp=
le as that in some cases, there are some components which are pulled in 64b=
it version even when building lib32-foo-image.<div><br></div><div>Some are =
easy to override from the config e.g.:</div><div><div>ROOTFS_PKGMANAGE =3D =
&quot;${LIB32_PREFIX}opkg&quot;</div><div>SPLASH =3D &quot;${LIB32_PREFIX}p=
splash&quot;</div></div><div><br></div><div>but to prevent building e.g. sy=
slinux in 64bit version is a bit more tricky.</div><div><br></div><div>sysl=
inux.bbclass was fixed long time ago:</div><div><div>commit c8dc421ea18bb7a=
810501ab6d07efa<wbr>9c8f6d6eb9</div><div>Author: Ming Liu &lt;<a href=3D"ma=
ilto:ming.liu@windriver.com" target=3D"_blank">ming.liu@windriver.com</a>&g=
t;</div><div>Date:=C2=A0 =C2=A0Thu Jun 19 16:42:58 2014 +0800</div><div><br=
></div><div>=C2=A0 =C2=A0 syslinux.bbclass: Ensure MLPREFIX is applied to d=
epends flag</div><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 Add MLPRE=
FIX to depends flag to ensure the correct syslinux is</div><div>=C2=A0 =C2=
=A0 dependended upon.</div></div><div><br></div><div><div>-do_bootimg[depen=
ds] +=3D &quot;syslinux:do_populate_sysroot \</div><div>+do_bootimg[depends=
] +=3D &quot;${MLPREFIX}syslinux:do_popula<wbr>te_sysroot \</div></div><div=
><br></div><div>but wic still depends on syslinux without MLPREFIX:</div><d=
iv><br></div><div><div>meta/conf/machine/qemux86-64.c<wbr>onf:do_image_wic[=
depends] +=3D &quot;syslinux:do_populate_sysroot syslinux-native:do_populat=
e_sy<wbr>sroot mtools-native:do_populate_sysr<wbr>oot dosfstools-nat...</di=
v><div>meta/conf/machine/qemux86.conf<wbr>:do_image_wic[depends] +=3D &quot=
;syslinux:do_populate_sysroot syslinux-native:do_populate_sy<wbr>sroot mtoo=
ls-native:do_populate_sysr<wbr>oot dosfstools-native...</div></div><div><br=
></div><div>similarly=C2=A0opkg-utils and some other components are pulled =
in the not-prefixed version even when building image with a prefix. I&#39;v=
e eventually got it working with morty (that it was really building only co=
uple 64bit recipes, mostly kernel and recipes providing external modules an=
d e.g.=C2=A0depmodwrapper-cross), but it&#39;s kind of shaky and error pron=
e, I&#39;ll send fixes for some of these issues, but as we&#39;re using mor=
ty it&#39;s more complicated to find out what is still needed and what was =
resolved in newer OE already.</div><div><br></div><div>And there are the is=
sues with allarch recipes mentioned in the other multilib thread.</div><div=
><br></div><div>Regards,</div><div><br></div></div><div class=3D"m_79711720=
83312703228m_4390065292901578377m_3952577102488355007HOEnZb"><div class=3D"=
m_7971172083312703228m_4390065292901578377m_3952577102488355007h5"><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jul 26, 2018 at 5:59 PM Mar=
k Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com" target=3D"_blank">m=
ark.hatle@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">On 7/26/18 10:19 AM, Alexander Kanavin wrote:<br>
&gt; 2018-07-26 14:56 GMT+02:00 Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki=
@googlemail.com" target=3D"_blank">ayoub.zaki@googlemail.com</a>&gt;:<br>
&gt;&gt; Is it possible to define a MACHINE configuration with a 64 Bit ker=
nel and 32<br>
&gt;&gt; Bit user space ?<br>
&gt;&gt;<br>
&gt;&gt; The user space should not be using a=C2=A0 x32 ABI.<br>
&gt; <br>
&gt; I think (but I am not sure), that you can do it with multilib. Define<=
br>
&gt; a configuration like this:<br>
&gt; <a href=3D"https://github.com/openembedded/openembedded-core/blob/mast=
er/meta-skeleton/conf/multilib-example.conf" rel=3D"noreferrer" target=3D"_=
blank">https://github.com/openembedde<wbr>d/openembedded-core/blob/<wbr>mas=
ter/meta-skeleton/conf/<wbr>multilib-example.conf</a><br>
&gt; <br>
&gt; Then build lib32-core-image-minimal. That image should include only 32=
<br>
&gt; bit user space, but the kernel will be 64 bit.<br>
<br>
Yes this is the typical approach.=C2=A0 Enable multilibs, and then build th=
e image<br>
you you want with the approach multilib prefix.<br>
<br>
This works in any multilib configurations, 64-bit, 32-bit, x32, etc..<br>
<br>
--Mark<br>
<br>
&gt; Alex<br>
&gt; <br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</blockquote></div>
</div></div><br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</blockquote></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--000000000000a5286a057237af03--
