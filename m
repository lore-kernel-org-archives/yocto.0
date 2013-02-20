Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 60989E003BC
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 09:01:06 -0800 (PST)
Received: by mail-qa0-f50.google.com with SMTP id dx4so2511137qab.2
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 09:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=LRduRPkmCeEX5uV2DJdx3v2kfP5xBuoZN39viyjcZGg=;
	b=Uc5fnv1G/BaB+gMTa7RAtsN8+bvDjBkPQYjU0+PUkGObXlbQrASqc6tqyK94qKd17m
	GskGfNW4nA4u62+qogz2PNM5+uHEU+YfB65MSndI8+JnZZYvzXmCVgguUOtA2yksn69t
	8N6uH1HBINQ5pMf3fXucX34wk76K0WYWHz7BcOjyHloeiHPYZpA9c8kuhC6RFje7Q/BQ
	VqWqW9OIr8A/bJeNRV3LQh/noHtUMhummGmyNLdaqTu59Nr/i6D6jyNt5L4MCnScENus
	i7huSKpWtisuuS8QK50SAVMhMkU56H++S7PvZRLsKREs7jvHv9fKh1vwRH7M6kkjTCEA
	qwCQ==
MIME-Version: 1.0
X-Received: by 10.229.172.162 with SMTP id l34mr2126701qcz.81.1361379665417;
	Wed, 20 Feb 2013 09:01:05 -0800 (PST)
Received: by 10.49.60.39 with HTTP; Wed, 20 Feb 2013 09:01:05 -0800 (PST)
In-Reply-To: <CA+gsK-r_Oq3DvdoC1aT5gErTkKXYJ+gewMZDouusE+4oHicdtQ@mail.gmail.com>
References: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
	<CA+gsK-r_Oq3DvdoC1aT5gErTkKXYJ+gewMZDouusE+4oHicdtQ@mail.gmail.com>
Date: Wed, 20 Feb 2013 18:01:05 +0100
Message-ID: <CAFyqS9pgGgZcacwqxiHGM2WSSH8xZea-tRjBWcNwqCr=DDhWsw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Updating uboot to v2013.01
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
X-List-Received-Date: Wed, 20 Feb 2013 17:01:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif
<rstreif@linuxfoundation.org> wrote:
> Satya,
>
> Simply look at the u-boot recipes in meta/recipes-bsp/u-boot such as
> u-boot_2012.04.01.bb. You can simply copy it and name it u-boot_2013.01.bb
> and then modify SRCREV to the revision that corresponds to the tag 2013.01
> or 2013.01.01 in git.denx.de:
>
> for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d
> for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46
>
> Do the same for u-boot-mkimage and include the u-boot version with your bsp.
>
> Rudi
>
>
Hi Rudi, sorry to chime in , but I have a similar problem but do not
really get the last thing you said.
What do you mean by including the u-boot version in the bsp? Also is
it a must to also copy the mkimage .bb or will the system find a
suitable one automatically?
The thing is that I only copied/edited the u-boot .bb but never the
mkimage. Still my kernel successfully builds the kernel uImage!?
Some magic that I have missed :)

Hans


> On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla
> <swaroop.damarla@gmail.com> wrote:
>>
>> Hi Guys,
>>
>> I need support for uboot on Tamonten board but the version on it is
>> v2012.04 but I came to know that v2012.10 or v2013.01 supports the
>> Tamontenboard through some guys here..
>>
>> It would be great if you can tell me how can I accomplish v2013.01 or
>> v2012.10 into the build system and make it available so that I can compile
>> the and get uImage
>>
>> (Tamonten board is a derivative of harmony board with some changes and has
>> arm cortexa9 processor without neon extentions )
>>
>> I am kind of new to add new .bb files and help is really appreciated as I
>> am not able to figure out how to add
>>
>> Greetings & Regards,
>> Swaroop
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> --
> Rudolf J. Streif
> Director of Embedded Solutions
> The Linux Foundation
>
> rudolf.streif@linux.com
> Phone: +1.619.631.5383
> Skype: rudolfstreif
> PGP: RSA 2048/2048 D6E7D28B
>
> Linux Foundation Events Schedule:  events.linuxfoundation.org
> Linux Foundation Training Schedule: training.linuxfoundation.org
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

