Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE654E00A9C; Mon, 17 Aug 2015 03:17:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MISSING_HEADERS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B04FAE006BC
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 03:17:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 4E34B27E333
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 10:17:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id HToPJazXGZ5F for <yocto@yoctoproject.org>;
	Mon, 17 Aug 2015 10:17:48 +0000 (UTC)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 98AB427E30B
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 10:17:48 +0000 (UTC)
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
	<f770f8743b500dde78803cd8b0826854@technux.se>
	<CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
	<8cc28d589389102b4fccf052fe2389c2@technux.se>
Cc: yocto@yoctoproject.org
Message-ID: <55D1B4C7.4030500@dynamicdevices.co.uk>
Date: Mon, 17 Aug 2015 11:17:43 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <8cc28d589389102b4fccf052fe2389c2@technux.se>
Subject: Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build audio driver into kernel
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
X-List-Received-Date: Mon, 17 Aug 2015 10:17:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 17/08/2015 09:11, Petter Mabäcker wrote:
> 2015-08-17 09:57 skrev Andrei Gherzan:
> 
>> Hello,
>>
>> On Tuesday, August 11, 2015, Petter Mabäcker <petter@technux.se
>> <mailto:petter@technux.se>> wrote:
>>
>>     2015-08-11 19:04 skrev Alex J Lennon:
>>
>>         Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>>         ---
>>          recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
>>          1 file changed, 4 insertions(+)
>>
>>         diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>>         index e38d905..8024412 100644
>>         --- a/recipes-kernel/linux/linux-raspberrypi.inc
>>         +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>>         @@ -6,6 +6,10 @@ SECTION = "kernel"
>>          LICENSE = "GPLv2"
>>          LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>>          
>>         +SRC_URI += " \
>>         +        file://build-in-audio.cfg \
>>         +        "
>>
>>  
>> This one didn't make it.
>>  
>>  
>>  
>>  
>> --
>> Andrei Gherzan
>>
>>
>> -- 
>> --
>> Andrei Gherzan
> 
> Think you got the wrong receiver =) I notified Alex about this some days
> ago, Alex can you send up a v2 for this?
> 
>

The build-in-audio.cfg patch was just for testing of fragment support.
It's understood that we're not going to have this build into the kernel
by default, although I do still need to find some words to add to the
README on audio routing setup and so forth.

I started testing a build with master over the weekend and it built OK.
Just need to find some time to run up a couple of kernels and will
resubmit the v2 patch with Petter's enhanced commit message.

I don't have an RPiv1 around at the moment but I will probably double
check the kernel does still actually build for RPiv1 machine

Cheers,

Alex


> 
> BR, Petter
> 


