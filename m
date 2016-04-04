Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E974E00B9E; Mon,  4 Apr 2016 02:30:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D682E00AF4
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 02:30:42 -0700 (PDT)
Received: by mail-lb0-f171.google.com with SMTP id vo2so151811053lbb.1
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 02:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gU2+x4wVFE3bDTwZwEIG424YwSl7llptoMNxdyF7R4w=;
	b=kBTOPe3a+pmBaayvATKvDJw55l1nXvrRxv45TVWeWtgaiX5gTHIlUSRU38nvQX5VPU
	dlo8iaFPVHBYoiYj/b/Du+ctvztMhPZMJeWUhL5PgoUyiYO1CPmlLsvYGTVQKzCeJF5o
	rBr5x3yV+oE5RF9LERfbHPGURATPsT+XJRQUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gU2+x4wVFE3bDTwZwEIG424YwSl7llptoMNxdyF7R4w=;
	b=Jgp6kNOih+Xs3as4tpmZJ5fAD9lGzP06Ci+doL9TwTz+vzFLU8R18oTgdLkVe8TkRg
	FSkMU37z6r3D/fuLnYB5rYEPQx0/qidqQMSG82uHih/KQYxBsICS8iaVLzcyKFmN7DWm
	pmTbgzQuV/M+5+1YrTWyAgtO8RpFvkm3DPEGofA5nXMywzsm7cg/f+DrXBdy2iviy0HW
	6PeeN3gxtv/NQxbLwDpRSbEDqqw8oK56L1U3pJkKRjt68kxQi3bdsDpsQD2c37VaFahX
	SsN+K6CqHIny4rPuba2AhUW4N42G0nf5HaMl/ah0ABBh/YTsx+FGI1hNqwDhOIZ5jolf
	M7Cg==
X-Gm-Message-State: AD7BkJJA4JMO4QFf5RT5w6eB4Fllj9bcl1v81cw9C4v+itj1OClr7KKvZulJyJB4KYeWmHSbwQ7WvjlI4cgVYyGd
X-Received: by 10.28.215.16 with SMTP id o16mr10940205wmg.57.1459762240073;
	Mon, 04 Apr 2016 02:30:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.206.33 with HTTP; Mon, 4 Apr 2016 02:30:20 -0700 (PDT)
In-Reply-To: <3011913.B3k47xJghH@peggleto-mobl.ger.corp.intel.com>
References: <05908ff25fd54be287c631f4bc5b006b@SI-MBX1022.de.bosch.com>
	<3011913.B3k47xJghH@peggleto-mobl.ger.corp.intel.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 4 Apr 2016 11:30:20 +0200
Message-ID: <CAP71WjxnqQrZRVTuANO7Y86qVVkN1nYRKc4ozX=0L+OD5OYh0w@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Append to bblayers.conf and local.conf
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
X-List-Received-Date: Mon, 04 Apr 2016 09:30:45 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 3, 2016 at 10:54 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>> We are receiving bblayer.conf and local.conf from external supplier which
>> already have layers/configuration added. Now we want to add our own
>> layers/configuration by appending to these files this to avoid manual merge
>> work each time a delivery from external supplier is made.
>>
>> Question:
>> How do I append layers/configuration to bblayer.conf and local.conf?
>
> The best answer I can give is these files aren't really meant to be
> distributed. If you have too much specific stuff in these files (particularly
> local.conf) then I would say it's possible your supplier has put things in the
> wrong place.
>
> The way it ought to work is, you add the needed layers to your bblayers.conf,
> then go to your local.conf and set DISTRO and MACHINE and anything you need
> for *local* configuration (e.g. local paths) and that's pretty much it. If you
> have to include a whole bunch of extra lines in local.conf, those lines really
> should be elsewhere (e.g. custom distro config, or the machine .conf file if
> they are specific to the machine.)

Note that you can use conf/auto.conf and conf/site.conf as well, these
files are parsed at the same time as conf/local.conf, so if you really
cannot change local.conf, you can use the one of the other ones.

