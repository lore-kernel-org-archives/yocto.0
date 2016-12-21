Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AACCFE00CD0; Wed, 21 Dec 2016 11:28:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BBB2E00A4D
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 11:28:40 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id 2so9855191uax.3
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 11:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JIj6zFZvI2VkkC4+XMCFur1bZIzpKkBPGFJo2pOeCrw=;
	b=mOm6+niFPZeSmhaM7CIjw01vZUMlta2zdmIhkyO6MQZhx1IpTfUKw4DG20CqvOR9W0
	ZxoK7BDsg4eqktxkbEh/EBgm4MGNy51y5its9maxvtgH9rffS5j+znEKP7bhFyZFlDKK
	gYFX9FinTtIUX6dVlJEFVI/fejb/5NPaCTtf2I2rZyq+8ggX4DI5Q5vTfySbnqbGO1Yr
	PEmCcGL2HUsGT1H31ayhBDU6eow5vGrl1/cigBZimIjPTKyi0MUp4r0QMDWBHKaO30xW
	Qt+y74rXJohRMLSX82Ez2jvWmkijVGvXkJfzqznTxdJeR+7ZrnpppLTSWD+O6pDl4hNB
	GAjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JIj6zFZvI2VkkC4+XMCFur1bZIzpKkBPGFJo2pOeCrw=;
	b=NyvOtnISaRTVTxexvV2Dmjh4N9BDXSVzRccuN7g6b2qJSx0FNYnAIMGvtVIAtcfZiJ
	hCvgm472Buw/eZmlVPG1D3Uy3TFfHP7kXf8CXDNKaXHYo+5ksW+4K1pzG1ujMnX4lIFt
	b5M7GfLP8knaGmobpjJcDMUzNaKHfgZZQMebAMQGQzh/dlBJm1On4RBjzBhdbgh0gUQX
	YG12ClWatvCU6x9iox7T+S0LZ0ZRn/UVkhJ8cg28BoiFaH3RcBWwfHghYPAxEIp7dbVN
	p8G9zGMLUT7bFjghriAAtZyqZSqnZmAhGGrIbntFBd17KIi7Tddw3pREUZ9e4Vl4WPi3
	fWew==
X-Gm-Message-State: AIkVDXJOluna2t99SsCbm8Db554mAxHib/+A6hcHHVP2tRE2fzMHT4KZ4wKwBmQLOG4n1+kVIBOPtMSP6wtrzQ==
X-Received: by 10.159.55.142 with SMTP id q14mr5162392uaq.107.1482348520189;
	Wed, 21 Dec 2016 11:28:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Wed, 21 Dec 2016 11:28:09 -0800 (PST)
In-Reply-To: <CAJ70iBRhC+=S9jshcMeFa5pUsdUDH=wn37okfbHX3gEieon2bw@mail.gmail.com>
References: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
	<CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
	<CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
	<55a47925-aa50-2fce-0c92-5fd4eae54895@mlbassoc.com>
	<CAJ70iBQz+-=30eEzXY4PhtCXpgx=cDRsEnipbx1fVSR-FObaNw@mail.gmail.com>
	<CAMKF1sp+RaZSOQTDYst-ZGCPbc4tr7-+RsUivVszaXsEYy+gJA@mail.gmail.com>
	<CAJ70iBRhC+=S9jshcMeFa5pUsdUDH=wn37okfbHX3gEieon2bw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 21 Dec 2016 11:28:09 -0800
Message-ID: <CAMKF1srZ9puZMpqtMmPpwJWRAt9+YMiK-OArKWvtmy+e3vwcQw@mail.gmail.com>
To: Mont3z Claros <mont3z.claro5@gmail.com>
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
X-List-Received-Date: Wed, 21 Dec 2016 19:28:44 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 21, 2016 at 9:50 AM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
> Thanks, Khem. I'll try this.
> I've just asked this because I've got a black screen on my monitor
> when using VC4 driver and when I've check the UART console I see the
> error:
>
> vc4-drm soc:gpu: failed to bind 3f902000.hdmi (ops vc4_hdmi_ops): -517
> vc4-drm soc:gpu: master bind failed: -517
> vc4-drm soc:gpu: failed to bind 3f902000.hdmi (ops vc4_hdmi_ops): -517
> vc4-drm soc:gpu: master bind failed: -517

Dont think it has to do anything with opencl, but you need to start
some app and see if it fails to
display

>
> So, I'll try building it without opencl.
> Montez.
>
>
>
> On Wed, Dec 21, 2016 at 9:19 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> Perhaps by adding -DENABLE_OPENCL=OFF to the EXTRA_OECONF
>>
>> On Wed, Dec 21, 2016 at 7:20 AM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
>>> Thanks all for the help. I was able to build webkit using:
>>> MACHINE_FEATURES += "vc4graphics"
>>>
>>> I'm sorry for asking those basic questions but is there a way to build
>>> webkit without opencl for the raspberry pi3?
>>>
>>> Thanks,
>>> Montez
>>>
>>> On Sun, Dec 11, 2016 at 9:55 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>> On 2016-12-11 16:49, Mont3z Claros wrote:
>>>>>
>>>>> Hi Khem,
>>>>>
>>>>> this layer is:
>>>>>
>>>>> https://layers.openembedded.org/layerindex/branch/master/layer/meta-webkit/
>>>>>
>>>>> I've also tried to use the webkit recipe from poky but I've got the
>>>>> same error. In this case I used a different configuration because poky
>>>>> doesn't have webkitgtk-bin (mini browser). To test that I've tried to
>>>>> build a modified version of meta-web-kiosk
>>>>>  (https://github.com/mont3z/meta-web-kiosk). This is still a work in
>>>>> progress but basically it replaces midori by epiphany.
>>>>>
>>>>> local.conf:
>>>>> MACHINE = "raspberrypi3"
>>>>> DISTRO_FEATURES_append = " x11 gles2"
>>>>>
>>>>> command:
>>>>> bitbake core-image-web-kiosk
>>>>>
>>>>> bblayes.conf:
>>>>> BBLAYERS ?= " \
>>>>>   /home/mont3z/yocto/poky/meta \
>>>>>   /home/mont3z/yocto/poky/meta-poky \
>>>>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>>>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>>>>   /home/mont3z/yocto/meta-raspberrypi \
>>>>>   /home/mont3z/yocto/meta-web-kiosk \
>>>>> "
>>>>>
>>>>> I also found this discussion about rpi2. I'll try to run some of those
>>>>> configurations:
>>>>> https://github.com/Igalia/meta-webkit/issues/1
>>>>
>>>>
>>>> I built webkit for rpi3 just fine (yesterday 2016-12-11) using just
>>>>   poky: e38775a1d82e6dc60fc96cf243ecb94be964d9b2
>>>>   meta-raspberrypi: 44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9
>>>> these were the current master as of then.
>>>>
>>>> What version(s) are you trying to use?
>>>>
>>>>
>>>>>
>>>>> On Sat, Dec 10, 2016 at 1:02 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>>>
>>>>>> On Sat, Dec 10, 2016 at 7:52 AM, Mont3z Claros <mont3z.claro5@gmail.com>
>>>>>> wrote:
>>>>>>>
>>>>>>> Hi all,
>>>>>>>
>>>>>>> I don't know what I'm doing wrong but I'm getting an error during
>>>>>>> compilation of webkit for raspberry pi3. Please see below the error
>>>>>>> and my configurations,
>>>>>>>
>>>>>>> Thanks,
>>>>>>> Mont3z
>>>>>>>
>>>>>>> local.conf:
>>>>>>> MACHINE = "raspberrypi3"
>>>>>>> DISTRO_FEATURES_append = " x11 gles2"
>>>>>>> IMAGE_INSTALL_append = " webkitgtk-bin"
>>>>>>>
>>>>>>> Error:
>>>>>>> | ERROR: oe_runmake failed
>>>>>>> | In file included from
>>>>>>>
>>>>>>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/cairo/GraphicsContext3DCairo.cpp:51:0:
>>>>>>> |
>>>>>>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/opengl/Extensions3DOpenGLES.h:109:5:
>>>>>>> error: 'PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC' does not name a
>>>>>>> type
>>>>>>> |      PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC
>>>>>>> m_glFramebufferTexture2DMultisampleIMG;
>>>>>>> |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>>>>>
>>>>>>> command:
>>>>>>> bitbake core-image-sato
>>>>>>>
>>>>>>> bblayes.conf:
>>>>>>> BBLAYERS ?= " \
>>>>>>>   /home/mont3z/yocto/poky/meta \
>>>>>>>   /home/mont3z/yocto/poky/meta-poky \
>>>>>>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>>>>>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>>>>>>   /home/mont3z/yocto/meta-webkit \
>>>>>>
>>>>>>
>>>>>>
>>>>>> what does this layer do ?
>>>>>>
>>>>>>>   /home/mont3z/yocto/meta-raspberrypi \
>>>>>>>   "
>>>>
>>>>
>>>>
>>>> --
>>>> ------------------------------------------------------------
>>>> Gary Thomas                 |  Consulting for the
>>>> MLB Associates              |    Embedded world
>>>> ------------------------------------------------------------
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

