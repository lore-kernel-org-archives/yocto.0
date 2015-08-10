Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A36DE00AB0; Mon, 10 Aug 2015 01:05:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92034E00AB7
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 01:04:59 -0700 (PDT)
Received: from [192.168.1.131] (199.50.23.95.dynamic.jazztel.es [95.23.50.199])
	by lists.s-osg.org (Postfix) with ESMTPSA id BFF7E462CB;
	Mon, 10 Aug 2015 01:04:57 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com> <20150809230528.GL17962@resin>
From: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <55C85B27.9020800@osg.samsung.com>
Date: Mon, 10 Aug 2015 10:04:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <20150809230528.GL17962@resin>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
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
X-List-Received-Date: Mon, 10 Aug 2015 08:05:06 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hello Andrei,

On 08/10/2015 01:05 AM, Andrei Gherzan wrote:
> On Thu, Aug 06, 2015 at 08:59:56AM +0200, Javier Martinez Canillas wrote:
>> Hello Khem,
>>
>> On 08/06/2015 04:54 AM, Khem Raj wrote:
>>> On Tue, Aug 4, 2015 at 11:34 PM, Javier Martinez Canillas
>>> <javier@osg.samsung.com> wrote:
>>>>> who defines the distro feature ?
>>>>>
>>>>>
>>>>
>>>> Distro features AFAICT are user defined options, you can for example have
>>>> the following in your conf/local.conf:
>>>>
>>>> DISTRO_FEATURES_append = " vc4-gfx"
>>>
>>> I wasnt trying to learn about what DISTRO_FEATURES are, I was trying
>>> to draw attention to the fact that meta-rpi being a BSP layer
>>
>> Ok, sorry. But I believe it's more productive to just do suggestions
>> instead of asking rhetorical questions that can be misunderstood :-)
>>
>>> was trying to define a lot more than a BSP layer is supposed to do. So
>>> if its a distro feature, I would like it to work as expected on other
>>> machines besides raspberrypi. If thats not applicable then we should
>>> rethink if it could be folded into MACHINE_FEATURES if it needs to be
>>
> 
> Khem definitely has a very good point. Maybe his way of putting it in words was
> not that productive. But the core idea was definitely right: I don't want rpi
> layer to introduce distro features.
>

Agreed. After Khem answers and reading about the MACHINE and DISTRO in
the documentation, I understood that the changes were not correct.
Thanks a lot to both of you for the clarification.
 
> --
> Andrei Gherzan
> 

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

