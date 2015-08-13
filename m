Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FF2AE00947; Thu, 13 Aug 2015 00:22:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1332DE00758
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 00:22:36 -0700 (PDT)
Received: from [192.168.1.132] (95.111.23.95.dynamic.jazztel.es [95.23.111.95])
	by lists.s-osg.org (Postfix) with ESMTPSA id C6BDF46328;
	Thu, 13 Aug 2015 00:22:34 -0700 (PDT)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com> <20150809230528.GL17962@resin>
	<CALbNGRQhDdvVPdA1WHvfZ45WG45JYMYCJaNJTGns5ML5Rg+u6Q@mail.gmail.com>
	<55C85F2E.9080600@osg.samsung.com> <55CB5F4A.9060806@osg.samsung.com>
	<CALbNGRRU+HT+o7KsK_DDVFGMQgjERyp5ASfHE39YzeaomUxHnQ@mail.gmail.com>
	<CALbNGRRpXGJ6HwkTNu-sZFn3_qPdc4s9n=o-TWVTyfKiAxnHZw@mail.gmail.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55CC45B7.4010603@osg.samsung.com>
Date: Thu, 13 Aug 2015 09:22:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <CALbNGRRpXGJ6HwkTNu-sZFn3_qPdc4s9n=o-TWVTyfKiAxnHZw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Thu, 13 Aug 2015 07:22:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello Andreas,

On 08/12/2015 10:22 PM, Andreas Müller wrote:
> On Wed, Aug 12, 2015 at 7:15 PM, Andreas Müller
> <schnitzeltony@googlemail.com> wrote:
>> FYI: I managed to get the vc4 driver loaded (should be in my repo
>> branch vc4-2). With this I get some repeating kernel error messages
>> (don't have them here). I am sure that I read something about these
>> messages when preparing vc4 (yes I started similar before you sent
>> patches).
>>

Awesome, I tried to get it working yesterday but couldn't. Good work!

>> Hope I have some energy left tonight to check further and let you know...
>>
>>From xorg perspective all looks fine
> 
> [595923.730] (II) modeset(0): [DRI2] Setup complete
> [595923.730] (II) modeset(0): [DRI2]   DRI driver: vc4
> [595923.730] (II) modeset(0): [DRI2]   VDPAU driver: vc4
> [595923.740] (--) RandR disabled
> [595923.745] (II) AIGLX: enabled GLX_MESA_copy_sub_buffer
> [595923.745] (II) AIGLX: enabled GLX_ARB_create_context
> [595923.745] (II) AIGLX: enabled GLX_ARB_create_context_profile
> [595923.745] (II) AIGLX: enabled GLX_EXT_create_context_es2_profile
> [595923.745] (II) AIGLX: enabled GLX_INTEL_swap_event
> [595923.745] (II) AIGLX: enabled GLX_SGI_swap_control and GLX_MESA_swap_control
> [595923.745] (II) AIGLX: enabled GLX_EXT_framebuffer_sRGB
> [595923.745] (II) AIGLX: enabled GLX_ARB_fbconfig_float
> [595923.745] (II) AIGLX: GLX_EXT_texture_from_pixmap backed by buffer objects
> [595923.747] (II) AIGLX: Loaded and initialized vc4
> [595923.747] (II) GLX: Initialized DRI2 GL provider for screen 0
> [595923.782] (II) modeset(0): Setting screen physical size to 338 x 270
> 
> but kernel complains periodically ~6s with
> 
> [   36.814922] [drm:vc4_submit_cl_ioctl] *ERROR* Rendering requires
> BOs to validate
> [   43.060516] [drm:vc4_submit_cl_ioctl] *ERROR* Rendering requires
> BOs to validate
> [   49.325115] [drm:vc4_submit_cl_ioctl] *ERROR* Rendering requires
> BOs to validate
> [   55.558433] [drm:vc4_submit_cl_ioctl] *ERROR* Rendering requires
> BOs to validate
>

Yes, I was able to reproduce the issue. My X -verbose output:

http://hastebin.com/onovosojuw.md

> Will check what this message want me to say - anybody out there with
> helping hints?
>

No clue. I was looking and the error is in the VC4_SUBMIT_CL ioctl cmd
handler (vc4_submit_cl_ioctl) in drivers/gpu/drm/vc4/vc4_gem.c.

AFAIU bo_handle_count is supposed to always be > 0 but somehow mesa is
passing 0 on it.

The ioctl call is in vc4_flush (src/gallium/drivers/vc4/vc4_context.c)
in mesa. So it seems this is a mesa issue. I've asked Eric Anholt in
#dri-devel on IRC if his kernel is supposed to work with mesa 10.5.8
or if there is a minimum version / sha1 that is needed.

> Andreas
> 

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

