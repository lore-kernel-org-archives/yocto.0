Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB13E00AC0; Tue,  4 Aug 2015 23:25:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6229E00AB7
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 23:25:25 -0700 (PDT)
Received: from [192.168.1.131] (199.50.23.95.dynamic.jazztel.es [95.23.50.199])
	by lists.s-osg.org (Postfix) with ESMTPSA id 9DCFB46328;
	Tue,  4 Aug 2015 23:25:23 -0700 (PDT)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<CALbNGRSs3KQj4RYopow=+kwJXE-46yU-t5o-FWSbR0wqBoqESw@mail.gmail.com>
	<55C0E581.6080603@osg.samsung.com>
	<CALbNGRS+Ybpup6OCWh1rZZEk4TUXoBJEXt+GzHqXP60+TGOqZQ@mail.gmail.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <55C1AC50.8070907@osg.samsung.com>
Date: Wed, 5 Aug 2015 08:25:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <CALbNGRS+Ybpup6OCWh1rZZEk4TUXoBJEXt+GzHqXP60+TGOqZQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
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
X-List-Received-Date: Wed, 05 Aug 2015 06:25:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello Andreas,

On 08/04/2015 06:55 PM, Andreas Müller wrote:

[snip]

> Another thing: With witch version of RasPi did you test. With V2 I get
>

I also tested on a RPI2 model B.

> [    1.342175] [drm:vc4_hdmi_bind] *ERROR* Failed to get ddc i2c adapter by node
> [    1.349359] vc4-drm soc:vc4@0x7e4c0000: failed to bind
> 3f902000.brcm,vc4-hdmi (ops vc4_hdmi_ops): -517
>

Yes, the problem is that you are missing mask_gpu_interrupt0=0x400 in your
/boot/config.txt as explained in [0]. That's why patch 2/5 added a config
option for this. Add the following to your conf/local.conf and should work:

MASK_GPU_INTERRUPT = "0x400"

I also needed to add DISABLE_OVERSCAN = "1"
 
> Andreas
> 

[0]: http://dri.freedesktop.org/wiki/VC4/

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

