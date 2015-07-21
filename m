Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD872E009BE; Tue, 21 Jul 2015 13:47:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDBB6E0096A
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 13:47:53 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2923AF811DB; Tue, 21 Jul 2015 14:47:53 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A279DF811DB;
	Tue, 21 Jul 2015 14:47:52 -0600 (MDT)
Message-ID: <55AEAFF8.70702@mlbassoc.com>
Date: Tue, 21 Jul 2015 14:47:52 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAF3SDA4dAU5TBMv2BoB-GMpUUpMWGTpzYbS9AE56npKXG5tO5w@mail.gmail.com>
	<55AEAD75.2090002@mlbassoc.com>
In-Reply-To: <55AEAD75.2090002@mlbassoc.com>
Subject: Re: Does anybody knows a recipe for open-ath9k-htc-firmware?
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
X-List-Received-Date: Tue, 21 Jul 2015 20:47:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-21 14:37, Gary Thomas wrote:
> On 2015-07-21 12:30, Daniel. wrote:
>> Hi all,
>>
>> I'm trying to use TPLINK TL-WN722N usb wireless card which is known to
>> work with ath9k_htc.ko driver and open-ath9k-htc-firmware[1]. I've
>> compiled the driver built-in with success. When I plug the usb stick I
>> got this on dmesg:
>>
>> usb 2-1.1: ath9k_htc: Firmware htc_9271.fw requested
>> usb 2-1.1: Direct firmware load failed with error -2
>> usb 2-1.1: Falling back to user helper
>> usb 2-1.1: ath9k_htc: Failed to get firmware htc_9271.fw
>> usb 2-1.1: ath9k_htc: USB layer deinitialized
>>
>>
>> So firmware is missing. Does anybody knows a recipe for it?
>> Best regards,
>> - dhs
>>
>> [1] https://wireless.wiki.kernel.org/en/users/drivers/ath9k_htc/devices
>>
>
> You need to install the linux-firmware-ath9k package which has this file
>

Note: this package is built from the linux-firmware recipe, i.e.
   % bitbake linux-firmware

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

