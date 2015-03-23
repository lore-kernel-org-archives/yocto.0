Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66144E00837; Mon, 23 Mar 2015 10:08:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57BFFE006DA
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 10:08:40 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 86BC1F811DF; Mon, 23 Mar 2015 11:08:40 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 03321F811DF;
	Mon, 23 Mar 2015 11:08:40 -0600 (MDT)
Message-ID: <55104898.4090400@mlbassoc.com>
Date: Mon, 23 Mar 2015 11:08:40 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>	<55103860.7010503@mlbassoc.com>
	<5510428C.4050606@dynamicdevices.co.uk>
In-Reply-To: <5510428C.4050606@dynamicdevices.co.uk>
Subject: Re: [meta-raspberrypi][PATCH] make sound work out of the box for raspberrypi2
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
X-List-Received-Date: Mon, 23 Mar 2015 17:08:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-03-23 10:42, Alex J Lennon wrote:
>
>
> On 23/03/2015 16:59, Gary Thomas wrote:
>> On 2015-03-22 14:21, Andreas Müller wrote:
>>> Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
>>> ---
>>>    ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38
>>> ++++++++++++++++++++++
>>>    recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
>>>    2 files changed, 43 insertions(+), 3 deletions(-)
>>>    create mode 100644
>>> recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch
>>
>> I tried this patch (which downloaded very strangely using Thunderbird)
>> and the
>> kernel rebuilt fine.  I now have the audio detected, but still no
>> sound :-(
>> Again I've tried the internal (phono) speakers as well as HDMI audio.
>>
>> Just to prove a point on the [brand new] hardware, I installed
>> OpenELEC (XBMC)
>> and it works fine using the HDMI audio.  Sadly when I tried Raspbian
>> and Ubuntu
>> there was no sound either...
>>
>> Were you (Andreas) able to get any sound with this patch?
>
> Sorry to jump in on your conversation Gary but I am also doing some bits
> and pieces with meta-raspberrypi myself to test out my new-ish RPiv2.
>
> I'll have a look at changing the kernel configuration here later, but I
> did also try changing TEST_MODE in the config.txt which is billed as
> giving analogue audio and video out at startup. Sure enough I hear the
> startup beeps.
>
> Perhaps this would enable you to verify the hardware is working too?

Verified - this works.  Still no sound when I boot Poky/Yocto.

Have you tried audio output from Linux?

>
> The docs would seem to indicate that it should output a/v for the
> configured number of seconds whereas I see this continuously until I
> power cycle, but maybe that is a typo.
>
> http://www.raspberrypi.org/documentation/configuration/config-txt.md
>
> Regards, Alex
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

