Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ABCFE00A9A; Tue,  4 Aug 2015 09:17:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF344E009C5
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 09:17:09 -0700 (PDT)
Received: from [192.168.1.131] (199.50.23.95.dynamic.jazztel.es [95.23.50.199])
	by lists.s-osg.org (Postfix) with ESMTPSA id D6FBC46328;
	Tue,  4 Aug 2015 09:17:07 -0700 (PDT)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<CALbNGRSs3KQj4RYopow=+kwJXE-46yU-t5o-FWSbR0wqBoqESw@mail.gmail.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55C0E581.6080603@osg.samsung.com>
Date: Tue, 4 Aug 2015 18:17:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <CALbNGRSs3KQj4RYopow=+kwJXE-46yU-t5o-FWSbR0wqBoqESw@mail.gmail.com>
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
X-List-Received-Date: Tue, 04 Aug 2015 16:17:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello Andreas,

On 08/03/2015 10:14 PM, Andreas Müller wrote:
> On Thu, Jul 30, 2015 at 10:34 AM, Javier Martinez Canillas
> <javier@osg.samsung.com> wrote:
>> From: Derek Foreman <derekf@osg.samsung.com>
>>
>> The Raspberry Pi boards can use one of two graphics stacks: The "userland"
>> user-space driver or the VC4 drm/kms kernel driver. This patch allows the
>> user to choose if the VC4 driver has to be used instead and set the right
>> preferred providers for that case.
>>
>> Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
>> [javier: Extend commit msg and made conditional instead removing userland]
>> Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>
>>
>> ---
>>
>>  conf/machine/include/rpi-default-providers.inc | 8 ++++----
>>  conf/machine/include/rpi-default-versions.inc  | 2 +-
>>  2 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
>> index ee3a3acce7bd..233f177bd16e 100644
>> --- a/conf/machine/include/rpi-default-providers.inc
>> +++ b/conf/machine/include/rpi-default-providers.inc
>> @@ -3,8 +3,8 @@
>>  PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
>>  PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
>>  PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
>> -PREFERRED_PROVIDER_virtual/egl ?= "userland"
>> -PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>> -PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
>> -PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
>> +PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', d)}"
>> +PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', d)}"
>> +PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}"
>> +PREFERRED_PROVIDER_virtual/mesa ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}"
>>  PREFERRED_PROVIDER_jpeg = "jpeg"
>> diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
>> index bcf78281b6ff..c07ecac5924b 100644
>> --- a/conf/machine/include/rpi-default-versions.inc
>> +++ b/conf/machine/include/rpi-default-versions.inc
>> @@ -1,3 +1,3 @@
>>  # RaspberryPi BSP default versions
>>
>> -PREFERRED_VERSION_linux-raspberrypi ?= "3.18.%"
>> +PREFERRED_VERSION_linux-raspberrypi ?= "${@bb.utils.contains("DISTRO_FEATURES", "vc4-gfx", "4.1.%", "3.18.%", d)}"
>> --
>> 2.4.3
>>
>> --
> This patch series is an exciting starter but I think it is incomplete:
> Without further configuration mesa simply builds swrast which is not
> what we want. We need some '--with-gallium-drivers=vc4' right? [1]
> 

Yes, this is only the kernel changes. I'm testing with more patches on top
for mesa and libdrm [0]. I always find hard to draw a line between a BSP
and a distro layer so I didn't know if I should include those in the series
or not. But you are right and probably at least the GALLIUMDRIVERSTIZEN
vc4 append should be in a mesa .bbappend. I'll do that when posting a v2
once I get more feedback from others.

> Andreas
> 
> [1] http://dri.freedesktop.org/wiki/VC4/
> 

[0]: https://github.com/martinezjavier/meta-raspberrypi/commits/rpi2-vc4-gfx

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

