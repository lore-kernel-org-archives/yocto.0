Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B3D2E00E83; Mon, 11 Jul 2016 06:37:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 677B2E00DEC
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 06:37:05 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id v6so14923180vkb.1
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 06:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+goWbS/5KEPEGyDhfsMGxfy4htobsfLoWf3ABxoJJHQ=;
	b=SgotVvSFg5Ao7lvHd8C4uaebXxpRmbaCu0h+Jqg6CsCuR8gk7A5h5raiKQpydiJRSN
	zRPX2OZa/j+4hrJmITJunFyu4xLNo1i7tRJkbRM8ebQ27P/7zSOwCTNP3W8hkynhCNie
	eblwQzeCvYYijrObUpO8hGHQsE7i6aBBjkr1k2OueAapXRuCsxpfKRASNMkk9Pne6y7w
	cHPmRzev8hKYw+n3tF7fKwp27rH1lX5z2UAHh/GY2z5RaUApHgopQUOE8fPH7KjfkwOa
	j4S81NguVBA4kLc0Uk9x/H4yE3wTDMIaN82ZOAsZwpCVZyu5OOvgZeV7v5eyd3qnO+Vx
	37Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+goWbS/5KEPEGyDhfsMGxfy4htobsfLoWf3ABxoJJHQ=;
	b=nFv61oT4T3Mis4b/fQy6oO+PZHF2mlGLb4dgIw9JJRblNUTsvkAZAsKxwlLsMA1LnQ
	yGn5dGPh80K7jL193KwY3wTxX4k+qrrmO59ODJOLzE23/Nf1rIgJRvqykD6zSke835Qn
	iYIUEgOLmMLm/o8a3u8H0nIZRWQ5Zar5S6ZvvH7Kaa21evdjwXMTTbRquyrM0Pah59te
	axCYcDsbAz9IxnPrtKNpA2RHxK7CtCf72xvqHYJQQRU2xSMDkBIcgeDabDEAYD0iUU8E
	/iDiCVC+SJUeOVOZzmZt/nL9ityxXZrLshAsyqQBBzDB9062xN2xraU9T4KF7pPu4Cow
	6OHQ==
X-Gm-Message-State: ALyK8tLAnt6s9dzNWr/uZN+CMUjsz/kwaoMwiyFy7VO29UXjCjzX/YWErGaMB3r641bgrwHfo45sFgdBALLg4Q==
X-Received: by 10.31.226.133 with SMTP id z127mr9872989vkg.116.1468244224596; 
	Mon, 11 Jul 2016 06:37:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.233 with HTTP; Mon, 11 Jul 2016 06:37:04 -0700 (PDT)
In-Reply-To: <20160711002711.07076803@nuc.betafive.co.uk>
References: <CACibCHofyRnNQXuK_G2N9jeQ6ATEo5HG4vEp88PDa6+8hVABtg@mail.gmail.com>
	<20160709103558.140ffe32@nuc.betafive.co.uk>
	<20160711002711.07076803@nuc.betafive.co.uk>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 11 Jul 2016 10:37:04 -0300
Message-ID: <CAF3SDA4eb3XHEtTbD1zRt2rprHCey3dD8u07PZk1raOtbbcRow@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] u-boot doesnt boot kernel
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
X-List-Received-Date: Mon, 11 Jul 2016 13:37:08 -0000
Content-Type: text/plain; charset=UTF-8

Hi Hammad,

As Paul said the u-boot need some configuration so it can boot the
kernel. Usually it looks for bootcmd variable and try to run it so at
last this variable need to be setted. User's usually make this one
(bootcmd) call a miriad of another commands to retrieve kernel from
ftp, or nand, load it to memoby and boot it.

Take a look at www.denx.de/wiki/DULG/Manual for more information.

Regards,

2016-07-10 20:27 GMT-03:00 Paul Barker <paul@paulbarker.me.uk>:
> On Sat, 9 Jul 2016 10:35:58 +0100
> Paul Barker <paul@paulbarker.me.uk> wrote:
>
>> On Fri, 8 Jul 2016 21:04:24 -0400
>> Hammad Ahmed <hammadahmed85@gmail.com> wrote:
>>
>> > Hi,
>> > I wanted to boot with u-boot so I added:
>> >
>> > KERNEL_IMAGETYPE = "uImage"
>> >
>> > u-boot builds fine but when I boot up my raspberrypi, u-boot doesnt
>> > start the kernel.
>> >
>>
>
> I've just sent a patch series which should allow u-boot to start the
> kernel without needing to type in a bunch of manual commands.
>
> You can get the patches from the mailing list or use the
> 'pbarker/u-boot' branch of https://gitlab.com/oryx/meta-raspberrypi.
>
> Let me know if this works for you.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

