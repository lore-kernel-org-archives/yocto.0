Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74929E00C8B; Fri, 27 Jul 2018 04:19:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.221.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75886E00C8B
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 04:19:12 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id j5-v6so4685632wrr.8
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 04:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4uQJKjtHk6q5OTFhPVAdtgrRRsXKl5Wkr4RikUp2w3U=;
	b=R/CGIcsQiFRSzhk1xgAqSpzAQStFq/N+ve1y4CSjWxkRfFcXg4bVPh3iILDOTzyLLa
	TCMR5tlH+rz5KykebcFvDqiH7PfohRdya13v19p7K//7/6jI/cElaWCPyzVhv0iMmZ5y
	iHPGO8usy5YTn+WhnRmInkh+o/F9BywvVxKYQbGhMv90MmUDzbXC1ziUI1Ep0Lkkrs9p
	Lj1inL8Xx2H1+L6Q//eqiCHHvTFq6YhMRsOEEWgs43fG46nfvxQg61HVC3Lxpkq8N1fz
	ey0XUpgim5rXQHMTa3dim9w8RZiSnVGJmqxL8JiyDMEd+DLh+Qd4PDXVwkPZ/3Hv+tHQ
	yG7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4uQJKjtHk6q5OTFhPVAdtgrRRsXKl5Wkr4RikUp2w3U=;
	b=opce2r3rl6XT239+0Ih8hnW5XgTwLLnJ7nFqcgEf04pCmB0glcv61fGEDHtmpWupDN
	aeD0qKTDF91XN3IZfgLQLFPsVzll6PxsTWtBd2SwYz2K8umtcLxq9HaHHG3UPpwcbC+D
	/wiLhMJkAl12z8Iga2OM3VgODJpIPELmul471vqVwTZgNCB1Gq1Ks+muJxAZggmISXrX
	zmI1LkTY18vqNKUerxc2y8hjopHVr1T4fV/bzOmZyGogRvJP7pbc8qn1R4arnRWO5CXR
	d6Pv9pMlnvL+UBHmliaexni1EPcUOlqs1XHmZAaHT+2K1iqDUACxuJqpv/fbBj6Kdh7I
	ffhg==
X-Gm-Message-State: AOUpUlFy4NPrF/fBetbdwsSIsMOdjUHXW8NGjxLgdCvPylMkNZPuaovo
	2FpJfoykx2+exFu6V+n1pQIqxejiWV8q7FcpKno=
X-Google-Smtp-Source: AAOMgpe2aSiUoObWkctJ51PoDYtdR5Il+PwdBNs9t8hs4Ys6zuuGR9PPL3fUDpmyuNCwl3SVFnIwopvY8xje61pFKCE=
X-Received: by 2002:adf:c78e:: with SMTP id
	l14-v6mr4439445wrg.230.1532690351615; 
	Fri, 27 Jul 2018 04:19:11 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJY3L5ur9MWSG4G-+T_5zd3H+8Wo0-cPD7qONimtoXfjUg@mail.gmail.com>
	<CANNYZj8uUuZeLB-ij=towgBEuhxKrLxgxK+XrKpGhCnZtPgECA@mail.gmail.com>
	<5e27708f-be93-08cf-13c3-9d0e494723a5@windriver.com>
	<CA+chaQeBRWX+vKPskEju6h2+BGt=h4Y1vfVKJFxTo6CY8+jP0Q@mail.gmail.com>
	<CA+-BmJaMgfVEbZM8tLW6vxDC_0fdKnKkJqFt-KMVNUj=PDf+nA@mail.gmail.com>
In-Reply-To: <CA+-BmJaMgfVEbZM8tLW6vxDC_0fdKnKkJqFt-KMVNUj=PDf+nA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 27 Jul 2018 13:19:01 +0200
Message-ID: <CA+chaQfXFx6DsR0giCZq34w1fNmhLZ8dsx9i74ru0MZtWAHDUw@mail.gmail.com>
To: ayoub.zaki@googlemail.com
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
X-List-Received-Date: Fri, 27 Jul 2018 11:19:14 -0000
Content-Type: multipart/alternative; boundary="000000000000f571770571f94738"

--000000000000f571770571f94738
Content-Type: text/plain; charset="UTF-8"

Check with bitbake -g what's pulling gcc-runtime into the image, if your
whole userspace should be 32bit, then lib32-gcc-runtime will be enough.

My multilib builds contain only following 64bit builds:
defaultpkgname  depmodwrapper-cross  linux-yocto  lttng-modules
make-mod-scripts  qemuwrapper-cross  vboxguestdrivers
the rest is 32bit

On Fri, Jul 27, 2018 at 12:23 PM Ayoub Zaki <ayoub.zaki@googlemail.com>
wrote:

> Hello all,
>
> thanks for the suggestions: I tried the multilib concept of yocto but as
> Martin already wrote is not that simple, my build is breaking during wic
> image generation as follow:
>
> zaki@xps:/opt/build/poky/build$ MACHINE=nx bitbake  lib32-my-image
> Loading cache: 100%
> |################################################################################################################################################################################|
> Time: 0:00:00
> Loaded 4968 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.38.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "x86_64-poky-linux"
> MACHINE              = "nx"
> DISTRO               = "poky"
> DISTRO_VERSION       = "V00.00.00.00+20180727100935"
> TUNE_FEATURES        = "m64 core2"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = "sumo:90f7edb32ac2500d93bb7ca5045a9d048f551223"
> meta-intel           = "sumo:2430f73ee06f3315ebebe69899f1977f9a09e29f"
> meta-oe
> meta-networking
> meta-webserver
> meta-python          = "sumo:b0950aeff5b630256bb5e25ca15f4d59c115e7c1"
>
> Initialising tasks: 100%
> |###########################################################################################################################################################################|
> Time: 0:00:02
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: lib32-my-image-1.0-r0 do_rootfs: lib32-systemd.postinst returned
> 1, marking as unpacked only, configuration required on target.
> WARNING: lib32-my-image-1.0-r0 do_rootfs: Intentionally failing
> postinstall scriptlets of ['lib32-systemd'] to defer them to first boot is
> deprecated. Please place them into pkg_postinst_ontarget_${PN} ().
> If deferring to first boot wasn't the intent, then scriptlet failure may
> mean an issue in the recipe, or a regression elsewhere.
> Details of the failure are in
> /opt/build/poky/build/tmp/work/nx-pokymllib32-linux/lib32-my-image/1.0-r0/temp/log.do_rootfs.
> WARNING: lib32-my-image-1.0-r0 do_rootfs: [log_check] lib32-my-image:
> found 1 warning message in the logfile:
> [log_check] WARNING: Intentionally failing postinstall scriptlets of
> ['lib32-systemd'] to defer them to first boot is deprecated. Please place
> them into pkg_postinst_ontarget_${PN} ().
> ERROR: lib32-my-image-1.0-r0 do_image_wic: The file
> /usr/share/gcc-7.3.0/python/libstdcxx/__init__.py is installed by both
> lib32-gcc-runtime and gcc-runtime, aborting
> ERROR: lib32-my-image-1.0-r0 do_image_wic: Function failed:
> extend_recipe_sysroot
> ERROR: Logfile of failure stored in:
> /opt/build/poky/build/tmp/work/nx-pokymllib32-linux/lib32-my-image/1.0-r0/temp/log.do_image_wic.16922
> ERROR: Task
> (virtual:multilib:lib32:/opt/build/poky/meta-poky/recipes-core/images/my-image.bb:do_image_wic)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3460 tasks of which 3445 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> virtual:multilib:lib32:/opt/build/poky/meta-poky/recipes-core/images/my-image.bb:
> do_image_wic
> Summary: There were 3 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
> The ERROR: lib32-my-image-1.0-r0 do_image_wic: The file
> /usr/share/gcc-7.3.0/python/libstdcxx/__init__.py is installed by both
> lib32-gcc-runtime and gcc-runtime, aborting is not self-explanatory!
>
> gcc-runtime is anyway not part of the image ?!
>
> any suggestions ?
>
>
> thank you
>
>
> Best regards
>
> On Thu, Jul 26, 2018 at 8:12 PM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
>
>> It's not as simple as that in some cases, there are some components which
>> are pulled in 64bit version even when building lib32-foo-image.
>>
>> Some are easy to override from the config e.g.:
>> ROOTFS_PKGMANAGE = "${LIB32_PREFIX}opkg"
>> SPLASH = "${LIB32_PREFIX}psplash"
>>
>> but to prevent building e.g. syslinux in 64bit version is a bit more
>> tricky.
>>
>> syslinux.bbclass was fixed long time ago:
>> commit c8dc421ea18bb7a810501ab6d07efa9c8f6d6eb9
>> Author: Ming Liu <ming.liu@windriver.com>
>> Date:   Thu Jun 19 16:42:58 2014 +0800
>>
>>     syslinux.bbclass: Ensure MLPREFIX is applied to depends flag
>>
>>     Add MLPREFIX to depends flag to ensure the correct syslinux is
>>     dependended upon.
>>
>> -do_bootimg[depends] += "syslinux:do_populate_sysroot \
>> +do_bootimg[depends] += "${MLPREFIX}syslinux:do_populate_sysroot \
>>
>> but wic still depends on syslinux without MLPREFIX:
>>
>> meta/conf/machine/qemux86-64.conf:do_image_wic[depends] +=
>> "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
>> mtools-native:do_populate_sysroot dosfstools-nat...
>> meta/conf/machine/qemux86.conf:do_image_wic[depends] +=
>> "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
>> mtools-native:do_populate_sysroot dosfstools-native...
>>
>> similarly opkg-utils and some other components are pulled in the
>> not-prefixed version even when building image with a prefix. I've
>> eventually got it working with morty (that it was really building only
>> couple 64bit recipes, mostly kernel and recipes providing external modules
>> and e.g. depmodwrapper-cross), but it's kind of shaky and error prone, I'll
>> send fixes for some of these issues, but as we're using morty it's more
>> complicated to find out what is still needed and what was resolved in newer
>> OE already.
>>
>> And there are the issues with allarch recipes mentioned in the other
>> multilib thread.
>>
>> Regards,
>>
>>
>> On Thu, Jul 26, 2018 at 5:59 PM Mark Hatle <mark.hatle@windriver.com>
>> wrote:
>>
>>> On 7/26/18 10:19 AM, Alexander Kanavin wrote:
>>> > 2018-07-26 14:56 GMT+02:00 Ayoub Zaki <ayoub.zaki@googlemail.com>:
>>> >> Is it possible to define a MACHINE configuration with a 64 Bit kernel
>>> and 32
>>> >> Bit user space ?
>>> >>
>>> >> The user space should not be using a  x32 ABI.
>>> >
>>> > I think (but I am not sure), that you can do it with multilib. Define
>>> > a configuration like this:
>>> >
>>> https://github.com/openembedded/openembedded-core/blob/master/meta-skeleton/conf/multilib-example.conf
>>> >
>>> > Then build lib32-core-image-minimal. That image should include only 32
>>> > bit user space, but the kernel will be 64 bit.
>>>
>>> Yes this is the typical approach.  Enable multilibs, and then build the
>>> image
>>> you you want with the approach multilib prefix.
>>>
>>> This works in any multilib configurations, 64-bit, 32-bit, x32, etc..
>>>
>>> --Mark
>>>
>>> > Alex
>>> >
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--000000000000f571770571f94738
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Check with bitbake -g what&#39;s pulling gcc-runtime into =
the image, if your whole userspace should be 32bit, then lib32-gcc-runtime =
will be enough.<div><br></div><div>My multilib builds contain only followin=
g 64bit builds:</div><div>defaultpkgname=C2=A0 depmodwrapper-cross=C2=A0 li=
nux-yocto=C2=A0 lttng-modules=C2=A0 make-mod-scripts=C2=A0 qemuwrapper-cros=
s=C2=A0 vboxguestdrivers<br></div><div>the rest is 32bit</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Jul 27, 2018 at 12:23 PM A=
youb Zaki &lt;<a href=3D"mailto:ayoub.zaki@googlemail.com">ayoub.zaki@googl=
email.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">Hello all,<div><br></div><div>thanks for the suggestions: I tried =
the multilib concept of yocto but as Martin already wrote is not that simpl=
e, my build is breaking during wic image generation as follow:</div><div><b=
r></div><div><div>zaki@xps:/opt/build/poky/build$ MACHINE=3Dnx bitbake=C2=
=A0 lib32-my-image</div><div>Loading cache: 100% |#########################=
###########################################################################=
###########################################################################=
#| Time: 0:00:00</div><div>Loaded 4968 entries from dependency cache.</div>=
<div>NOTE: Resolving any missing task queue dependencies</div><div><br></di=
v><div>Build Configuration:</div><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D &quot;1.38.0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBST=
RING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;</div><div>TARGET_SYS=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-poky-linux&quot;</di=
v><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;nx=
&quot;</div><div>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;V00.00.00.00+20180727100935&quot;</div><div>TUNE_FEATURES=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;m64 core2&quot;</div><div>TARGET_FPU=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div>meta=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-poky=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-yocto-bsp=C2=A0=
 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:90f7edb32ac2500d93bb7ca5045a9d048f55122=
3&quot;</div><div>meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;sumo:2430f73ee06f3315ebebe69899f1977f9a09e29f&quot;</div><div>meta-oe=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-netwo=
rking=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-webserver=C2=A0 =C2=A0 =C2=
=A0 =C2=A0</div><div>meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quo=
t;sumo:b0950aeff5b630256bb5e25ca15f4d59c115e7c1&quot;</div><div><br></div><=
div>Initialising tasks: 100% |#############################################=
###########################################################################=
###################################################| Time: 0:00:02</div><di=
v>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue Tasks</=
div><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: lib32-systemd.postinst r=
eturned 1, marking as unpacked only, configuration required on target.</div=
><div>WARNING: lib32-my-image-1.0-r0 do_rootfs: Intentionally failing posti=
nstall scriptlets of [&#39;lib32-systemd&#39;] to defer them to first boot =
is deprecated. Please place them into pkg_postinst_ontarget_${PN} ().</div>=
<div>If deferring to first boot wasn&#39;t the intent, then scriptlet failu=
re may mean an issue in the recipe, or a regression elsewhere.</div><div>De=
tails of the failure are in /opt/build/poky/build/tmp/work/nx-pokymllib32-l=
inux/lib32-my-image/1.0-r0/temp/log.do_rootfs.</div><div>WARNING: lib32-my-=
image-1.0-r0 do_rootfs: [log_check] lib32-my-image: found 1 warning message=
 in the logfile:</div><div>[log_check] WARNING: Intentionally failing posti=
nstall scriptlets of [&#39;lib32-systemd&#39;] to defer them to first boot =
is deprecated. Please place them into pkg_postinst_ontarget_${PN} ().</div>=
<div>ERROR: lib32-my-image-1.0-r0 do_image_wic: The file /usr/share/gcc-7.3=
.0/python/libstdcxx/__init__.py is installed by both lib32-gcc-runtime and =
gcc-runtime, aborting<br></div><div>ERROR: lib32-my-image-1.0-r0 do_image_w=
ic: Function failed: extend_recipe_sysroot</div><div>ERROR: Logfile of fail=
ure stored in: /opt/build/poky/build/tmp/work/nx-pokymllib32-linux/lib32-my=
-image/1.0-r0/temp/log.do_image_wic.16922</div><div>ERROR: Task (virtual:mu=
ltilib:lib32:/opt/build/poky/meta-poky/recipes-core/images/my-image.bb:do_i=
mage_wic) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: =
Attempted 3460 tasks of which 3445 didn&#39;t need to be rerun and 1 failed=
.</div><div><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 virtual=
:multilib:lib32:/opt/build/poky/meta-poky/recipes-core/images/my-image.bb:d=
o_image_wic</div><div>Summary: There were 3 WARNING messages shown.</div><d=
iv>Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.</div></div><div><br></div><div><br></div><div>The=C2=A0<span style=3D"f=
ont-size:small;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">ERROR: lib32-m=
y-image-1.0-r0 do_image_wic: The file /usr/share/gcc-7.3.0/python/libstdcxx=
/__init__.py is installed by both lib32-gcc-runtime and gcc-runtime, aborti=
ng is not self-explanatory!</span></div><div><span style=3D"font-size:small=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline"><br></span></div><div><span =
style=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline">gcc-=
runtime is anyway not part of the image ?!</span></div><div><span style=3D"=
font-size:small;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><br></span></=
div><div><span style=3D"font-size:small;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">any suggestions ?</span></div><div><span style=3D"font-size:smal=
l;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline"><br></span></div><div><span=
 style=3D"font-size:small;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><br=
></span></div><div><span style=3D"font-size:small;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline">thank you</span></div><div><span style=3D"font-size:sm=
all;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline"><br></span></div><div><sp=
an style=3D"font-size:small;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline"><=
br></span></div><div><span style=3D"font-size:small;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline">Best regards</span></div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Thu, Jul 26, 2018 at 8:12 PM, Marti=
n Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" tar=
get=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr">It&#39;s not as simple as that in some =
cases, there are some components which are pulled in 64bit version even whe=
n building lib32-foo-image.<div><br></div><div>Some are easy to override fr=
om the config e.g.:</div><div><div>ROOTFS_PKGMANAGE =3D &quot;${LIB32_PREFI=
X}opkg&quot;</div><div>SPLASH =3D &quot;${LIB32_PREFIX}psplash&quot;</div><=
/div><div><br></div><div>but to prevent building e.g. syslinux in 64bit ver=
sion is a bit more tricky.</div><div><br></div><div>syslinux.bbclass was fi=
xed long time ago:</div><div><div>commit c8dc421ea18bb7a810501ab6d07efa9c8f=
6d6eb9</div><div>Author: Ming Liu &lt;<a href=3D"mailto:ming.liu@windriver.=
com" target=3D"_blank">ming.liu@windriver.com</a>&gt;</div><div>Date:=C2=A0=
 =C2=A0Thu Jun 19 16:42:58 2014 +0800</div><div><br></div><div>=C2=A0 =C2=
=A0 syslinux.bbclass: Ensure MLPREFIX is applied to depends flag</div><div>=
=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 Add MLPREFIX to depends flag to=
 ensure the correct syslinux is</div><div>=C2=A0 =C2=A0 dependended upon.</=
div></div><div><br></div><div><div>-do_bootimg[depends] +=3D &quot;syslinux=
:do_populate_sysroot \</div><div>+do_bootimg[depends] +=3D &quot;${MLPREFIX=
}syslinux:do_populate_sysroot \</div></div><div><br></div><div>but wic stil=
l depends on syslinux without MLPREFIX:</div><div><br></div><div><div>meta/=
conf/machine/qemux86-64.conf:do_image_wic[depends] +=3D &quot;syslinux:do_p=
opulate_sysroot syslinux-native:do_populate_sysroot mtools-native:do_popula=
te_sysroot dosfstools-nat...</div><div>meta/conf/machine/qemux86.conf:do_im=
age_wic[depends] +=3D &quot;syslinux:do_populate_sysroot syslinux-native:do=
_populate_sysroot mtools-native:do_populate_sysroot dosfstools-native...</d=
iv></div><div><br></div><div>similarly=C2=A0opkg-utils and some other compo=
nents are pulled in the not-prefixed version even when building image with =
a prefix. I&#39;ve eventually got it working with morty (that it was really=
 building only couple 64bit recipes, mostly kernel and recipes providing ex=
ternal modules and e.g.=C2=A0depmodwrapper-cross), but it&#39;s kind of sha=
ky and error prone, I&#39;ll send fixes for some of these issues, but as we=
&#39;re using morty it&#39;s more complicated to find out what is still nee=
ded and what was resolved in newer OE already.</div><div><br></div><div>And=
 there are the issues with allarch recipes mentioned in the other multilib =
thread.</div><div><br></div><div>Regards,</div><div><br></div></div><div cl=
ass=3D"m_3952577102488355007HOEnZb"><div class=3D"m_3952577102488355007h5">=
<br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jul 26, 2018 at 5:5=
9 PM Mark Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com" target=3D"_=
blank">mark.hatle@windriver.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On 7/26/18 10:19 AM, Alexander Kanavin wrote:<br>
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
blank">https://github.com/openembedded/openembedded-core/blob/master/meta-s=
keleton/conf/multilib-example.conf</a><br>
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
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</div></div><br>-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</blockquote></div>

--000000000000f571770571f94738--
