Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFB06E00BC2; Mon, 29 Oct 2018 08:56:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9D2AE00A1A
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:56:19 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id g10-v6so9789378qtq.6
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ikhu0E7tjgSJFkSO5sbVSyqoF8qH0dlkSxO/6mfB65k=;
	b=DV3JUsdqxJLFnLqc/1f2Q4ghl7P1gDQb5tXgCfqNQqNOGpvhXVIqO6o/pK0HRRhMUi
	uiyqYcdgjFdt99TqkJbPMvZ7GrDGkeVMG5CZlivPVb4fAorwyKtgze05mDhFj8naZYA0
	wDnQ198MBdtDl4I3ZwsXUtNJWCyKQSi/v8uYy2P6xkMz9c+EPxWLS/pjC5IOjJKWdUln
	7gDBa+gRG8dN0o6lctqAL4LTvXdYkOGq0SNU+gPtekMXVmdkgzzp7xl8WZVKUQu7sqtc
	ak+49UWxAjrf1okeKASrM0dbqMeb5p/8Ma+lUiGa5rwiB0FamWYgN/hoMwqx2wu0Ckw3
	rpiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ikhu0E7tjgSJFkSO5sbVSyqoF8qH0dlkSxO/6mfB65k=;
	b=muOnxZMq4ECjQRVdH85DhW6c7kPmgrC8KfX1g2DjcPnoOjER98keSmLZhvQeWunXv0
	udrS0bIR5PZETso8tevT6W0kXbIW3KoUvXVz/Z58RpHO3RNxVf/g3XvMoVt6rApbnDc/
	/SIT4pY/NjV4BAMevDttVsgtqIo1ABT87SDY9Hm32nxjYlAvdCl6mmczLKKlmryjRIBo
	TxDwSilQf/6QCUb3D6AkwmkOMnwknsAd+yYEuYIfwkUmW0Ku5GGGI7aTqL0RTipdSXzC
	42SilLz3T8WLwdB+BPHY4SpHv7ED81dcIUgfA/lsE7zuQ6xOnaiZcU6oB7bjohtcsUia
	lcAg==
X-Gm-Message-State: AGRZ1gIAqb13euZuW5d3ECRHsKha5iapPa/MGU8WYX0jSBmc6Qk0Ifb8
	ZMB8yFb/oRHuTN/wylYoZXWJPoeSDurKJlLaoylYgn6n5t8=
X-Google-Smtp-Source: AJdET5ca+FjfTnZSsLSESm8Kht4WcEuAzZrlZhROqe5cfw2nMk5j3Yk2q4QJO/D8SClawU8fsyVb7xFFaI9p2tHmQGQ=
X-Received: by 2002:ac8:3693:: with SMTP id
	a19-v6mr13085527qtc.236.1540828578905; 
	Mon, 29 Oct 2018 08:56:18 -0700 (PDT)
MIME-Version: 1.0
References: <f416d79a-a303-0b48-746f-dcd6a5c5a4bf@faresoftware.it>
In-Reply-To: <f416d79a-a303-0b48-746f-dcd6a5c5a4bf@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Oct 2018 08:55:52 -0700
Message-ID: <CAMKF1spMUEj-p1cMH=8gA6Y7Hf0JJjeejJhi0Ft=UgmLkmDwWg@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Layers for AMD Geode LX 800
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
X-List-Received-Date: Mon, 29 Oct 2018 15:56:21 -0000
Content-Type: text/plain; charset="UTF-8"

there is meta-amd layer and its possible that it supported it may be
some older branches also read this

https://lists.yoctoproject.org/pipermail/yocto/2013-September/016081.html
On Wed, Oct 24, 2018 at 11:07 AM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> Do you know if there is some layers ready for the board in subject?
>
> It is an IBASE IB550F.
>
>
> Thanks all
>
>
> Mauro
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

