Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DF9BE00973; Thu, 13 Aug 2015 09:20:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E462E0095C
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 09:20:19 -0700 (PDT)
Received: from [192.168.1.132] (95.111.23.95.dynamic.jazztel.es [95.23.111.95])
	by lists.s-osg.org (Postfix) with ESMTPSA id C854946328;
	Thu, 13 Aug 2015 09:20:17 -0700 (PDT)
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
	<55CC45B7.4010603@osg.samsung.com> <55CCBB2F.3050100@osg.samsung.com>
	<CALbNGRRC8+UqV4F5XSSuHqLcRDsRzb0czSTj4XQLAYD28hF7jA@mail.gmail.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55CCC3BE.8090900@osg.samsung.com>
Date: Thu, 13 Aug 2015 18:20:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <CALbNGRRC8+UqV4F5XSSuHqLcRDsRzb0czSTj4XQLAYD28hF7jA@mail.gmail.com>
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
X-List-Received-Date: Thu, 13 Aug 2015 16:20:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello Andreas,

On 08/13/2015 06:00 PM, Andreas Müller wrote:
> On Thu, Aug 13, 2015 at 5:43 PM, Javier Martinez Canillas
> <javier@osg.samsung.com> wrote:
> Hi
> 
> Thanks a lot!l. I am afraid my build machine at home (RPi is hobby) is
> about to die for hard-disk issues. As soon as it's back I will try
> with updated mesa.
>
> As I cannot do myself currently: Can you give glmark-es2 a try?
> 

There is an issue with glmark-es2, even though it says

=======================================================
    glmark2 2014.03
=======================================================
    OpenGL Information
    GL_VENDOR:     Broadcom
    GL_RENDERER:   Gallium 0.4 on VC4
    GL_VERSION:    OpenGL ES 2.0 Mesa 10.7.0-devel (git-1762568fd39b)

and the framerate is higher than with glmark2:

[build] use-vbo=false: FPS: 50 FrameTime: 20.000 ms
[build] use-vbo=true: FPS: 54 FrameTime: 18.519 ms
[texture] texture-filter=nearest: FPS: 53 FrameTime: 18.868 ms

The image is frozen and no errors shown in the kernel log buffer.
Eric did not answer me yet which mesa version or sha1 is known to
work well with X11 + OpenGL ES.

> Andreas
> 

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

