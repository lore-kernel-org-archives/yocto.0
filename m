Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09E3BE00C6B; Fri,  2 Oct 2015 14:29:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57C6BE0086D
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 14:29:50 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so49719666wic.1
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 14:29:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=acrx9/ctel0SupACvwI0qcb9PY7NVDXG145DgSrEO+U=;
	b=IldWVjLxNGgcXtcsRHDS1Yq3pYY6nUf9EOpIPvrqaZrosARR3eTdZJdXoQaAqZGRSh
	6Gb9mB3zXCRwcGBMlywZvAZ7Oj8Ex/UI9obvePde8rQ/umMllzTt2lPfLylqD1Oy1nA0
	M/FJhAxmTUH8jCkalTxrygcGRBvdN11YIuZsmXRDS9/+UFApr2/E5ESF9/XcjncSEYpF
	ddbbpP497wtbGW9ICbshWmz8JuHjRb2rFWc6BOXAESE/SOpSP6YsXeS0eiiOOKEW90gu
	ApC09eW1WcHDMhRmAhit6TO5i/FZQVgV8SzXqojHFogTQV45jBCsgGYINnoWlE+DzOzB
	xUiQ==
X-Gm-Message-State: ALoCoQn9YD2E9vQovAunsMIDXppVdeNS7qEf3HXO1Jm8IBY7oaaumVZidhmyf/he+qfb3dUB6F4H
X-Received: by 10.194.87.102 with SMTP id w6mr17976961wjz.111.1443821389965;
	Fri, 02 Oct 2015 14:29:49 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31]) by smtp.gmail.com with ESMTPSA id
	x9sm13164050wjf.44.2015.10.02.14.29.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Oct 2015 14:29:48 -0700 (PDT)
Date: Fri, 2 Oct 2015 23:29:46 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Tom Doehring <toolmmy@googlemail.com>
Message-ID: <20151002212946.GA11827@resin>
References: <1443360854-14668-1-git-send-email-toolmmy@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1443360854-14668-1-git-send-email-toolmmy@googlemail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] userland: Fix multiple inline issues while building with gcc 5.x
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
X-List-Received-Date: Fri, 02 Oct 2015 21:29:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Sep 27, 2015 at 03:34:14PM +0200, Tom Doehring wrote:
> Building userland source with gcc 5.x causes multiple issues such as:
> 
> vcos_thread.h:186:15: warning: inline function 'vcos_thread_get_affinity' declared but never defined
> |  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
> 
> The following patches fixes these issues and allows building userland on the current
> poky master branch.
> 
> Signed-off-by: Tom Doehring <toolmmy@googlemail.com>
> ---
>  .../userland/0001-Use-newer-POSIX-macro.patch      | 35 ----------------------
>  .../userland/0001-fix-gcc-5.x-inlines.patch        | 26 ++++++++++++++++
>  .../userland/userland/0002-fix-musl-build.patch    | 22 ++++++++++++++
>  .../0003-fix-alloc-size-uninitialized.patch        | 13 ++++++++
>  recipes-graphics/userland/userland_git.bb          | 13 +++++---
>  5 files changed, 70 insertions(+), 39 deletions(-)
>  delete mode 100644 recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
>  create mode 100644 recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
>  create mode 100644 recipes-graphics/userland/userland/0002-fix-musl-build.patch
>  create mode 100644 recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
> 

Tested on GCC 5.2.0 and worked fine. Merged to master. Thank you.

-- 
Andrei Gherzan

