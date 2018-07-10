Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1890DE00DA9; Tue, 10 Jul 2018 12:27:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2362E00C82
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 12:27:06 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id r16-v6so44854462oie.3
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 12:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RGfLSLzIbGIf1TLUF0JUo1IXYCYsESGvfRH0sPHrxY0=;
	b=mwSfiyl9XOHNiKxRSlKcGoAFxf0fWJRgBWjTdAwqZ5NmOqzxLihyK0x6bHfXEewCnF
	GDsvSs/mvjG1+6cp4L6DpjLnmvUZdfher8PQBvhmzN3Sc0LsghbWwwRIjgU4Bstmr2wN
	hfCYxIOX10fAFRDhz2B87tP09nK7tdfVIt4JcVZ6Peg51R0gqwn01Ki0NsYS1KqjPcfw
	prVyRYy/gPqonB8a9ekxSRjnyKI2FD4MxwUQZgUCaf7PF6XwyPzbA7g4t6f2ZS3CBf65
	w/Yeb7m5i93Z7349K6z7R9CdbUilBvINn+wUcpMjd1QXiSh5xlz3mwuEtw69XDRwCx5O
	YL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RGfLSLzIbGIf1TLUF0JUo1IXYCYsESGvfRH0sPHrxY0=;
	b=GH+kBra41z8Ho5hxi03SMc6tTxmvJPm5MzqjbWkZwuQDSTOk/YVkl47UHkOVIXvtl7
	0z2E3MW3IPYZOGKqd9aglwdujTLsRTNtda5iAa+DQzAQ1luYnsWq8phVI9fM76EN4P09
	G0yddPoZAUPIMGP/8zuAr/GWr2z7//prq8c8N02XDhotpi6ZJw8VJJ3wIMExSXy/7jwG
	VFctAkuiAa1DjWpH1KlXz5z7lS8pkIBW3qOgiW01j6DQ1TXIaDyyRdzapXgX43vyz/1/
	MRUgreCqbRk671mxvkmz9x273Sy0Lz6VX6X0dpJA1eccCC50qPvw0MfJuYxGSBp2uOni
	lQBg==
X-Gm-Message-State: APt69E05oP9s2ARrMbcSMaY1TMUz0GUN0BwWoyRHVomKAuWsq5hr4QTL
	SwqCXLkMC0BtJ1oycmWd0gNDhh8iK4rKlKzki8OghQ==
X-Google-Smtp-Source: AAOMgpeMRCBlzl5H8xHLU3FXES9Pn+n2h1KS8kCEeBHgILuuNFEhuuJS14RonzCF7upkzF10qj/cNUoih4EPF58R0xg=
X-Received: by 2002:aca:2808:: with SMTP id
	8-v6mr30368360oix.235.1531250826125; 
	Tue, 10 Jul 2018 12:27:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Tue, 10 Jul 2018 12:26:45
	-0700 (PDT)
In-Reply-To: <CANNYZj9161QoBpFJ7w3Z-1Pog5fRntsr=7mxNwtRz8y3SQq3_g@mail.gmail.com>
References: <CAOsp8o-2V=xNk4aEB9HfV9j=aHdW=bgyOqcCg13QJqQ2APSOHA@mail.gmail.com>
	<CANNYZj9161QoBpFJ7w3Z-1Pog5fRntsr=7mxNwtRz8y3SQq3_g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Jul 2018 20:26:45 +0100
Message-ID: <CAJTo0LZKArwnjGxbZnhyrY2eTnKL5g7Tp1yvFQhbMu3tNwhoSw@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Hook for layer-only actions?
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
X-List-Received-Date: Tue, 10 Jul 2018 19:27:08 -0000
Content-Type: text/plain; charset="UTF-8"

Hypothetically a new QA action should be added at the distro level, by
writing a class and adding it to INHERIT.

(I've several new QA tests added in this way)

Ross

On 10 July 2018 at 19:53, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> Yes. Implement a class and inherit it from the recipes.
>
> Alex
>
> 2018-07-10 20:50 GMT+02:00 Michael Habibi <mikehabibi@gmail.com>:
>> I was wondering if there is a way I can apply a global modification to all
>> recipes in a layer? For instance, we have our own layer for our changes that
>> sit on top of the base Yocto/OE layers.
>>
>> What if, hypothetically, I wanted to insert a do_package_qa action globally,
>> for everything in our layer. Is there a way to codify that, beyond actually
>> adding this to every recipe in our layer?
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

