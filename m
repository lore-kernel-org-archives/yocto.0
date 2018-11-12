Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68B24E00B77; Mon, 12 Nov 2018 08:20:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 055A1E00AD1
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 08:20:06 -0800 (PST)
Received: by mail-pg1-f182.google.com with SMTP id f8-v6so4278981pgq.5
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 08:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=i4yknTjKc6oqh3agfkBMKqjCXCzuW6NJbWr/uLGXt4Q=;
	b=Lzi9HdyUHDNLo2no49EfvA+O3QsOmB5s4+VAHFq8IZhSo9H5WxUlF8YCKNnzRsugBs
	K9eAYttCVC8JZsFEXD0kMMak2XXyDy5Zqzg0wvmAehZngeEQnplbo8LYkIyOFXRpeE8Z
	bSgmRKNGLZ2ijdGCZnLqgJHP9bKuiddhlVC6nJJo7djo3BJJAyXUAF0zF8slPMqalbYE
	QgqjACHy/xuzMwRRQcKY57gYZ37hw4fe4bIp2c0rqT5D/3aH+NdK6oLP0jTLiwgD4Uyk
	WOkPkADnMzOAUQc1HpwtZWWYAAmgRX1WPMvcf0RASs+9XePJdWe0vRmZEc9gR6HgkYtW
	UgYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=i4yknTjKc6oqh3agfkBMKqjCXCzuW6NJbWr/uLGXt4Q=;
	b=STYYLwG4XAyNDnvyEa2AQFJvSg5uluqFNtHrQ2/YF19+CL0VbbDM7CEWndW7mgG0lp
	N24hbnZEqYD891zZ7UDFioVxBg8l3B9u5SWsDBWHF02k6N7hYeXWoJkH2yzolV9JBFQO
	GriikGY7eSSRMT1DTa9TSoUW16ofymV/wxjsVgvFck9Pjm/5eTuxG0WOyjNfIkbQ2znL
	Z4HiBTTZs2QrYlD3GE9WENyWUUwB/i1ts1ynSbjZjD5CM4VBWnb9GU0gKfqEUZLBLYUj
	ynm4klWNHulnf5V6K5OY8a450xceMqeEoUTaRm38rbVQ7a9Fcb8orIdI1Ckaq4eqvIbZ
	2ytA==
X-Gm-Message-State: AGRZ1gIqxGtrJsE/LZAqIt8QIOGnL9aOK9JdlFkRfXPSYmHocdyXM/2m
	f8qBnxBJ3X2GO/Wdy2ESZMs=
X-Google-Smtp-Source: AJdET5dR7Gk4sXoBKOrAO1oYPT7hFq5c/sXbwelDvHeORKG7mqdyzKMkuylWA1usa34L1vQ4F3v90Q==
X-Received: by 2002:a65:5bc4:: with SMTP id o4mr1382464pgr.426.1542039606437; 
	Mon, 12 Nov 2018 08:20:06 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:1c0a:2ccb:cca7:f2b7?
	([2601:202:4180:c33:1c0a:2ccb:cca7:f2b7])
	by smtp.gmail.com with ESMTPSA id
	y1-v6sm10323167pfb.81.2018.11.12.08.20.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Nov 2018 08:20:05 -0800 (PST)
To: "Burton, Ross" <ross.burton@intel.com>,
	"Purdie, Richard" <richard.purdie@linuxfoundation.org>
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
	<124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
	<CAJTo0LarEQDPjpkg5wQv0yTnY2zaQexb5cWRf1XQqBy0Dj-Pqg@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <b9df6e69-f352-d391-673e-b83d653b8e21@gmail.com>
Date: Mon, 12 Nov 2018 08:20:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LarEQDPjpkg5wQv0yTnY2zaQexb5cWRf1XQqBy0Dj-Pqg@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, "Kirkiris,
	Nectar" <nectar.kirkiris@intel.com>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: Re: QA cycle report for 2.6 M4 RC1
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
X-List-Received-Date: Mon, 12 Nov 2018 16:20:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 11/12/18 8:12 AM, Burton, Ross wrote:
> On Sat, 10 Nov 2018 at 16:26, <richard.purdie@linuxfoundation.org> wrote:
>> My personal view is that whilst there are a number of issues present in
>> rc1, we should release it, collect up fixes on the thud branch (aleady
>> happening) and plan on a 2.6.1 as soon as it looks like we have enough
>> critical mass behind those as opposed to an rc2 and further delays to
>> the release.
> I'd suggest we schedule 2.6.1 for about month after release, there's
> quite a queue of security fixes already.

Maybe shoot for before the Dec Holidays instead of a fixed period after
2.6 releases, a nice way to end the year : )

- armin

>
> With that caveat, I'm fine with this plan.
>
> Ross

