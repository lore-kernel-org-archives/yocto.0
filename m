Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25940E006C6; Thu, 15 Sep 2016 08:02:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.65 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43A56E006C6
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 08:01:21 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id l131so2978709lfl.0
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 08:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=gKus6/29xamwT82qZIfZVWMCodZ9TIBxC0U8ci0XKwU=;
	b=VHzHBgJSuurxVDCBB4vYphc5HrP7IbLLhC64OODglYjlu1S5f7UMcawIPE/ZY9JnUF
	kK4TNtGeiPLQnmmSR7teqGliM4MbP80B3LmIVDlCLFfv4W19N0/hB0ZNnonEjTZwuqly
	QMX38ptZ4Ie+BnvmVotje6PdrZPOQtPYakhx/2H72QgQm/PPl6wnS1/AXEJp2CYTap15
	bHaObAt3U6gvvUHtC7ytGa07ZYA+x7jrgYi91GZ/6xfO2OgMDcrfE9gWGrnhhTqA/T5/
	BHzMy4YSRyAWiIfNgLaFdZMjumIFsTHrJYH3ZfOWRo/ZQLfnOkS7xM6vjIYAIRmdH3UB
	GFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=gKus6/29xamwT82qZIfZVWMCodZ9TIBxC0U8ci0XKwU=;
	b=LTakc+JUdN6D1qlWWL5Q2dgpYKSV3dqmUlgfwvD8YF2TRhkMkSyB6m+J8YtSzjTG7q
	MOdpUSu/bsIFiMjaV6A67BeOC1OCBYFEkDUz4J0xePs8iTVhENyHG/4H+KWOfCGnwz55
	xx757ifT0hjs8Tmj7NtOrp48mfm4Veb7SJk3YW+NMtzeW7SWc9N6Q9j+evxCebAlhQgg
	szVMT6vvfoPU4QLLg5A+zruWCbqTpmjDzADYx4BKmceLkbYfKq+k+zWfhLMMnEvPyxGR
	t0APuIjHhAydNL+BmEnx2igG2aPyryv4CvHFdIlTYfMgg8oE+pzZWXlDO4AxLTZ/EfXB
	T/SA==
X-Gm-Message-State: AE9vXwM4vHSqYxe0cNtFMpCcL7BUDoZMrgdGAdxOMdbJpjk+xvuzdHKeHdFZTX+v87IAOMoiIophd3F7ZccYGw==
X-Received: by 10.28.215.81 with SMTP id o78mr3344613wmg.42.1473951680585;
	Thu, 15 Sep 2016 08:01:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.28.80 with HTTP; Thu, 15 Sep 2016 08:01:19 -0700 (PDT)
In-Reply-To: <CAF3SDA4KopofVf_HCQv88HcqF5GE353p+nq592SNhe8EPftbTw@mail.gmail.com>
References: <1a502d33-73a4-be2e-a3dd-eca4649bc34e@mlbassoc.com>
	<CAF3SDA5NiRr=Fh4bHKVpSfYPVUHmGry7eO6nsg+nLhfZSjY0vQ@mail.gmail.com>
	<f2b763a5-7e40-cbb2-84ee-01691cd6c009@mlbassoc.com>
	<CAF3SDA4KopofVf_HCQv88HcqF5GE353p+nq592SNhe8EPftbTw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 15 Sep 2016 12:01:19 -0300
Message-ID: <CAF3SDA5kqFN2G+xYja2YwERZfO9fKomne_bddm-Ejwx3fh_daA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] WiFi
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
X-List-Received-Date: Thu, 15 Sep 2016 15:02:09 -0000
Content-Type: text/plain; charset=UTF-8

I saw your *name* in this list and you do nice posts, but had *I* never

2016-09-15 11:59 GMT-03:00 Daniel. <danielhilst@gmail.com>:
> 2016-09-15 10:56 GMT-03:00 Gary Thomas <gary@mlbassoc.com>:
>> On 2016-09-15 15:32, Daniel. wrote:
>>>
>>> Garry, if you are facing problems posting and detailed description of
>>> your problem and by detailed I mean "I do X expecting Y but got Z"
>>> being Z errors, logs, outputs etc would help a lot people to help you.
>>
>>
>> A reasonable observation (although if you look through the records for
>> the past ~10 years, you can see that I know how to pose relevant questions!)
>> I'm sure that the answer will be obvious to anyone who has set up a
>> RaspberryPi-3.
> Yeah, I saw your in this list and you do nice posts, but had never
> touched a RPI3. Other people
> may be facing the same problem that you in another platform. Did you see this:
> https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=122067 thread? The last
> post is about someone facing "aparently" the same problem that you in
> RPI3 and RPI2B+. Also
> there is an open on https://github.com/raspberrypi/linux/issues/1149 ...
>
> Did you have crda and wireless-regdb installed!?
>
> Regards,
>>
>> Anyway, for completeness, when my Rpi-3 board boots, I get a ton of these
>> messages from the kernel:
>> [    8.737220] cfg80211: Calling CRDA to update world regulatory domain
>>
>> Also, whenever I try to do anything with the WiFi device, I get this error:
>>   root@raspberrypi3:~# iw dev wlan0 scan
>>   command failed: Network is down (-100)
>>
>> Here are the modules loaded into the kernel:
>>   root@raspberrypi3:~# lsmod
>>     Not tainted
>>   ipv6 343600 26 [permanent], Live 0x7f1f6000
>>   joydev 9044 0 - Live 0x7f1f0000
>>   evdev 10254 3 - Live 0x7f1e2000
>>   brcmfmac 179873 0 - Live 0x7f16c000
>>   brcmutil 5693 1 brcmfmac, Live 0x7f160000
>>   cfg80211 416259 1 brcmfmac, Live 0x7f03a000
>>   rfkill 16941 1 cfg80211, Live 0x7f026000
>>   bcm2835_rng 1763 0 - Live 0x7f022000
>>   bcm2835_gpiomem 2852 0 - Live 0x7f01e000
>>   uio_pdrv_genirq 2944 0 - Live 0x7f012000
>>   uio 8032 1 uio_pdrv_genirq, Live 0x7f000000
>>
>> Perhaps I'm missing some firmware or driver for this WiFi device?  Note: I
>> had
>> this working fine on my RaspberryPi-2 with an external [USB] dongle.
>>
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master



-- 
"Do or do not. There is no try"
  Yoda Master

