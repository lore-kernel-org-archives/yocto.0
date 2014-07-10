Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC403E0059F; Thu, 10 Jul 2014 07:23:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.42 listed in list.dnswl.org]
Received: from mail-oa0-f42.google.com (mail-oa0-f42.google.com
	[209.85.219.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D27BE00571
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:23:28 -0700 (PDT)
Received: by mail-oa0-f42.google.com with SMTP id n16so2166687oag.1
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:23:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=rkzcqc+Vq8Ig1h0OaDO9IfI0Linx7w5JN2Gf8nJ/XDA=;
	b=jMHyDz4acMBlvFMpQQ0+6Fiibe9juHljxoINhzxl16PgSFiA89FzSayutHBxKGPgtY
	5Xtpv2f6iqv18qY8r7k8pL0jhGj/1wlE2Uho290rFb4cdiSpLAJ3lcZ5kNVrlEqaVYuH
	W0N6uZwXhE6mziEYaw0K41PUJVd3EbJ+5ywFaevoiSvvVg/MPo4Itaw7Qjc94xTScWBt
	z/UGvsAZIfjweV2bOo+UDXEJUPD8mJI68YoLdOItZn/U+Gghg23yB4T6JavaLiFEEBPL
	HXAHeO8Icg0GA6IQvsvO6fG5tF8Qxo7h0BRHm3lk9HbB8BB6hS/7WwLe0i6tAJuwPSMW
	KWNA==
X-Gm-Message-State: ALoCoQkn9Z8L+gvCdx7s1oitqB50FzcKxg6knEYEikjwlDRi/TRWO2trhpyKxzHUL/hVwNEcac6w
X-Received: by 10.60.70.106 with SMTP id l10mr15298139oeu.54.1405002207436;
	Thu, 10 Jul 2014 07:23:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Thu, 10 Jul 2014 07:23:07 -0700 (PDT)
In-Reply-To: <CAO-21LM=ucVNUPAwDgXA5FkB0dsi=ASQrgTSAaq+fFRhhkWaRA@mail.gmail.com>
References: <CAO-21LPnS-BJyZw-SEiSveK5sP=sZaDnMRd9PHVVe5WG6NQG_A@mail.gmail.com>
	<CAP71Wjw6FZ94P3c8jT+sqgqwKvvjF6ko6PGM9AP3Mo4NTpxQRg@mail.gmail.com>
	<CAO-21LM7hApyatcYRqxgw9qAcG1zreQWnYjtUYabJfOfRfMM3A@mail.gmail.com>
	<CAP71WjyovtW_yj4ckYXbAFKEc6FtiKwG1uOa9fKbvcmrtuGAeQ@mail.gmail.com>
	<CAO-21LM=ucVNUPAwDgXA5FkB0dsi=ASQrgTSAaq+fFRhhkWaRA@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 10 Jul 2014 16:23:07 +0200
Message-ID: <CAP71WjzVbmYO9ULE-aVq8mQooLUH9BSPVzsZy-bm79eCKKD=rA@mail.gmail.com>
To: "Allen Kennedy Jr." <allen@kennedystuff.com>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Environment Variables being unset by bitbake?
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
X-List-Received-Date: Thu, 10 Jul 2014 14:23:36 -0000
Content-Type: text/plain; charset=UTF-8

+list. please let's discuss on the list.

On Thu, Jul 10, 2014 at 4:01 PM, Allen Kennedy Jr.
<allen@kennedystuff.com> wrote:
> That did it.  thanks.
>
> Is there is no way to add this to the layer?  Must I distrubute my layer
> with instructions to set BB_ENV_EXTRAWHITE variable before running bitbake?
> I would think there would be someway to make it easy for the user?

well, i don't think so. at this point, i think you need to think about
why you need that in the first place... i have not done any JAVA + OE
stuff, so i cannot really comment on that... but explicitly
contaminating your build environment with host 'stuff' sounds wrong to
me.

