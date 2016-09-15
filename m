Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B1D6E0043B; Thu, 15 Sep 2016 07:59:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95CD2E002AC
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 07:59:52 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id h127so41275315lfh.0
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 07:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RthWxQRyecBGY4ypnvfdpVtEwvUtBbJ74fCj3yrITlo=;
	b=BY55vdQftcruLjmJcKUWflixGCuhoCpYqfRiz/7XPmge52Frwd4jxhxTrLhrEQpgNr
	HyxfgU/HTrGRctCrKNrsLBWHYfV5IkBRldsg45SYgBVyTPqzmVsMoUPIYnHDFJg05Grv
	CE342gnZilvJTfH5MRdKopTYStdcOg1Tt0Fn/NV2Cxpb00c/slA+oVjJ7iJbpuJj02nm
	4lgD4CKJ7yz5Rmunc7rWVDPf3/zryg6JUGL2ReB50jmuMsczHde1K9ZXHZX/mbpvRirv
	dyaNs6YyoDqSD04q8Om/fgUyLMYQBtofSKit4G1JJJaPJquWknVL5yDhEw1OkmnduYPq
	9Kow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RthWxQRyecBGY4ypnvfdpVtEwvUtBbJ74fCj3yrITlo=;
	b=UPd7WtJWG47p+fzmNkcNfoCqRD+iXUdc4e0VAFjCOGe29xq6NMiLbc6lUjSSvNudaR
	kp6efODWdSQHe1zqC+s14qxG6H3Him+RQCQS6ua7rcTq/hJHLpycx/q6xurWAA8rrdfm
	WGqWcD6dF14WNQcJAs1aBgDCxAIQkLVqmlOTkCgseEpxgrGuiBjVdczeTfM/Pu8taxeo
	m2pdGguSQNQgvxPIJxM4ZeGCIQjCqpRS1wHku5WGh6UGJZCCGM5S1WATgwyw0K9m6pkf
	z6ZFp4662/J+ivriyLDpbNg+/LZx9LlaE8JMRQ4WHoxqB2VV1H0rCsIeNXpfgMJvJad7
	Ex6Q==
X-Gm-Message-State: AE9vXwNXCFL4rZBgI2maMuXmPOWlFbIU7pd8v3WTAO9ouBl2rHJHsRcuIu+52HK5xs0Cr1mUk9IEJkdfKpRqrg==
X-Received: by 10.194.8.226 with SMTP id u2mr9682704wja.153.1473951590925;
	Thu, 15 Sep 2016 07:59:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.28.80 with HTTP; Thu, 15 Sep 2016 07:59:50 -0700 (PDT)
In-Reply-To: <f2b763a5-7e40-cbb2-84ee-01691cd6c009@mlbassoc.com>
References: <1a502d33-73a4-be2e-a3dd-eca4649bc34e@mlbassoc.com>
	<CAF3SDA5NiRr=Fh4bHKVpSfYPVUHmGry7eO6nsg+nLhfZSjY0vQ@mail.gmail.com>
	<f2b763a5-7e40-cbb2-84ee-01691cd6c009@mlbassoc.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 15 Sep 2016 11:59:50 -0300
Message-ID: <CAF3SDA4KopofVf_HCQv88HcqF5GE353p+nq592SNhe8EPftbTw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Thu, 15 Sep 2016 14:59:55 -0000
Content-Type: text/plain; charset=UTF-8

2016-09-15 10:56 GMT-03:00 Gary Thomas <gary@mlbassoc.com>:
> On 2016-09-15 15:32, Daniel. wrote:
>>
>> Garry, if you are facing problems posting and detailed description of
>> your problem and by detailed I mean "I do X expecting Y but got Z"
>> being Z errors, logs, outputs etc would help a lot people to help you.
>
>
> A reasonable observation (although if you look through the records for
> the past ~10 years, you can see that I know how to pose relevant questions!)
> I'm sure that the answer will be obvious to anyone who has set up a
> RaspberryPi-3.
Yeah, I saw your in this list and you do nice posts, but had never
touched a RPI3. Other people
may be facing the same problem that you in another platform. Did you see this:
https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=122067 thread? The last
post is about someone facing "aparently" the same problem that you in
RPI3 and RPI2B+. Also
there is an open on https://github.com/raspberrypi/linux/issues/1149 ...

Did you have crda and wireless-regdb installed!?

Regards,
>
> Anyway, for completeness, when my Rpi-3 board boots, I get a ton of these
> messages from the kernel:
> [    8.737220] cfg80211: Calling CRDA to update world regulatory domain
>
> Also, whenever I try to do anything with the WiFi device, I get this error:
>   root@raspberrypi3:~# iw dev wlan0 scan
>   command failed: Network is down (-100)
>
> Here are the modules loaded into the kernel:
>   root@raspberrypi3:~# lsmod
>     Not tainted
>   ipv6 343600 26 [permanent], Live 0x7f1f6000
>   joydev 9044 0 - Live 0x7f1f0000
>   evdev 10254 3 - Live 0x7f1e2000
>   brcmfmac 179873 0 - Live 0x7f16c000
>   brcmutil 5693 1 brcmfmac, Live 0x7f160000
>   cfg80211 416259 1 brcmfmac, Live 0x7f03a000
>   rfkill 16941 1 cfg80211, Live 0x7f026000
>   bcm2835_rng 1763 0 - Live 0x7f022000
>   bcm2835_gpiomem 2852 0 - Live 0x7f01e000
>   uio_pdrv_genirq 2944 0 - Live 0x7f012000
>   uio 8032 1 uio_pdrv_genirq, Live 0x7f000000
>
> Perhaps I'm missing some firmware or driver for this WiFi device?  Note: I
> had
> this working fine on my RaspberryPi-2 with an external [USB] dongle.
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

