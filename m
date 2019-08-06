Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05317E00D77; Tue,  6 Aug 2019 15:06:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEE26E00C9B
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 15:06:49 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id p17so89329815wrf.11
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 15:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=X7jLryLMtgPCgBR3wLjhuMy5peMr3i/yPg4tMjrwHWI=;
	b=bTvToGwa9FgU6wT7es4y9l3n8OFwq8zssHNqmvQxayuDfFumpdyEwD5sdvehK/COFv
	ivT75gRE0zwCAzSeIEY4U4zA/jXneopFwnZj7NqTbDTbJkuM7ADhKheok52laTtVYjCa
	JfxfUCIXfoGh3Rd7165t/S8bDJdXhoL2gg3z0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=X7jLryLMtgPCgBR3wLjhuMy5peMr3i/yPg4tMjrwHWI=;
	b=Hiqczc+hc9pi/Badk82+KcD7T+jOcCc0I5TEgGSgTccDjB/QvjujznDVJqAn2fvcE8
	F4XOpMEpy+SUXpTok5Eb/12rirPKPd/Lgy9R6H4q+xhivIAjxPvXlSEAQBR4mdUTxdEN
	5GPAVfFmhSdQiYunLr7/7oCy7hPgbDtPlrOwDr3TT4UiNf57DLeYaLNQ0LUDPBQ15FoD
	w9Tls1j/Qw4KEhu4Ea0qXXS0JfLSnYj5CAuJJizLdyjvNergfxY+RnlnIAXaL81kRnqZ
	H6EYd5JVA3RLAxzVcQuvlaS/HaKPp/uFmOWYfyXWUBawsIDIoa+jgRt8XGI2qAcF9EGe
	27pg==
X-Gm-Message-State: APjAAAWvolhGyrnBzJVC97lr7w21IZEcV4tAu8p9TkX2GRlbHIFcLWaX
	TvgYQyrMNFhJlILzRfKY/NWWCg==
X-Google-Smtp-Source: APXvYqy8pRYRRe4MoG5QMqAlaaMdSwTMt+hs4BfCsMbxF+IJe4sT74KkYa/eWW8vGMbCehqdXdCCgQ==
X-Received: by 2002:a5d:5386:: with SMTP id d6mr6655508wrv.207.1565129208924; 
	Tue, 06 Aug 2019 15:06:48 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	e3sm110113815wrs.37.2019.08.06.15.06.48
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 06 Aug 2019 15:06:48 -0700 (PDT)
Message-ID: <9b48f7baf468c9627a799282dbeb7651e5510c8e.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Koeller, Thomas" <Thomas.Koeller@baslerweb.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 06 Aug 2019 23:06:47 +0100
In-Reply-To: <1565100281929.57461@baslerweb.com>
References: <1565100281929.57461@baslerweb.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: -staticdev packages not in sdk
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
X-List-Received-Date: Tue, 06 Aug 2019 22:06:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-08-06 at 14:04 +0000, Koeller, Thomas wrote:
> browsing the list archives I came across an older thread that exactly
> describes the problem I am currently struggling with:
> 
> https://lists.yoctoproject.org/pipermail/yocto/2018-February/039950.html
> 
> In short, I have a recipe that produces only a couple of header files
> and a single static library, nothing to be installed on the target.
> So the base package is empty, which is why I have 'ALLOW_EMPTY_${PN}
> = "1"' in its recipe. In my image definition I have
> 'SDKIMAGE_FEATURES_append = " staticdev-pkgs"', so I expect the
> -staticdev package to be included when generating the SDK. This is,
> however, not the case. While a large number of -staticdev packages
> from different recipes is now included in the SDK, only the -dev
> package is included for my recipe, not the -staticdev (though the
> corresponding rpm is actually built and contains the library as
> expected, it just is not installed).
> 
> The archived mail thread referenced above suggests adding the base
> package ${PN} to IMAGE_INSTALL, which indeed does work for me.
> However, I do not understand why this is necessary at all, as my
> package is already referenced from another recipe by being listed in
> that recipe's DEPENDS variable, shouldn't that be enough?

DEPENDS means its a *build* time dependency. Since nothing links to it
there is no runtime dependency generated and this empty package you've
created is never installed into the image.

If its not installed into the image, the SDK for that image won't have
the corresponding -dev package.

If you add an RDEPENDS on the empty package to something in the image,
you'll probably find the -dev package then is installed.

>  Also, the -dev package gets installed into the SDK even without such
> cruft. As far as I can see, identical logic is applied to both -dev
> and -staticdev packages, so what is the difference?
> 
> I also found a different workaround for the problem: listing the
> -staticdev package in TOOLCHAIN_TARGET_TASK. Needless to say, this
> workaround is just as undesirable as the former one.

Cheers,

Richard


