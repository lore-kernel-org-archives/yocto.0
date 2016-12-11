Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B88C0E00848; Sun, 11 Dec 2016 09:50:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC048E007E8
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 09:50:21 -0800 (PST)
Received: by mail-vk0-f53.google.com with SMTP id w194so31206745vkw.2
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 09:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2if5ouD57Z+LXc3fs+TkoUOFtap/4Xr+15o+5ymz1JA=;
	b=hsBMdBKjyDWm7AgSsJj764uzI9IQt2BhN3cLtncf90+jf5cIXu+/4Bg9nRh4tCTmFv
	4WTl27ToMMITx6cjAHzuzLtMnE4m/0YLEv/Z4erknsCh43pzNjoLuzp8JmgX+BgRO2KB
	2Icc6LmE3yUbr/CP9bjquu9xCqwY4i8QS1J8nXH1P9W37/NEO7ZLTcyCBJAqeTpaL0kY
	yoSPf1hDZ+K2FMBgd+zbBXzGxXA3DG4dl5i4uRCJiWGKapz615j7GafcrRRSGMdLZgeo
	Q/Zm80m8NHVMIcTBD3ZYnHYk6swWSmERCi7t2N7oXIWUB+gFSnDSTpnE7JPaAt1W+DYI
	ifxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2if5ouD57Z+LXc3fs+TkoUOFtap/4Xr+15o+5ymz1JA=;
	b=nJMxMOyU0MjAnChx9jTl7+d/ZEmINCHLeNy8FFGWsVMoXsHuv/WWxWu/9U63kbLccj
	ihV1I1uI3wF45PGrZB+npfoP4Q93I/ZbEVkE4PJpWzcIZijfj9qXUHFcuX/23q33oKUU
	r1qMJpHJR5PiUVKbSym5Q4lOPV3BbRnF2UKUORKXNPJSRLF7M/wVFApMYxnvMAsgXBt2
	0YefUn21CkQoMRbGLVdHpp/WUdM8yfdEnr9R/1ak/U4U/TYHnGNEzEGWfCiqKlFZmoet
	dY1JzxtUz9aWkMBFGa+wVvwHb1urNfANnz2+X1PKvaxUMJah9n85R9RCwN+KDJD1HxrI
	pbIw==
X-Gm-Message-State: AKaTC03Q7YH9VGxOBuhShTSMV5HkCj4lp5+8oS28jwkQwWbP2ZvnKLxma2csJORxHdG0CN+oo5lt+wrGAaZwXQ==
X-Received: by 10.31.168.7 with SMTP id r7mr33461073vke.148.1481478620259;
	Sun, 11 Dec 2016 09:50:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Sun, 11 Dec 2016 09:49:49 -0800 (PST)
In-Reply-To: <CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
References: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
	<CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
	<CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 11 Dec 2016 09:49:49 -0800
Message-ID: <CAMKF1soG7vCFQF2ofj-QaWj-Z7rSdcr9-W6gTVOcUfvmU25o5g@mail.gmail.com>
To: Mont3z Claros <mont3z.claro5@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during webkit compilation for rasberry pi3
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
X-List-Received-Date: Sun, 11 Dec 2016 17:50:22 -0000
Content-Type: text/plain; charset=UTF-8

userland graphics drivers dont have gles1 support, that might be one
reason for it. You might try our vc4graphics driver by adding
'vc4graphics' to MACHINE_FEATURES and then it will use mesa.

On Sun, Dec 11, 2016 at 7:49 AM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
> Hi Khem,
>
> this layer is:
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-webkit/
>
> I've also tried to use the webkit recipe from poky but I've got the
> same error. In this case I used a different configuration because poky
> doesn't have webkitgtk-bin (mini browser). To test that I've tried to
> build a modified version of meta-web-kiosk
>  (https://github.com/mont3z/meta-web-kiosk). This is still a work in
> progress but basically it replaces midori by epiphany.
>
> local.conf:
> MACHINE = "raspberrypi3"
> DISTRO_FEATURES_append = " x11 gles2"
>
> command:
> bitbake core-image-web-kiosk
>
> bblayes.conf:
> BBLAYERS ?= " \
>   /home/mont3z/yocto/poky/meta \
>   /home/mont3z/yocto/poky/meta-poky \
>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>   /home/mont3z/yocto/meta-raspberrypi \
>   /home/mont3z/yocto/meta-web-kiosk \
> "
>
> I also found this discussion about rpi2. I'll try to run some of those
> configurations:
> https://github.com/Igalia/meta-webkit/issues/1
>
> On Sat, Dec 10, 2016 at 1:02 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Sat, Dec 10, 2016 at 7:52 AM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
>>> Hi all,
>>>
>>> I don't know what I'm doing wrong but I'm getting an error during
>>> compilation of webkit for raspberry pi3. Please see below the error
>>> and my configurations,
>>>
>>> Thanks,
>>> Mont3z
>>>
>>> local.conf:
>>> MACHINE = "raspberrypi3"
>>> DISTRO_FEATURES_append = " x11 gles2"
>>> IMAGE_INSTALL_append = " webkitgtk-bin"
>>>
>>> Error:
>>> | ERROR: oe_runmake failed
>>> | In file included from
>>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/cairo/GraphicsContext3DCairo.cpp:51:0:
>>> | /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/opengl/Extensions3DOpenGLES.h:109:5:
>>> error: 'PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC' does not name a
>>> type
>>> |      PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC
>>> m_glFramebufferTexture2DMultisampleIMG;
>>> |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>
>>> command:
>>> bitbake core-image-sato
>>>
>>> bblayes.conf:
>>> BBLAYERS ?= " \
>>>   /home/mont3z/yocto/poky/meta \
>>>   /home/mont3z/yocto/poky/meta-poky \
>>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>>   /home/mont3z/yocto/meta-webkit \
>>
>>
>> what does this layer do ?
>>
>>>   /home/mont3z/yocto/meta-raspberrypi \
>>>   "

