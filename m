Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A392E00D97; Mon, 26 Aug 2019 19:55:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA452E00D8C
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 19:55:48 -0700 (PDT)
Received: from [192.168.1.74] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net
	[75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4599D2070B;
	Tue, 27 Aug 2019 02:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1566874548;
	bh=F61PprjHfaZfuLwCMufF5LLgYmQUQnGiTR3il72nZH4=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=i7VD2ZSr9LPDdZ1cwYe7DfBZUErOaPfloX8xtxod/YUOqWBAgitihsYg8ZwyPbJE7
	qaXHB0T/W7RkYbb0M0Y6pQSAnUyAJilmreejYuuzAhY/6VOA216w8MKt9cth5DIk1c
	WR+AthH30gtd79szqWHHalLdimjJqLVaDYDqmEKo=
To: Joshua Watt <jpewhacker@gmail.com>
References: <d0118f7f-8e31-1cd6-5804-b199c755e639@kernel.org>
	<da7b54f0-2e00-0d58-7cd8-8fc5f5c46e2b@gmail.com>
	<98d43ab8-b934-a4f3-ea07-98cabf948dd0@kernel.org>
	<CAJdd5GZ7OMN-hUZz6U-SoxC5Ot+NPu0wHa7amuHhMmawpE8zmw@mail.gmail.com>
From: Sinan Kaya <okaya@kernel.org>
Openpgp: preference=signencrypt
Autocrypt: addr=okaya@kernel.org; keydata=
	mQENBFrnOrUBCADGOL0kF21B6ogpOkuYvz6bUjO7NU99PKhXx1MfK/AzK+SFgxJF7dMluoF6
	uT47bU7zb7HqACH6itTgSSiJeSoq86jYoq5s4JOyaj0/18Hf3/YBah7AOuwk6LtV3EftQIhw
	9vXqCnBwP/nID6PQ685zl3vH68yzF6FVNwbDagxUz/gMiQh7scHvVCjiqkJ+qu/36JgtTYYw
	8lGWRcto6gr0eTF8Wd8f81wspmUHGsFdN/xPsZPKMw6/on9oOj3AidcR3P9EdLY4qQyjvcNC
	V9cL9b5I/Ud9ghPwW4QkM7uhYqQDyh3SwgEFudc+/RsDuxjVlg9CFnGhS0nPXR89SaQZABEB
	AAG0HVNpbmFuIEtheWEgPG9rYXlhQGtlcm5lbC5vcmc+iQFOBBMBCAA4FiEEYdOlMSE+a7/c
	ckrQvGF4I+4LAFcFAlztcAoCGwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQvGF4I+4L
	AFfidAf/VKHInxep0Z96iYkIq42432HTZUrxNzG9IWk4HN7c3vTJKv2W+b9pgvBF1SmkyQSy
	8SJ3Zd98CO6FOHA1FigFyZahVsme+T0GsS3/OF1kjrtMktoREr8t0rK0yKpCTYVdlkHadxmR
	Qs5xLzW1RqKlrNigKHI2yhgpMwrpzS+67F1biT41227sqFzW9urEl/jqGJXaB6GV+SRKSHN+
	ubWXgE1NkmfAMeyJPKojNT7ReL6eh3BNB/Xh1vQJew+AE50EP7o36UXghoUktnx6cTkge0ZS
	qgxuhN33cCOU36pWQhPqVSlLTZQJVxuCmlaHbYWvye7bBOhmiuNKhOzb3FcgT7kBDQRa5zq1
	AQgAyRq/7JZKOyB8wRx6fHE0nb31P75kCnL3oE+smKW/sOcIQDV3C7mZKLf472MWB1xdr4Tm
	eXeL/wT0QHapLn5M5wWghC80YvjjdolHnlq9QlYVtvl1ocAC28y43tKJfklhHiwMNDJfdZbw
	9lQ2h+7nccFWASNUu9cqZOABLvJcgLnfdDpnSzOye09VVlKr3NHgRyRZa7me/oFJCxrJlKAl
	2hllRLt0yV08o7i14+qmvxI2EKLX9zJfJ2rGWLTVe3EJBnCsQPDzAUVYSnTtqELu2AGzvDiM
	gatRaosnzhvvEK+kCuXuCuZlRWP7pWSHqFFuYq596RRG5hNGLbmVFZrCxQARAQABiQEfBBgB
	CAAJBQJa5zq1AhsMAAoJELxheCPuCwBX2UYH/2kkMC4mImvoClrmcMsNGijcZHdDlz8NFfCI
	gSb3NHkarnA7uAg8KJuaHUwBMk3kBhv2BGPLcmAknzBIehbZ284W7u3DT9o1Y5g+LDyx8RIi
	e7pnMcC+bE2IJExCVf2p3PB1tDBBdLEYJoyFz/XpdDjZ8aVls/pIyrq+mqo5LuuhWfZzPPec
	9EiM2eXpJw+Rz+vKjSt1YIhg46YbdZrDM2FGrt9ve3YaM5H0lzJgq/JQPKFdbd5MB0X37Qc+
	2m/A9u9SFnOovA42DgXUyC2cSbIJdPWOK9PnzfXqF3sX9Aol2eLUmQuLpThJtq5EHu6FzJ7Y
	L+s0nPaNMKwv/Xhhm6Y=
Message-ID: <5e3b9046-a9c2-a6c4-7d0d-517600410969@kernel.org>
Date: Mon, 26 Aug 2019 22:55:46 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJdd5GZ7OMN-hUZz6U-SoxC5Ot+NPu0wHa7amuHhMmawpE8zmw@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw] QEMU on thud mingw SDK is broken
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
X-List-Received-Date: Tue, 27 Aug 2019 02:55:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 8/26/2019 9:47 PM, Joshua Watt wrote:
> No, I don't think that is supported. Just to make sure, did you try
> building with
> 
>  SDKMACHINE = "x86_64-mingw32"
> 
> to try building the entire SDK as 64-bit?

Yup, that's what I have been using.

SDKMACHINE = "x86_64-mingw32"



