Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0067E01454
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 12:48:23 -0700 (PDT)
Received: by eaab14 with SMTP id b14so521630eaa.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 12:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8rDvZUjy6aQlLqP4VDi/AaHaQokpQ1rJQlAonX/HzE4=;
	b=l9uEkSn7SKHSTxQ0bbTVkCEk9ELYOGHV3Di3zpAqVVlumlGRcb/L4vgLcznng9S5XE
	uuxdnNGmxyyCUvbhYBKIgpc2mV0GQK2pjtY4TSDcDb/Kvk/oBIissC8Aa5LMqA+hH5jA
	upZEQIPx4zem8pelLZs9DwuiOaPiN/CYqwOCCaIfQWpaPCU8axL9b6IwFi73lXAVGVX9
	jYibN9YIa5x/ckdzDgjXCzi0HpYQXvxTiUrKrdnQRwklXXILpgOZDHVnogQVuXxuUBlK
	1buJ1mK357KTFmrk6fdOg0qOHWOOmQNaKtIFsbWu+43I1/QHhdA8ptsKL1fGj27tSQn7
	FzBQ==
Received: by 10.14.180.67 with SMTP id i43mr7043216eem.23.1344109702854; Sat,
	04 Aug 2012 12:48:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Sat, 4 Aug 2012 12:47:52 -0700 (PDT)
In-Reply-To: <C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
	<C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 4 Aug 2012 12:47:52 -0700
Message-ID: <CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Aug 2012 19:48:24 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 4, 2012 at 12:16 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi Khem,
>
> On Aug 4, 2012, at 9:12 PM, Khem Raj wrote:
>
>> Try to see if /lib/ld.so.1 runs ok ?
>
> How can I run /lib/ld.so.1?
>

 /lib/ld.so.1

> Elvis Dowson

