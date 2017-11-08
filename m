Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CFC4E00D4C; Wed,  8 Nov 2017 08:15:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F27F0E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:15:35 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id m189so3982638qke.4
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=2H7IX5A6m5Zptj/HODXMZCr8ILUV/9r1Lf/vFLZwLLs=;
	b=IREzyJETJ6C2vn57fKodxAjxEMbR/+t0/syvxfrZcTJG5XOJ/uD+PZX6QioifhXTgQ
	CVNBxH+hrwDJtx0wkUKqkwxaXu2BrraNKpikuNrZ7wtZEzv47Qp5nxmgcaE6dLETROkw
	iL9vk0ok+6dcQhJUBCxfAmM6uQdcYNPJpMVlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=2H7IX5A6m5Zptj/HODXMZCr8ILUV/9r1Lf/vFLZwLLs=;
	b=tuVne9RMEa6EzBk+A5KfB1OQVz4aqi8kwYuUppNMTkfmg03NlR66cM4nc0j3051MJ1
	tTCeEmmvEC5znzX1NQj6Jgo/P1mZ8sPn1G+5utiVwAgZT1+xjbtd0PHGPEWmnQSs+Dxb
	Jn0BlQeM2zy45oEnh/tAyKksLFbH5R+x9jLJhUylRHa8HPdG5O6U4PmECJeR97dVDQYB
	pEyPeRf7iP06O3sDyhYGkLnRhZDxeKCxqibMznuQXg4lmwWBJoGWG9Ad0TCx2rnTlZrl
	Vx2AnzGDt0Ttrj2A3HzsQLD6SkS/2jN2t6bZ8YyYiH02hZiG6EXcPPf+8nlm6nD58joS
	DCiw==
X-Gm-Message-State: AJaThX5bpQ+4/ak0mfTwCVaxpuPgJ10nx9SPswCCTN39HNzPP5iH3i3I
	a1vo16rFyF2RcG3T8cP3uPxF5UBL6YHiBJ30eLY3zQ==
X-Google-Smtp-Source: AGs4zMZfazbwrMMpyWMt/4W4kuvF9PtqmNWriVlElGSrfdxEXTQ0sxzYKzrQPsvGKwtscnjIrHWEOJJOUUEaTickbOw=
X-Received: by 10.55.52.148 with SMTP id b142mr1596257qka.116.1510157734880;
	Wed, 08 Nov 2017 08:15:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.81.81 with HTTP; Wed, 8 Nov 2017 08:15:14 -0800 (PST)
In-Reply-To: <CAE0QtjNbKsNSioogKnsCeo4jVh75UhLayXFyt0vWX4PvFx796w@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<CAP71Wjxui5Sy_SuQ+S43eC6_Wc7Nc38YL1uvfJA3BLq5P6oDXg@mail.gmail.com>
	<CAE0QtjNbKsNSioogKnsCeo4jVh75UhLayXFyt0vWX4PvFx796w@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 8 Nov 2017 17:15:14 +0100
Message-ID: <CAP71WjxftWkp_ktMato6aa8m6iEgBpRh9HHwHcMV9kFCAcx=Pg@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 16:15:36 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 8, 2017 at 5:13 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
> So according to what you said: the build will fail no matter what.
> But that is not my observation: my build succeed eventually (but you just
> need to rerun many times)!!!

ah. sorry, i missed that part. So then it's probably a bug in the
recipe, missing dependency or something along these lines. It would be
legit to report this bug then.


>
> On Wed, Nov 8, 2017 at 10:53 AM, Nicolas Dechesne
> <nicolas.dechesne@linaro.org> wrote:
>>
>> On Wed, Nov 8, 2017 at 4:49 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
>> > I am not sure whether it is a bug or an error:
>> > * Quite often, bitbake will fail before finishing, with message like:
>> > ...
>> > task failed with exit code 1...
>> > * But if you rerun bitbake, it will continue to build.
>> > * So sometimes I have to rerun many times for finish one build ----
>> > annoying!
>> > (by the way, my CPU can run 16 threads)
>> >
>> > Any idea to clear this annoying bug?
>>
>> it's not a bug. bitbake is using parallel tasks a lot. At any time it
>> is running N tasks. When one task fails, it will wait for N-1 ongoing
>> tasks to finish, and then stops.
>>
>> If you restart again, it will likely try N new tasks again, and the
>> same task that failed,  will fail again, it will wait for N-1 tasks to
>> complete.
>>
>> if you do that several times, you will  end up in a situation where
>> the only task that can run is the 'failing' one, so it will try 1 task
>> and fail immediately.
>>
>> > thanks.
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>

