Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8020CE00AC5; Mon, 30 Jul 2018 05:51:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ayoub.zaki[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A66B2E008CA
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 05:51:13 -0700 (PDT)
Received: by mail-vk0-f50.google.com with SMTP id b78-v6so5642779vka.12
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 05:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qzyyt0PYcRnleNqcSZlG7MhCwJxTtGpqf3LLJq6p4Vg=;
	b=BYLQjAi5X0EArfLXpxu+bLu3WHbZuz31C5rUF4e5+Wn07PVhSDZr8eMRQa4JZHA7SM
	Mft7GtYbW5ICKX68hpXE86pLarg9hx+jRD3eV7/aGzgCxr7t5F2boe7HHu/FeRS5E4my
	eJI+l0Sws+d54EU3prVH3L/LeSXBqtZxkEAeHlpuuTtXEIq4J0ydcWNJFUESIJu2kRug
	sD/AZGlAGV8xi2GxAfKNXymsz3lxvSb8HGn2rwgW65qgdB/222PzrunVHkB+VkOk5jKl
	hx5JGIohZNkQVyTx21w3KnKm4VjMRBO0IqGAZ9WAonGTHsOP6C3PD3ExKrCDWnlC/bfH
	28gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qzyyt0PYcRnleNqcSZlG7MhCwJxTtGpqf3LLJq6p4Vg=;
	b=XpX+uyDdGWu11fPdaEcvLMU7O10QhgK27YefJCdCigmICyVcxtVuZ4KA0VwkkK14Oi
	BRI6qCEzJYQK+A3d0EIeq5LecKlXcolDgqfo3iwGUs1Aal9zmZefyxGokTvI0jUTPQ7h
	oK6uDoirCyR6f4v2GJ9tf6dOwgeg4MAF8o8/0DEe0hvAYbc0kriYK+EQe8g8Kr5qaFH0
	4pw68iuKdey3IWvmeIVCgWvgq7TZgS42YCy3kwV4b5OcI60y0B13rB9E8dGBQEw73KHK
	Jr3QZjdJqLjPOrB0JBBBg7Z4n+LaHlZbScoONVMsqTIUoLRB8kZFbP2A1mwA+Rw5Affp
	zfXw==
X-Gm-Message-State: AOUpUlGJyn1DUhDGLi2hYUGoPfK+aLwd5kfa47c4YYGG5oPU63n7b2ov
	jVawVg67PhUZlKeOEXcb/+CgDhkY9XeY4MPnLXs=
X-Google-Smtp-Source: AAOMgpeLNpKBGtJbfDjKf51niD9RjjEtWw9C7fHzWtc+CkT6poItDZkV3Ckimkr9FzyPRYzV4wyPWbws4qrsOMBHwxU=
X-Received: by 2002:a1f:920b:: with SMTP id
	u11-v6mr10486918vkd.58.1532955072563; 
	Mon, 30 Jul 2018 05:51:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:34dd:0:0:0:0:0 with HTTP; Mon, 30 Jul 2018 05:51:12
	-0700 (PDT)
In-Reply-To: <CA+chaQfXFx6DsR0giCZq34w1fNmhLZ8dsx9i74ru0MZtWAHDUw@mail.gmail.com>
References: <CA+-BmJY3L5ur9MWSG4G-+T_5zd3H+8Wo0-cPD7qONimtoXfjUg@mail.gmail.com>
	<CANNYZj8uUuZeLB-ij=towgBEuhxKrLxgxK+XrKpGhCnZtPgECA@mail.gmail.com>
	<5e27708f-be93-08cf-13c3-9d0e494723a5@windriver.com>
	<CA+chaQeBRWX+vKPskEju6h2+BGt=h4Y1vfVKJFxTo6CY8+jP0Q@mail.gmail.com>
	<CA+-BmJaMgfVEbZM8tLW6vxDC_0fdKnKkJqFt-KMVNUj=PDf+nA@mail.gmail.com>
	<CA+chaQfXFx6DsR0giCZq34w1fNmhLZ8dsx9i74ru0MZtWAHDUw@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Mon, 30 Jul 2018 14:51:12 +0200
Message-ID: <CA+-BmJYNWFrosD5y73M-=etJJCxNJTPCPg-HakAnKXFYAEmV9g@mail.gmail.com>
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
X-List-Received-Date: Mon, 30 Jul 2018 12:51:15 -0000
Content-Type: multipart/alternative; boundary="0000000000008e9235057236ea73"

--0000000000008e9235057236ea73
Content-Type: text/plain; charset="UTF-8"

Hi all,

I added to my image:  IMAGE_INSTALL_append = " lib32-glibc" and it solved
the build problem !

now I can build a mixed image (64 Bit kernel, 32 Bit) user space using
multilib :

$ MACHINE =mymachine bitbake lib32-my-image

Thank you all for your inputs.

best regards

On Fri, Jul 27, 2018 at 1:19 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> Check with bitbake -g what's pulling gcc-runtime into the image, if your
> whole userspace should be 32bit, then lib32-gcc-runtime will be enough.
>
> My multilib builds contain only following 64bit builds:
> defaultpkgname  depmodwrapper-cross  linux-yocto  lttng-modules
> make-mod-scripts  qemuwrapper-cross  vboxguestdrivers
> the rest is 32bit
>
> On Fri, Jul 27, 2018 at 12:23 PM Ayoub Zaki <ayoub.zaki@googlemail.com>
> wrote:
>
>> Hello all,
>>
>> thanks for the suggestions: I tried the multilib concept of yocto but as
>> Martin already wrote is not that simple, my build is breaking during wic
>> image generation as follow:
>>
>> zaki@xps:/opt/build/poky/build$ MACHINE=nx bitbake  lib32-my-image
>> Loading cache: 100% |#############################
>> ############################################################
>> #######################################################################################|
>> Time: 0:00:00
>> Loaded 4968 entries from dependency cache.
>> NOTE: Resolving any missing task queue dependencies
>>
>> Build Configuration:
>> BB_VERSION           = "1.38.0"
>> BUILD_SYS            = "x86_64-linux"
>> NATIVELSBSTRING      = "universal"
>> TARGET_SYS           = "x86_64-poky-linux"
>> MACHINE              = "nx"
>> DISTRO               = "poky"
>> DISTRO_VERSION       = "V00.00.00.00+20180727100935"
>> TUNE_FEATURES        = "m64 core2"
>> TARGET_FPU           = ""
>> meta
>> meta-poky
>> meta-yocto-bsp       = "sumo:90f7edb32ac2500d93bb7ca5045a9d048f551223"
>> meta-intel           = "sumo:2430f73ee06f3315ebebe69899f1977f9a09e29f"
>> meta-oe
>> meta-networking
>> meta-webserver
>> meta-python          = "sumo:b0950aeff5b630256bb5e25ca15f4d59c115e7c1"
>>
>> Initialising tasks: 100% |#############################
>> ############################################################
>> ##################################################################################|
>> Time: 0:00:02
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> WARNING: lib32-my-image-1.0-r0 do_rootfs: lib32-systemd.postinst returned
>> 1, marking as unpacked only, configuration required on target.
>> WARNING: lib32-my-image-1.0-r0 do_rootfs: Intentionally failing
>> postinstall scriptlets of ['lib32-systemd'] to defer them to first boot is
>> deprecated. Please place them into pkg_postinst_ontarget_${PN} ().
>> If deferring to first boot wasn't the intent, then scriptlet failure may
>> mean an issue in the recipe, or a regression elsewhere.
>> Details of the failure are in /opt/build/poky/build/tmp/
>> work/nx-pokymllib32-linux/lib32-my-image/1.0-r0/temp/log.do_rootfs.
>> WARNING: lib32-my-image-1.0-r0 do_rootfs: [log_check] lib32-my-image:
>> found 1 warning message in the logfile:
>> [log_check] WARNING: Intentionally failing postinstall scriptlets of
>> ['lib32-systemd'] to defer them to first boot is deprecated. Please place
>> them into pkg_postinst_ontarget_${PN} ().
>> ERROR: lib32-my-image-1.0-r0 do_image_wic: The file
>> /usr/share/gcc-7.3.0/python/libstdcxx/__init__.py is installed by both
>> lib32-gcc-runtime and gcc-runtime, aborting
>> ERROR: lib32-my-image-1.0-r0 do_image_wic: Function failed:
>> extend_recipe_sysroot
>> ERROR: Logfile of failure stored in: /opt/build/poky/build/tmp/
>> work/nx-pokymllib32-linux/lib32-my-image/1.0-r0/temp/
>> log.do_image_wic.16922
>> ERROR: Task (virtual:multilib:lib32:/opt/build/poky/meta-poky/recipes-
>> core/images/my-image.bb:do_image_wic) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 3460 tasks of which 3445 didn't need to be
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>   virtual:multilib:lib32:/opt/build/poky/meta-poky/recipes-
>> core/images/my-image.bb:do_image_wic
>> Summary: There were 3 WARNING messages shown.
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> code.
>>
>>
>> The ERROR: lib32-my-image-1.0-r0 do_image_wic: The file
>> /usr/share/gcc-7.3.0/python/libstdcxx/__init__.py is installed by both
>> lib32-gcc-runtime and gcc-runtime, aborting is not self-explanatory!
>>
>> gcc-runtime is anyway not part of the image ?!
>>
>> any suggestions ?
>>
>>
>> thank you
>>
>>
>> Best regards
>>
>> On Thu, Jul 26, 2018 at 8:12 PM, Martin Jansa <martin.jansa@gmail.com>
>> wrote:
>>
>>> It's not as simple as that in some cases, there are some components
>>> which are pulled in 64bit version even when building lib32-foo-image.
>>>
>>> Some are easy to override from the config e.g.:
>>> ROOTFS_PKGMANAGE = "${LIB32_PREFIX}opkg"
>>> SPLASH = "${LIB32_PREFIX}psplash"
>>>
>>> but to prevent building e.g. syslinux in 64bit version is a bit more
>>> tricky.
>>>
>>> syslinux.bbclass was fixed long time ago:
>>> commit c8dc421ea18bb7a810501ab6d07efa9c8f6d6eb9
>>> Author: Ming Liu <ming.liu@windriver.com>
>>> Date:   Thu Jun 19 16:42:58 2014 +0800
>>>
>>>     syslinux.bbclass: Ensure MLPREFIX is applied to depends flag
>>>
>>>     Add MLPREFIX to depends flag to ensure the correct syslinux is
>>>     dependended upon.
>>>
>>> -do_bootimg[depends] += "syslinux:do_populate_sysroot \
>>> +do_bootimg[depends] += "${MLPREFIX}syslinux:do_populate_sysroot \
>>>
>>> but wic still depends on syslinux without MLPREFIX:
>>>
>>> meta/conf/machine/qemux86-64.conf:do_image_wic[depends] +=
>>> "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
>>> mtools-native:do_populate_sysroot dosfstools-nat...
>>> meta/conf/machine/qemux86.conf:do_image_wic[depends] +=
>>> "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
>>> mtools-native:do_populate_sysroot dosfstools-native...
>>>
>>> similarly opkg-utils and some other components are pulled in the
>>> not-prefixed version even when building image with a prefix. I've
>>> eventually got it working with morty (that it was really building only
>>> couple 64bit recipes, mostly kernel and recipes providing external modules
>>> and e.g. depmodwrapper-cross), but it's kind of shaky and error prone, I'll
>>> send fixes for some of these issues, but as we're using morty it's more
>>> complicated to find out what is still needed and what was resolved in newer
>>> OE already.
>>>
>>> And there are the issues with allarch recipes mentioned in the other
>>> multilib thread.
>>>
>>> Regards,
>>>
>>>
>>> On Thu, Jul 26, 2018 at 5:59 PM Mark Hatle <mark.hatle@windriver.com>
>>> wrote:
>>>
>>>> On 7/26/18 10:19 AM, Alexander Kanavin wrote:
>>>> > 2018-07-26 14:56 GMT+02:00 Ayoub Zaki <ayoub.zaki@googlemail.com>:
>>>> >> Is it possible to define a MACHINE configuration with a 64 Bit
>>>> kernel and 32
>>>> >> Bit user space ?
>>>> >>
>>>> >> The user space should not be using a  x32 ABI.
>>>> >
>>>> > I think (but I am not sure), that you can do it with multilib. Define
>>>> > a configuration like this:
>>>> > https://github.com/openembedded/openembedded-core/blob/master/meta-
>>>> skeleton/conf/multilib-example.conf
>>>> >
>>>> > Then build lib32-core-image-minimal. That image should include only 32
>>>> > bit user space, but the kernel will be 64 bit.
>>>>
>>>> Yes this is the typical approach.  Enable multilibs, and then build the
>>>> image
>>>> you you want with the approach multilib prefix.
>>>>
>>>> This works in any multilib configurations, 64-bit, 32-bit, x32, etc..
>>>>
>>>> --Mark
>>>>
>>>> > Alex
>>>> >
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>

--0000000000008e9235057236ea73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,=C2=A0<div><br></div><div>I added to my image:=C2=
=A0 IMAGE_INSTALL_append =3D &quot; lib32-glibc&quot; and it solved the bui=
ld problem !</div><div><br></div><div>now I can build a mixed image (64 Bit=
 kernel, 32 Bit) user space using multilib :</div><div><br></div><div>$ MAC=
HINE =3Dmymachine bitbake lib32-my-image</div><div><br></div><div>Thank you=
 all for your inputs.</div><div><br></div><div>best regards</div></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jul 27, 2018 =
at 1:19 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jan=
sa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Check with bitbake -g =
what&#39;s pulling gcc-runtime into the image, if your whole userspace shou=
ld be 32bit, then lib32-gcc-runtime will be enough.<div><br></div><div>My m=
ultilib builds contain only following 64bit builds:</div><div>defaultpkgnam=
e=C2=A0 depmodwrapper-cross=C2=A0 linux-yocto=C2=A0 lttng-modules=C2=A0 mak=
e-mod-scripts=C2=A0 qemuwrapper-cross=C2=A0 vboxguestdrivers<br></div><div>=
the rest is 32bit</div></div><div class=3D"HOEnZb"><div class=3D"h5"><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Jul 27, 2018 at 12:23 PM =
Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki@googlemail.com" target=3D"_blan=
k">ayoub.zaki@googlemail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">Hello all,<div><br></div><div>thanks for the sugg=
estions: I tried the multilib concept of yocto but as Martin already wrote =
is not that simple, my build is breaking during wic image generation as fol=
low:</div><div><br></div><div><div>zaki@xps:/opt/build/poky/<wbr>build$ MAC=
HINE=3Dnx bitbake=C2=A0 lib32-my-image</div><div>Loading cache: 100% |#####=
########################<wbr>##############################<wbr>###########=
###################<wbr>##############################<wbr>################=
##############<wbr>###########################| Time: 0:00:00</div><div>Loa=
ded 4968 entries from dependency cache.</div><div>NOTE: Resolving any missi=
ng task queue dependencies</div><div><br></div><div>Build Configuration:</d=
iv><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.38.0=
&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &qu=
ot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &qu=
ot;universal&quot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;x86_64-poky-linux&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;nx&quot;</div><div>DISTRO=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><=
div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;V00.00.00.00+2018072=
7100935&quot;</div><div>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
m64 core2&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;&quot;</div><div>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0</div><div>meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=C2=A0</div><div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
sumo:<wbr>90f7edb32ac2500d93bb7ca5045a9d<wbr>048f551223&quot;</div><div>met=
a-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:<wbr>2430f73=
ee06f3315ebebe69899f197<wbr>7f9a09e29f&quot;</div><div>meta-oe=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-networking=C2=A0 =
=C2=A0 =C2=A0=C2=A0</div><div>meta-webserver=C2=A0 =C2=A0 =C2=A0 =C2=A0</di=
v><div>meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;sumo:<wbr>b0=
950aeff5b630256bb5e25ca15f4d<wbr>59c115e7c1&quot;</div><div><br></div><div>=
Initialising tasks: 100% |#############################<wbr>###############=
###############<wbr>##############################<wbr>####################=
##########<wbr>##############################<wbr>######################| T=
ime: 0:00:02</div><div>NOTE: Executing SetScene Tasks</div><div>NOTE: Execu=
ting RunQueue Tasks</div><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: lib=
32-systemd.postinst returned 1, marking as unpacked only, configuration req=
uired on target.</div><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: Intent=
ionally failing postinstall scriptlets of [&#39;lib32-systemd&#39;] to defe=
r them to first boot is deprecated. Please place them into pkg_postinst_ont=
arget_${PN} ().</div><div>If deferring to first boot wasn&#39;t the intent,=
 then scriptlet failure may mean an issue in the recipe, or a regression el=
sewhere.</div><div>Details of the failure are in /opt/build/poky/build/tmp/=
<wbr>work/nx-pokymllib32-linux/<wbr>lib32-my-image/1.0-r0/temp/<wbr>log.do_=
rootfs.</div><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: [log_check] lib=
32-my-image: found 1 warning message in the logfile:</div><div>[log_check] =
WARNING: Intentionally failing postinstall scriptlets of [&#39;lib32-system=
d&#39;] to defer them to first boot is deprecated. Please place them into p=
kg_postinst_ontarget_${PN} ().</div><div>ERROR: lib32-my-image-1.0-r0 do_im=
age_wic: The file /usr/share/gcc-7.3.0/python/<wbr>libstdcxx/__init__.py is=
 installed by both lib32-gcc-runtime and gcc-runtime, aborting<br></div><di=
v>ERROR: lib32-my-image-1.0-r0 do_image_wic: Function failed: extend_recipe=
_sysroot</div><div>ERROR: Logfile of failure stored in: /opt/build/poky/bui=
ld/tmp/<wbr>work/nx-pokymllib32-linux/<wbr>lib32-my-image/1.0-r0/temp/<wbr>=
log.do_image_wic.16922</div><div>ERROR: Task (virtual:multilib:lib32:/opt/<=
wbr>build/poky/meta-poky/recipes-<wbr>core/images/my-image.bb:do_<wbr>image=
_wic) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Atte=
mpted 3460 tasks of which 3445 didn&#39;t need to be rerun and 1 failed.</d=
iv><div><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 virtual:mul=
tilib:lib32:/opt/<wbr>build/poky/meta-poky/recipes-<wbr>core/images/my-imag=
e.bb:do_<wbr>image_wic</div><div>Summary: There were 3 WARNING messages sho=
wn.</div><div>Summary: There were 2 ERROR messages shown, returning a non-z=
ero exit code.</div></div><div><br></div><div><br></div><div>The=C2=A0<span=
 style=3D"font-size:small;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline">ERR=
OR: lib32-my-image-1.0-r0 do_image_wic: The file /usr/share/gcc-7.3.0/pytho=
n/<wbr>libstdcxx/__init__.py is installed by both lib32-gcc-runtime and gcc=
-runtime, aborting is not self-explanatory!</span></div><div><span style=3D=
"font-size:small;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline"><br></span><=
/div><div><span style=3D"font-size:small;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">gcc-runtime is anyway not part of the image ?!</span></div><div=
><span style=3D"font-size:small;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e"><br></span></div><div><span style=3D"font-size:small;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">any suggestions ?</span></div><div><span style=
=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline"><br></spa=
n></div><div><span style=3D"font-size:small;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline"><br></span></div><div><span style=3D"font-size:small;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline">thank you</span></div><div><span sty=
le=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial;float:none;display:inline"><br></s=
pan></div><div><span style=3D"font-size:small;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline"><br></span></div><div><span style=3D"font-size:small;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline">Best regards</span></div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jul 26, 2018=
 at 8:12 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.ja=
nsa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">It&#39;s not as simpl=
e as that in some cases, there are some components which are pulled in 64bi=
t version even when building lib32-foo-image.<div><br></div><div>Some are e=
asy to override from the config e.g.:</div><div><div>ROOTFS_PKGMANAGE =3D &=
quot;${LIB32_PREFIX}opkg&quot;</div><div>SPLASH =3D &quot;${LIB32_PREFIX}ps=
plash&quot;</div></div><div><br></div><div>but to prevent building e.g. sys=
linux in 64bit version is a bit more tricky.</div><div><br></div><div>sysli=
nux.bbclass was fixed long time ago:</div><div><div>commit c8dc421ea18bb7a8=
10501ab6d07efa<wbr>9c8f6d6eb9</div><div>Author: Ming Liu &lt;<a href=3D"mai=
lto:ming.liu@windriver.com" target=3D"_blank">ming.liu@windriver.com</a>&gt=
;</div><div>Date:=C2=A0 =C2=A0Thu Jun 19 16:42:58 2014 +0800</div><div><br>=
</div><div>=C2=A0 =C2=A0 syslinux.bbclass: Ensure MLPREFIX is applied to de=
pends flag</div><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 Add MLPREF=
IX to depends flag to ensure the correct syslinux is</div><div>=C2=A0 =C2=
=A0 dependended upon.</div></div><div><br></div><div><div>-do_bootimg[depen=
ds] +=3D &quot;syslinux:do_populate_sysroot \</div><div>+do_bootimg[depends=
] +=3D &quot;${MLPREFIX}syslinux:do_<wbr>populate_sysroot \</div></div><div=
><br></div><div>but wic still depends on syslinux without MLPREFIX:</div><d=
iv><br></div><div><div>meta/conf/machine/qemux86-64.<wbr>conf:do_image_wic[=
depends] +=3D &quot;syslinux:do_populate_sysroot syslinux-native:do_populat=
e_<wbr>sysroot mtools-native:do_populate_<wbr>sysroot dosfstools-nat...</di=
v><div>meta/conf/machine/qemux86.<wbr>conf:do_image_wic[depends] +=3D &quot=
;syslinux:do_populate_sysroot syslinux-native:do_populate_<wbr>sysroot mtoo=
ls-native:do_populate_<wbr>sysroot dosfstools-native...</div></div><div><br=
></div><div>similarly=C2=A0opkg-utils and some other components are pulled =
in the not-prefixed version even when building image with a prefix. I&#39;v=
e eventually got it working with morty (that it was really building only co=
uple 64bit recipes, mostly kernel and recipes providing external modules an=
d e.g.=C2=A0depmodwrapper-cross), but it&#39;s kind of shaky and error pron=
e, I&#39;ll send fixes for some of these issues, but as we&#39;re using mor=
ty it&#39;s more complicated to find out what is still needed and what was =
resolved in newer OE already.</div><div><br></div><div>And there are the is=
sues with allarch recipes mentioned in the other multilib thread.</div><div=
><br></div><div>Regards,</div><div><br></div></div><div class=3D"m_43900652=
92901578377m_3952577102488355007HOEnZb"><div class=3D"m_4390065292901578377=
m_3952577102488355007h5"><br><div class=3D"gmail_quote"><div dir=3D"ltr">On=
 Thu, Jul 26, 2018 at 5:59 PM Mark Hatle &lt;<a href=3D"mailto:mark.hatle@w=
indriver.com" target=3D"_blank">mark.hatle@windriver.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On 7/26/18 10:19 AM, Alexander Kanavin=
 wrote:<br>
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
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</blockquote></div>
</div></div></blockquote></div><br></div>

--0000000000008e9235057236ea73--
