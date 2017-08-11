Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0AB4E00C41; Fri, 11 Aug 2017 03:27:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.48 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B301E00C14
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 03:27:57 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id u133so11793485vke.3
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 03:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ahAxbEEOg5qG79cwM2DqiiPNWxj9A/1yEQt56P9we/s=;
	b=o9/iuKu8/8N/tt7t9+LX8Lckora5bhveNbWXFXGLrKrLSKu0aMsiHaXDmO7nHrjKDY
	AXx9PPEeSRse5w4LchLJL9iS4qkUmaI2dRjXZZJquIfKIlfw5mZbeAHnbJEpGfz6lbdw
	dv8EUcIvlh2g5mhdqrRPI/MSZQXoghA9vMg8wq8W0kHnkqS7q2OxWeCiOd2YRpp4YZ1e
	6xVDScnlYcTwtocQ539e/W8wn7huRCeTemtSFiA6QPH9wDAznYlX035SnAb4cWkX4OI8
	F1vPo8ub34pq52KlxY2acKr9XM2WbDYNRXBNF2s5ZRJTWUKyc0m65kpsw2u9Vp0rVWvw
	zi2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ahAxbEEOg5qG79cwM2DqiiPNWxj9A/1yEQt56P9we/s=;
	b=Fe07Ni+tmVHlBDWIq++5OKFV1icnNGQ69ZPVyJ/pJ5SBvILYiUFnVcu1rO0Os7dfHv
	/vNaOi3FN7sdIBG9lzhbSZuumjCMvwA5sLCNcXScTvb6wTI+hhkpIQwJ/shnbXkvEI1w
	znpH8Xyvk28G/Kz+C2edX+E0ij/W/4bazonluHSSZv2hcWAOg3Nqpr112irC8RRFgi5y
	4x5I2BoHV1wsvlPioxWB97nev6MOMWAKluJ9xtqg5axzMbiZ0Rb4j77EfiDeUUyyjC8P
	icVq7KqjNzBLiW/k21C8eZDCzVpJts2I2TUrigpE2zVyuQtC2srtZ1mFusFwxcorP2AA
	vDvw==
X-Gm-Message-State: AHYfb5j14oStJKgKNrFqRLtj0bL+/WMQvu7wDWr6Pd95oiKVIs0XtCA6
	4c0wOH7nVDpU0tmmVhfHyMGeMGZQsA==
X-Received: by 10.31.94.131 with SMTP id s125mr10164739vkb.206.1502447276288; 
	Fri, 11 Aug 2017 03:27:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.74.94 with HTTP; Fri, 11 Aug 2017 03:27:55 -0700 (PDT)
In-Reply-To: <CAGsrAHeCVebxamT4hHwXq0fgDWb-P4-Dgc3eJEb1FCzhzBuSiA@mail.gmail.com>
References: <CAGsrAHfOmMFfZPNWgZ64U52h968Mri4VT-QUMXt1CpsN1b3uqg@mail.gmail.com>
	<CAC+thW0rKv7C1u6Qgs_xLSPXq0H4WS8Q=-o2rerb9KwN9bC-kA@mail.gmail.com>
	<CAGsrAHcSAruiDr+QP=kkUQA5R4N7hSr7b2XXCxkKyvHv8WbinA@mail.gmail.com>
	<CAC+thW1VR-vHi7m3ydHeye_gwy1vjfV9r8qKw6qZUXfLmFmA-g@mail.gmail.com>
	<CAGsrAHcc483HCn5EYJu6fkbFsiPdowmrPr6nbJwwjDrsAd3nSw@mail.gmail.com>
	<CAC+thW3kJ6xedATm_iTg593b=oU-vb0_mJCZ2s_4VDKoGOSdKg@mail.gmail.com>
	<CAGsrAHeCVebxamT4hHwXq0fgDWb-P4-Dgc3eJEb1FCzhzBuSiA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 11 Aug 2017 12:27:55 +0200
Message-ID: <CAC+thW0qk-_Yhx4hhRMnfq8m+0f_DUzof4WgdyKZ_7w6YrQwkA@mail.gmail.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rpi-basic-image-1.0-r0 do_rootfs: Function failed: do_rootfs
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
X-List-Received-Date: Fri, 11 Aug 2017 10:27:59 -0000
Content-Type: multipart/alternative; boundary="001a114e5450327199055677c4c1"

--001a114e5450327199055677c4c1
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 11, 2017 at 9:27 AM, mohammed aqdam <mohammedaqdam@gmail.com>
wrote:

> thanks for your response.
> I made the reqd changes from the [1] link and added the open embedded
> layer as well and in that layer I found v4l-utils,so hopefully it will work.
> But in order to take pic I need gstreamer and OMXplayer which is present
> in met area so berry pi/recipes-multimedia.....now I want yo use this,how
> to add those two utilities to my image?
>

AFAICT omxplayer is part of rpi-test-image, a more feature reach image than
rpi-basic-image: you could try building that instead, or refer to
customising images content on the Yocto Reference Manual if you want to add
it to rpi-basic-image (i.e. by setting IMAGE_INSTALL_append). A simple
search for omxplayer in meta-raspberrypi documentation shows you'd also
need to enable building that specific recipe, since it depends on non-free
libraries. gstreamer is available from poky and meta-raspberrypi only
provides some customisation to that recipe via bbappends. Again, if not
already present in your image it should be possible to add it via the usual
IMAGE_INSTALL_append mechanism.


>
>
> On Aug 10, 2017 10:34 PM, "Andrea Galbusera" <gizero@gmail.com> wrote:
>
>> On Thu, Aug 10, 2017 at 4:06 PM, mohammed aqdam <mohammedaqdam@gmail.com>
>> wrote:
>>
>>> Thanks for your response
>>> I did it from scratch and it worked even apt is there but its not
>>> working properly.....its giving failed to fork and no installation packages
>>> for all commands....how to fix apt?
>>>
>>
>> Did you try to follow the suggestion to use "package-management" image
>> feature instead? Beside installing the tools like apt, it's going to deploy
>> all related configuration files, like the installed packages database and
>> whatever is needed to have a working package management on the target.
>>
>>
>>> Next I want to enable picamera v2 on rpi3 and use v4l2's api's......so
>>> how to add/enable camera? One more thing do I need to download any camera
>>> related folder and add it to bblayer.conf?
>>>
>>
>> I've never used the picamera myself, but I'd expect you'll need a lot of
>> stuff from kernel support to appropriate device tree overlays and user
>> space tools. A quick skim to meta-raspberrypi documentation showed [1] as a
>> starting point. Also, some v4l related utils can be found in meta-oe which,
>> yes, is one optional "layer" you can add to your bblayer.conf if needed.
>> For searching which layer includes recipes for the software you need,
>> please refer to the OpenEmbedded Layer Index [2]: it should be the most
>> up-to-date source for such a bit.
>>
>> [1] https://github.com/agherzan/meta-raspberrypi/blob/master/doc
>> s/extra-build-config.md#video-camera-support-with-v4l2-drivers
>> [2] https://layers.openembedded.org/layerindex/branch/master/layers/
>>
>>
>>> On Aug 10, 2017 3:04 PM, "Andrea Galbusera" <gizero@gmail.com> wrote:
>>>
>>>> On Thu, Aug 10, 2017 at 10:58 AM, mohammed aqdam <
>>>> mohammedaqdam@gmail.com> wrote:
>>>>
>>>>> thanks for your response...
>>>>> How to change my meta-raspberrypi branch to pyro?
>>>>>
>>>>
>>>> Just checkout pyro branch from meta-raspberrypi repo... This is plain
>>>> git, nothing specific to Yocto/OE.
>>>>
>>>>
>>>>> And yeah I'm trying to customize for Debian,and trying to add apt into
>>>>> my kernel using IMAGE_INSTALL_append +=" apt".
>>>>>
>>>>
>>>> If you want to add package management features to your image (which
>>>> rpi-basic-image does not include by default), the supported way is by using
>>>> the "package-management" image feature. This can be enabled either by
>>>> IMAGE_FEATURES += "package-management" in your custom image recipe or by
>>>> extending EXTRA_IMAGE_FEATURES in local.conf. See [1] for best practices on
>>>> enabling additional image features and dig the docs for package-management
>>>> to grasp the advantages of using this approach.
>>>>
>>>> That said, I just run a build with your exact metadata commits and it
>>>> went fine to the end, also resulting in apt-get related files to be in the
>>>> final image rootfs. You might have messed up something while changing your PACKAGE_CLASSES
>>>> value. Have you tried wiping tmp/ and running the build again? If it
>>>> doesn't help you should share your local.conf to help figuring out what's
>>>> wrong.
>>>>
>>>> [1] http://www.yoctoproject.org/docs/latest/mega-manual/mega
>>>> -manual.html#usingpoky-extend-customimage-imagefeatures
>>>>
>>>>
>>>>>
>>>>>
>>>>> On Aug 10, 2017 1:40 PM, "Andrea Galbusera" <gizero@gmail.com> wrote:
>>>>>
>>>>>> On Thu, Aug 10, 2017 at 6:16 AM, mohammed aqdam <
>>>>>> mohammedaqdam@gmail.com> wrote:
>>>>>>
>>>>>>> i was building image for rpi 3.
>>>>>>> so when i run bitbake -k rpi-basic-image i'm getting following error.
>>>>>>> how to recover this error...
>>>>>>>
>>>>>>> root@pcz-ee207837-2:/u/my_poky/poky/build# bitbake -k
>>>>>>> rpi-basic-image
>>>>>>> Parsing recipes: 100%
>>>>>>> |###########################################################
>>>>>>> ############################################################
>>>>>>> ###################|
>>>>>>> Time: 0:01:10
>>>>>>> Parsing of 851 .bb files complete (0 cached, 851 parsed). 1320
>>>>>>> targets, 73 skipped, 0 masked, 0 errors.
>>>>>>> NOTE: Resolving any missing task queue dependencies
>>>>>>>
>>>>>>> Build Configuration:
>>>>>>> BB_VERSION        = "1.34.0"
>>>>>>> BUILD_SYS         = "x86_64-linux"
>>>>>>> NATIVELSBSTRING   = "universal-4.8"
>>>>>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>>>>>> MACHINE           = "raspberrypi3"
>>>>>>> DISTRO            = "poky"
>>>>>>> DISTRO_VERSION    = "2.3.1"
>>>>>>> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>>>>>>> callconvention-hard cortexa7"
>>>>>>> TARGET_FPU        = "hard"
>>>>>>> meta
>>>>>>> meta-poky
>>>>>>> meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
>>>>>>> meta-raspberrypi  = "master:f6a2ca21c72b8d97cd0f89
>>>>>>> a0a436bf90b431698b"
>>>>>>>
>>>>>>
>>>>>> Hi! You are mixing layers from different release branches: this
>>>>>> shouldn't be a big issue in your scenario, but, in order to debug further,
>>>>>> you should try with pyro branch from meta-raspberrypi to match your poky
>>>>>> commit. Moreover, it looks like you are using package_deb as the packaging
>>>>>> format for your image: what's the exact value of your PACKAGE_CLASSES
>>>>>> variable? Do you have any other customisation in your local.conf w.r.t. the
>>>>>> default configuration?
>>>>>>
>>>>>>
>>>>>>>
>>>>>>> Initialising tasks: 100%
>>>>>>> |###########################################################
>>>>>>> ############################################################
>>>>>>> ################|
>>>>>>> Time: 0:00:06
>>>>>>> NOTE: Executing SetScene Tasks
>>>>>>> NOTE: Executing RunQueue Tasks
>>>>>>> ERROR: rpi-basic-image-1.0-r0 do_rootfs: Error executing a python
>>>>>>> function in exec_python_func() autogenerated:
>>>>>>>
>>>>>>> The stack trace of python calls that resulted in this
>>>>>>> exception/failure was:
>>>>>>> File: 'exec_python_func() autogenerated', lineno: 2, function:
>>>>>>> <module>
>>>>>>>      0001:
>>>>>>>  *** 0002:do_rootfs(d)
>>>>>>>      0003:
>>>>>>> File: '/u/my_poky/poky/meta/classes/image.bbclass', lineno: 270,
>>>>>>> function: do_rootfs
>>>>>>>      0266:
>>>>>>>      0267:    progress_reporter.next_stage()
>>>>>>>      0268:
>>>>>>>      0269:    # generate rootfs
>>>>>>>  *** 0270:    create_rootfs(d, progress_reporter=progress_reporter,
>>>>>>> logcatcher=logcatcher)
>>>>>>>      0271:
>>>>>>>      0272:    progress_reporter.finish()
>>>>>>>      0273:}
>>>>>>>      0274:do_rootfs[dirs] = "${TOPDIR}"
>>>>>>> File: '/u/my_poky/poky/meta/lib/oe/rootfs.py', lineno: 1005,
>>>>>>> function:
>>>>>>> create_rootfs
>>>>>>>      1001:        RpmRootfs(d, manifest_dir, progress_reporter,
>>>>>>> logcatcher).create()
>>>>>>>      1002:    elif img_type == "ipk":
>>>>>>>      1003:        OpkgRootfs(d, manifest_dir, progress_reporter,
>>>>>>> logcatcher).create()
>>>>>>>      1004:    elif img_type == "deb":
>>>>>>>  *** 1005:        DpkgRootfs(d, manifest_dir, progress_reporter,
>>>>>>> logcatcher).create()
>>>>>>>      1006:
>>>>>>>      1007:    os.environ.clear()
>>>>>>>      1008:    os.environ.update(env_bkp)
>>>>>>>      1009:
>>>>>>> File: '/u/my_poky/poky/meta/lib/oe/rootfs.py', lineno: 638,
>>>>>>> function: __init__
>>>>>>>      0634:        bb.utils.remove(self.d.getVar('MULTILIB_TEMP_ROOTFS'),
>>>>>>> True)
>>>>>>>      0635:        self.manifest = DpkgManifest(d, manifest_dir)
>>>>>>>      0636:        self.pm = DpkgPM(d, d.getVar('IMAGE_ROOTFS'),
>>>>>>>      0637:                         d.getVar('PACKAGE_ARCHS'),
>>>>>>>  *** 0638:                         d.getVar('DPKG_ARCH'))
>>>>>>>      0639:
>>>>>>>      0640:
>>>>>>>      0641:    def _create(self):
>>>>>>>      0642:        pkgs_to_install = self.manifest.parse_initial_ma
>>>>>>> nifest()
>>>>>>> File: '/u/my_poky/poky/meta/lib/oe/package_manager.py', lineno:
>>>>>>> 1245,
>>>>>>> function: __init__
>>>>>>>      1241:        self.all_arch_list = archs.split()
>>>>>>>      1242:        all_mlb_pkg_arch_list =
>>>>>>> (self.d.getVar('ALL_MULTILIB_PACKAGE_ARCHS') or "").split()
>>>>>>>      1243:        self.all_arch_list.extend(arch for arch in
>>>>>>> all_mlb_pkg_arch_list if arch not in self.all_arch_list)
>>>>>>>      1244:
>>>>>>>  *** 1245:        self._create_configs(archs, base_archs)
>>>>>>>      1246:
>>>>>>>      1247:        self.indexer = DpkgIndexer(self.d, self.deploy_dir)
>>>>>>>      1248:
>>>>>>>      1249:    """
>>>>>>> File: '/u/my_poky/poky/meta/lib/oe/package_manager.py', lineno:
>>>>>>> 1483,
>>>>>>> function: _create_configs
>>>>>>>      1479:            if variant_arch not in base_arch_list:
>>>>>>>      1480:                base_arch_list.append(variant_arch)
>>>>>>>      1481:
>>>>>>>      1482:        with open(self.apt_conf_file, "w+") as apt_conf:
>>>>>>>  *** 1483:            with
>>>>>>> open(self.d.expand("${STAGING_ETCDIR_NATIVE}/apt/apt.conf.sample"))
>>>>>>> as
>>>>>>> apt_conf_sample:
>>>>>>>      1484:                for line in apt_conf_sample.read().split("
>>>>>>> \n"):
>>>>>>>      1485:                    match_arch = re.match("  Architecture
>>>>>>> \".*\";$", line)
>>>>>>>      1486:                    architectures = ""
>>>>>>>      1487:                    if match_arch:
>>>>>>> Exception: FileNotFoundError: [Errno 2] No such file or directory:
>>>>>>> '/u/my_poky/poky/build/tmp/work/raspberrypi3-poky-linux-gnue
>>>>>>> abi/rpi-basic-image/1.0-r0/recipe-sysroot-native/etc/apt/apt
>>>>>>> .conf.sample'
>>>>>>>
>>>>>>> ERROR: rpi-basic-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>>>>>>> ERROR: Logfile of failure stored in:
>>>>>>> /u/my_poky/poky/build/tmp/work/raspberrypi3-poky-linux-gnuea
>>>>>>> bi/rpi-basic-image/1.0-r0/temp/log.do_rootfs.21760
>>>>>>> ERROR: Task (/u/my_poky/poky/meta-raspberr
>>>>>>> ypi/recipes-core/images/rpi-basic-image.bb:do_rootfs)
>>>>>>> failed with exit code '1'
>>>>>>> NOTE: Tasks Summary: Attempted 2312 tasks of which 2311 didn't need
>>>>>>> to
>>>>>>> be rerun and 1 failed.
>>>>>>>
>>>>>>> Summary: 1 task failed:
>>>>>>>   /u/my_poky/poky/meta-raspberrypi/recipes-core/images/rpi-bas
>>>>>>> ic-image.bb:do_rootfs
>>>>>>> Summary: There were 2 ERROR messages shown, returning a non-zero
>>>>>>> exit code.
>>>>>>> --
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>
>>>>>>
>>>>>>
>>>>
>>

--001a114e5450327199055677c4c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Aug 11, 2017 at 9:27 AM, mohammed aqdam <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mohammedaqdam@gmail.com" target=3D"_blank">mohammedaqdam@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto=
">thanks for your response.<div dir=3D"auto">I made the reqd changes from t=
he [1] link and added the open embedded layer as well and in that layer I f=
ound v4l-utils,so hopefully it will work.</div><div dir=3D"auto">But in ord=
er to take pic I need gstreamer and OMXplayer which is present in met area =
so berry pi/recipes-multimedia.....now I want yo use this,how to add those =
two utilities to my image?</div></div></blockquote><div><br></div><div>AFAI=
CT omxplayer is part of rpi-test-image, a more feature reach image than rpi=
-basic-image: you could try building that instead, or refer to customising =
images content on the Yocto Reference Manual if you want to add it to rpi-b=
asic-image (i.e. by setting IMAGE_INSTALL_append). A simple search for omxp=
layer in meta-raspberrypi documentation shows you&#39;d also need to enable=
 building that specific recipe, since it depends on non-free libraries. gst=
reamer is available from poky and meta-raspberrypi only provides some custo=
misation to that recipe via bbappends. Again, if not already present in you=
r image it should be possible to add it via the usual IMAGE_INSTALL_append =
mechanism.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"auto"><div dir=3D"auto"><br></div></div><div class=3D"HOEnZb"><div class=
=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Aug 10=
, 2017 10:34 PM, &quot;Andrea Galbusera&quot; &lt;<a href=3D"mailto:gizero@=
gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt; wrote:<br type=3D"att=
ribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_extra"><div class=3D"gmail_quote">On Thu, Aug 10, 2017 at 4:06 PM, moham=
med aqdam <span dir=3D"ltr">&lt;<a href=3D"mailto:mohammedaqdam@gmail.com" =
target=3D"_blank">mohammedaqdam@gmail.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Thanks for your=
 response<div dir=3D"auto">I did it from scratch and it worked even apt is =
there but its not working properly.....its giving failed to fork and no ins=
tallation packages for all commands....how to fix apt?</div></div></blockqu=
ote><div><br></div><div>Did you try to follow the suggestion to use &quot;p=
ackage-management&quot; image feature instead? Beside installing the tools =
like apt, it&#39;s going to deploy all related configuration files, like th=
e installed packages database and whatever is needed to have a working pack=
age management on the target.</div><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"auto">Next I want =
to enable picamera v2 on rpi3 and use v4l2&#39;s api&#39;s......so how to a=
dd/enable camera? One more thing do I need to download any camera related f=
older and add it to bblayer.conf?</div></div></blockquote><div><br></div><d=
iv>I&#39;ve never used the picamera myself, but I&#39;d expect you&#39;ll n=
eed a lot of stuff from kernel support to appropriate device tree overlays =
and user space tools. A quick skim to meta-raspberrypi documentation showed=
 [1] as a starting point. Also, some v4l related utils can be found in meta=
-oe which, yes, is one optional &quot;layer&quot; you can add to your bblay=
er.conf if needed. For searching which layer includes recipes for the softw=
are you need, please refer to the OpenEmbedded Layer Index [2]: it should b=
e the most up-to-date source for such a bit.</div><div><br></div><div>[1] <=
a href=3D"https://github.com/agherzan/meta-raspberrypi/blob/master/docs/ext=
ra-build-config.md#video-camera-support-with-v4l2-drivers" target=3D"_blank=
">https://github.com/agherzan/me<wbr>ta-raspberrypi/blob/master/doc<wbr>s/e=
xtra-build-config.md#video-<wbr>camera-support-with-v4l2-<wbr>drivers</a></=
div><div>[2]=C2=A0<a href=3D"https://layers.openembedded.org/layerindex/bra=
nch/master/layers/" target=3D"_blank">https://layers.openembedde<wbr>d.org/=
layerindex/branch/<wbr>master/layers/</a></div><div><br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div class=3D"m_1270136168937222160m_-=
1838101509340986021gmail-HOEnZb"><div class=3D"m_1270136168937222160m_-1838=
101509340986021gmail-h5"><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Aug 10, 2017 3:04 PM, &quot;Andrea Galbusera&quot; &lt;<a href=
=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt; wro=
te:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">O=
n Thu, Aug 10, 2017 at 10:58 AM, mohammed aqdam <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:mohammedaqdam@gmail.com" target=3D"_blank">mohammedaqdam@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"auto">thanks for your response...=C2=A0<div dir=3D"auto">H=
ow to change my meta-raspberrypi branch to pyro?</div></div></blockquote><d=
iv><br></div><div>Just checkout pyro branch from meta-raspberrypi repo... T=
his is plain git, nothing specific to Yocto/OE.</div><div>=C2=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"=
auto">And yeah I&#39;m trying to customize for Debian,and trying to add apt=
 into my kernel using IMAGE_INSTALL_append +=3D&quot; apt&quot;.</div></div=
></blockquote><div><br></div><div>If you want to add package management fea=
tures to your image (which rpi-basic-image does not include by default), th=
e supported way is by using the &quot;package-management&quot; image featur=
e. This can be enabled either by IMAGE_FEATURES +=3D &quot;package-manageme=
nt&quot; in your custom image recipe or by extending EXTRA_IMAGE_FEATURES i=
n local.conf. See [1] for best practices on enabling additional image featu=
res and dig the docs for package-management to grasp the advantages of usin=
g this approach.</div><div><br></div><div>That said, I just run a build wit=
h your exact metadata commits and it went fine to the end, also resulting i=
n apt-get related files to be in the final image rootfs. You might have mes=
sed up something while changing your=C2=A0<span style=3D"font-family:sans-s=
erif;font-size:13.696px">PACKAGE_CLASSES value. Have you tried wiping tmp/ =
and running the build again?</span>=C2=A0If it doesn&#39;t help you should =
share your local.conf to help figuring out what&#39;s wrong.</div><div><br>=
</div><div>[1]=C2=A0<a href=3D"http://www.yoctoproject.org/docs/latest/mega=
-manual/mega-manual.html#usingpoky-extend-customimage-imagefeatures" target=
=3D"_blank">http://www.yoctoproject.or<wbr>g/docs/latest/mega-manual/mega<w=
br>-manual.html#usingpoky-extend-<wbr>customimage-imagefeatures</a></div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto"><div dir=3D"auto"><br></div></div><div class=3D"m_127013616893722=
2160m_-1838101509340986021gmail-m_7403972029661969540m_6204495544071591042g=
mail-HOEnZb"><div class=3D"m_1270136168937222160m_-1838101509340986021gmail=
-m_7403972029661969540m_6204495544071591042gmail-h5"><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Aug 10, 2017 1:40 PM, &quot;Andrea G=
albusera&quot; &lt;<a href=3D"mailto:gizero@gmail.com" target=3D"_blank">gi=
zero@gmail.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote">On Thu, Aug 10, 2017 at 6:16 AM, mohammed aqdam <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:mohammedaqdam@gmail.com" target=3D"_b=
lank">mohammedaqdam@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">i was building image for rpi 3.<br>
so when i run bitbake -k rpi-basic-image i&#39;m getting following error.<b=
r>
how to recover this error...<br>
<br>
root@pcz-ee207837-2:/u/my_poky<wbr>/poky/build# bitbake -k rpi-basic-image<=
br>
Parsing recipes: 100%<br>
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
#########|<br>
Time: 0:01:10<br>
Parsing of 851 .bb files complete (0 cached, 851 parsed). 1320<br>
targets, 73 skipped, 0 masked, 0 errors.<br>
NOTE: Resolving any missing task queue dependencies<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.34.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;universal-4.8&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot=
;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;raspberrypi3&quot=
;<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.3.1&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7ve vfp thumb neon vfpv4=
<br>
callconvention-hard cortexa7&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<br>
meta<br>
meta-poky<br>
meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;pyro:4a39979c8d1e560fa54240e9<wbr>973=
4a651dfbaa63a&quot;<br>
meta-raspberrypi=C2=A0 =3D &quot;master:f6a2ca21c72b8d97cd0f89<wbr>a0a436bf=
90b431698b&quot;<br></blockquote><div><br></div><div>Hi! You are mixing lay=
ers from different release branches: this shouldn&#39;t be a big issue in y=
our scenario, but, in order to debug further, you should try with pyro bran=
ch from meta-raspberrypi to match your poky commit. Moreover, it looks like=
 you are using package_deb as the packaging format for your image: what&#39=
;s the exact value of your PACKAGE_CLASSES variable? Do you have any other =
customisation in your local.conf w.r.t. the default configuration?</div><di=
v>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Initialising tasks: 100%<br>
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
######|<br>
Time: 0:00:06<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: rpi-basic-image-1.0-r0 do_rootfs: Error executing a python<br>
function in exec_python_func() autogenerated:<br>
<br>
The stack trace of python calls that resulted in this exception/failure was=
:<br>
File: &#39;exec_python_func() autogenerated&#39;, lineno: 2, function: &lt;=
module&gt;<br>
=C2=A0 =C2=A0 =C2=A00001:<br>
=C2=A0*** 0002:do_rootfs(d)<br>
=C2=A0 =C2=A0 =C2=A00003:<br>
File: &#39;/u/my_poky/poky/meta/classes/<wbr>image.bbclass&#39;, lineno: 27=
0,<br>
function: do_rootfs<br>
=C2=A0 =C2=A0 =C2=A00266:<br>
=C2=A0 =C2=A0 =C2=A00267:=C2=A0 =C2=A0 progress_reporter.next_stage()<br>
=C2=A0 =C2=A0 =C2=A00268:<br>
=C2=A0 =C2=A0 =C2=A00269:=C2=A0 =C2=A0 # generate rootfs<br>
=C2=A0*** 0270:=C2=A0 =C2=A0 create_rootfs(d, progress_reporter=3Dprogress_=
rep<wbr>orter,<br>
logcatcher=3Dlogcatcher)<br>
=C2=A0 =C2=A0 =C2=A00271:<br>
=C2=A0 =C2=A0 =C2=A00272:=C2=A0 =C2=A0 progress_reporter.finish()<br>
=C2=A0 =C2=A0 =C2=A00273:}<br>
=C2=A0 =C2=A0 =C2=A00274:do_rootfs[dirs] =3D &quot;${TOPDIR}&quot;<br>
File: &#39;/u/my_poky/poky/meta/lib/oe/r<wbr>ootfs.py&#39;, lineno: 1005, f=
unction:<br>
create_rootfs<br>
=C2=A0 =C2=A0 =C2=A01001:=C2=A0 =C2=A0 =C2=A0 =C2=A0 RpmRootfs(d, manifest_=
dir, progress_reporter,<br>
logcatcher).create()<br>
=C2=A0 =C2=A0 =C2=A01002:=C2=A0 =C2=A0 elif img_type =3D=3D &quot;ipk&quot;=
:<br>
=C2=A0 =C2=A0 =C2=A01003:=C2=A0 =C2=A0 =C2=A0 =C2=A0 OpkgRootfs(d, manifest=
_dir, progress_reporter,<br>
logcatcher).create()<br>
=C2=A0 =C2=A0 =C2=A01004:=C2=A0 =C2=A0 elif img_type =3D=3D &quot;deb&quot;=
:<br>
=C2=A0*** 1005:=C2=A0 =C2=A0 =C2=A0 =C2=A0 DpkgRootfs(d, manifest_dir, prog=
ress_reporter,<br>
logcatcher).create()<br>
=C2=A0 =C2=A0 =C2=A01006:<br>
=C2=A0 =C2=A0 =C2=A01007:=C2=A0 =C2=A0 os.environ.clear()<br>
=C2=A0 =C2=A0 =C2=A01008:=C2=A0 =C2=A0 os.environ.update(env_bkp)<br>
=C2=A0 =C2=A0 =C2=A01009:<br>
File: &#39;/u/my_poky/poky/meta/lib/oe/r<wbr>ootfs.py&#39;, lineno: 638, fu=
nction: __init__<br>
=C2=A0 =C2=A0 =C2=A00634:=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.utils.remove(self.d=
.getVar(<wbr>&#39;MULTILIB_TEMP_ROOTFS&#39;), True)<br>
=C2=A0 =C2=A0 =C2=A00635:=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.manifest =3D Dpkg=
Manifest(d, manifest_dir)<br>
=C2=A0 =C2=A0 =C2=A00636:=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://self=
.pm" rel=3D"noreferrer" target=3D"_blank">self.pm</a> =3D DpkgPM(d, d.getVa=
r(&#39;IMAGE_ROOTFS&#39;),<br>
=C2=A0 =C2=A0 =C2=A00637:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.getVar(&#39;PACKAGE_ARCHS&#39;),=
<br>
=C2=A0*** 0638:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.getVar(&#39;DPKG_ARCH&#39;))<br>
=C2=A0 =C2=A0 =C2=A00639:<br>
=C2=A0 =C2=A0 =C2=A00640:<br>
=C2=A0 =C2=A0 =C2=A00641:=C2=A0 =C2=A0 def _create(self):<br>
=C2=A0 =C2=A0 =C2=A00642:=C2=A0 =C2=A0 =C2=A0 =C2=A0 pkgs_to_install =3D se=
lf.manifest.parse_initial_ma<wbr>nifest()<br>
File: &#39;/u/my_poky/poky/meta/lib/oe/p<wbr>ackage_manager.py&#39;, lineno=
: 1245,<br>
function: __init__<br>
=C2=A0 =C2=A0 =C2=A01241:=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.all_arch_list =3D=
 archs.split()<br>
=C2=A0 =C2=A0 =C2=A01242:=C2=A0 =C2=A0 =C2=A0 =C2=A0 all_mlb_pkg_arch_list =
=3D<br>
(self.d.getVar(&#39;ALL_MULTILIB_P<wbr>ACKAGE_ARCHS&#39;) or &quot;&quot;).=
split()<br>
=C2=A0 =C2=A0 =C2=A01243:=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.all_arch_list.ext=
end(arch for arch in<br>
all_mlb_pkg_arch_list if arch not in self.all_arch_list)<br>
=C2=A0 =C2=A0 =C2=A01244:<br>
=C2=A0*** 1245:=C2=A0 =C2=A0 =C2=A0 =C2=A0 self._create_configs(archs, base=
_archs)<br>
=C2=A0 =C2=A0 =C2=A01246:<br>
=C2=A0 =C2=A0 =C2=A01247:=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.indexer =3D DpkgI=
ndexer(self.d, self.deploy_dir)<br>
=C2=A0 =C2=A0 =C2=A01248:<br>
=C2=A0 =C2=A0 =C2=A01249:=C2=A0 =C2=A0 &quot;&quot;&quot;<br>
File: &#39;/u/my_poky/poky/meta/lib/oe/p<wbr>ackage_manager.py&#39;, lineno=
: 1483,<br>
function: _create_configs<br>
=C2=A0 =C2=A0 =C2=A01479:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if varia=
nt_arch not in base_arch_list:<br>
=C2=A0 =C2=A0 =C2=A01480:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 base_arch_list.append(variant_<wbr>arch)<br>
=C2=A0 =C2=A0 =C2=A01481:<br>
=C2=A0 =C2=A0 =C2=A01482:=C2=A0 =C2=A0 =C2=A0 =C2=A0 with open(self.apt_con=
f_file, &quot;w+&quot;) as apt_conf:<br>
=C2=A0*** 1483:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 with<br>
open(self.d.expand(&quot;${STAGING_<wbr>ETCDIR_NATIVE}/apt/<a href=3D"http:=
//apt.conf.sa" target=3D"_blank">apt.conf.sa</a><wbr>mple&quot;)) as<br>
apt_conf_sample:<br>
=C2=A0 =C2=A0 =C2=A01484:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 for line in apt_conf_sample.read().split(&quot;<wbr>\n&quot;):<br>
=C2=A0 =C2=A0 =C2=A01485:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 match_arch =3D re.match(&quot;=C2=A0 Architecture<br>
\&quot;.*\&quot;;$&quot;, line)<br>
=C2=A0 =C2=A0 =C2=A01486:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 architectures =3D &quot;&quot;<br>
=C2=A0 =C2=A0 =C2=A01487:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if match_arch:<br>
Exception: FileNotFoundError: [Errno 2] No such file or directory:<br>
&#39;/u/my_poky/poky/build/tmp/wor<wbr>k/raspberrypi3-poky-linux-gnue<wbr>a=
bi/rpi-basic-image/1.0-r0/rec<wbr>ipe-sysroot-native/etc/apt/apt<wbr>.conf.=
sample&#39;<br>
<br>
ERROR: rpi-basic-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br>
ERROR: Logfile of failure stored in:<br>
/u/my_poky/poky/build/tmp/work<wbr>/raspberrypi3-poky-linux-gnuea<wbr>bi/rp=
i-basic-image/1.0-r0/temp<wbr>/log.do_rootfs.21760<br>
ERROR: Task (/u/my_poky/poky/meta-raspberr<wbr>ypi/recipes-core/images/rpi-=
ba<wbr>sic-image.bb:do_rootfs)<br>
failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 2312 tasks of which 2311 didn&#39;t need to<=
br>
be rerun and 1 failed.<br>
<br>
Summary: 1 task failed:<br>
=C2=A0 /u/my_poky/poky/meta-raspberry<wbr>pi/recipes-core/images/rpi-bas<wb=
r>ic-image.bb:do_rootfs<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
<span class=3D"m_1270136168937222160m_-1838101509340986021gmail-m_740397202=
9661969540m_6204495544071591042gmail-m_2002249612472036039m_525300071957511=
9424m_1565124425357432306HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div>
</blockquote></div></div>
</div></div></blockquote></div><br></div></div>
</blockquote></div></div>
</div></div></blockquote></div><br></div></div>
</blockquote></div></div>
</div></div></blockquote></div><br></div></div>

--001a114e5450327199055677c4c1--
