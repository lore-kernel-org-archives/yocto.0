Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B805AE00872; Mon,  1 Dec 2014 09:54:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=BAYES_00,UC_GIBBERISH_OBFU
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 3.0 UC_GIBBERISH_OBFU Multiple instances of "word VERYLONGGIBBERISH
	*      word"
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D3B5E0030B
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 09:54:29 -0800 (PST)
Received: from [192.168.1.10] (unknown [68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 339B1207976A;
	Mon,  1 Dec 2014 17:54:28 +0000 (UTC)
Message-ID: <547CAB53.1070901@mindchasers.com>
Date: Mon, 01 Dec 2014 12:54:27 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <547C0400.3010706@mindchasers.com>
	<1417453004.15614.30.camel@linuxfoundation.org>
In-Reply-To: <1417453004.15614.30.camel@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Questioning FILESOVERRIDES implied precedence in setting FILESPATH...
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
X-List-Received-Date: Mon, 01 Dec 2014 17:54:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/01/2014 11:56 AM, Richard Purdie wrote:
> On Mon, 2014-12-01 at 01:00 -0500, Bob Cochran wrote:
>> In poky master, FILESOVERRIDES is constructed as follows:
>>
>> "${TRANSLATED_TARGET_ARCH}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}"
>>
>> For my current build, I get:
>>
>> FILESOVERRIDES="powerpc:custom-machine:e500v2:qoriq-ppc:poky"
>>
>> FILESPATH is built by calling base_set_filespath(), which is in
>> utils.bbclass
>>
>> This function constructs FILESPATH in such a way that the distro folder
>> ("poky") comes before the other overrides ( precedence is applied right
>> to left using FILESOVERRIDES )
>>
>> I see that there was a patch to reverse the ordering back in Oct of 2013
>> (0bd63125c3b44) to make sure MACHINE overrides had precedence over
>> platform specific overrides.  However, I'm wondering if the intent was
>> to have the distro override both.  This doesn't make sense to me, so
>> please clarify whether this is correct.  If it is, please explain why
>> distro gets a higher precedence over machine.
>
> It is intentional, the concept is that the distro is the ultimate
> authority on configuration and it should be able to override anything,
> including machine specific choices. I would agree that can work well in
> some cases and less well in others.


Thank you Richard.  Good to know and somewhat surprising.

Regarding MACHINE, I think the MACHINE I specify in my local.conf should 
be the most specific machine when it comes to FILESOVERRIDES.  In other 
words, MACHINEOVERRIDES in BSP layers shouldn't override my MACHINE 
specified in my local.conf.

Is this a correct assumption?

If not, where is the right place to add the most specific 
MACHINEOVERRIDES for my configuration / target image (so it appends all 
other MACHINEOVERRIDES)?

Bob



>
> Cheers,
>
> Richard
>
>


