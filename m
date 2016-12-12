Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB1F5E00B96; Sun, 11 Dec 2016 21:55:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46D3EE00B74
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 21:55:16 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 037EA68A01C; Mon, 12 Dec 2016 05:55:14 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 626D968A019;
	Mon, 12 Dec 2016 05:55:12 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id E734967402C5;
	Mon, 12 Dec 2016 06:55:11 +0100 (CET)
To: yocto@yoctoproject.org
References: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
	<CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
	<CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <55a47925-aa50-2fce-0c92-5fd4eae54895@mlbassoc.com>
Date: Mon, 12 Dec 2016 06:55:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
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
X-List-Received-Date: Mon, 12 Dec 2016 05:55:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-12-11 16:49, Mont3z Claros wrote:
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

I built webkit for rpi3 just fine (yesterday 2016-12-11) using just
   poky: e38775a1d82e6dc60fc96cf243ecb94be964d9b2
   meta-raspberrypi: 44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9
these were the current master as of then.

What version(s) are you trying to use?

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


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

