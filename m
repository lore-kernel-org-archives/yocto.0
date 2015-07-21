Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7488CE009BE; Tue, 21 Jul 2015 13:56:28 -0700 (PDT)
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
	*      [209.85.192.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FBE8E0096A
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 13:56:26 -0700 (PDT)
Received: by qgeu79 with SMTP id u79so38391139qge.1
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 13:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Z1tEw3kIwcaRjBMlRQd5irnT6aFUR4ZO+BAL7ljFst4=;
	b=f23K83fkFdL3iAzuoekEJHCSUkdLGE91gpENY1GPeCwNQJMKXfcCgHx83yG/DDXOl+
	DOG7wj9tnHEEnOyacvbWO6OfAcR7OlEn0zwBoDfornarIAmI8RJbUqZWLX9VOxgWF5w4
	aM/KCcA+rw62XDlpmh//18aNGe7H4rDJqXxG/NkUMLep4e8nO4gchN5KBgUQfr5/fdLR
	+oISsgrl+E5zOee0//ciKvW62CUzbDm/erjQsCDbhuZzZAIfBPdVWoQ6QvJ6WmABPABs
	DMNiGQuWcVYIPJVsNwt40t6olpMmseADiEXbgtRfYUO+0ivI98v0HLSucACbaYdRrlsH
	iKSQ==
MIME-Version: 1.0
X-Received: by 10.140.148.82 with SMTP id 79mr19660376qhu.24.1437512185769;
	Tue, 21 Jul 2015 13:56:25 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Tue, 21 Jul 2015 13:56:25 -0700 (PDT)
In-Reply-To: <55AEAFF8.70702@mlbassoc.com>
References: <CAF3SDA4dAU5TBMv2BoB-GMpUUpMWGTpzYbS9AE56npKXG5tO5w@mail.gmail.com>
	<55AEAD75.2090002@mlbassoc.com> <55AEAFF8.70702@mlbassoc.com>
Date: Tue, 21 Jul 2015 17:56:25 -0300
Message-ID: <CAF3SDA7W6tm3OC8sdU4z2G0-T8Hi4vfN61jqFDFbWjqdh9PrBQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 21 Jul 2015 20:56:28 -0000
Content-Type: text/plain; charset=UTF-8

Ohh I see, thank you so much Gary!

Best regards,
- dhs

2015-07-21 17:47 GMT-03:00 Gary Thomas <gary@mlbassoc.com>:
> On 2015-07-21 14:37, Gary Thomas wrote:
>>
>> On 2015-07-21 12:30, Daniel. wrote:
>>>
>>> Hi all,
>>>
>>> I'm trying to use TPLINK TL-WN722N usb wireless card which is known to
>>> work with ath9k_htc.ko driver and open-ath9k-htc-firmware[1]. I've
>>> compiled the driver built-in with success. When I plug the usb stick I
>>> got this on dmesg:
>>>
>>> usb 2-1.1: ath9k_htc: Firmware htc_9271.fw requested
>>> usb 2-1.1: Direct firmware load failed with error -2
>>> usb 2-1.1: Falling back to user helper
>>> usb 2-1.1: ath9k_htc: Failed to get firmware htc_9271.fw
>>> usb 2-1.1: ath9k_htc: USB layer deinitialized
>>>
>>>
>>> So firmware is missing. Does anybody knows a recipe for it?
>>> Best regards,
>>> - dhs
>>>
>>> [1] https://wireless.wiki.kernel.org/en/users/drivers/ath9k_htc/devices
>>>
>>
>> You need to install the linux-firmware-ath9k package which has this file
>>
>
> Note: this package is built from the linux-firmware recipe, i.e.
>   % bitbake linux-firmware
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

