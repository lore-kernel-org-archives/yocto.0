Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22DCDE00BAD; Sat, 22 Jul 2017 18:41:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A151E00849
	for <yocto@yoctoproject.org>; Sat, 22 Jul 2017 18:41:42 -0700 (PDT)
Received: by mail-ua0-f196.google.com with SMTP id d29so6212839uai.2
	for <yocto@yoctoproject.org>; Sat, 22 Jul 2017 18:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+gdJOqWN0kjyKwf6cPOikNq24wJKtW6I8K7HRe5IGkE=;
	b=RMuO0TbyfCkalgMNVsZAVgNqSz0Q1WyfIJbc72PrsR73KigVoS3pXblt1gApca+2Hu
	2RdYUp8vNFWZFHev03UzpqMeHyaB1LlX9Y1Nsl7fcd1+eCDN8uSzuukvcONqJ09lEjVY
	HwF0h9IQILubG12T1odgKQSMS0cCvQykuKSw+NBtl7M874WbTm3tk0uyeDYW+YYdHaUW
	JhzLoDLv/xofFd7KNuxwf4k5BFcSk38sREt9KP3Y5+UzFw1mJY4jnt+p6eYAUJJ68Grj
	pb/Yz2jry1Onn6ZOj5qTOodWawrUWON6x0TrDFjp5y//NosEi2dKKfgsPTeFhCG9bx7S
	8Tlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+gdJOqWN0kjyKwf6cPOikNq24wJKtW6I8K7HRe5IGkE=;
	b=AMjyXAH1ttvk/gD0YLpPSUIH4/bz1SmWI7psETOZ87prHWwV6LyfplN98YNx3CxN7F
	+876/9OsRc8ei3quORHla/sJmlScvmv+A5MG1je6dj7wxuS6uNRlXYLMb5sF3FlyYJht
	Fs8D+uOsQAO2o7zrYIzBJVwdUM9bBsjD7UQJFGu/o/BPpfCWxC1NZjAFskgadCdwt6GY
	qo2gOi/YMNx4kabbouDQ5i5Op5Rv4qLxg8l5Cds8ivxB5r5ZfjZYaBCwzzBqGRDQadmS
	t2N9iBBbHe12DO/Cg93MRA14TagiBrIp9DRwi2SUqVJnDavqe4+9MXRSW7sXaW+3U+GF
	7+FA==
X-Gm-Message-State: AIVw1102PC+j+/3vnHG1wEAaa+i2AR2kGRfUAUOkfcA9/mE6SSEjZUV0
	bHDq3p89OOEPk8qLqgmrI6dc9kItlA==
X-Received: by 10.176.9.3 with SMTP id w3mr7581523uag.65.1500774102236; Sat,
	22 Jul 2017 18:41:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.48.88 with HTTP; Sat, 22 Jul 2017 18:41:41 -0700 (PDT)
In-Reply-To: <20170722234550.GB26163@bill-the-cat>
References: <20170722224032.1963-1-twoerner@gmail.com>
	<20170722234550.GB26163@bill-the-cat>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sat, 22 Jul 2017 21:41:41 -0400
Message-ID: <CAHUNapQaKUVuHkehG2L-rCA0xh-fhZaqa9qBO4C2w5FtiVzyog@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] u-boot-rockchip: update require path
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
X-List-Received-Date: Sun, 23 Jul 2017 01:41:44 -0000
Content-Type: text/plain; charset="UTF-8"

Hey Tom,

On Sat, Jul 22, 2017 at 7:45 PM, Tom Rini <trini@konsulko.com> wrote:
> On Sat, Jul 22, 2017 at 06:40:32PM -0400, Trevor Woerner wrote:
>
>> The oe-core recipe was updated (2017.05 -> 2017.07), this recipe needed to
>> be updated to suit. However, this u-boot (from rockchip) is still at version
>> 2017.05.
>>
>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>
> Not an objection, but, what's missing to move to just using upstream
> u-boot?

Excellent question! I was just thinking the same thing myself as I was
preparing this patch :-)

This patch is a maintenance patch that will allow builds to succeed,
but I admit it isn't ideal.

At this point I'm hoping
http://lists.openembedded.org/pipermail/openembedded-core/2017-July/139974.html
goes in so I can make 2 sets of recipes: one for rockchip components
and one for upstream. At that point I'll evaluate all the upstream
things and all the rockchip things to make sure they work on the
boards I have. At that point I can clean all this up.

Hopefully I'll also be able to add the tinker board rk3288 and the firefly 3399.

