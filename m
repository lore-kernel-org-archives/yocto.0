Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82CA6E01128; Fri, 11 May 2018 15:05:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 107C3E00EFB
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 15:05:55 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id d73-v6so8698366iog.3
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 15:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NQ8upV8cGF79w/d0nbtM29X0/KnalBlvOOk8wKNKDsY=;
	b=ZnUarcWSkLwr/rkPanTZ3X1kwuOhb/xDgvkgy+dZoSdBaiBgH0EdDpGKiKYbhF7QvM
	ftpt3H0e3SXKaS2ILGlC+1uL4ZUgan5nLE6/JeEsQjzrq343TEuIuosz5M/9oii+Ua8M
	AJwXceJdbXl2liwROyqEA45e8UmMv4A+UMPvKmRE67YrAlDpjMJ/DBu4NHC4W+bpQygd
	2mRymP96m1M1fmG3Nk3hZbmUx5fEM1mL1CLWpJaOLFqqIj5BnUb5PoHXK1HiJVRJtYzn
	u3ZP15FPQ6jnR8ozlr0LaUFJFcErd+R+g6cY702HO8nR8a2iPYZthx0QlIoZNNkr0hS1
	aJVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NQ8upV8cGF79w/d0nbtM29X0/KnalBlvOOk8wKNKDsY=;
	b=b3f39yM+fwJMdByCSOyCzwGdgkzLaD3h+GN/Fbc09BmW4YPPR3Rtq6HrheTHqtgXRD
	ezE6heRS6JBmGE9qqOAgVh+R05Mp2nbB5zjp/NlAm8GARg7eY94vIEYVaLQQ7etModUf
	cYEde4u4nD0Zc8C1DJZzKK0+K0hlkiKMUfVodMVUplKLUajeorAPuuKPhA0ekL94fWBA
	o7lRljS4WtwZkDTrCyqKsm4Sj+ct3MyCHb1vfDskajayLbPjQFiHiteawkQlCu+G2C97
	5hhH0scf3mHVg3w7LEHNbOV3O+IeQVIqDYg9Dc+aKlhsuC8kBAngeqgqCKlShXFBgVih
	xQSA==
X-Gm-Message-State: ALKqPweY76F986skub68b7uvIZNB7t7xqilibr1KyoWuTrSwCM+/f/AJ
	IE+ktyQVVVM/j0T4SvOY6fNWGkGqYN0fTkrEAI2EAQ==
X-Google-Smtp-Source: AB8JxZp/oll2DIGo0AVw2YCAuajt7MtWM3Uxck9LBFMmXAU/qTHFUExli6M5ZD0u4tC1PeBjXUch6tte3c8iLM6alik=
X-Received: by 2002:a6b:248e:: with SMTP id
	k136-v6mr187199iok.270.1526076355316; 
	Fri, 11 May 2018 15:05:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.239.11 with HTTP; Fri, 11 May 2018 15:05:34 -0700 (PDT)
In-Reply-To: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 May 2018 23:05:34 +0100
Message-ID: <CAJTo0LYmyzY67JC=72OMRBRH=8juBSnAVaYUKB6ENZ9koqPqTA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
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
X-List-Received-Date: Fri, 11 May 2018 22:05:56 -0000
Content-Type: text/plain; charset="UTF-8"

I threw the branch at the Yocto Project autobuilder today, produced a
number of failures:

http://errors.yoctoproject.org/Errors/Latest//?filter=b23dba19607412c8cc7d267d95354d65f5631088&type=commit

Ross

On 5 May 2018 at 01:26, Khem Raj <raj.khem@gmail.com> wrote:
> Hi All
>
> As you might have noticed that gcc 8.1 was released this week, I am
> calling out for some testing help on testing branch so we can weed out
> issues you might see in your setups. so if you have your
> builders idling over weekend, then you know what they can do this weekend :)
>
> Highlighted changes are
>
> https://gcc.gnu.org/gcc-8/changes.html
>
> and porting doc is
>
> https://gcc.gnu.org/gcc-8/porting_to.html
>
> The branch is here
>
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-8
>
> Its uptodate on top of current master oe-core
>
> May fourth be with you !!
>
> Cheers!
>
> -Khem
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

