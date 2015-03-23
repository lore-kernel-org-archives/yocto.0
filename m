Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC313E00837; Mon, 23 Mar 2015 14:43:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71719E006DA
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 14:43:46 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 51E54F811E1; Mon, 23 Mar 2015 15:43:46 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8125CF811E0;
	Mon, 23 Mar 2015 15:43:45 -0600 (MDT)
Message-ID: <55108912.5070304@mlbassoc.com>
Date: Mon, 23 Mar 2015 15:43:46 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: =?UTF-8?B?QW5kcmVhcyBNw7xsbGVy?= <schnitzeltony@googlemail.com>
References: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>	<55103860.7010503@mlbassoc.com>
	<CALbNGRRSF6JQ5NXD2E6e74fkNPrfztjbPUS5Scnkf7Xps30txw@mail.gmail.com>
In-Reply-To: <CALbNGRRSF6JQ5NXD2E6e74fkNPrfztjbPUS5Scnkf7Xps30txw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 23 Mar 2015 21:43:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-03-23 14:57, Andreas Müller wrote:
> On Mon, Mar 23, 2015 at 4:59 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2015-03-22 14:21, Andreas Müller wrote:
>>>
>>> Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
>>> ---
>>>    ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38
>>> ++++++++++++++++++++++
>>>    recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
>>>    2 files changed, 43 insertions(+), 3 deletions(-)
>>>    create mode 100644
>>> recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch
>>
>>
>> I tried this patch (which downloaded very strangely using Thunderbird) and
>> the
>> kernel rebuilt fine.  I now have the audio detected, but still no sound :-(
>> Again I've tried the internal (phono) speakers as well as HDMI audio.
>>
>> Just to prove a point on the [brand new] hardware, I installed OpenELEC
>> (XBMC)
>> and it works fine using the HDMI audio.  Sadly when I tried Raspbian and
>> Ubuntu
>> there was no sound either...
>>
>> Were you (Andreas) able to get any sound with this patch?
>>
> Yes but I have used 3.5mm sound output - Should have mentioned that in
> commit. I guess there is to enable something else in kernel config for
> HDMI. Will look into that

I've tried the 3.5mm jack as well but nothing seems to come out.
I even tried booting with the HDMI missing (powered off) in case
that was causing some confusion.

Did you make any changes to config.txt to get this going?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

