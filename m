Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20B83E009F4; Thu, 10 May 2018 16:41:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8B63E00831
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 16:41:31 -0700 (PDT)
Received: by mail-ua0-f196.google.com with SMTP id d4-v6so2454955ual.10
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 16:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Nb4FoL4/jw2K9vkkMxyFaAosx2MH0Ltid0MRQl5KcLg=;
	b=fDZjQhQka9M38Snu1ZyyfyDcPcZ9wXPADeXD1aV3pUaZztFoGjzG8zwrBTod5dnBMl
	Rbchs8ALLrWxpHsgyp6mTvPsjGbMNbdkI1FVhEogW2Q1OCgN+xhFgAgPeO+N6wesCBzr
	6ZGAC/OBi7RLT/tkIiQKiieR0iZ7ryF58nL2BvF4RHDs5LwIJw1JrogB1Sj9uLePji1E
	SPRcP+P0Vs85aMxk3nJ9qCdebjLLwfHasTIeIEkHNo0aPun5pl//oa+JwF8X7wI+rdwo
	IZg8KMjtlCWFk1vaOMZBS2WwvDrdsXZ3M6RVxbJNoivQb7nt1usgqYbndAJVQZwEOW4s
	gKHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Nb4FoL4/jw2K9vkkMxyFaAosx2MH0Ltid0MRQl5KcLg=;
	b=oNnJiz207YJe7DDjzZP4cTd+7y26Bn/8N0w/5xxt1OtLowvDeAnIzUYLmcjoB8sdVn
	1ngVQNA97uqkR6s2mjTLiLNSejwkAddjEDsU6e4m//V5dTErJGdz5IH4agnWma9Vx8zF
	bLEYpgNVFQFDVGdILcGpg1F8DLaw+J/1COhvtfUdZnvvcNJNquhwCvlPEg9nxxIgUNsD
	qETMyclajwlp84CzVih9x/0PcpZhV/obLSEvrBHWY9xc7xsC+gGJPM4rnLZsV+QO/OG7
	elZRHmRW5LzBh94aIrLMaOHlY/tklfBu58uP0rnmjwql+ma/FnQH0zoRs2nS9BL9JEbL
	y/RQ==
X-Gm-Message-State: ALKqPwfAjYHBpTz2P536z/mlm30D//llA7bsY1iITyj4ZnX+nYCKHcX0
	J+m6n96w5hP2pD8eyLgTDKGmGq0gi0qjOekPt3Q=
X-Google-Smtp-Source: AB8JxZpuwpGA3LwK+i614PWiLnHmmZ9Ip6qcn5doE80EcU3ua6ng9uz2d6WW2s0sYVFUFUHte62C4jRwREe53a2SNAY=
X-Received: by 2002:ab0:1567:: with SMTP id
	p36-v6mr2601359uae.81.1525995690735; 
	Thu, 10 May 2018 16:41:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Thu, 10 May 2018 16:41:30 -0700 (PDT)
In-Reply-To: <20180510233233.GF1954@jama>
References: <8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
	<CAJ86T=Xz+2neJPBw41_sFxd977xp=zznsgzFdbeHJ-aysJNk+g@mail.gmail.com>
	<20180510214325.GC1954@jama> <20180510220735.GD1954@jama>
	<CAJ86T=UpZ0+HTqre2Z4eAPM9LY_eH1EUO=e1v0sz7FPe4+8aRw@mail.gmail.com>
	<CA+chaQcTPwJy+dL6GvBKJTcZuiVUiztVqEDXmSwZ==b53m_mcQ@mail.gmail.com>
	<CAJ86T=XkBkKhK6mwqxnFA1CkaV5swjGKsdNv_7E9fgFa=qhdCw@mail.gmail.com>
	<20180510225017.GE1954@jama>
	<CAJ86T=UfXtgtaWQyJbrhW40MJFW9YAArB3CshMxy5e5f9Cg_=Q@mail.gmail.com>
	<20180510233233.GF1954@jama>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 10 May 2018 16:41:30 -0700
Message-ID: <CAJ86T=XZtFDDO7BdfjwsSsh+jXi4pHAQwDS05A-+ypjCLogRdg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembedded-devel <Openembedded-devel@lists.openembedded.org>
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
X-List-Received-Date: Thu, 10 May 2018 23:41:33 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 10, 2018 at 4:32 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Thu, May 10, 2018 at 04:11:00PM -0700, Andre McCurdy wrote:
>> On Thu, May 10, 2018 at 3:50 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>> > On Thu, May 10, 2018 at 03:40:53PM -0700, Andre McCurdy wrote:
>> >> On Thu, May 10, 2018 at 3:38 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>> >> > see
>> >> > http://lists.openembedded.org/pipermail/openembedded-core/2018-May/150654.html
>> >>
>> >> Removing -fno-omit-frame-pointer isn't the same as adding
>> >> -fomit-frame-pointer. Frame pointers may get enabled depending on the
>> >> optimisation level etc (ie not only by -fno-omit-frame-pointer).
>> >
>> > Should I send v2 adding -fomit-frame-pointer instead of removing
>> > -fno-omit-frame-pointer?
>> >
>> > The v1 fixes the issue for me with default config + DEBUG_BUILD.
>>
>> The v1 patch isn't wrong, it's just incomplete (the problem could come
>> back if someone changes optimisation level or switches gcc to clang,
>> etc).
>>
>> My choice would be a v2 patch which adds -fomit-frame-pointer to
>> CFLAGS unconditionally for all ARM builds when Thumb is enabled. That
>> should fix the problem for all optimisation levels etc and avoids
>> building the main strace binary differently depending on whether or
>> not ptest is enabled.
>
> Only for thumb? makes me a bit sad that thumb override was dropped by
> you in
> 351443d71eb246a946b41f12b54d57b36fe1574e

No need for a thumb over-ride. You can copy and paste from the musl recipe:

CFLAGS_append_arm = " ${@bb.utils.contains('TUNE_CCARGS', '-mthumb',
'-fomit-frame-pointer', '', d)}"

