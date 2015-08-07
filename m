Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EA0DE00A3C; Fri,  7 Aug 2015 03:45:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09C3EE00A31
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 03:45:42 -0700 (PDT)
Received: from [192.168.1.131] (199.50.23.95.dynamic.jazztel.es [95.23.50.199])
	by lists.s-osg.org (Postfix) with ESMTPSA id 8A55B46329;
	Fri,  7 Aug 2015 03:45:40 -0700 (PDT)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com>
	<CALbNGRRCTwfoXkSSr9TR-=-vaQCasZDbf=T2hNk2mbshtNtE2w@mail.gmail.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55C48C51.3010900@osg.samsung.com>
Date: Fri, 7 Aug 2015 12:45:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <CALbNGRRCTwfoXkSSr9TR-=-vaQCasZDbf=T2hNk2mbshtNtE2w@mail.gmail.com>
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
X-List-Received-Date: Fri, 07 Aug 2015 10:45:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello Andreas,

Thanks a lot for your feedback.

On 08/06/2015 09:41 AM, Andreas Müller wrote:
> On Thu, Aug 6, 2015 at 8:59 AM, Javier Martinez Canillas
> <javier@osg.samsung.com> wrote:
>> Yes, I in fact was not sure if it should be a distro or machine feature
>> and then decided on the former because there is more than the kernel to
>> make it work like changing mesa configure options. But as mentioned to
>> Andrea Müller, probably we should ship a mesa .bbappend for this in the
>> BSP so I agree that a MACHINE_FEATURE will make more sense.
> Suggestions:
> 
> * Mesa: A simple append with
> 
> PACKAGECONFIG_append_rpi += " gallium"
> GALLIUMDRIVERS_rpi = "vc4"
> 
> would do. If you check mesa.inc in oe-core others (intel) do similar

That sounds good to me.

> (we might have to wait for a more recent mesa expected in September).
>

Why do you think we would have to wait for a newer mesa? AFAICT the mesa
version in Fido (10.4.4) already has vc4 support [0]. Although we have
been using mesa master so I should test how well 10.4 works. AFAIK Derek
picked a specific mesa sha1 that Eric's vc4 DRM driver was known to work.

But if there is a meta-raspberrypi/recipes-graphics/mesa/mesa_%.bbappend
then we can use a newer mesa in tizen-distro without the need of having
patches on top of meta-raspberrypi as we do now.
 
> * kernel: have different name e.g linux-raspberrypi-vc4
>

Yes, that seems to be what most people agree on. I'll change it in v2.

> The selection is done in this layer by changing default providers. In
> a first step this could be done manually - aided by a helpful comment.
>

Agreed.

> Andreas
>

[0]: http://cgit.freedesktop.org/mesa/mesa/tree/src/gallium/drivers/vc4?h=10.4

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

