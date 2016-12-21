Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DCB3E004E5; Wed, 21 Dec 2016 09:19:42 -0800 (PST)
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
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89182E0034A
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:19:41 -0800 (PST)
Received: by mail-ua0-f172.google.com with SMTP id 34so22464625uac.1
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sOn11zdQ+c8/W00OhBQZsxwwMyEcdv8NSQT2jTgrxyI=;
	b=iAN1r1jOuGNa3oUw3viIw2DC+e6ZJ6QRMvaJRwzi58+R1Rir8c1EyWI0m1tafGdHYj
	E31GkRVn4pVuRr0YASvcQzOy3aEwgx/jfZL3xdws2CF7zMlTn+QKRM/LF/jan4rM1GiL
	vOH9JVkAVNtRhC1k/564ALKEYu3U8FMXRaBEB0adVP16lfxWVmFCckSzo4xZjpRwd/6S
	IPqAb8XGkJ8EvwgttHsZVwBU3XpjRWjd9LxiiFxJRFpivTAEajxA89QAAPOzPQQTWTCy
	zcfx9hY8eW9ZZ7RpHBrCul8vB8h4iimVpw3ssmKBPC6+w64eXeE+w3Yf9p4uJtqn3jis
	83zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sOn11zdQ+c8/W00OhBQZsxwwMyEcdv8NSQT2jTgrxyI=;
	b=eYANjAVa+2OXT3dUC9PJTh1nTokwpumTntWkRJ393RI9gu/LSNRbnCJLi9A+20fTVD
	DeoGezEvV4M6khmfLkdVDqWm+uvnLMYSm5ItRNnX0h1hNRJIGm39BEbHufW6QoOhmQu/
	c8Qh2DbcjtIZ+auOdogR0sQhgHIFCVrxxvQC2B5AWkYPr01aYlUOqoMqcIZXfWnoeX7S
	b3sRdKGdlrl9mdCTKeVA3QknG1+azTfNuty0JgcC1xTXOGeJJRiK5m04cgDCQkS9VFLW
	6zlMwrEKRAjnanVU//9gji3KpCmd+bPTPjJ9ZQb3rJCwI8pWSVAPXJqntOQRUQeZmNqF
	GhUQ==
X-Gm-Message-State: AIkVDXKdPGQhISJcT9/RU7QDRp3Cs6vbR3irTePhIqeNnCMB52CG+SPuvaFgez9k2fBDspWQ9J/e1NdaOPkFmA==
X-Received: by 10.159.32.99 with SMTP id 90mr3776968uam.138.1482340780365;
	Wed, 21 Dec 2016 09:19:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Wed, 21 Dec 2016 09:19:09 -0800 (PST)
In-Reply-To: <CAJ70iBQz+-=30eEzXY4PhtCXpgx=cDRsEnipbx1fVSR-FObaNw@mail.gmail.com>
References: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
	<CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
	<CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
	<55a47925-aa50-2fce-0c92-5fd4eae54895@mlbassoc.com>
	<CAJ70iBQz+-=30eEzXY4PhtCXpgx=cDRsEnipbx1fVSR-FObaNw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 21 Dec 2016 09:19:09 -0800
Message-ID: <CAMKF1sp+RaZSOQTDYst-ZGCPbc4tr7-+RsUivVszaXsEYy+gJA@mail.gmail.com>
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
X-List-Received-Date: Wed, 21 Dec 2016 17:19:42 -0000
Content-Type: text/plain; charset=UTF-8

Perhaps by adding -DENABLE_OPENCL=OFF to the EXTRA_OECONF

On Wed, Dec 21, 2016 at 7:20 AM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
> Thanks all for the help. I was able to build webkit using:
> MACHINE_FEATURES += "vc4graphics"
>
> I'm sorry for asking those basic questions but is there a way to build
> webkit without opencl for the raspberry pi3?
>
> Thanks,
> Montez
>
> On Sun, Dec 11, 2016 at 9:55 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2016-12-11 16:49, Mont3z Claros wrote:
>>>
>>> Hi Khem,
>>>
>>> this layer is:
>>>
>>> https://layers.openembedded.org/layerindex/branch/master/layer/meta-webkit/
>>>
>>> I've also tried to use the webkit recipe from poky but I've got the
>>> same error. In this case I used a different configuration because poky
>>> doesn't have webkitgtk-bin (mini browser). To test that I've tried to
>>> build a modified version of meta-web-kiosk
>>>  (https://github.com/mont3z/meta-web-kiosk). This is still a work in
>>> progress but basically it replaces midori by epiphany.
>>>
>>> local.conf:
>>> MACHINE = "raspberrypi3"
>>> DISTRO_FEATURES_append = " x11 gles2"
>>>
>>> command:
>>> bitbake core-image-web-kiosk
>>>
>>> bblayes.conf:
>>> BBLAYERS ?= " \
>>>   /home/mont3z/yocto/poky/meta \
>>>   /home/mont3z/yocto/poky/meta-poky \
>>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>>   /home/mont3z/yocto/meta-raspberrypi \
>>>   /home/mont3z/yocto/meta-web-kiosk \
>>> "
>>>
>>> I also found this discussion about rpi2. I'll try to run some of those
>>> configurations:
>>> https://github.com/Igalia/meta-webkit/issues/1
>>
>>
>> I built webkit for rpi3 just fine (yesterday 2016-12-11) using just
>>   poky: e38775a1d82e6dc60fc96cf243ecb94be964d9b2
>>   meta-raspberrypi: 44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9
>> these were the current master as of then.
>>
>> What version(s) are you trying to use?
>>
>>
>>>
>>> On Sat, Dec 10, 2016 at 1:02 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>> On Sat, Dec 10, 2016 at 7:52 AM, Mont3z Claros <mont3z.claro5@gmail.com>
>>>> wrote:
>>>>>
>>>>> Hi all,
>>>>>
>>>>> I don't know what I'm doing wrong but I'm getting an error during
>>>>> compilation of webkit for raspberry pi3. Please see below the error
>>>>> and my configurations,
>>>>>
>>>>> Thanks,
>>>>> Mont3z
>>>>>
>>>>> local.conf:
>>>>> MACHINE = "raspberrypi3"
>>>>> DISTRO_FEATURES_append = " x11 gles2"
>>>>> IMAGE_INSTALL_append = " webkitgtk-bin"
>>>>>
>>>>> Error:
>>>>> | ERROR: oe_runmake failed
>>>>> | In file included from
>>>>>
>>>>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/cairo/GraphicsContext3DCairo.cpp:51:0:
>>>>> |
>>>>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/opengl/Extensions3DOpenGLES.h:109:5:
>>>>> error: 'PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC' does not name a
>>>>> type
>>>>> |      PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC
>>>>> m_glFramebufferTexture2DMultisampleIMG;
>>>>> |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>>>
>>>>> command:
>>>>> bitbake core-image-sato
>>>>>
>>>>> bblayes.conf:
>>>>> BBLAYERS ?= " \
>>>>>   /home/mont3z/yocto/poky/meta \
>>>>>   /home/mont3z/yocto/poky/meta-poky \
>>>>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>>>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>>>>   /home/mont3z/yocto/meta-webkit \
>>>>
>>>>
>>>>
>>>> what does this layer do ?
>>>>
>>>>>   /home/mont3z/yocto/meta-raspberrypi \
>>>>>   "
>>
>>
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

