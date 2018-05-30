Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CA63E00C88; Wed, 30 May 2018 13:22:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F157EE00C74
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 13:22:05 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id r66-v6so15475160qkr.7
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 13:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iskX20WRiwsGkHHU79ajRod9gNwt5gxdDaqGa2S93/I=;
	b=Ywly58dfF7yP3xEFIYdKvt97EiyMfA6ewQfmyE9/p58Wy2Z7YUC+jV/RtuKbn1ljhL
	5LGtttCWhUwSqTvFSzD3OCw7U9k1/T7X2+n4xkDeF7/5ns1u6KNh2Pl2WQ2PT6XCWzd+
	BEAArl51Rj6g5iAk1GoWhid2eXqcEclAnya/p+IeDtbfJ7KMh5Emuf9sorbyhEMbNwcK
	aXHDaJByuDYg56RUm0T3UbzYsOUdrmNeR2yfafQyrkzG5VerZdJdzO+dv7L5YqoByLct
	3el9swtTPPzEDHYaAjqjHQC+oRamwYVy71LcKSLljXLZj5VjgLjyoL+pFWEk6gNXUmAO
	6Uww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iskX20WRiwsGkHHU79ajRod9gNwt5gxdDaqGa2S93/I=;
	b=sBbLuz+6Ut7oolE4+zdiWI75LkXNeGlDRK1OGKBHT28aowXQGN4YV9CY8rkUNYw9ti
	XUlXlEd86ztezc9iDuimAQefwSoiZhLz2XdeR/qTdFY+CuYG7QVi1KVqkeWtjO4f2XI5
	az6t71IndjWydtGnSVA43BKU1xgLE1eSZ7a3ptJwr5LQO/CHxORGkFuQW8+E8e/KHjnm
	5nQTPqNOpn/6LdiVttnZMph0Kvw13gCfEGRkOx3mxzNuskpOFo0GMkg9/BmdtLi72nRW
	xxopn7o9D9z2z7tQYqsrEBFQuMovV6R6hfmH1Q92aT/B2w9JvdaWkbquWS23FhidyS5v
	UvEg==
X-Gm-Message-State: APt69E08NlELPaww7uHSkYD1TATd7A40hgEUgJljHyXikTORCbeWpZRh
	BsurN204ByTwi3zqdB3RDgVHry3OXYlvD41lJoY=
X-Google-Smtp-Source: ADUXVKKYn0HoX7Ovjv7xmGr2+OnihjbcINGlXMgcSmbyQv9kkKx/omAspCuI95wy/vWOETlsLkyvy6sStrlQsClukBQ=
X-Received: by 2002:a37:cbd3:: with SMTP id
	u80-v6mr3806124qkl.290.1527711724717; 
	Wed, 30 May 2018 13:22:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e486:0:0:0:0:0 with HTTP; Wed, 30 May 2018 13:21:34
	-0700 (PDT)
In-Reply-To: <59d0-5b0ebc00-1f-7cae7200@229552361>
References: <59d0-5b0ebc00-1f-7cae7200@229552361>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 May 2018 13:21:34 -0700
Message-ID: <CAMKF1spPOpiSrq0rJzK5LWWwhBmqQgmYFMgo3uddC2N1ED=ksg@mail.gmail.com>
To: "david@lapinbilly.eu" <david@lapinbilly.eu>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Rocko] conflicts with clang libraries
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
X-List-Received-Date: Wed, 30 May 2018 20:22:07 -0000
Content-Type: text/plain; charset="UTF-8"

are you using rocko branch of meta-clang as well ?

On Wed, May 30, 2018 at 7:57 AM, david@lapinbilly.eu
<david@lapinbilly.eu> wrote:
> hello
>
> With the help of yocto/rocko, I m writing recipes to build an image that should provide an opencl stack on top of "beignet".
>
> https://cgit.freedesktop.org/beignet/
>
> started from here:
> https://github.com/intel/intel-iot-refkit/tree/master/meta-refkit-computervision/recipes-opencl
>
>
> Thus this requires clang to build, I included the meta-layer, from
>
> https://github.com/kraj/meta-clang
>
> in the configuration.
>
>
> -->
>
> I am facing conflicts between clang c++ library and libunwind.
>
> ERROR: Multiple .bb files are due to be built which each provide libunwind:
>   /home/marec/poky/meta-clang/recipes-devtools/clang/libcxx_git.bb
>   /home/marec/poky/meta/recipes-support/libunwind/libunwind_1.2.bb
> A list of tasks depending on these providers is shown and may help explain where the dependency comes from.
> /home/marec/poky/meta/recipes-support/libunwind/libunwind_1.2.bb has unique dependees:
>   /home/marec/poky/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb:do_build
>   /home/marec/poky/meta/recipes-kernel/perf/perf.bb:do_prepare_recipe_sysroot
>   /home/marec/poky/meta/recipes-kernel/perf/perf.bb:do_build
>   /home/marec/poky/meta/recipes-kernel/perf/perf.bb:do_package
> /home/marec/poky/meta-clang/recipes-devtools/clang/libcxx_git.bb has unique dependees:
>   /home/marec/poky/meta-clang/recipes-devtools/clang/clang_git.bb:do_package
>   /home/marec/poky/meta-clang/recipes-devtools/clang/clang_git.bb:do_prepare_recipe_sysroot
>   /home/marec/poky/meta-msdk-stack/recipes-multimedia/beignet/beignet_1.3.2.bb:do_build
>   /home/marec/poky/meta-clang/recipes-devtools/clang/clang_git.bb:do_build
> It could be that one recipe provides something the other doesn't and should. The following provider and runtime provider differences may be helpful.
> /home/marec/poky/meta-clang/recipes-devtools/clang/libcxx_git.bb has unique provides:
>   libcxx
> /home/marec/poky/meta-clang/recipes-devtools/clang/libcxx_git.bb has unique rprovides:
>   libcxx
>   libcxx-dbg
>   libcxx-doc
>   libcxx-staticdev
>   libcxx-locale
>   libcxx-dev
>   ^libcxx-locale-.*
> /home/marec/poky/meta/recipes-support/libunwind/libunwind_1.2.bb has unique provides:
>
> /home/marec/poky/meta/recipes-support/libunwind/libunwind_1.2.bb has unique rprovides:
>   libunwind-doc
>   libunwind-dev
>   ^libunwind-locale-.*
>   libunwind-staticdev
>   libunwind-locale
>   libunwind-dbg
>
> <--
>
> I do not intend to use Clang as a primary or secondary tool-chain.
> - I already setup icc as secondary tool-chain -
>
> Any clue to solve this ?
>
> --
> David Marec
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

