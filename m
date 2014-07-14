Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1949E006DB; Mon, 14 Jul 2014 12:58:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oa0-f53.google.com (mail-oa0-f53.google.com
	[209.85.219.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B14BE00524
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 12:58:22 -0700 (PDT)
Received: by mail-oa0-f53.google.com with SMTP id j17so2038336oag.12
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 12:58:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=v1E4i7AMUXjK/iSvhCcByhkwpE/JTcujvH/8BWd37Mo=;
	b=Sa7HSTD5NrwOUTkAw40ZBcYFwj9CJnTMkq0ppTWjzmiFeyEtR/JfUBIC8BFGsHNc65
	bHmD06MIayYthKVORc8SY+WDwyJPv+FxGqlmN3Rde5NH/ouHyqWp9nCnKcm3Cd7EqIbt
	iR+hfWssgSA2JcXCie+EIug54+5Zvk9U9xHyxUid8IGLewWF3I7kVy+UPNk7rBGZkznq
	J4dyO6P8gCbgOPz2y8vh13H5y8+5c9hCBGqrBZ6Umcn6A2ZQtDA9iv9WysTTYffFR5Mk
	ba2cZ2xEqBLORy2pVaHQ62d8ceDGtc9R33rlO7cj7ClpElwikhRggaYy1I35/eAdclSH
	FVCg==
X-Gm-Message-State: ALoCoQlOFKq6Hd3os8TJRvEJuRdqGGkOCJhiew4hzR58nq/E2IGQ+P9osH+4hSJdD1gZ8yOkIL90
X-Received: by 10.60.70.106 with SMTP id l10mr20222988oeu.54.1405367901548;
	Mon, 14 Jul 2014 12:58:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Mon, 14 Jul 2014 12:58:01 -0700 (PDT)
In-Reply-To: <CAP3RZojBxGbedn=dCOthj=08A73xMtF1Wceq+-TA=vtxMDLPrQ@mail.gmail.com>
References: <CAP3RZojBxGbedn=dCOthj=08A73xMtF1Wceq+-TA=vtxMDLPrQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 14 Jul 2014 21:58:01 +0200
Message-ID: <CAP71Wjxe9j3GdL2HiV84AftTMifaNVryK3nmRw0BMCWTdPpkjg@mail.gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Cc: meta-freescale@yoctoproject.org,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: pack kernel modules in file system
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
X-List-Received-Date: Mon, 14 Jul 2014 19:58:30 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jul 12, 2014 at 2:56 PM, jags gediya <jags.gediya@gmail.com> wrote:
> I am building yocto for imx6sl evolution kit. After built, all the
> images are available in tmp/deploy/images/imx6slevk
>
> but kernel modules are not available in /lib/modules/... directory of
> the file system.
> some other files are available in /lib/modules/.. like modules.dep
> etc. but kernel modules are not there. Instead modules-imx6slevk.tgz
> file is made with images.
> Is there any way to put these modules in the file system while built?
>

iirc, you need to add kernel-modules package to your image. this is
generally done as
MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
in your machine config file

