Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52E6CE00AB3; Wed, 12 Aug 2015 07:59:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E39B2E00AAF
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 07:59:27 -0700 (PDT)
Received: from [192.168.1.132] (95.111.23.95.dynamic.jazztel.es [95.23.111.95])
	by lists.s-osg.org (Postfix) with ESMTPSA id 7E2AB46328;
	Wed, 12 Aug 2015 07:59:25 -0700 (PDT)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>,
	Andrei Gherzan <andrei@gherzan.ro>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com> <20150809230528.GL17962@resin>
	<CALbNGRQhDdvVPdA1WHvfZ45WG45JYMYCJaNJTGns5ML5Rg+u6Q@mail.gmail.com>
	<55C85F2E.9080600@osg.samsung.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55CB5F4A.9060806@osg.samsung.com>
Date: Wed, 12 Aug 2015 16:59:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <55C85F2E.9080600@osg.samsung.com>
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
X-List-Received-Date: Wed, 12 Aug 2015 14:59:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello,

On 08/10/2015 10:22 AM, Javier Martinez Canillas wrote:
> Hello Andreas,
> 
> On 08/10/2015 01:37 AM, Andreas Müller wrote:
>>> Khem definitely has a very good point. Maybe his way of putting it in words was
>>> not that productive. But the core idea was definitely right: I don't want rpi
>>> layer to introduce distro features.
>> Agreed but I still have issues make the changes work
>>
>> What I have done to test:
>>
>> 1. add
>> MASK_GPU_INTERRUPT = "0x400"
>> DISTRO_FEATURES_append = " vc4-gfx"
>>
>> to my local.conf
>>
>> 2. put [1] on top of the VC4 patches sent  (this is a WIP patch not
>> yet finished)
>> 3. tested running X11
>>

I tested Andreas' WIP patch under X11 using the core-image-sato image and I
could reproduce the same behavior. KMS/DRM works when using the modesetting
Xorg DDX but no GLES with HW acceleration.

> 
> I did only test with Weston since that is what Tizen uses and not with X11.
> I'll make sure to test with X11 and also include a mesa_%.bbappend for v2.
> 
>> Question: What setting does the trick getting vc4 driver created by
>> mesa doing the OpenGL work. I see only swrast which is bulls...
>>
> 
> I'm not really a graphics person so I'll let Derek to answer this. He is
> in fact the author of most of these patches and I'm just working on push
> them upstream.
>

Derek is on holidays until next week so I tried to dig on this. When running
the glmark2-es2 benchmark I get:

$ glmark2-es2
libEGL warning: DRI2: failed to authenticate
** Failed to set swap interval. Results may be bounded above by refresh rate.
=======================================================
    glmark2 2014.03
=======================================================
    OpenGL Information
    GL_VENDOR:     Mesa Project
    GL_RENDERER:   Software Rasterizer
    GL_VERSION:    OpenGL ES 2.0 Mesa 10.5.8
=======================================================

so as Andreas said, it is using swrast instead of the VC4 hw one. And in fact
by running strace I see that there is a open("/usr/lib/dri/swrast_dri.so",...)
but /usr/lib/dri/vc4_dri.so is never opened.

I tried bumping the mesa git recipe to use the same sha1 we are using in our
Tizen port but ran into build issues...

But I've reworked the patch series according to your suggestions and I can post
a v2 if you want since at least KMS/DRM is working with Andreas' changes or do
you want to first sort out the mesa bits for 3D HW accel before posting a v2?

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

