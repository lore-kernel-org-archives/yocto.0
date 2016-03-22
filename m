Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AB41E004A0; Tue, 22 Mar 2016 03:57:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC717E00443
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 03:57:26 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id e185so248506850vkb.1
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 03:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=/xMMG1BhUBUlRPldTs5IcCeSHPUCSHgkz+dswaeyqJU=;
	b=EASfmnorY8S6C7a1EFnrWC04ZQecwJLKgnBM/P6t2prxr3GtQaRlG5TvL5RIXea+Id
	N20H3EhVkFFAnOg02kph80Z/Yp+IENV1tNtVLOoR7PtF2jtWfBeff1wuXIwvRd9JhXuO
	BJVAhDowmXnhLNYei9nycck4cOxXLDBa+JAMmCZqmi47r0pvE9C2m1KRcozXxcVpiLs5
	Wi9jg89RQ1gdI63q/9101ftgwubrMKkYZBfMix6xn6PQuegE5TXMk0TM7r8fRoCbd01l
	WVQEronEYnxcFvYEz4GDZRH/syG2xYn+qX39pMaAYUfs+6Vjo8DaS+A6jDrEDhbiUQmx
	ujjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=/xMMG1BhUBUlRPldTs5IcCeSHPUCSHgkz+dswaeyqJU=;
	b=ZElv2ByxWNHK6y80zJwF9hcicqiZ1ex44Imda5dI8H2dEXVA9sB64L8AAngQqD4HHp
	jmD61jzpbWJlH1EQB0l4Aihv35uqQnEPnyDDd3fx9IfcJ6TzyLOSwXh2awV4ivBqzgNY
	wN7SaFO93CO2pb4BHWnILB8FBNymx37UL1ziFuUPc90YfdFjppxPoPq+cwncr3GmYHY4
	38hpMPYSS184StSw7oGtxM4hnABmEZVvU57MwuQaGaYV/XH92IdL0mB86tLVQbY8XOdz
	EKGunrJfbkFptasrdo0d0sn1WHPKXCdQmo6MKLt3e5jEkdKbWDsOJWfbcGjH08/m9MDB
	k4zg==
X-Gm-Message-State: AD7BkJKMfTcsjre1ftfbynt3VXL3zRKxN65SDoXwHcXl9VCNQuDM1Gu+jrrZWD5+j2jmmPXm/b7ymUlTsnjwuw==
MIME-Version: 1.0
X-Received: by 10.31.21.4 with SMTP id 4mr35677190vkv.151.1458644245766; Tue,
	22 Mar 2016 03:57:25 -0700 (PDT)
Received: by 10.159.38.228 with HTTP; Tue, 22 Mar 2016 03:57:25 -0700 (PDT)
In-Reply-To: <CABcZANmWgA=zQ0+DnLvCk5JbPwvWYk0chc7hBAATB-7AaVrQfw@mail.gmail.com>
References: <CAF3SDA7Z35icGYqTb16buTUw7EsoNj5+KUaq6nDZbReqbgqQvw@mail.gmail.com>
	<CABcZANmWgA=zQ0+DnLvCk5JbPwvWYk0chc7hBAATB-7AaVrQfw@mail.gmail.com>
Date: Tue, 22 Mar 2016 07:57:25 -0300
Message-ID: <CAF3SDA6CsWgBogdp8HfwNUm8rRXKfm4y5AgeeM1sY4MSs4AD4w@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Two or more _append()'s on same task
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
X-List-Received-Date: Tue, 22 Mar 2016 10:57:30 -0000
Content-Type: text/plain; charset=UTF-8

Thank you for the reply Christopher!

Best regards,

2016-03-14 15:10 GMT-03:00 Christopher Larson <clarson@kergoth.com>:
>
>
> On Mon, Mar 14, 2016 at 10:56 AM Daniel. <danielhilst@gmail.com> wrote:
>>
>> Hi all,
>>
>> I was wondering how OE/Yocto would respond if the same task is appended
>> twice.
>>
>> If I have a .bbclass that already creates a do_install_append() and I
>> inherit this class at my recipe, will my do_install_append be aplied:
>>
>> - Before .bbclass do_install_append()
>> - After it
>> - Will not be aplied
>>
>> Now if I declare my do_install_append before the inherit line, will it
>> be aplied before the .bbclass's do_install_append?
>>
>> How Yocto handles this _append stuff?
>
>
> Append/prepend are cumulative, just like +=/+=/.=/=.. *all* appends are
> applied, in the order they're seen while parsing.



-- 
"Do or do not. There is no try"
  Yoda Master

