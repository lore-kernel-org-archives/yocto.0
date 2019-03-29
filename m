Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3643BE00D20; Thu, 28 Mar 2019 17:19:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF50DE00D16
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 17:19:38 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id u65so1186399itc.2
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 17:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7FEjYcH/aqFk9RNpyfm4rZFc8jYwalcqt4lP4NeESC0=;
	b=TD/Kdw54LpVhUbjTTLuITp96Ns5VFd7yaLf7VtJf5Vzj/CAMwxgHZptbUoI5FVhRbb
	xxBpPKAatFaX9uSamzLjgtKIBrYUGmP8yeA7/rvIibvxIc5IbGYgReUVW62PIJWh5bVz
	Hn7b4FnZi0QOESh+sTx5VlFz3KhKwwhOvQ5Rjakk0cr00EeQQuD4+ATiNk1M3+qXX2fX
	llspNXnVrF5soCy+4xR82CBWdmYZ4BUsyWn2spshsanAFvJTAV8Xb0ECfMdgY13fYuC8
	jM4p7NS4BsfiSdUmxumZT6ROZmehFeDhwrpWTxvELKO5/1DAGRmYgZGeu2OCQmAQJlsR
	Mv/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7FEjYcH/aqFk9RNpyfm4rZFc8jYwalcqt4lP4NeESC0=;
	b=mnfznEU7UlHvsWomoxQGwnlFD7ttaMQev4DA4wQCYcx+ZxJVw7zfmsz1iGrrPoKKsz
	Tpa7KPdvT6XjPRvfbqMR5S16AO7rhW5f7qHMm3FwG2hIDzLuSYvYlt5Pyro4P5tNqT+h
	j10ejfyJSFbEqEUR7xGwR28soEsT5jf3uKgQbjC0fWWSV9+kitjDWtf22jHUpANsfyIv
	rKOpWzmc0SVNum5bA8wWAgLLvj3vjv+HFt3o+zYV4tXtzpwBD53t/M38P7mPSNHT1tSx
	NZP3Uu8xXAoTG7KyB+VNOVrHpAGXuhQyNczfatpRqzCzxp76Z5DJZ+JuzuJhfIK7pd+G
	sP4w==
X-Gm-Message-State: APjAAAVrWoyO2PFFoVJ/tCgqDsoYNHtYU7j2mKj4zPd+qnPx87esOwsf
	NWLY4pr1OAjhaEUW2uo6Xu9JBVrTZSekQE8+i1uO2Q==
X-Google-Smtp-Source: APXvYqxnrJPvr0Df+RKS9PVPT4Vue36kMMgNCyYvernYaT7hnmsSP28X63HINbxiLv+1nyDS0dQjfQzsTIQWKb1CPKc=
X-Received: by 2002:a02:7654:: with SMTP id z81mr34193881jab.79.1553818778210; 
	Thu, 28 Mar 2019 17:19:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAFvQSYSDbe5YEEvFG+sF8enGzG+AsGoms6TYe_DCv-snZiqRYw@mail.gmail.com>
	<CAJTo0LaromaqsWigi1skaoD5gRQp6JdPXg1WUBV=i8LRq2PHRQ@mail.gmail.com>
	<CAFvQSYTY4cFD9QbC6R3JHAqtc_7r9X_NAj8zb8mGA1iu_9A3EQ@mail.gmail.com>
In-Reply-To: <CAFvQSYTY4cFD9QbC6R3JHAqtc_7r9X_NAj8zb8mGA1iu_9A3EQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Mar 2019 00:19:27 +0000
Message-ID: <CAJTo0LYgeMSNG1R3qmNbccNH12ObATgJP-A-L-BzZ0E6Hw+mPA@mail.gmail.com>
To: Clemens Eisserer <linuxhippy@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: pkg-config does not find "luajit" since upgrade to sumo
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
X-List-Received-Date: Fri, 29 Mar 2019 00:19:39 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Mar 2019 at 00:06, Clemens Eisserer <linuxhippy@gmail.com> wrote:
> Hi Burton,
>
> > > RDEPENDS_${PN} = "luajit"
> > > inherit autotools pkgconfig
> >
> > Considering you're trying to use luajit at build time, it's probably
> > sensible to have it as a build dependency instead (DEPENDS).
>
> I've just tried it without success - it still fails stating luajit can
> not be found - despite the fact that "bitbake luajit" seems to work
> without any issues.
>
> I am not sure it makes a difference, I additionally use the
> meta-altera layer and I am running inside a debian chroot (in the same
> environment where the build with angstrom-v2016.06-yocto2 actually
> succeeds).
>
> Could it have something to do with pkg-config not beeing prefixed -
> like mentioned in the configure log?
>
> Best regard, Clemens
>
>  checking for arm-angstrom-linux-gnueabi-pkg-config... no
> | checking for pkg-config...
> /home/ce/yocto_xposure2019/build/tmp-angstrom-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/xpcompiler/0.1-r0/recipe-sysroot-native/usr/bin/pkg-config
> | configure: WARNING: using cross tools not prefixed with host triplet

Nope.

Check what luajit is shipping and compare that to what the pkgconfig
is looking for.  Calling pkgconfig directly in your recipe's devshell
is useful for this.

Not having luajit in DEPENDS *is* a bug though, having it in RDEPENDS
alone means you've been lucky with task scheduling before.

Ross

