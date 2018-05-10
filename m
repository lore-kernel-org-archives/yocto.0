Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAD23E009CF; Thu, 10 May 2018 16:11:02 -0700 (PDT)
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
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD94AE007F2
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 16:11:01 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id j7-v6so2210208vkc.9
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 16:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Cbvl6jbZP6dtepGb6Oza/ZmX2paf7BhoIJL5Ab7av0A=;
	b=EeHQw9xwyqSl5fFd8oetivIPcTAV7M3kJMxclpOUoiANhtnh/ghNXZcIoC5tcPF/sB
	env7TRETVksZfMtTTXf2RcrBkl5p4YtYXf7AzcDbvSRJAiMqSsiKcIazNNaL2kEdOwQY
	UC7T3h0QU/ZemmK0QK440ZRbkB+7jCvQTqueo/AxKuau1riyjeinAquEb9brAgErCfRC
	WSmfpAa8iFH/t+Du0j64KTTSdfMKBs7WBelRO6EEFqe09u38+6J+gPA/hyO0V3cJSRsV
	eaWa+abD3RUZpT8RIhgMNazApNfMy2+Lg1DdpirCc7C6OIGiSmrvNSdJ56HWtUqAfN9O
	1S8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Cbvl6jbZP6dtepGb6Oza/ZmX2paf7BhoIJL5Ab7av0A=;
	b=NDo3NTMpRYV4KVn1CHJJIkVjxzLBNN0rqrteW3vmSkOFeGFTGPU6Rzy/Y/RtwFC4fg
	0PN63/08newefcOc7gFRFhMPcHql3TwUb4+w7xpPBz8sQ9MoW7FPxXSHeb7vyL/1ojPo
	CxPJl+2orEiqyZhFcrfG9JzqZWa6mkUZlnsnHSdAdhBTHuEiDey/9Nnz46XcpQJz8zQ9
	Pxi3jDnFs4mWSnlikeP17RHvyZ808U1PxdXuGx8Ja7MopFRtLAROMN5NoC6+oznNDmjP
	ODJCY6nlLgBVrUzlWYJWH3OXBqxR2JzpgyH/NSmeao2sbkp+mToC8x0LurvJj6sxvDrs
	nyQA==
X-Gm-Message-State: ALKqPwfzwNrCTZqYi3hbXpCiZtVh30RVAXa1qJvPfTqJkQJ6ff/UIj1B
	xb0p9iM4i6LCC4uu0F2fT2gpCLRvTauBLA+MZo4=
X-Google-Smtp-Source: AB8JxZqe+EzAHCTIEkp8gLPHy5CWwnyucaBI+u7aqkcviyngBpUQztv8MyPaDfRIY1XBE4fopOcr8/pZ0vm6j99Sr6E=
X-Received: by 2002:a1f:ac2:: with SMTP id
	185-v6mr2358790vkk.194.1525993860874; 
	Thu, 10 May 2018 16:11:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Thu, 10 May 2018 16:11:00 -0700 (PDT)
In-Reply-To: <20180510225017.GE1954@jama>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
	<CAJ86T=Xz+2neJPBw41_sFxd977xp=zznsgzFdbeHJ-aysJNk+g@mail.gmail.com>
	<20180510214325.GC1954@jama> <20180510220735.GD1954@jama>
	<CAJ86T=UpZ0+HTqre2Z4eAPM9LY_eH1EUO=e1v0sz7FPe4+8aRw@mail.gmail.com>
	<CA+chaQcTPwJy+dL6GvBKJTcZuiVUiztVqEDXmSwZ==b53m_mcQ@mail.gmail.com>
	<CAJ86T=XkBkKhK6mwqxnFA1CkaV5swjGKsdNv_7E9fgFa=qhdCw@mail.gmail.com>
	<20180510225017.GE1954@jama>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 10 May 2018 16:11:00 -0700
Message-ID: <CAJ86T=UfXtgtaWQyJbrhW40MJFW9YAArB3CshMxy5e5f9Cg_=Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 10 May 2018 23:11:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 10, 2018 at 3:50 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Thu, May 10, 2018 at 03:40:53PM -0700, Andre McCurdy wrote:
>> On Thu, May 10, 2018 at 3:38 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>> > see
>> > http://lists.openembedded.org/pipermail/openembedded-core/2018-May/150654.html
>>
>> Removing -fno-omit-frame-pointer isn't the same as adding
>> -fomit-frame-pointer. Frame pointers may get enabled depending on the
>> optimisation level etc (ie not only by -fno-omit-frame-pointer).
>
> Should I send v2 adding -fomit-frame-pointer instead of removing
> -fno-omit-frame-pointer?
>
> The v1 fixes the issue for me with default config + DEBUG_BUILD.

The v1 patch isn't wrong, it's just incomplete (the problem could come
back if someone changes optimisation level or switches gcc to clang,
etc).

My choice would be a v2 patch which adds -fomit-frame-pointer to
CFLAGS unconditionally for all ARM builds when Thumb is enabled. That
should fix the problem for all optimisation levels etc and avoids
building the main strace binary differently depending on whether or
not ptest is enabled.

