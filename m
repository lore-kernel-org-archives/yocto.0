Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79A5BE00D42; Thu,  8 Sep 2016 05:43:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12CB9E00D25
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 05:43:04 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id w12so86797136wmf.0
	for <yocto@yoctoproject.org>; Thu, 08 Sep 2016 05:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eumOCkw70bv7ye/nSWGdIB1AOkCem05B93OJQEhG7DU=;
	b=gS6ZuXKyuzlo/e4v0Q3E0ke15UrlMiTlmpL5dk8xnfnePcT5L8Tum+s7IVlzx0CWea
	ZXo0hG82jsTcD0DiK14B4I+nSpAGCgPhoZ9JYe+E58hsHo/ZqpAvyqHx3an6Vot0oW05
	rNkY7PWy8krZafxFO1GAZTBmInFscdHNHvHUHcN9Rv4iuFD8vTYryT30Gy/02zJbXNOg
	tYSuNZsiHj5zFAsWb7mOviEOYwKJMHuEyyLOXwjUyJLn0MX0L50q17/3LWjMj979aTvw
	4sEwQMndxxWWZEW8X2b33T9d9tyZGYlYuZDo3vBZJwzVToVhPVwGBTL/Fe1DjxhyoB/o
	j8pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eumOCkw70bv7ye/nSWGdIB1AOkCem05B93OJQEhG7DU=;
	b=YX5rcn2J2uDXC5OUJwy9rGmo391QnNeTKDztIUwvZ3PiAzX0wbL3Dj2AzKjI0yp02G
	2YGpCWhpvQi6uvjxkmYJi5mq9Y8bktG/X9xGgsQ1lyGp8IQAXnRx0xNIiUQmvaUij6HC
	9LKntu0mEgI1WCVXOiwcY/cVQBsd7NGf1y3+K+EVUUf5wcFln4MBNlYzZH0mu/VeasnU
	Iiyxir5dDpVMV8+AJkJZgFWiOz7MUywsFy4gW0iXpzJim4bfOvwUGFwzOL0hNJsQVYGU
	MpmmzAJcxxFC0c0cqM0pps9Ou+2FH3AKKOEr9ddWgE1oZfXkO8FDTBu4Sb7droVhPcml
	L4qg==
X-Gm-Message-State: AE9vXwNbPj1IasDt2voRYPknztpAIazIEMnxCvsgjJyP6L6D8/QBlHbF3o/CU+dAg7sdHME9Zp34cfebmICTBQ==
X-Received: by 10.194.24.73 with SMTP id s9mr22732856wjf.74.1473338583658;
	Thu, 08 Sep 2016 05:43:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.22.201 with HTTP; Thu, 8 Sep 2016 05:42:33 -0700 (PDT)
In-Reply-To: <5A1D0C5D-A6AF-4C6F-A058-1E07935E8A93@gmail.com>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
	<CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
	<87fupkarqt.fsf@posteo.net>
	<85bd928a2ecb47663d9a90ca24756f16@herrie.org>
	<CAHiDW_GBefiLcDQOgEEPVXeKTQGun8w6n62H33V6W4bvCv6sSA@mail.gmail.com>
	<CAGiJk9fFfgezxUdR3+bEXmoRhqEubNgRQTs8yeBc3-QoBE5Wyg@mail.gmail.com>
	<5A1D0C5D-A6AF-4C6F-A058-1E07935E8A93@gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Thu, 8 Sep 2016 14:42:33 +0200
Message-ID: <CAGiJk9ePvhuwH6FempLsy+_=QpXvvNBTnZvK-1ivqMk3KdXSuA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Thu, 08 Sep 2016 12:43:06 -0000
Content-Type: text/plain; charset=UTF-8

2016-09-06 20:11 GMT+02:00 Khem Raj <raj.khem@gmail.com>:
>
>> On Sep 1, 2016, at 3:57 AM, Samuel Stirtzel <s.stirtzel@googlemail.com> wrote:
>>
>> Hi,
>>
>> protobuf 2.x and 3.x are incompatible, there is also a protobuf3
>> recipe in meta-maker.
>>
>
> why is it in meta-maker and not in meta-oe ?
>

No idea,
it would be easier to ask the author (Koen).


-- 
Regards
Samuel

