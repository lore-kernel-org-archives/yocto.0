Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB715E00E1F; Fri, 27 Jul 2018 03:23:25 -0700 (PDT)
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
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD360E00C8B
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 03:23:24 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id k25-v6so3010550uao.11
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 03:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F2ss8QeqdhJs0KMqjpGleEEbbHsK370z/W+gkshhIo4=;
	b=AgFye7MII3eznoZqQhNLD78ehzf9v1WeZs3HlHMt0vJWDPD4Z1tV2fDX/SRPHXEz9E
	CDDiFyK1mIsxEX6TUMOSCgEQ+86A6nYYJ3KhmU463EUnW2T/yfGlyk3fkLvAmWYNoxx0
	Xu1LS7LVwnzSzyUB+IUxfrQvLuNyWlTb0sKrzqOdkKSHBrnDft9Ajl+6/Ek4Lc1AQKSz
	sTaAVMQI/XaY4uBcPjJNDEaflGHj5mmCil5btkPC9b0fpyeF4xytXrK1nqYBaBdzAFgC
	JkJQGF21WV3tLmvIB1ibHjzzQ72IHvWiiGEUMpud23IDK3GTRYtcm0Oxt9t1SctW+yf1
	5SjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F2ss8QeqdhJs0KMqjpGleEEbbHsK370z/W+gkshhIo4=;
	b=bkp6kn2L3kwR5PYk9BGmmYA7lPVNjyOEMjXtAUsMu8wjdagHIbnWp7s1l5Tdbyoalc
	9g8SacHpyHNeLzjdWu5Y8KqejtdIFc+N6gvF8ZKAgGJNZKG9AcGvRyXFfOeMLcJ9QWqM
	MQP/826iUjQZqrHCeQBZaWRGxeKOnKOFxqKtXn+/pwUw64j2kqCllQ+9AHHkh5z3PkHI
	aTDao7aXR35EZDFZm7jH/xnHoiC3FBCqfA4mSCMyJNb1DAUqi9B7vVqqMUGBqgNMTtXx
	IMFVJYlEjx9viL38+ubA7yH6Wxaqo5uRrNxQkvMvOUGagZBd3VdQHNdCdfW2zHY1j4xw
	qAFQ==
X-Gm-Message-State: AOUpUlHpVm9csiRu9lE4hszI6tE1FjDQUaBnyiM5BiWfcn4T1e/QM4BX
	ojlJpc5abfyYw4fosX01GDzsvAUnQDjJzXd2jVA=
X-Google-Smtp-Source: AAOMgpcVgN+7HlYcGFDzZ5Ql/1feeHV8+YusEfyQtQ/o0i263T9gB0aPQWP9vbhBgP8PfZnRAKcJSP3jHQ8BH878p4E=
X-Received: by 2002:a9f:20c7:: with SMTP id
	65-v6mr4324576uaa.118.1532687003842; 
	Fri, 27 Jul 2018 03:23:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:34dd:0:0:0:0:0 with HTTP; Fri, 27 Jul 2018 03:23:23
	-0700 (PDT)
In-Reply-To: <CA+chaQeBRWX+vKPskEju6h2+BGt=h4Y1vfVKJFxTo6CY8+jP0Q@mail.gmail.com>
References: <CA+-BmJY3L5ur9MWSG4G-+T_5zd3H+8Wo0-cPD7qONimtoXfjUg@mail.gmail.com>
	<CANNYZj8uUuZeLB-ij=towgBEuhxKrLxgxK+XrKpGhCnZtPgECA@mail.gmail.com>
	<5e27708f-be93-08cf-13c3-9d0e494723a5@windriver.com>
	<CA+chaQeBRWX+vKPskEju6h2+BGt=h4Y1vfVKJFxTo6CY8+jP0Q@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Fri, 27 Jul 2018 12:23:23 +0200
Message-ID: <CA+-BmJaMgfVEbZM8tLW6vxDC_0fdKnKkJqFt-KMVNUj=PDf+nA@mail.gmail.com>
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
X-List-Received-Date: Fri, 27 Jul 2018 10:23:26 -0000
Content-Type: multipart/alternative; boundary="0000000000006a7ca00571f8805a"

--0000000000006a7ca00571f8805a
Content-Type: text/plain; charset="UTF-8"

Hello all,

thanks for the suggestions: I tried the multilib concept of yocto but as
Martin already wrote is not that simple, my build is breaking during wic
image generation as follow:

zaki@xps:/opt/build/poky/build$ MACHINE=nx bitbake  lib32-my-image
Loading cache: 100%
|################################################################################################################################################################################|
Time: 0:00:00
Loaded 4968 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.38.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "x86_64-poky-linux"
MACHINE              = "nx"
DISTRO               = "poky"
DISTRO_VERSION       = "V00.00.00.00+20180727100935"
TUNE_FEATURES        = "m64 core2"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "sumo:90f7edb32ac2500d93bb7ca5045a9d048f551223"
meta-intel           = "sumo:2430f73ee06f3315ebebe69899f1977f9a09e29f"
meta-oe
meta-networking
meta-webserver
meta-python          = "sumo:b0950aeff5b630256bb5e25ca15f4d59c115e7c1"

Initialising tasks: 100%
|###########################################################################################################################################################################|
Time: 0:00:02
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: lib32-my-image-1.0-r0 do_rootfs: lib32-systemd.postinst returned
1, marking as unpacked only, configuration required on target.
WARNING: lib32-my-image-1.0-r0 do_rootfs: Intentionally failing postinstall
scriptlets of ['lib32-systemd'] to defer them to first boot is deprecated.
Please place them into pkg_postinst_ontarget_${PN} ().
If deferring to first boot wasn't the intent, then scriptlet failure may
mean an issue in the recipe, or a regression elsewhere.
Details of the failure are in
/opt/build/poky/build/tmp/work/nx-pokymllib32-linux/lib32-my-image/1.0-r0/temp/log.do_rootfs.
WARNING: lib32-my-image-1.0-r0 do_rootfs: [log_check] lib32-my-image: found
1 warning message in the logfile:
[log_check] WARNING: Intentionally failing postinstall scriptlets of
['lib32-systemd'] to defer them to first boot is deprecated. Please place
them into pkg_postinst_ontarget_${PN} ().
ERROR: lib32-my-image-1.0-r0 do_image_wic: The file
/usr/share/gcc-7.3.0/python/libstdcxx/__init__.py is installed by both
lib32-gcc-runtime and gcc-runtime, aborting
ERROR: lib32-my-image-1.0-r0 do_image_wic: Function failed:
extend_recipe_sysroot
ERROR: Logfile of failure stored in:
/opt/build/poky/build/tmp/work/nx-pokymllib32-linux/lib32-my-image/1.0-r0/temp/log.do_image_wic.16922
ERROR: Task
(virtual:multilib:lib32:/opt/build/poky/meta-poky/recipes-core/images/my-image.bb:do_image_wic)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3460 tasks of which 3445 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

virtual:multilib:lib32:/opt/build/poky/meta-poky/recipes-core/images/my-image.bb:
do_image_wic
Summary: There were 3 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


The ERROR: lib32-my-image-1.0-r0 do_image_wic: The file
/usr/share/gcc-7.3.0/python/libstdcxx/__init__.py is installed by both
lib32-gcc-runtime and gcc-runtime, aborting is not self-explanatory!

gcc-runtime is anyway not part of the image ?!

any suggestions ?


thank you


Best regards

On Thu, Jul 26, 2018 at 8:12 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> It's not as simple as that in some cases, there are some components which
> are pulled in 64bit version even when building lib32-foo-image.
>
> Some are easy to override from the config e.g.:
> ROOTFS_PKGMANAGE = "${LIB32_PREFIX}opkg"
> SPLASH = "${LIB32_PREFIX}psplash"
>
> but to prevent building e.g. syslinux in 64bit version is a bit more
> tricky.
>
> syslinux.bbclass was fixed long time ago:
> commit c8dc421ea18bb7a810501ab6d07efa9c8f6d6eb9
> Author: Ming Liu <ming.liu@windriver.com>
> Date:   Thu Jun 19 16:42:58 2014 +0800
>
>     syslinux.bbclass: Ensure MLPREFIX is applied to depends flag
>
>     Add MLPREFIX to depends flag to ensure the correct syslinux is
>     dependended upon.
>
> -do_bootimg[depends] += "syslinux:do_populate_sysroot \
> +do_bootimg[depends] += "${MLPREFIX}syslinux:do_populate_sysroot \
>
> but wic still depends on syslinux without MLPREFIX:
>
> meta/conf/machine/qemux86-64.conf:do_image_wic[depends] +=
> "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
> mtools-native:do_populate_sysroot dosfstools-nat...
> meta/conf/machine/qemux86.conf:do_image_wic[depends] +=
> "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
> mtools-native:do_populate_sysroot dosfstools-native...
>
> similarly opkg-utils and some other components are pulled in the
> not-prefixed version even when building image with a prefix. I've
> eventually got it working with morty (that it was really building only
> couple 64bit recipes, mostly kernel and recipes providing external modules
> and e.g. depmodwrapper-cross), but it's kind of shaky and error prone, I'll
> send fixes for some of these issues, but as we're using morty it's more
> complicated to find out what is still needed and what was resolved in newer
> OE already.
>
> And there are the issues with allarch recipes mentioned in the other
> multilib thread.
>
> Regards,
>
>
> On Thu, Jul 26, 2018 at 5:59 PM Mark Hatle <mark.hatle@windriver.com>
> wrote:
>
>> On 7/26/18 10:19 AM, Alexander Kanavin wrote:
>> > 2018-07-26 14:56 GMT+02:00 Ayoub Zaki <ayoub.zaki@googlemail.com>:
>> >> Is it possible to define a MACHINE configuration with a 64 Bit kernel
>> and 32
>> >> Bit user space ?
>> >>
>> >> The user space should not be using a  x32 ABI.
>> >
>> > I think (but I am not sure), that you can do it with multilib. Define
>> > a configuration like this:
>> > https://github.com/openembedded/openembedded-core/blob/master/meta-
>> skeleton/conf/multilib-example.conf
>> >
>> > Then build lib32-core-image-minimal. That image should include only 32
>> > bit user space, but the kernel will be 64 bit.
>>
>> Yes this is the typical approach.  Enable multilibs, and then build the
>> image
>> you you want with the approach multilib prefix.
>>
>> This works in any multilib configurations, 64-bit, 32-bit, x32, etc..
>>
>> --Mark
>>
>> > Alex
>> >
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--0000000000006a7ca00571f8805a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>thanks for the suggestions: =
I tried the multilib concept of yocto but as Martin already wrote is not th=
at simple, my build is breaking during wic image generation as follow:</div=
><div><br></div><div><div>zaki@xps:/opt/build/poky/build$ MACHINE=3Dnx bitb=
ake=C2=A0 lib32-my-image</div><div>Loading cache: 100% |###################=
###########################################################################=
###########################################################################=
#######| Time: 0:00:00</div><div>Loaded 4968 entries from dependency cache.=
</div><div>NOTE: Resolving any missing task queue dependencies</div><div><b=
r></div><div>Build Configuration:</div><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;1.38.0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVEL=
SBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;</div><div>TARGET_SYS=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-poky-linux&quot;<=
/div><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot=
;nx&quot;</div><div>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;V00.00.00.00+20180727100935&quot;</div><div>TUNE_FEATURES=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m64 core2&quot;</div><div>TARGET_FPU=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div>meta=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-pok=
y=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-yocto-bsp=
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:90f7edb32ac2500d93bb7ca5045a9d048=
f551223&quot;</div><div>meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;sumo:2430f73ee06f3315ebebe69899f1977f9a09e29f&quot;</div><div>met=
a-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-n=
etworking=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-webserver=C2=A0 =C2=A0 =
=C2=A0 =C2=A0</div><div>meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;sumo:b0950aeff5b630256bb5e25ca15f4d59c115e7c1&quot;</div><div><br></di=
v><div>Initialising tasks: 100% |##########################################=
###########################################################################=
######################################################| Time: 0:00:02</div>=
<div>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue Task=
s</div><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: lib32-systemd.postins=
t returned 1, marking as unpacked only, configuration required on target.</=
div><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: Intentionally failing po=
stinstall scriptlets of [&#39;lib32-systemd&#39;] to defer them to first bo=
ot is deprecated. Please place them into pkg_postinst_ontarget_${PN} ().</d=
iv><div>If deferring to first boot wasn&#39;t the intent, then scriptlet fa=
ilure may mean an issue in the recipe, or a regression elsewhere.</div><div=
>Details of the failure are in /opt/build/poky/build/tmp/work/nx-pokymllib3=
2-linux/lib32-my-image/1.0-r0/temp/log.do_rootfs.</div><div>WARNING: lib32-=
my-image-1.0-r0 do_rootfs: [log_check] lib32-my-image: found 1 warning mess=
age in the logfile:</div><div>[log_check] WARNING: Intentionally failing po=
stinstall scriptlets of [&#39;lib32-systemd&#39;] to defer them to first bo=
ot is deprecated. Please place them into pkg_postinst_ontarget_${PN} ().</d=
iv><div>ERROR: lib32-my-image-1.0-r0 do_image_wic: The file /usr/share/gcc-=
7.3.0/python/libstdcxx/__init__.py is installed by both lib32-gcc-runtime a=
nd gcc-runtime, aborting<br></div><div>ERROR: lib32-my-image-1.0-r0 do_imag=
e_wic: Function failed: extend_recipe_sysroot</div><div>ERROR: Logfile of f=
ailure stored in: /opt/build/poky/build/tmp/work/nx-pokymllib32-linux/lib32=
-my-image/1.0-r0/temp/log.do_image_wic.16922</div><div>ERROR: Task (virtual=
:multilib:lib32:/opt/build/poky/meta-poky/recipes-core/images/my-image.bb:d=
o_image_wic) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summar=
y: Attempted 3460 tasks of which 3445 didn&#39;t need to be rerun and 1 fai=
led.</div><div><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 virt=
ual:multilib:lib32:/opt/build/poky/meta-poky/recipes-core/images/my-image.b=
b:do_image_wic</div><div>Summary: There were 3 WARNING messages shown.</div=
><div>Summary: There were 2 ERROR messages shown, returning a non-zero exit=
 code.</div></div><div><br></div><div><br></div><div>The=C2=A0<span style=
=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline">ERROR: li=
b32-my-image-1.0-r0 do_image_wic: The file /usr/share/gcc-7.3.0/python/libs=
tdcxx/__init__.py is installed by both lib32-gcc-runtime and gcc-runtime, a=
borting is not self-explanatory!</span></div><div><span style=3D"font-size:=
small;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline"><br></span></div><div><=
span style=3D"font-size:small;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>gcc-runtime is anyway not part of the image ?!</span></div><div><span styl=
e=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline"><br></sp=
an></div><div><span style=3D"font-size:small;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">any suggestions ?</span></div><div><span style=3D"font-size=
:small;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline"><br></span></div><div>=
<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><br></span></div><div><span style=3D"font-size:small;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">thank you</span></div><div><span style=3D"font-si=
ze:small;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline"><br></span></div><di=
v><span style=3D"font-size:small;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial;float:none;display:inli=
ne"><br></span></div><div><span style=3D"font-size:small;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">Best regards</span></div></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Thu, Jul 26, 2018 at 8:12 PM, =
Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com=
" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr">It&#39;s not as simple as that in =
some cases, there are some components which are pulled in 64bit version eve=
n when building lib32-foo-image.<div><br></div><div>Some are easy to overri=
de from the config e.g.:</div><div><div>ROOTFS_PKGMANAGE =3D &quot;${LIB32_=
PREFIX}opkg&quot;</div><div>SPLASH =3D &quot;${LIB32_PREFIX}psplash&quot;</=
div></div><div><br></div><div>but to prevent building e.g. syslinux in 64bi=
t version is a bit more tricky.</div><div><br></div><div>syslinux.bbclass w=
as fixed long time ago:</div><div><div>commit c8dc421ea18bb7a810501ab6d07ef=
a<wbr>9c8f6d6eb9</div><div>Author: Ming Liu &lt;<a href=3D"mailto:ming.liu@=
windriver.com" target=3D"_blank">ming.liu@windriver.com</a>&gt;</div><div>D=
ate:=C2=A0 =C2=A0Thu Jun 19 16:42:58 2014 +0800</div><div><br></div><div>=
=C2=A0 =C2=A0 syslinux.bbclass: Ensure MLPREFIX is applied to depends flag<=
/div><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 Add MLPREFIX to depen=
ds flag to ensure the correct syslinux is</div><div>=C2=A0 =C2=A0 dependend=
ed upon.</div></div><div><br></div><div><div>-do_bootimg[depends] +=3D &quo=
t;syslinux:do_populate_sysroot \</div><div>+do_bootimg[depends] +=3D &quot;=
${MLPREFIX}syslinux:do_<wbr>populate_sysroot \</div></div><div><br></div><d=
iv>but wic still depends on syslinux without MLPREFIX:</div><div><br></div>=
<div><div>meta/conf/machine/qemux86-64.<wbr>conf:do_image_wic[depends] +=3D=
 &quot;syslinux:do_populate_sysroot syslinux-native:do_populate_<wbr>sysroo=
t mtools-native:do_populate_<wbr>sysroot dosfstools-nat...</div><div>meta/c=
onf/machine/qemux86.<wbr>conf:do_image_wic[depends] +=3D &quot;syslinux:do_=
populate_sysroot syslinux-native:do_populate_<wbr>sysroot mtools-native:do_=
populate_<wbr>sysroot dosfstools-native...</div></div><div><br></div><div>s=
imilarly=C2=A0opkg-utils and some other components are pulled in the not-pr=
efixed version even when building image with a prefix. I&#39;ve eventually =
got it working with morty (that it was really building only couple 64bit re=
cipes, mostly kernel and recipes providing external modules and e.g.=C2=A0d=
epmodwrapper-cross), but it&#39;s kind of shaky and error prone, I&#39;ll s=
end fixes for some of these issues, but as we&#39;re using morty it&#39;s m=
ore complicated to find out what is still needed and what was resolved in n=
ewer OE already.</div><div><br></div><div>And there are the issues with all=
arch recipes mentioned in the other multilib thread.</div><div><br></div><d=
iv>Regards,</div><div><br></div></div><div class=3D"HOEnZb"><div class=3D"h=
5"><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jul 26, 2018 at =
5:59 PM Mark Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com" target=
=3D"_blank">mark.hatle@windriver.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">On 7/26/18 10:19 AM, Alexander Kanavin wrote:<br>
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
blank">https://github.com/<wbr>openembedded/openembedded-<wbr>core/blob/mas=
ter/meta-<wbr>skeleton/conf/multilib-<wbr>example.conf</a><br>
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
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</blockquote></div>
</div></div><br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--0000000000006a7ca00571f8805a--
