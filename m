Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 266E7E00349; Mon, 10 Aug 2015 00:48:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 696C6E00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 00:48:47 -0700 (PDT)
Received: from [192.168.1.131] (199.50.23.95.dynamic.jazztel.es [95.23.50.199])
	by lists.s-osg.org (Postfix) with ESMTPSA id 88292462CB;
	Mon, 10 Aug 2015 00:48:46 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-3-git-send-email-javier@osg.samsung.com>
	<20150809224410.GI17962@resin>
From: Javier Martinez Canillas <javier@osg.samsung.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55C8575B.9020709@osg.samsung.com>
Date: Mon, 10 Aug 2015 09:48:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <20150809224410.GI17962@resin>
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 2/5] rpi-config: Allow to mask GPU irqs
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
X-List-Received-Date: Mon, 10 Aug 2015 07:48:50 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hello Andrei,

Thanks a lot for your feedback and for picking patches #1 and #3!

On 08/10/2015 12:44 AM, Andrei Gherzan wrote:
> Hello,
> 
> On Thu, Jul 30, 2015 at 10:34:08AM +0200, Javier Martinez Canillas wrote:
>> From: Derek Foreman <derekf@osg.samsung.com>
>>
>> The rpi config.txt file has a mask_gpu_interrupt option which needs to
>> be set when using the new VC4 DRM/KMS driver. Since this option exists
>> in the config file and needed by some kernels, add a option to set it.
>>
> 
> I understand the scope of this change and it makes sense. The only confusion is
> in the "since this option exixts in the config file". This option is not in the
> config file. What do you mean by that?
>

Right, that was worded badly. I meant that the option is a valid one for
the config.txt file. IOW, that is a supported option by the RPi firmware
but it was not possible to setup from the meta-raspberrypi layer.

I'll fix the commit message on v2.
 
> --
> Andrei Gherzan
> 

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

