Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D607E00C64; Tue,  1 Mar 2016 06:21:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C24AE00C1D
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 06:21:38 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id p65so37528054wmp.1
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 06:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YXXHp1ItDmi/sfitLu+f+BUCbvX1hy+c19uV/My6ZR4=;
	b=qgsoL/6NkHmOd7vwo5UbyBI1F1L4OFi77rsq4sbJvXDY82wMcKnYQkBnGhU1QfphcL
	IwX7aJNVzGY3IYGJOW0E0ECXyajbUUtedGuJ652FQpb/T2/ad9YFIpO981DVpaMtC1Ck
	XClC3pi1rYIY3ovklcxMcW0QA7PmYYmvZkf1lnppPC5ufBp8GkX83CzxbrTtz/ZknIXF
	djZVIiMgaIfaGea64Jjh92aCufxfxShKocgkxaYshTrlQaiuNx3BQZu8Uukq2M351Veh
	clQbJCGXZPKKDdSPQ0G3cjYglvVheoWqVDK8MRJk7mKV2ARQyQu2zPRFriNX9/cbpXoG
	bXqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YXXHp1ItDmi/sfitLu+f+BUCbvX1hy+c19uV/My6ZR4=;
	b=KKdGZpmEOyGfTs6t5ssYwtiki6Z2qUhru2otHvO7IRjCG7XR7BazFnsYKNs+PDt8OT
	QH4kNdQYuXYO9ZMmKDjmYc6qWHQfAk/dOD5EDvZ+A0Ph6JH0zg4nbOfpyQx1XkghuBfi
	q4WFRAgbfQpYKxNh3KCJO2NyYewwekYmdDz41xicnatziCafBg7JwI5c3yXobPW2YnIj
	7Izgd+PYwmvzvAk/sKVqg2B6GErE4/CiedDFh4xiSRLRACGkrmWjejDT6kh6uHZZNVu9
	PUFmi+mUYwx5e8kC4BAYnIKw1kBpJOB17+ntay1LCQxomiIJ7/p7WoTnXy2U2Bex81lp
	LRfg==
X-Gm-Message-State: AD7BkJLP8TznucjOc0XAY2eHCLl7or0etdf7+hNSFphqv80m8A4Rt8kwhYh4xC3Pn7MI5A==
X-Received: by 10.28.45.14 with SMTP id t14mr3789225wmt.31.1456842098099;
	Tue, 01 Mar 2016 06:21:38 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	g3sm31274639wjw.31.2016.03.01.06.21.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 06:21:37 -0800 (PST)
Date: Tue, 1 Mar 2016 15:21:35 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160301142135.GE21641@resin.home>
References: <1456840719-14318-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1456840719-14318-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 1/3] rpi-mkimage: install to bindir instead of libexecdir
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
X-List-Received-Date: Tue, 01 Mar 2016 14:21:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 02, 2016 at 12:58:37AM +1100, Jonathan Liu wrote:
> On fido and earlier branches, ${libexecdir} depends on ${BPN} so it
> is not a good choice as ${libexecdir} is different depending on the
> recipe name.
>
> For example, rpi-mkimage would install mkknlimg to:
>   [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage
> but linux-raspberrypi would look for mkknlimg in the path:
>   [...]/sysroots/x86_64-linux/usr/lib/linux-raspberrypi
>
> To resolve this, we use ${bindir} instead as it doesn't depend on
> ${BPN} in fido and earlier branches as well as in the master branch.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
> index 7dea43d..cce91d7 100644
> --- a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
> +++ b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
> @@ -15,8 +15,8 @@ SRC_URI = " \
>  S = "${WORKDIR}/git"
>
>  do_install () {
> -    install -d ${D}${libexecdir}
> -    install -t ${D}${libexecdir} mkimage/*
> +    install -d ${D}${bindir}
> +    install -t ${D}${bindir} mkimage/*
>  }
>
>  BBCLASSEXTEND = "native"

Tested on default build and merged to master (all 3 patches). Thanks.

--
Andrei Gherzan

