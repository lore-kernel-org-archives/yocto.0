Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CFDBE00837; Mon, 23 Mar 2015 09:44:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90384E006DA
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 09:44:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 5E07227E1F5;
	Mon, 23 Mar 2015 16:44:41 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id gUe3bRx5A9fm; Mon, 23 Mar 2015 16:44:38 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-86-11.w109-208.abo.wanadoo.fr
	[109.208.53.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 1D47D27E1E1;
	Mon, 23 Mar 2015 16:44:38 +0000 (UTC)
Message-ID: <5510428C.4050606@dynamicdevices.co.uk>
Date: Mon, 23 Mar 2015 17:42:52 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>
	<55103860.7010503@mlbassoc.com>
In-Reply-To: <55103860.7010503@mlbassoc.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 23 Mar 2015 16:44:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 23/03/2015 16:59, Gary Thomas wrote:
> On 2015-03-22 14:21, Andreas Müller wrote:
>> Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
>> ---
>>   ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38
>> ++++++++++++++++++++++
>>   recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
>>   2 files changed, 43 insertions(+), 3 deletions(-)
>>   create mode 100644
>> recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch
>
> I tried this patch (which downloaded very strangely using Thunderbird)
> and the
> kernel rebuilt fine.  I now have the audio detected, but still no
> sound :-(
> Again I've tried the internal (phono) speakers as well as HDMI audio.
>
> Just to prove a point on the [brand new] hardware, I installed
> OpenELEC (XBMC)
> and it works fine using the HDMI audio.  Sadly when I tried Raspbian
> and Ubuntu
> there was no sound either...
>
> Were you (Andreas) able to get any sound with this patch? 

Sorry to jump in on your conversation Gary but I am also doing some bits
and pieces with meta-raspberrypi myself to test out my new-ish RPiv2.

I'll have a look at changing the kernel configuration here later, but I
did also try changing TEST_MODE in the config.txt which is billed as
giving analogue audio and video out at startup. Sure enough I hear the
startup beeps.

Perhaps this would enable you to verify the hardware is working too?

The docs would seem to indicate that it should output a/v for the
configured number of seconds whereas I see this continuously until I
power cycle, but maybe that is a typo.

http://www.raspberrypi.org/documentation/configuration/config-txt.md

Regards, Alex


