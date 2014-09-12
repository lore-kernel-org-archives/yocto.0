Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CB3BE00799; Fri, 12 Sep 2014 13:07:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAF81E006DB
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 13:07:46 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id q108so1330394qgd.40
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 13:07:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3k/t3/ldjxWe6rcFELR6eqSzYe9RwqbYtT/wQbPucWA=;
	b=P1a7fma0xqxGBjiC6Tv9XKw+Dpl+z5mZu3T+uuwuxVslwH326t7eizfB3XiU/TwrTi
	rQutQPPlX0eWi6zrp0qjcsrhD864P4B1sjKsSbxypFRTlQu1iX/cs7QM//dm7qD91tiO
	hg1iSzzRh0iscD4ZVeAOz4dqotCC5iSn7aSEI7ZogBKCuL28nHy8+JHN3e4pf1zFQgHs
	EU1jyWTvU/cO1+wDDHMpN4UMfmKxEiw+6mTqavw8v/CCF4gh6cEk9Crb93L6863kFm+e
	QtHKm0u5lvhH7op2h7dUQaT6rCCojeHiiS4b9NdDs7v+EbUOaaNWzGebpBlOH6CceSNe
	CC7w==
X-Gm-Message-State: ALoCoQldieI6ypK0KFrUKidiqjH8SRwYhdEKnCOEk0KYSneGiPob4n5B3tN5Gr5OauQA9g1ySVJJ
X-Received: by 10.140.94.234 with SMTP id g97mr16197365qge.77.1410552464727;
	Fri, 12 Sep 2014 13:07:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Fri, 12 Sep 2014 13:07:24 -0700 (PDT)
In-Reply-To: <54134C92.3080208@gmail.com>
References: <54134C92.3080208@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Sep 2014 21:07:24 +0100
Message-ID: <CAJTo0LZi1rLbkDYbYTYSFz6h9i_SXA8BP2Vxpv7vkgQbSgUT3A@mail.gmail.com>
To: Arun Kumar <arunkr.linux@gmail.com>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: Basic build fails
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
X-List-Received-Date: Fri, 12 Sep 2014 20:07:54 -0000
Content-Type: text/plain; charset=UTF-8

On 12 September 2014 20:42, Arun Kumar <arunkr.linux@gmail.com> wrote:
> Hi all,
>
>     I am new to the yocto project and was following the steps given in the quick start guide. I made a slight change as given in the superuser section.
>
> I used the "fetchall" option to get all the packages first and then started the build, now when i use this command
>
> "bitbake -k core-image-sato" i get the following error
>
> /------------------------------------------------------------------------------------
> ERROR: Task 595 (/home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2729 tasks of which 1784 didn't need to be rerun and 1 failed.
> No currently running tasks (2729 of 5634)
>
> Summary: 1 task failed:
>   /home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> /------------------------------------------------------------------------------------
>
> any idea or hint where i might be going wrong?

You've trimmed the output at just the place where it was telling you
what went wrong.  Re-run bitbake gcc-cross, and paste the output of
that.

Ross

