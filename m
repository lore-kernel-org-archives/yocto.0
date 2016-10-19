Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7AC8E00D79; Tue, 18 Oct 2016 17:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.51 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87CF9E00D6D
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 17:45:06 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id b186so13855137vkb.1
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 17:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0wJ7ym18VDyXNgoA4q1AB3vVdWRg8ab85XCxP2/E2jQ=;
	b=e6Ug+XtbZcUdXRRZXxwwKto5p7j6pnGsYwmAoN55JZVE2pPwm8W7zzq2gjcxOmUFgW
	K6csjSX/ZUGVThiggtdOm3CR1I8txUeQW5dn3lWE/8mUp8UcxmR+PMU2Hz61e9xZft5h
	9wKAwFd+36SuUuC16XJsBcdlU6tVIelsQFOX/tc72sN/yRRudgzatraat9/x6hghEJmb
	jRadb0bNf9jMSoQCDN0yc2l1s3Xkb5bd0Z8uYmyGyqPLqnmitaaEUE7wmeqei8nQGuwO
	cWhfrrFSW3NgAUZ3gkhY71L/GzQfGMQpi8DbMRf9Mx1LCVf8CW19cL6IuUblGvrIOYfg
	Om+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0wJ7ym18VDyXNgoA4q1AB3vVdWRg8ab85XCxP2/E2jQ=;
	b=iqEVHuJmsBKhi0FxmaxJ8JH5hw7vwmwNPSBoYrscnX+gGSA7A0pAkwMJVSMl1/jOtt
	Gl6x6M1f2bG+jCbc7v5VEgN16BDLEeq4qI/b3tCjOFIWgJfqmvhKvL77Xnfov6rR+mUt
	/TxB4LbO0MO8jjMl90cRF6kdo7DOYafJjgC9eIBtZCuldCNIe9B7Ysng/+rEzG+FJXof
	YYdkExfgnMUVzv59Ml4u90LUZzGVuIYrptvdWuExMKIxWP26BSl5VaWLuBrGgVpDj2RF
	QtKgRUWL/vhCTdHnuIQOfV4okCRcvapJsO6G5TI50Zbkjjpvz5ClR4iHwNcHtk24UC6R
	9rKA==
X-Gm-Message-State: AA6/9RmRC9k+vjV8s7LfRXw9gyM1J/bfkaTtp77xRC8XHshlcCxD0DFMcCnCCBpbFrQIG13pXQ4Zp7sEk72g/w==
X-Received: by 10.31.15.65 with SMTP id 62mr3000560vkp.93.1476837905390; Tue,
	18 Oct 2016 17:45:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Tue, 18 Oct 2016 17:44:34 -0700 (PDT)
In-Reply-To: <CACfi_Z1gqXxGMgqwvs0YwT73VBWb4-GXsjKkkUxRZ5HehwL7-Q@mail.gmail.com>
References: <CACfi_Z1gqXxGMgqwvs0YwT73VBWb4-GXsjKkkUxRZ5HehwL7-Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Oct 2016 17:44:34 -0700
Message-ID: <CAMKF1spA6zA9G406FRCXDzPdLwcU5BNuM+S96KgH2XBjaqZ0_g@mail.gmail.com>
To: Davis Roman <davis.roman84@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference between bitbake inclusion and inheritance
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
X-List-Received-Date: Wed, 19 Oct 2016 00:45:09 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 18, 2016 at 3:37 PM, Davis Roman <davis.roman84@gmail.com> wrote:
> Hello,
>
> I'm a yocto newbie and so I'm becoming familiar with the documentation.
>
> I came across a bitbake feature that is somewhat confusing to me regarding
> the difference between optional/required inclusion versus inheritance.
>
> As far as optional/required inclusion is concerned, the documentation states
> quite clearly that the main difference is that the former will not issue an
> error message if the specified file is not found while the latter will so
> there is no issue here.
>
> My issue has to do with the 'inherit' command. Sounds to me like 'include'
> and 'require' already do the trick so I'm curious to know what value does
> 'inherit' bring ?

you can override pretty much everything from an inherited class if you wish to

>
> Any clarification would be extremely appreciated.
>
> Thank you,
>
> Davis
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

