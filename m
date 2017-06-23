Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D57FE00B9D; Fri, 23 Jun 2017 15:57:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A600E00B1B
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 15:57:37 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id k67so82980029wrc.2
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 15:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YgmNXqfzh9dO8MDEHV6Rg4/JQuR1uLUrMsXPstRe1eU=;
	b=kjSVbJeSuwyf0zpuNze6xgb9Gie549sPJBg5+8IwsorEUOTeG5DH0rx2ztbC4b7U4l
	MYV7RVgcWW0h1GTqdFTSv1dBf5FWfMwgFOv1bxTF5awahRT7DhvEI7fuui/2DWrjSEAw
	qHEJG4ES+3Dseu/ZEJYoUH1T4iQsJRU+I6IsewBfS3XrWaZfnaiKvym18HQFYZzCPcFn
	Qx3uMvezu57FbvxvnJ6agInRRvY+ibx0OtUtZ2RK7rfeFoNB+36UFLKFvufOuMbZfJUb
	SmlNsOkFMaLZ5VKqs9GiaZwnCwLRTWfRr7VF++TexxO+DGV/ESjWMO3Skss4F2vkQhcp
	gz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YgmNXqfzh9dO8MDEHV6Rg4/JQuR1uLUrMsXPstRe1eU=;
	b=ahEm2WW+F+CnhZRHD7gdUh4uEGeOTNAJbDkAE7KGRnRxkrh/PMzA2aRABvSsB0ZIQD
	45AHptAqN3H9lKYrf+yrZMgJ4VMrNLK8zLFFobHWRVH0UB8QWLIJrs47Ju/6rdzH/Sfi
	nNz1m4xMcysCjf5mFGTuNn7WuVwM7qiCHSmOjZ4jNfE1qNbeRCVtxyX4EfORdO8eo7Z6
	R1g9MoLIHkBptvhh2/8vlQyjXmCg5ddJrKzJVLn8DgJz4LD2/pb+XJZcGLeSMNm/wMUG
	IzA6qBSv3+H2lj0AtP8bricmkiejXf50irpZ3lGysOgVm+QwMZxTTM6AY404Tyg3tj0u
	041A==
X-Gm-Message-State: AKS2vOynPzdHPkBhoLwDp/39raLbW6f4bENWLs7c71E6NvD+mYpjHbkl
	pr+fmI81kRyNO77t5M0+K7kzAzL2mg==
X-Received: by 10.80.140.204 with SMTP id r12mr7823490edr.123.1498258656819;
	Fri, 23 Jun 2017 15:57:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Fri, 23 Jun 2017 15:57:06 -0700 (PDT)
In-Reply-To: <CAHUNapRZG_qxTXd7JLNwp7918Y_Vasr8nS60EatyjP2QGhbZ-A@mail.gmail.com>
References: <CAHUNapRZG_qxTXd7JLNwp7918Y_Vasr8nS60EatyjP2QGhbZ-A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 23 Jun 2017 15:57:06 -0700
Message-ID: <CAMKF1sopiKLcmpD7pCn69mW0jhR0QFYWwNpBfztdQba5GJzwHw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using clang for one recipe
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
X-List-Received-Date: Fri, 23 Jun 2017 22:57:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 23, 2017 at 3:39 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> I want to have one recipe build with clang instead of gcc (gcc is
> being used for the rest of the image). I thought this was as simple as
> adding the following line to the recipe:
>
>     TOOLCHAIN = "clang"

yes thats what should do it.


>
> Adding that line, and adding meta-clang to bblayers.conf, did get the
> llvm/clang compiler built and installed to recipe-sysroot-native. But
> the moment it starts to build the package, it fails immediately with:
>
>     | fatal error: 'string' file not found
>     | #include <string>
>     |          ^~~~~~~~
>
> Did I miss a step? That seems like a pretty basic thing that would be
> needed for using a toolchain. If feels like I'm missing something;
> like I need to add something else to my local.conf. Thoughts?
> Suggestions?

which package is it ? it seems its missing proper -I paths.?

>
> I went looking for examples of recipes using clang and found
> meta-openembedded/meta-oe/recipes-support/tbb.bb which includes:
>
>     COMPILER ?= "gcc"
>     COMPILER_toolchain-clang = "clang"
>
> Odd. Why "COMPILER" and not "TOOLCHAIN" like meta-clang's README mentions?

this is tbb specific variable not clang or gcc specific.

>
> Best regards,
>     Trevor

