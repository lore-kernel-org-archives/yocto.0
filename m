Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9226BE00D5F; Wed, 21 Dec 2016 07:21:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f172.google.com (mail-yw0-f172.google.com
	[209.85.161.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F2EE00A4D
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 07:21:00 -0800 (PST)
Received: by mail-yw0-f172.google.com with SMTP id a10so100843445ywa.3
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 07:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=b8DVnrXubT1o/Kt5np6PWkBAhqB7ItRtBmtB+fvDVbc=;
	b=o0lh2QgqwKkcK1F1PtJAZji222jEk1jbBfccEqaeFziF7H4IH/2gCvVra4VWWl/r8O
	3CVLUD26xK67wiV4x25JjVjewDtxqeC1GwgpURtBbRQCEJ7Tf0edQV7/FaAImtV1lYF0
	Gidez1JyImaALpPA4K8PSderx0rw8q8WPbsI8Zl9iZTvtsvj9gho6a4CUmcDCbKpZ1/k
	mjGNQ0w5w1F/hrchUSYMkYsAH0S9z5fnPUIHMeMehRWuPuj+eLKyCUElqK3kUS7JfOR5
	OrSJ5rt7L7PSd6boGryO4OdTnsmA+2UOITTiWh2Czuw3Lq8oZZeWqrpRUgYT7pxlNvoE
	ZVUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=b8DVnrXubT1o/Kt5np6PWkBAhqB7ItRtBmtB+fvDVbc=;
	b=N8nWGQrp+3FIg55SdotxYFnriXrSfVBEpV7iG4gu1sycJnkTflG9qLUYAfdSLw3xfF
	LrCwNoDBa+e3wsPeXjl3kJrc94ezfD8sRZm0pwjcPj9Xpf8/6J4jPxhcb8a9vSVTtoas
	9gcNi80TUxfBmZyoBzK5m/gAfXqO5UvNXBZw9FjCbhJrrOHIbpKpGAwRBOyI7N0z6ooS
	Lnd4qBRHsrvMSN78hv0JDIEdxlSn9RHERTsjniEelb99HAunX6GK1CWczPogUZ66P9ke
	cH8UGb/91CYk+D6miGvro7Q0Cih/vvW1C27cdlyyMUB5yT0BRiCaCpZVUkmSxTnMT1YU
	8b/w==
X-Gm-Message-State: AIkVDXIz2zht0PBCWPSKIcVXKTl77b/ErhaQfd6jWtt5N+6aRtF6cyVbD24MtVxWiklcZ5jv9be6/Yx4Rmol8A==
X-Received: by 10.129.95.11 with SMTP id t11mr4494730ywb.128.1482333660079;
	Wed, 21 Dec 2016 07:21:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.129.121.1 with HTTP; Wed, 21 Dec 2016 07:20:59 -0800 (PST)
In-Reply-To: <55a47925-aa50-2fce-0c92-5fd4eae54895@mlbassoc.com>
References: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
	<CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
	<CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
	<55a47925-aa50-2fce-0c92-5fd4eae54895@mlbassoc.com>
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Wed, 21 Dec 2016 07:20:59 -0800
Message-ID: <CAJ70iBQz+-=30eEzXY4PhtCXpgx=cDRsEnipbx1fVSR-FObaNw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 21 Dec 2016 15:21:02 -0000
Content-Type: text/plain; charset=UTF-8

Thanks all for the help. I was able to build webkit using:
MACHINE_FEATURES += "vc4graphics"

I'm sorry for asking those basic questions but is there a way to build
webkit without opencl for the raspberry pi3?

Thanks,
Montez

On Sun, Dec 11, 2016 at 9:55 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2016-12-11 16:49, Mont3z Claros wrote:
>>
>> Hi Khem,
>>
>> this layer is:
>>
>> https://layers.openembedded.org/layerindex/branch/master/layer/meta-webkit/
>>
>> I've also tried to use the webkit recipe from poky but I've got the
>> same error. In this case I used a different configuration because poky
>> doesn't have webkitgtk-bin (mini browser). To test that I've tried to
>> build a modified version of meta-web-kiosk
>>  (https://github.com/mont3z/meta-web-kiosk). This is still a work in
>> progress but basically it replaces midori by epiphany.
>>
>> local.conf:
>> MACHINE = "raspberrypi3"
>> DISTRO_FEATURES_append = " x11 gles2"
>>
>> command:
>> bitbake core-image-web-kiosk
>>
>> bblayes.conf:
>> BBLAYERS ?= " \
>>   /home/mont3z/yocto/poky/meta \
>>   /home/mont3z/yocto/poky/meta-poky \
>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>   /home/mont3z/yocto/meta-raspberrypi \
>>   /home/mont3z/yocto/meta-web-kiosk \
>> "
>>
>> I also found this discussion about rpi2. I'll try to run some of those
>> configurations:
>> https://github.com/Igalia/meta-webkit/issues/1
>
>
> I built webkit for rpi3 just fine (yesterday 2016-12-11) using just
>   poky: e38775a1d82e6dc60fc96cf243ecb94be964d9b2
>   meta-raspberrypi: 44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9
> these were the current master as of then.
>
> What version(s) are you trying to use?
>
>
>>
>> On Sat, Dec 10, 2016 at 1:02 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> On Sat, Dec 10, 2016 at 7:52 AM, Mont3z Claros <mont3z.claro5@gmail.com>
>>> wrote:
>>>>
>>>> Hi all,
>>>>
>>>> I don't know what I'm doing wrong but I'm getting an error during
>>>> compilation of webkit for raspberry pi3. Please see below the error
>>>> and my configurations,
>>>>
>>>> Thanks,
>>>> Mont3z
>>>>
>>>> local.conf:
>>>> MACHINE = "raspberrypi3"
>>>> DISTRO_FEATURES_append = " x11 gles2"
>>>> IMAGE_INSTALL_append = " webkitgtk-bin"
>>>>
>>>> Error:
>>>> | ERROR: oe_runmake failed
>>>> | In file included from
>>>>
>>>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/cairo/GraphicsContext3DCairo.cpp:51:0:
>>>> |
>>>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/opengl/Extensions3DOpenGLES.h:109:5:
>>>> error: 'PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC' does not name a
>>>> type
>>>> |      PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC
>>>> m_glFramebufferTexture2DMultisampleIMG;
>>>> |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>>
>>>> command:
>>>> bitbake core-image-sato
>>>>
>>>> bblayes.conf:
>>>> BBLAYERS ?= " \
>>>>   /home/mont3z/yocto/poky/meta \
>>>>   /home/mont3z/yocto/poky/meta-poky \
>>>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>>>   /home/mont3z/yocto/meta-webkit \
>>>
>>>
>>>
>>> what does this layer do ?
>>>
>>>>   /home/mont3z/yocto/meta-raspberrypi \
>>>>   "
>
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

