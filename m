Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CEE6E00444
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 09:42:21 -0800 (PST)
Received: by mail-ie0-f177.google.com with SMTP id at1so6184888iec.8
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 09:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=9WpZUYLutRGoDRUwXlE5c9duYPp9RNYFCjWRJIMoGdQ=;
	b=rG7PHWL5z9u0Xrn8kxs6717WFbM6deUE1PDaIRu8M+7vjxcdbYqcTgVPyjFwkvF5h9
	8KNZwj9UCfEjdtpWcN+JgDhm/+Gy1aHu8qaA7uQNL9OkPEqXkOdPh8SigDVQBa6PR3nN
	yKmfmjhB4SAE+BL/T5Ko5f9zO4+vxfCpb8dMBlNB66QDBcDLRx2ezpWl5Ox0naxRE/Yf
	C5hZxqHJfOZh5fmEkpBX4OxRex+iakYqs6ycHZdg7Sa0NcPTNNTNS3/eqevIN682k70g
	SHJT0Mk/JuYaCJbzmcSSG0olV1w5mp/5oiGRzFTBwHJ8Snt/Sgo04kWVZvYe1rNUjvLc
	rryA==
X-Received: by 10.50.147.72 with SMTP id ti8mr13269838igb.20.1391449339801;
	Mon, 03 Feb 2014 09:42:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.8.137 with HTTP; Mon, 3 Feb 2014 09:41:49 -0800 (PST)
In-Reply-To: <52EFB87A.4070303@linaro.org>
References: <F7680723A1CA6840825A59020FA770640102E7D7@sdexmbx1srv.skidata.net>
	<5228382.mhMAFlqhoF@peggleto-mobl5.ger.corp.intel.com>
	<F7680723A1CA6840825A59020FA7706401032F77@sdexmbx1srv.skidata.net>
	<CAALGJZb_jfkTvfN9XT5Q=+jUB8j3b=d5HkigN9+cHWWSwi3C8g@mail.gmail.com>
	<52EFB87A.4070303@linaro.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 3 Feb 2014 09:41:49 -0800
Message-ID: <CAMKF1srV-dLNNmSMMvd3ufyZBdBL-mr14Eu56W0JRtGEqqmgNA@mail.gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV for BBLAYERS
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
X-List-Received-Date: Mon, 03 Feb 2014 17:42:22 -0000
Content-Type: text/plain; charset=UTF-8

> As pointed out above, angstrom has its own system. Other projects (e.g.
> gumstix[2] and fsl[3]) make use of "repo". Another option is "git
> submodules".
>
> Whether a mechanism like this would be, could be, or should be added to
> OE? That's a tough one. Personally I would lean towards "yes".

There already is a tool called combo-layer to create unified view by
combining layers
in OE-Core but its not one of above

 I think
> it would make OE much easier to use (especially for newcomers) if the
> combinations of layers and which commits to use from those layers were
> specified as part of a, say, DISTRO's metadata. On the other hand others
> would object simply because this is a not-uncommon git issue that is
> already solved by existing, external tools.

