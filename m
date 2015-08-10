Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79A36E00349; Mon, 10 Aug 2015 00:59:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3B79E00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 00:59:34 -0700 (PDT)
Received: from [192.168.1.131] (199.50.23.95.dynamic.jazztel.es [95.23.50.199])
	by lists.s-osg.org (Postfix) with ESMTPSA id 3DF41462CB;
	Mon, 10 Aug 2015 00:59:33 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-5-git-send-email-javier@osg.samsung.com>
	<20150809225456.GJ17962@resin>
From: Javier Martinez Canillas <javier@osg.samsung.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55C859E2.6030102@osg.samsung.com>
Date: Mon, 10 Aug 2015 09:59:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <20150809225456.GJ17962@resin>
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 4/5] linux-raspberrypi: Add a 4.1 linux kernel with vc4 support
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
X-List-Received-Date: Mon, 10 Aug 2015 07:59:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hello Andrei,

On 08/10/2015 12:54 AM, Andrei Gherzan wrote:
> Hi,
> 
> On Thu, Jul 30, 2015 at 10:34:10AM +0200, Javier Martinez Canillas wrote:
>> From: Derek Foreman <derekf@osg.samsung.com>
>>
>> This adds Eric Anholt's WIP kernel with dri/kms/3d support for the GPU on
>> the rpi2. Adding a recipe that tracks this kernel, will make it easier to
>> test this setup.
>>
>> This recipe should only used for testing purposes for now, so it will not
>> be set as the default.
>>
>> The kernel will be choosen though if the "vc4-gfx" feature has been added
>> to the the DISTRO_FEATURES variable.
>>
> 
> It was said before - it seems like this is a MACHINE_FEATURE. I know you will
> address this in V2.
>

Yes, but since it was decided to add a new kernel recipe for the linux vc4
kernel and changing the default providers manually aided by a comment, the
"vc4-gfx" feature may not be necessary and I could drop it in v2. If found
to still be necessary, I'll add it as a MACHINE_FEATURE though.
 
Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

