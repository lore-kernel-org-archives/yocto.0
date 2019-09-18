Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54770E00D79; Wed, 18 Sep 2019 00:08:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7C6CE00D75
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 00:08:41 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id m7so5407654lji.2
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 00:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qI+VDG/yBswoJtgih5WA8U5oVndZsNUyYfV7ZObDcPI=;
	b=mzIr5QthMmFzs11fBb78lmNYjEYdSb/ki4rupnPyvk0H67vTEt05q3bSedQjFTedQl
	2p/2qt/As4DYzscguo3bagL+Rhpub8lplKXCFST6BgzFUM5KR7+2gncsjvqJkFrCVbUH
	CWwne9/5fouORIBsb7dekmfwdt4BBJa5aNYUBQmGjk1t7qVhAEZn/GI06nkq8EK+5xv/
	MymylD5kzC0hVzTLEtBAqdr6b0+tK0p663YhFTFZ7cKVcA8joJbGWdwdTECQb/uz+5yf
	Su9Jk3tNS0+SFIE0J1XKNLBd9kgGzUqegoDCrgiRnPgRyn9KQeEr2zUmrDHepLXfKlCj
	GCBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qI+VDG/yBswoJtgih5WA8U5oVndZsNUyYfV7ZObDcPI=;
	b=Jbo/KdfZGHAEfsrlVGYM9UH4/vG2tVjGOcW50QUfn931xcjtxwKmSuWdslOdJm8b1c
	IR8NFINbfYD1VjIKSu1uFqtbVRVsdjd1E32fqhKons12b4aEbcHdynVOijNN2ctO2a2t
	j4wm5zOP2MyelitWlgk4n32UJxyYItXNJFc5LCqAoA+iub1pCOYs7TEzBuR5HmBN/JXl
	/2AUTJ8BehKfzufrVDTErnwh7LtnYM5z7MxjKA5JLZFMfUw13EQwkzySwreuGnh9vChx
	gfarf5A5Oe3zSf9pXmWvuJVgIHq+zcAfGHkBVnb9XS73armn0F24ZcH1qWp5dh7avjIm
	p/eQ==
X-Gm-Message-State: APjAAAW6XB8swh32KmVdp+rzhWfbdat9SHovWapubzTTjKtv6csD4XbT
	eXkUMl5/PZZP0/IeBnOZD+4JpY8PK4c0YWwG/MnvUg==
X-Google-Smtp-Source: APXvYqxD6zHVZ4+MqnQkRyNhjzFOThJOexWbUjB7TAqdolZ4ODlmqy/cCpjYxKRktk1gk8ZiLljidFuWjFKb8z1x8Ko=
X-Received: by 2002:a2e:9049:: with SMTP id n9mr578978ljg.45.1568790520802;
	Wed, 18 Sep 2019 00:08:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAAmVmrr-EA1B_-SY06s0OP000QXFDWV36j1EDr_+2om-MhAx7A@mail.gmail.com>
	<CAD5=o+ohvT6U0KoVNjw81WAGQeevQZ4e7J99oi4RJm87v0nGvw@mail.gmail.com>
In-Reply-To: <CAD5=o+ohvT6U0KoVNjw81WAGQeevQZ4e7J99oi4RJm87v0nGvw@mail.gmail.com>
From: Teemu K <maillinglists18@gmail.com>
Date: Wed, 18 Sep 2019 10:08:27 +0300
Message-ID: <CAAmVmrrips_E6EP9AeZU6uiNii5iHqZs8ccVBREuy3sCmy39zw@mail.gmail.com>
To: Jussi Kukkonen <jku@goto.fi>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Wayland-scanner missing from SDK
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
X-List-Received-Date: Wed, 18 Sep 2019 07:08:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 17, 2019 at 1:49 PM Jussi Kukkonen <jku@goto.fi> wrote:
>
> On Tue, 17 Sep 2019 at 13:23, Teemu K <maillinglists18@gmail.com> wrote:
>>
>> Hi,
>>
>> I'm trying to create SDK for my image created with Yocto's rocko -
>> branch. It goes fine except wayland-scanner is missing from native
>> toolchain.
>>
>> I found this patch and verified those changes are in place:
>> https://patchwork.openembedded.org/patch/126669/
>>
>> Still the wayland-scanner is not  appearing to native toolchain side.
>> The target side it is.
>
>
> The scanner is in -dev package IIRC. There was a discussion later last year where  someone tried to add -dev for that reason but that received critique (because of the heavy price in dependencies).
>
> There was a later attempt at tweaking the packaging (https://patchwork.openembedded.org/patch/154282/) but that was not merged  I guess? I'm guessing that failed on autobuilder because builds that were expecting to find the scanner suddenly didn't...
>

I applied that patch manually, but still wayland-scanner is missing
from native toolchain side so at least for me it's not working.

-Teemu

