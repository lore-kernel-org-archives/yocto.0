Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91223E00C0E; Thu, 24 Sep 2015 16:39:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B9BE00B1E
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:39:10 -0700 (PDT)
Received: by qgt47 with SMTP id 47so57706585qgt.2
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:39:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=sByKJShh83duwpKr1UNRsIxUwlQAzjiKxWxoLRVsEgU=;
	b=fnJhDZ8IM8ViZWwO1t9QUM1I4FRLhWa8mHLz+HdbER/IIf0ZrU76W1sLVN0NEd/zWf
	nM02k7CkaEiHgDne96/Qs5DK407ivz0hy3NTx5SPRPv1QgUZZBCl3InHmmFjZlvBA8TC
	ckksnsOuHKxXF0DKjQQS4CfoY0EfPLMiJShaMUszw9Dm8HLUXaNQlntIlsWTbKS4lEmJ
	zEf7mLgYUw54GDqCOY1Xi3UZEeDTjurR1Wajf+N4HeN3FhLznCKt3zT54KA+00F09ssH
	T0moDRKGVRxGwh7KZC0VLaL8oiXWEC/4I3XQXcCJQL1Yp1cEsu3mtr61ESg11MiPz+Rg
	2BUA==
X-Gm-Message-State: ALoCoQlD4j+78MqcsTtjh/KZRtdY/GjejJVVUl4TEWKRdCw/n3p4N+Mr/IX7C4NJeQAbw8oHi17c
X-Received: by 10.140.134.211 with SMTP id 202mr3111805qhg.51.1443137949736;
	Thu, 24 Sep 2015 16:39:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.55 with HTTP; Thu, 24 Sep 2015 16:38:50 -0700 (PDT)
In-Reply-To: <C1A04CEA-EE1B-49E0-B675-4C319BA62244@curtisembedded.com>
References: <C1A04CEA-EE1B-49E0-B675-4C319BA62244@curtisembedded.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 24 Sep 2015 16:38:50 -0700
Message-ID: <CAP71WjxOAdOav6Mr-_THVURQ4BJOovBQP=KMsyprb=d5mSCxwQ@mail.gmail.com>
To: Allen Curtis <allen.curtis@curtisembedded.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: bbappend a "required" bb file
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
X-List-Received-Date: Thu, 24 Sep 2015 23:39:11 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 24, 2015 at 4:26 PM, Allen Curtis
<allen.curtis@curtisembedded.com> wrote:
> I am working with a BSP that has multiple image recipes.
>
> foo-hwbringup-image.bb
> foo-qt5demo-image.bb
>
> foo-qt5demo-image.bb contains "require foo-hwbringup-image.bb"
>
> However if I create foo-hwbringup-image.bbappend, it gets ignored.
>
> What are the rules with appending included recipes?


you can only append to a 'recipe' file, e.g. the .bb file.

If xyz.bb file includes/requires abc.bb, you recipe name still is xyz.
So you can use xyz.bbappend, but abc.bbappend won't be read/processed.

