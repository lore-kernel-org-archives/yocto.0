Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57B8EE00AC0; Tue,  4 Aug 2015 23:34:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31BFBE00A97
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 23:34:32 -0700 (PDT)
Received: from [192.168.1.131] (199.50.23.95.dynamic.jazztel.es [95.23.50.199])
	by lists.s-osg.org (Postfix) with ESMTPSA id 2D3F246328;
	Tue,  4 Aug 2015 23:34:30 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <55C1AE74.2030808@osg.samsung.com>
Date: Wed, 5 Aug 2015 08:34:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
Cc: yocto@yoctoproject.org, Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
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
X-List-Received-Date: Wed, 05 Aug 2015 06:34:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello Khem,

On 08/04/2015 09:01 PM, Khem Raj wrote:
> 
>> On Jul 30, 2015, at 1:34 AM, Javier Martinez Canillas <javier@osg.samsung.com> wrote:
>>
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
>> conf/machine/include/rpi-default-providers.inc | 8 ++++----
>> conf/machine/include/rpi-default-versions.inc  | 2 +-
>> 2 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
>> index ee3a3acce7bd..233f177bd16e 100644
>> --- a/conf/machine/include/rpi-default-providers.inc
>> +++ b/conf/machine/include/rpi-default-providers.inc
>> @@ -3,8 +3,8 @@
>> PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
>> PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
>> PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
>> -PREFERRED_PROVIDER_virtual/egl ?= "userland"
>> -PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>> -PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
>> -PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
>> +PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', d)}"
>> +PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', d)}"
>> +PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}"
>> +PREFERRED_PROVIDER_virtual/mesa ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}”
> 
> who defines the distro feature ?
> 
> 

Distro features AFAICT are user defined options, you can for example have
the following in your conf/local.conf:

DISTRO_FEATURES_append = " vc4-gfx"

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

