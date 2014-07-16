Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC35AE0076B; Wed, 16 Jul 2014 01:13:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69B0AE0074B
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:13:22 -0700 (PDT)
Received: by mail-ob0-f173.google.com with SMTP id vb8so571755obc.18
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Wnd7n05JHqQMWtwZG6rbVHmPeXVn/ySeAbw0glPiOjQ=;
	b=ChTNgLdHdt9Q2M3MXZao6pbD2Lg8HetYzZg+5LteIUlv3NjKccyQQjB5aL+bvR6r21
	gwU1j8s1yb7jb1/7DjECGE7KxHrFHqJ5CrGXtPEobMfq5MgeS/5Knc1PoHo2teon0DDx
	5c8rkxGksUoy482eiVLLYOzF+92Ly/o43HUgKA386PgOkC3g24PsHOsI/NynOK2l4msp
	YEBQkD3EEWxoE+kUbNNfD53uQyS5CFZTbgpbPt9ho3xmI7FfCcmfc7z0VkE2dK+fagsi
	gEUWkSR7/zTPGhWIQP3zqoEqD3jCgQrEUlEGQhWwOcNDAWIAMcqVOMKApz91Fc1mRRWV
	B0PA==
X-Received: by 10.60.70.205 with SMTP id o13mr32551944oeu.38.1405498398983;
	Wed, 16 Jul 2014 01:13:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.60.52.69 with HTTP; Wed, 16 Jul 2014 01:12:58 -0700 (PDT)
In-Reply-To: <CAGiJk9f+8P=Ugm-bKgK_O-JzEUbjvzf9HJDjGK6XVnfGsmXzvg@mail.gmail.com>
References: <CAGM0ZdSsrHfzDq8CHFv0M5qJi354pWyoijzU5w5Hg+tzjRW0UQ@mail.gmail.com>
	<CAGiJk9f+8P=Ugm-bKgK_O-JzEUbjvzf9HJDjGK6XVnfGsmXzvg@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Wed, 16 Jul 2014 10:12:58 +0200
Message-ID: <CAGiJk9fVe=1D8V4jcNZTENeurmGatVqTrThuPMzWMVtuxOoKLQ@mail.gmail.com>
To: Bharath Chandra <ellurubharath29@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Boot Process of gumstix
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
X-List-Received-Date: Wed, 16 Jul 2014 08:13:28 -0000
Content-Type: text/plain; charset=UTF-8

2014-07-16 10:09 GMT+02:00 Samuel Stirtzel <s.stirtzel@googlemail.com>:
> 2014-07-15 17:18 GMT+02:00 Bharath Chandra <ellurubharath29@gmail.com>:
>> Hi,
>>
>> I would like to analyze the startup process of gumstix board. What happens
>> when we boot a gumstix board, for eg: first the MLO will be called and then
>> it will call u-boot.img.... I would like to know what does MLO do and
>> functionalities of other files. Can anyone of you provide any pointer where
>> I can get good documentation about the startup process.
>>
>
> Hi,
>
> IIRC the omappedia has it correct:
> http://omappedia.org/wiki/Bootloader_Project#OMAP_Boot_Sequence
>
> Boot order depends on sys_boot pins:
> Cited from OMAP35xx Technical Reference Manual:
>
Oops missing paste:

"11.1.3.3.2 GPMC CS0 Default Configuration at IC Reset
The sys_boot pins [...] define the sequence of interfaces and devices
to use for booting."

-- 
Regards
Samuel

