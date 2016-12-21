Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45903E00CB0; Wed, 21 Dec 2016 09:50:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f169.google.com (mail-yb0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9423BE00955
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:50:55 -0800 (PST)
Received: by mail-yb0-f169.google.com with SMTP id d59so75171808ybi.1
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Mel5Fqbc9pzLCGahY5RYllw0VpvFAKXO8X9/4/GpI88=;
	b=qHSM4uzdcG1Rs4/y2IvFfjUlZ1ZSkWrMLAEok9u9HY4PLik5G8n30K06wUxYypFcpp
	h0mufp4g3+yACl19fgbusXIvTydhDGHfPBrft4qEzYySNCPdDCGFouuHUY1d5pJcU/5L
	d9GUIH1XR497xNhzK5tiR4slMag3lNgm3k7PzYseieatHVwgPY+tcxOIOcza3yrAgvMx
	CLJqyYOJQqaa+Hr++LRHMPAWE/GSRusZEbrnY0u+mvVLolIHlxlT7DchZSkgyVxKwPZP
	DkkRU6k0PQe9taoqu6V5GCOFSa9JBfw1JukjagA19PYPue8QCyAZBUoVHyu8+e7zJZcI
	5phg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Mel5Fqbc9pzLCGahY5RYllw0VpvFAKXO8X9/4/GpI88=;
	b=pndL0+2brCcZGU965w31EWGR8te5WSmhbZTRcrmDywjMtG/n7yXk2T72OERdHaWU+6
	a046j8GVaqOJcbaxexFpSyivy10emG3ZagfnmInIoPve0kosIajZbViSbhrJrLN/50B1
	fW6CGskvTDLBeHmnrgnnyHmdLeHa13vloWDz3axykDlqmmL4p0wZJZh10nJn13nUvmwU
	z/jjLqDlUujaVwFzKDMR4qu7rMS+7H9RbkjHshiVkgHUHNBv6NueDgCQktN1jO6FQeMr
	xr1HgnniEjAtwha0nz4gEOBZqQMSdHZh41lj1ewisI3Q3oZ1LarktHWyQTS1B2HC72CZ
	suJg==
X-Gm-Message-State: AIkVDXLoAgqW5yE3GjixkNGyheVJaKDv6EYF8JhNb4ffxVe7u4G7WowR3oJcYRi0Tea+7CBDHp4ZKCj9yVnzWA==
X-Received: by 10.37.163.33 with SMTP id d30mr3374818ybi.54.1482342654575;
	Wed, 21 Dec 2016 09:50:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.129.121.1 with HTTP; Wed, 21 Dec 2016 09:50:54 -0800 (PST)
In-Reply-To: <CAMKF1sp+RaZSOQTDYst-ZGCPbc4tr7-+RsUivVszaXsEYy+gJA@mail.gmail.com>
References: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
	<CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
	<CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
	<55a47925-aa50-2fce-0c92-5fd4eae54895@mlbassoc.com>
	<CAJ70iBQz+-=30eEzXY4PhtCXpgx=cDRsEnipbx1fVSR-FObaNw@mail.gmail.com>
	<CAMKF1sp+RaZSOQTDYst-ZGCPbc4tr7-+RsUivVszaXsEYy+gJA@mail.gmail.com>
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Wed, 21 Dec 2016 09:50:54 -0800
Message-ID: <CAJ70iBRhC+=S9jshcMeFa5pUsdUDH=wn37okfbHX3gEieon2bw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Wed, 21 Dec 2016 17:50:57 -0000
Content-Type: text/plain; charset=UTF-8

Thanks, Khem. I'll try this.
I've just asked this because I've got a black screen on my monitor
when using VC4 driver and when I've check the UART console I see the
error:

vc4-drm soc:gpu: failed to bind 3f902000.hdmi (ops vc4_hdmi_ops): -517
vc4-drm soc:gpu: master bind failed: -517
vc4-drm soc:gpu: failed to bind 3f902000.hdmi (ops vc4_hdmi_ops): -517
vc4-drm soc:gpu: master bind failed: -517

So, I'll try building it without opencl.
Montez.



On Wed, Dec 21, 2016 at 9:19 AM, Khem Raj <raj.khem@gmail.com> wrote:
> Perhaps by adding -DENABLE_OPENCL=OFF to the EXTRA_OECONF
>
> On Wed, Dec 21, 2016 at 7:20 AM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
>> Thanks all for the help. I was able to build webkit using:
>> MACHINE_FEATURES += "vc4graphics"
>>
>> I'm sorry for asking those basic questions but is there a way to build
>> webkit without opencl for the raspberry pi3?
>>
>> Thanks,
>> Montez
>>
>> On Sun, Dec 11, 2016 at 9:55 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>> On 2016-12-11 16:49, Mont3z Claros wrote:
>>>>
>>>> Hi Khem,
>>>>
>>>> this layer is:
>>>>
>>>> https://layers.openembedded.org/layerindex/branch/master/layer/meta-webkit/
>>>>
>>>> I've also tried to use the webkit recipe from poky but I've got the
>>>> same error. In this case I used a different configuration because poky
>>>> doesn't have webkitgtk-bin (mini browser). To test that I've tried to
>>>> build a modified version of meta-web-kiosk
>>>>  (https://github.com/mont3z/meta-web-kiosk). This is still a work in
>>>> progress but basically it replaces midori by epiphany.
>>>>
>>>> local.conf:
>>>> MACHINE = "raspberrypi3"
>>>> DISTRO_FEATURES_append = " x11 gles2"
>>>>
>>>> command:
>>>> bitbake core-image-web-kiosk
>>>>
>>>> bblayes.conf:
>>>> BBLAYERS ?= " \
>>>>   /home/mont3z/yocto/poky/meta \
>>>>   /home/mont3z/yocto/poky/meta-poky \
>>>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>>>   /home/mont3z/yocto/meta-raspberrypi \
>>>>   /home/mont3z/yocto/meta-web-kiosk \
>>>> "
>>>>
>>>> I also found this discussion about rpi2. I'll try to run some of those
>>>> configurations:
>>>> https://github.com/Igalia/meta-webkit/issues/1
>>>
>>>
>>> I built webkit for rpi3 just fine (yesterday 2016-12-11) using just
>>>   poky: e38775a1d82e6dc60fc96cf243ecb94be964d9b2
>>>   meta-raspberrypi: 44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9
>>> these were the current master as of then.
>>>
>>> What version(s) are you trying to use?
>>>
>>>
>>>>
>>>> On Sat, Dec 10, 2016 at 1:02 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>>
>>>>> On Sat, Dec 10, 2016 at 7:52 AM, Mont3z Claros <mont3z.claro5@gmail.com>
>>>>> wrote:
>>>>>>
>>>>>> Hi all,
>>>>>>
>>>>>> I don't know what I'm doing wrong but I'm getting an error during
>>>>>> compilation of webkit for raspberry pi3. Please see below the error
>>>>>> and my configurations,
>>>>>>
>>>>>> Thanks,
>>>>>> Mont3z
>>>>>>
>>>>>> local.conf:
>>>>>> MACHINE = "raspberrypi3"
>>>>>> DISTRO_FEATURES_append = " x11 gles2"
>>>>>> IMAGE_INSTALL_append = " webkitgtk-bin"
>>>>>>
>>>>>> Error:
>>>>>> | ERROR: oe_runmake failed
>>>>>> | In file included from
>>>>>>
>>>>>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/cairo/GraphicsContext3DCairo.cpp:51:0:
>>>>>> |
>>>>>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/opengl/Extensions3DOpenGLES.h:109:5:
>>>>>> error: 'PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC' does not name a
>>>>>> type
>>>>>> |      PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC
>>>>>> m_glFramebufferTexture2DMultisampleIMG;
>>>>>> |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>>>>
>>>>>> command:
>>>>>> bitbake core-image-sato
>>>>>>
>>>>>> bblayes.conf:
>>>>>> BBLAYERS ?= " \
>>>>>>   /home/mont3z/yocto/poky/meta \
>>>>>>   /home/mont3z/yocto/poky/meta-poky \
>>>>>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>>>>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>>>>>   /home/mont3z/yocto/meta-webkit \
>>>>>
>>>>>
>>>>>
>>>>> what does this layer do ?
>>>>>
>>>>>>   /home/mont3z/yocto/meta-raspberrypi \
>>>>>>   "
>>>
>>>
>>>
>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------------------------------------
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

