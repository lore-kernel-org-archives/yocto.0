Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79C35E0113F; Thu, 14 Jun 2018 21:36:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.196 listed in list.dnswl.org]
Received: from mail-ot0-f196.google.com (mail-ot0-f196.google.com
	[74.125.82.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA17DE00DFE
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 21:36:51 -0700 (PDT)
Received: by mail-ot0-f196.google.com with SMTP id q17-v6so9647552otg.2
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 21:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7pejDaovlBFl41qtcYUszljFEqQZxiv3lvDZjlt4Wto=;
	b=dcCOjpnsSyTUNkFpw+X8vDtMeN8RjpXac85lf4s0GnwPmjLZlSDszx7S1LWmMKXVRZ
	FDVgQfG0iB+itivpLAUG98di166+zGemkYiXmCISJk7EvWOp4man4ObL0GcdMCfonQft
	8NpAsP7ek2vB4EMHkkOUE4G7hjHkiIyKW5bXPglHldvApUsMgnjraYE6zPffLbbMIpd0
	ZwUwKPBmFRDqdJbOP9sIq3iL/hJNXD7sEQbf5iHDaiytLqntAjgLOVgfLwROmxsEkRYM
	T2VrP2ShqVvklhpLKZTJfgKPLt3Q/7PRSHsudQLi+cMhK8Fw4TFUFS6ueQsTibcZl0QM
	NAXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7pejDaovlBFl41qtcYUszljFEqQZxiv3lvDZjlt4Wto=;
	b=oO/P/Y3t0mzT252OjCeaAWSd1E1pAB1ph4oeKuKAhQJMJ2K787FoMlA2JgQjXXp+X+
	wIN8Z01Y+vFTsQyxjHN0+6GbrsqLF2c0kSpAJRuVekv/lS4sSz55DyszPjSz4uncymLp
	zeLGpXr9jX0rp/m5uxjBSBj5bSahEtbikqbqw/Gjq2RFXOtrRj1ZknSLnZvjDfMJIlPZ
	onVfF+Jl4lnD6Wmy/68ZIQ84Bsd99RStYSi9ybsGqjs86d70r76ZrsxenYJBy+RKQPaP
	MlNLZfAIALNUfUPf6FHy4rQyqimcUJiRQuDyEfnjzUzJTEK/dCgglZn0NqMth9vukmB/
	nBXw==
X-Gm-Message-State: APt69E3qN5Ha1DtY9Rm2whSC0Pun2raTqKQXZUJ0MP3ke7pTM7wsnUH3
	aaWnl9+Htv6tHsELA68qHIvthlmLuMR74rasoDI=
X-Google-Smtp-Source: ADUXVKJvFP+OXUPPW1XctKrRw0nD17AVolv7WaVwby7tn81UqcU8/4J6DdZ+d+UBPOAVuAN8x4DaDulEHqBRFU3Yxc8=
X-Received: by 2002:a9d:1142:: with SMTP id p2-v6mr70126otp.110.1529037411428; 
	Thu, 14 Jun 2018 21:36:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90cd:0:0:0:0:0 with HTTP; Thu, 14 Jun 2018 21:36:50
	-0700 (PDT)
In-Reply-To: <3d30eca24f6f4709aa81cc5bf31c5850@XBOX02.axis.com>
References: <CALh9vaXCbqBe_49fi3OFs_Cj56s=J7Bvdv6f8BfWz9QMhmJQUw@mail.gmail.com>
	<CANNYZj9bbraOoEJChm2X7Ws1+h9+K86Kissdh2dWaPtr1PiOEw@mail.gmail.com>
	<3d30eca24f6f4709aa81cc5bf31c5850@XBOX02.axis.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 15 Jun 2018 07:36:50 +0300
Message-ID: <CANNYZj9HprmGYL3V_2me2q2s-K0A6Um+Z6LBN+hYw5X8cnr9pg@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	"Paul Eggleton \(paul.eggleton@linux.intel.com\)"
	<paul.eggleton@linux.intel.com>
Subject: Re: devtool finish & patch order
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
X-List-Received-Date: Fri, 15 Jun 2018 04:36:52 -0000
Content-Type: text/plain; charset="UTF-8"

2018-06-15 2:11 GMT+03:00 Peter Kjellerstedt <peter.kjellerstedt@axis.com>:
> * `devtool modify -w <some simple package>`
> * Modify some file, e.g., add some comment to the Makefile.
> * Commit it with subject "Change 1"
> * Repeat the two steps above two more times, increasing the number in
>   the subject each time.
> * `devtool finish <some simple package> <layer where the recipe is>`
> * Examine the updated recipe. In my case the patches were in the correct
>   order after this step:
>
> SRC_URI = "<original URI> \
>            file://0001-Change-1.patch \
>            file://0002-Change-2.patch \
>            file://0003-Change-3.patch \
>            "
>
> * Not to be discouraged, I started over (using the existing source dir):
> * `devtool modify -n <some simple package>`
> * `git rebase -i 'HEAD~3'` (in workspace/sources/<some simple package>)
> * Use "reword" on the last two commits and change their subject lines
>   to "Another change" and "Some third change".
> * `devtool finish <some simple package> <some other layer than where the recipe is>`
> * Now I ended up with the following in the new .bbappend file:
>
> SRC_URI += "file://0002-Another-change.patch file://0003-Some-third-change.patch file://0001-Change-1.patch"

Wait, what would be the correct thing for devtool to do here? The
original patches are already added to the recipe in the original
layer, so .bbappend
would have to first revert them and add newly modified ones? I don't
think devtool is that clever :) Does it add the patches correctly, if
you repeat
the first half of the sequence (adding new patches), but use devtool
finish to save changes to a diffferent layer?

Alex

