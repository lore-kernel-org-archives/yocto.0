Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86A55E00A81; Mon, 10 Aug 2015 14:54:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 682D7E00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:54:18 -0700 (PDT)
Received: from [192.168.1.131] (199.50.23.95.dynamic.jazztel.es [95.23.50.199])
	by lists.s-osg.org (Postfix) with ESMTPSA id AE86546328;
	Mon, 10 Aug 2015 14:54:16 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<55C082ED.6030405@technux.se> <55C0E347.9030508@osg.samsung.com>
	<929d9c24776929cd07c370278d4c2768@technux.se>
	<55C306C6.5040703@osg.samsung.com> <20150809230114.GK17962@resin>
	<55C85A7B.4010008@osg.samsung.com> <20150810213411.GC4718@resin>
From: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <55C91D85.5070400@osg.samsung.com>
Date: Mon, 10 Aug 2015 23:54:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <20150810213411.GC4718@resin>
Cc: yocto@yoctoproject.org, Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 0/5] Add support for 4.1 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Mon, 10 Aug 2015 21:54:25 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hello Andrei,

On 08/10/2015 11:34 PM, Andrei Gherzan wrote:
> On Mon, Aug 10, 2015 at 10:02:03AM +0200, Javier Martinez Canillas wrote:

[snip]

>>>>>
>>>
>>> That would definitely be the preferate way but would involve some additional
>>> work in tracking the patches. So, as an initial state, I am fine with a
>>> different kernel recipe (with a different name).
>>>
>>
>> Ok, I was waiting for your feedback before preparing v2.
> 
> I guess this is my feedback. We can go on a separate linux provider for now.
> Something like linux-raspbery-vc.bb . Or, if you want to maintain the patches
> we can only pull in patches and apply them on top of 4.X based on a FEATURE.
> What do you think?
>

Yes, sorry I meant that I didn't post a v2 before because I was waiting for
you but now I've all your feedback from your previous emails. I agree that
is better to have a separate recipe (with all the patches unconditionally
applied) and drop the feature for now.

Is just that I was busy today with other stuff but I'll post a v2 this week
for sure!

> --
> Andrei Gherzan
> 

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

