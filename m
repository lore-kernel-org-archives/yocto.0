Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D812CE00B58; Thu, 22 Jun 2017 14:11:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEFBEE00B53
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 14:11:25 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id f127so12795028pgc.0
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 14:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OUJz9iRBT2AuqtkRPsZ6ELMelPBk69sk9akqruCcRHk=;
	b=I9JpS2qD/NHEmhvMi1JhSMBvcig2rE40EeQMvEt2QAL4QcvPBcgFuD8CFPFKwsKerR
	yx00G1gsDTUUg2J5dj9hZ1zPDNZw+MJCwW3219MyED3tguynG62rwliHP+IiMVPDeaE6
	VZ364C6C0OE7igE7YF/JAOyfYG8njCBkScXoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OUJz9iRBT2AuqtkRPsZ6ELMelPBk69sk9akqruCcRHk=;
	b=okI/zWkHo8rDN03+2CnLwtWovPi/qz5fbM8DhDv523DsAt3RJbxzw1CwVF2aE5ZnAX
	AfQ+m6JVe6k/zLemqrntsQeciQpdFKqXaYaNBcuQ7Ro1iQDNxKBFC9oNpeEB7q6TNKQ7
	9l1b0mNp6awkK5k9y1BWr9qbmEf+dQaVlHHCyL1VU/bQfuenuCDKsSo4GyjVzw2qh5VQ
	VL+71y0x+G5u60ZECU7AJr3I+AnOntOkzxVVIYOEraBqTGJ3ZSknj/OMW+TSh6cCuJ/r
	NkUZrhokg2BdNtQHNg38GLyPtHq2JR1/VmtbrbZD8S2w8ifxSgkG6mwGcuJdGsW1HHLY
	IZiw==
X-Gm-Message-State: AKS2vOztne4Z/IRM4Tqvo6emx9dAMY22d3P7jxakmRnMuye6NLSCtM32
	UEGvnY2SOIM3ixreww3zv2U9jP/8+IIJ
X-Received: by 10.99.113.78 with SMTP id b14mr4669722pgn.229.1498165884437;
	Thu, 22 Jun 2017 14:11:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.130.73 with HTTP; Thu, 22 Jun 2017 14:11:03 -0700 (PDT)
In-Reply-To: <CAK18fxGt-MwUV4vNEp_TZesDYBfsb_VrARR=PEag-4jorC6sFQ@mail.gmail.com>
References: <20170616191213.26849-1-msm-oss@mcclintock.net>
	<CAMKF1spDNLxLAKFa8Cet8v=N_ejPFhQCHOVbmS93b30Sxg585Q@mail.gmail.com>
	<20170617152051.GO10782@bill-the-cat>
	<CAMKF1sqna8Q7myyv=qaB8jUjjDycxeFT4kC2cQmQA7RJhD4BKw@mail.gmail.com>
	<CAEsOVNempB7jsvU-EpX+eDwEfnzFveWVE4TuJaTtm2rLnfN6UQ@mail.gmail.com>
	<CAK18fxGt-MwUV4vNEp_TZesDYBfsb_VrARR=PEag-4jorC6sFQ@mail.gmail.com>
From: Matthew McClintock <msm-oss@mcclintock.net>
Date: Thu, 22 Jun 2017 16:11:03 -0500
Message-ID: <CAEsOVNdERLF=BmXvVwxfnEyorz-4ViZMxJVz3o4FcvsLms8pXA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Tom Rini <trini@konsulko.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: deploy vfat partition
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
X-List-Received-Date: Thu, 22 Jun 2017 21:11:26 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 21, 2017 at 9:26 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> P.S.: Would really be helpful to push a PR to github too so I can merge it
> easier.


FYI: https://github.com/agherzan/meta-raspberrypi/pull/86

-M

