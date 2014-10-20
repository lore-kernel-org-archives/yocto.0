Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05B45E00863; Mon, 20 Oct 2014 12:47:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22C55E00846
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 12:47:03 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id hz20so4654690lab.11
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 12:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EXxC0DQHjZPuMmZOPw7UkSepTK7FPoOyOa6Z7gjtp+o=;
	b=QkwgLH6Yk/rppLOmKf2B8SrwgzSu5hZXJWiLmHAOLF/HtxVhmTc9CaP7AMoW+FNBqy
	MQvfPpRHnjRXYQXsHtI6oF+Yl6waO3DxYfTqDYJutEq8Bu44SuQy+qIPkY3sc0h+M0XF
	cMMrD+o07W3i8Ac8Lj5NeifWx33l9S3h80vH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=EXxC0DQHjZPuMmZOPw7UkSepTK7FPoOyOa6Z7gjtp+o=;
	b=UGD2oNL5fRsPUYWamkXumTm5Bjzqpo2dMXkzi+iGcU4YUOwpfkZD/+pB18mMsob1aO
	gulJBNfnWOyAt/Rf3zfSbvynLAq1yrLZObCy9IMQfOB/9sm+DjIf1VVdqjAQTMbMpduR
	TQuRoMXOHQZhdFtXQUvyyWfncIJ/URjMoAtgeXp7yvVQlx8Dazz2uOp9eMiIHUykjX4s
	zNpW7tyHaxhPVDXWxL3XwrPCN9WVB5BcQK1oSsBfNe/RuiiGkXnUpQF3kZlQt5NOp813
	p/tESCNf0MkDBJH1aF8urnSgOMPQafYYVv57u70xCoMPhyjXtcXdmTe7UT7tjZRsryd1
	sonQ==
X-Gm-Message-State: ALoCoQnTubAbiaepl0KUBMqfLT0FcOIgkgjdGdBYdwIpm9cb/coi4bHjRlBXH/fYTqQZHwp+Wta7
MIME-Version: 1.0
X-Received: by 10.112.189.10 with SMTP id ge10mr29457380lbc.23.1413834421638; 
	Mon, 20 Oct 2014 12:47:01 -0700 (PDT)
Received: by 10.112.188.161 with HTTP; Mon, 20 Oct 2014 12:47:01 -0700 (PDT)
X-Originating-IP: [72.74.84.52]
In-Reply-To: <CAMKF1sogNqEOMnQ2A-uX0i=K_=6p9mtgGuDCG1guYJTUuPyniw@mail.gmail.com>
References: <CAPoQQ-1xzG=SqaBrPp-W-tOd9W3fWyZ=skUTEpvq+mEQ3P_CuA@mail.gmail.com>
	<CANyK_8cvEcxAC3tJMJHSif01gnXZU=L=TTu990_uENTrjTYK1g@mail.gmail.com>
	<CAMKF1sogNqEOMnQ2A-uX0i=K_=6p9mtgGuDCG1guYJTUuPyniw@mail.gmail.com>
Date: Mon, 20 Oct 2014 15:47:01 -0400
Message-ID: <CAPoQQ-2Rc-69YMf__yGNNGhb1kxw8a+fp2AYAqY4VxRgrxzNqg@mail.gmail.com>
From: Cody P Schafer <dev@codyps.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Questions regarding adding a new llvm based cross-compiler
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
X-List-Received-Date: Mon, 20 Oct 2014 19:47:05 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 19, 2014 at 4:10 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
[...]
> I have started to integrate clang into oe
> Which probably is quitquite similar to this effortwise. Its very
> prelimpreliminary. Check my github repo. I should add it to layer index

(repo link for the interested: https://github.com/kraj/meta-clang)

Khem: the complication for me is rustc doesn't magically build for all
targets it supports (at the moment) when using gcc as the
compiler/linker (rustc calls an external binary, typically gcc or cc
to link it's code). As a result, I can't just build for -native. I'm
currently fighting with cross.bbclass to convince it to do what I
want.

