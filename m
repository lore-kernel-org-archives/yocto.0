Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E126E009BC; Thu, 10 May 2018 12:27:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7924E00831
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 12:27:51 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id u8-v6so1092194vku.5
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 12:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Z/66mg3YppfzYZU15846sDiFkILfA3r6yQMYWwWFWv8=;
	b=Jmi1Q++C8nizpgYDB5sr+JUnXoh1ifgSpSlLPBEQ22nbp5KlcdxS5MhecTZLA6AaNI
	hm6kN10SvfVBkvGUVtsjnKi5i1Szh6EUKgsCyNRz867xwgrgorZEVEgwXqY+i5czNXEm
	BovqQ+PluNQy6XMBjDz73WVt8zH4JtsBOW9lSWRI28q0CA50D4ID46sYJF+Vvl0U9W6I
	uqi1al4ydAI7EEiO8uCxpJ+9xvHcOAkMFx9whGXKd0ctBwu1mI7QaPV03PKjBhyRMABD
	uHPfGegpGZwoQO/ZfJfe4QkGFTwv6qic7XZbu7YDYr9P36S/aTl3AazlPwTm/xbUsyRW
	ADyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Z/66mg3YppfzYZU15846sDiFkILfA3r6yQMYWwWFWv8=;
	b=dNpG26+xqh3Ukna4NAEf1QC/hnqDHXuFRTEdF2csB4eQbKp7A8YPacF+lquVZYVr8p
	QKkFJdeqyFFHfq797TjXodyvRi7PHGFZH+hE5nU9vqZ7ulgiERpjr4Wlo6lIsuGL1Pot
	9La8MJQCawzD55PHHhZGfXUd9Ybe37lS16kN36y5Hz/mo9vtPUXg/6gimNpeg9XHb74R
	1LpXrUey6PncRFTjiMOxHAuZoT18ANXvt7yVy/PG5Wn75SFXzhUF5B3uw8YH9jxrJLsx
	i7uBgjWHdRR6zVuRtenxMF5jYlhu5gaHb6L0MTW4906M0Q048J3i81LaW/B32phs6iqv
	Q6sw==
X-Gm-Message-State: ALKqPwcidJqmXdgaezlYPLTM896Z6i19/z0JYCL1LE6lPzg5Q0lftXwX
	q0rkf4xbdRdRH9tqaWqXvniSrv3kmlQgnk5HSj0=
X-Google-Smtp-Source: AB8JxZomKkFJctTXn1BmNjZMtzEB/3G/JrxM+w43I73lKFvHsRfmPson27/My8o5u1gABFqLGq4vFnSN08dlyL4bvvA=
X-Received: by 2002:a1f:b254:: with SMTP id
	b81-v6mr1920369vkf.20.1525980470656; 
	Thu, 10 May 2018 12:27:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Thu, 10 May 2018 12:27:50 -0700 (PDT)
In-Reply-To: <20180510191145.GA1954@jama>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 10 May 2018 12:27:50 -0700
Message-ID: <CAJ86T=Xz+2neJPBw41_sFxd977xp=zznsgzFdbeHJ-aysJNk+g@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 10 May 2018 19:27:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 10, 2018 at 12:11 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Thu, May 10, 2018 at 11:50:02AM -0700, Khem Raj wrote:
>> Hi Martin
>>
>> Thanks for testing and reporting back
>>
>> On 5/9/18 2:38 AM, Martin Jansa wrote:
>> > My initial tests show couple issues, but usually caused by other changes
>> > in that branch, not the gcc-8 itself.
>> >
>> > 1) strace-4.22 from
>> > http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/gcc-8&id=af33a8b721cc9caebd3f5226b4c5903f666ab654
>> > fails to build with ptest enabled (it builds with 4.20 version if I
>> > revert this change)
>> > ../../strace-4.22/tests/inject-nf.c: In function 'main':
>> > ../../strace-4.22/tests/inject-nf.c:86:1: error: r7 cannot be used in
>> > asm here
>> >   }
>> >   ^
>>
>> are you targeting thumb1 ? how can I reproduce it ?
>
> I'm trying to find out what's different in the builds where it was
> failing, will provide more info later.

This is probably due to making an inline syscall from Thumb (doesn't a
matter Thumb1 or Thumb2) with frame pointers enabled.

Does adding -fomit-frame-pointer to CFLAGS fix it?

