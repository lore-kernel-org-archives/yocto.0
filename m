Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25734E00522; Sat, 28 Feb 2015 16:11:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  3.1 FSL_HELO_FAKE FSL_HELO_FAKE
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 780B6E0043B
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 16:11:56 -0800 (PST)
Received: by lamq1 with SMTP id q1so858637lam.9
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 16:11:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=6hHoRbniE9dq+7qXjn9jZZEl2i6NAXqoNyBFz7FJ0JQ=;
	b=gRwSMxRvvs1KfxZGKgVbg+8Ny8CkjSWeRQ23dLv5m+bGn9XHJWBcL/+0UbipYjtWln
	gK1V59DxIouWIAB/BgdAnRdwxJizsMlCmRQI4EI2BOcnkzHH2NUVbdthe0lCbzCjUiAa
	5Dgk2AqKltdSj6+LhR6BcvENIy5XvLN0+JI5ZrxQz8YxtOt3BAravZF4dMhTuGtoKdv1
	ibOuGrSuIrQpkRsKKDQ7ucvT5CzzlTKL4ggigQDKhGdqsvBjwjefwb0s27mRMN3jiXkN
	ZP+Ql7+1lJ6gnTURdsKvxDq4M/ZDosB/kN1Gi6G5UER6D2cCNgC6xMa3uzprnV3QNW96
	vLsg==
X-Gm-Message-State: ALoCoQkaFgGtnW9HRHXPrXPq77HuwFrMKAk4mPkCJjjU5meCn5Zb4L3w2+9mOFUNpw9bAAku2MXx
X-Received: by 10.152.246.41 with SMTP id xt9mr12529419lac.110.1425168714333; 
	Sat, 28 Feb 2015 16:11:54 -0800 (PST)
Received: from gmail.com (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id jv9sm1711297lab.4.2015.02.28.16.11.53
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 28 Feb 2015 16:11:53 -0800 (PST)
Date: Sun, 1 Mar 2015 01:11:50 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20150301001150.GB22308@gmail.com>
References: <1423686898-23144-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1423686898-23144-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [meta-raspberrypi][PATCH 1/3] userland: Fix build for armv7
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
X-List-Received-Date: Sun, 01 Mar 2015 00:11:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 11, 2015 at 09:34:56PM +0100, Andrei Gherzan wrote:
> [Bug #49]
>
> Change-Id: I340b4134ae4227f315c1c3df1345b04ebd4b874b
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/raspberrypi2.conf            | 5 -----
>  recipes-graphics/userland/userland_git.bb | 1 +
>  2 files changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
> index 778f5a6..30edae3 100644
> --- a/conf/machine/raspberrypi2.conf
> +++ b/conf/machine/raspberrypi2.conf
> @@ -2,11 +2,6 @@
>  #@NAME: RaspberryPi 2 Development Board
>  #@DESCRIPTION: Machine configuration for the RaspberryPi 2
>
> -# userland is not compiling on RPI 2
> -# https://github.com/raspberrypi/userland/issues/214
> -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
> -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
> -
>  DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
>
>  require conf/machine/include/tune-cortexa7.inc
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 77c98d7..ddca36e 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -22,6 +22,7 @@ S = "${WORKDIR}/git"
>  inherit cmake
>
>  EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
> +CFLAGS_append = " -fPIC"
>
>  # The compiled binaries don't provide sonames.
>  SOLIBS = "${SOLIBSDEV}"
> --
> 2.1.0
>

Merged to master along with the entire series.

--
Andrei Gherzan

