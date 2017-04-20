Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D759AE0092B; Thu, 20 Apr 2017 09:48:33 -0700 (PDT)
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
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 174E4E0083C
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 09:48:32 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id m123so42837386wma.0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 09:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6wn428UkLj56HXBFxPlaxp6zALhW/O5hcVlBXjEOGAo=;
	b=kjzDeibVfsVfxCholn8vhrTMH8ZOf3S+sFh5evzBQX8A1MWx+cp8bf/PKX6NE35C3d
	eaLONxV/7rlRmF92vvT+u0U0jocR6/gj9/is90a5orTrQw6+olH37VG+YEPtUM8FxSHj
	ac6ZYG6o+y2s/TaLSuRd9voIicj3Zgeg9yQdrhgUG4h7XVE+BtemfylombQa4EwKt4da
	KAoPEzXD5zpcH6TB84vAMKtZeddHj7ftap6vl6l9v+mwKI7djARXmXsKcORgXE5qdJXG
	8SnX9wXK3JNFuxUTtVsRmp1vsQHcDse0ng7+rWbFr8lwBTghi0TSjIJHP3AgN0O1RjiL
	A35Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6wn428UkLj56HXBFxPlaxp6zALhW/O5hcVlBXjEOGAo=;
	b=Ud6Gj3L+feXy0KNM6NT2iXVKe4/modxZ3ji1ZFuCEav5BUUbg5wuis2i0KStURz8zU
	0wFIunE2d5TB03h5VRuSWf0NBOUjLlQ937EZHB7W3ha9EgnryVmorXqFrGIJXqwKvoM1
	LgROePh07zmiXz2thCkMRKJA4fACsN2O93qwHGMituQiWuPlQq+Gh64O4+v5fu3BrOEd
	0mI57Jhl6uaPL+cdK0kSw2llOYXgJQE943H/d876LwnHZznz+BNR4UcCgNqokhep9RPh
	z1DgdW/wP5h1KnwnVctVSWB6EkKIr25KBkggi5dxa6pt/PaeZzwE9ZatnCU/3XZnEkKv
	jS3A==
X-Gm-Message-State: AN3rC/5DN15bTezB55kWFKleqt0m22zx98fWoLd1OEym2hjwufU5dDNd
	J6onba8l0nS9fZ0abuVfezQpQLkyJw==
X-Received: by 10.28.206.195 with SMTP id e186mr3864735wmg.37.1492706911621;
	Thu, 20 Apr 2017 09:48:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Thu, 20 Apr 2017 09:48:01 -0700 (PDT)
In-Reply-To: <20170420072609.GB25443@linux-uys3>
References: <20170420072609.GB25443@linux-uys3>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Apr 2017 09:48:01 -0700
Message-ID: <CAMKF1sqn7xy=xvO0PNmFmwJj7r588mDaWtAAGuJC_Ab2mzbfSQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: overzealous packagedata
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
X-List-Received-Date: Thu, 20 Apr 2017 16:48:33 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 20, 2017 at 12:26 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> I'm trying to build a certain combination of software for a given SoC. mesa
> (meta-gl, specifically) provides a libgbm, but if you don't want to use mesa's
> libgbm you can disable it with a PACKAGECONFIG. I.e.
>
>         PACKAGECONFIG_remove_pn-mesa-gl = "gbm"
>
> It works, and looking at the packages-split I can verify that nothing gets
> installed for either mesa's libgbm nor libgbm-dev.
>
> This particular SoC's BSP, however, provides an SoC-specific libgbm that
> should be used in place of mesa's. This is easy, set the PREFERRED_PROVIDER,
> tell mesa you don't want its gbm and everything is good, right?
>
> :-(
>
> The build fails because the *packagedata* from both mesa-gl and this SoC's
> specific libgbm collide. The packagedata, I guess, states what *might* be
> installed. So since both packages might install /usr/lib/libgbm, the build
> freaks out:
>
>         ERROR: mesa-gl-2_17.0.2-r0 do_packagedata_setscene: The recipe mesa-gl is trying to install files into a shared area when those files already exist. Those files and their manifest location are:
>           /z/build-master/bbb/build/tmp-glibc/pkgdata/beaglebone/runtime/libgbm-dev
>             (matched in manifest-beaglebone-libgbm.packagedata)
>           /z/build-master/bbb/build/tmp-glibc/pkgdata/beaglebone/runtime/libgbm
>             (matched in manifest-beaglebone-libgbm.packagedata)
>         Please verify which recipe should provide the above files.
>

mesa-gl is a separate recipe, if its providing more than gbm and that
extra stuff is needed too in your package thats when you might run
into these kind of issues. I would suggest to divide mesa-gl further
into more granular recipes.


> This is very annoying because, even if hell froze over and somehow both libgbm
> and mesa-gl installed both of their libgbm packages, there would actually only
> be one provider since mesa-gl's libgbm package is, in fact, empty.
>
> Is there a way to get this to work? I can't not build mesa-gl, because I need
> some of its parts (virtual/mesa, virtual/libgl) and I can't not use the SoC's
> libgbm because (I'm guessing) that's what I'm supposed to use.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

