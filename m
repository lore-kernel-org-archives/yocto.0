Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13AE9E00D26; Fri, 29 Mar 2019 03:23:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7FA1E00D20
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 03:23:54 -0700 (PDT)
Received: by mail-it1-f170.google.com with SMTP id f22so2965511ita.3
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 03:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Q/ZR2v+tk7t0pJOmV4IRZwOx6aH6A9iUr7sOn5k/VyI=;
	b=icfhUA0tXY2d6kddmoBo60zpguE+EliWqqvPbfK1WYPCCC24FpEpDhTpK4hVDOHYgt
	2X/JscJGSC4237ffds4/aRu+nTdBEWZ00p/TDzFnEcx//Ar25fGWpkV5kbAUOvcXw1JN
	TO1vYIF7kdPywMTTBe+uHBQy/h878J39AmFTVo8f7xKMN5LQrQVSQBp+3tb/PU8P2OVU
	8uu286ZRgbUXbiCTQWXvsuRLuTjBcyakvqBFtVoVQX84D9O9M0PD9mnuQaqQg+sMO44r
	GLNE9mdbW/g8Jp1ZA/e76Fu0ZQhHSDbqeFleYeV+PG6Z098d+jcCoucnKW0j3T/wti8/
	XMew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Q/ZR2v+tk7t0pJOmV4IRZwOx6aH6A9iUr7sOn5k/VyI=;
	b=ObjOKXwwskrttRcW483cVgTZ4IqBQdXsEprKMAkEAPOQdXXSP/mMsbMzwabKUh7hrd
	b30ajJ0QwG90JwGH8wpJxE56H2iRYvT6kH+E7tXM8jl8FGkCzqeUOHrIhQe157HGmMPC
	2qKDXC0KYKzpPApUPcY2QfSiYITx0tbqcpuwNZLmAGvTt5EDuL5aWh22TYeGw1vYYJLY
	PwuDyWf9DUg4xJq8wJJBcZN9qYJLa6JjwUmtmVjukeMNn8gJJpFgB0Xkfw60M6tLmx77
	1VoGj1+pOXC7JKPFAkBUisEHE7pfnZF0IHXOD4V+enjoabaKzxuOyj0oGsQ3zpXHdDs8
	iExQ==
X-Gm-Message-State: APjAAAWRoJ+Pt017JoDxAFXk+F11bM24AUMS0WoCmqFgF5m4p72TYmZ0
	RUCiFxOq6prirYuV+4tie7Zxla6SI+0mit3uYe0OiD3pZ64=
X-Google-Smtp-Source: APXvYqx6pLADD2PiGxkgEte3ENARCZL5aMVizEU+nm5loYZZcy1FvXC7UVpuDKjWrbuFKuvtyLv6j642lHAczQxdDKU=
X-Received: by 2002:a24:ad2:: with SMTP id 201mr3565591itw.26.1553855034234;
	Fri, 29 Mar 2019 03:23:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAFvQSYSDbe5YEEvFG+sF8enGzG+AsGoms6TYe_DCv-snZiqRYw@mail.gmail.com>
	<CAJTo0LaromaqsWigi1skaoD5gRQp6JdPXg1WUBV=i8LRq2PHRQ@mail.gmail.com>
	<CAFvQSYTY4cFD9QbC6R3JHAqtc_7r9X_NAj8zb8mGA1iu_9A3EQ@mail.gmail.com>
	<CAJTo0LYgeMSNG1R3qmNbccNH12ObATgJP-A-L-BzZ0E6Hw+mPA@mail.gmail.com>
	<CAFvQSYRMG5VHoCbbZ6fHuRjT+Mae22XsERJCKgfNigX_eWu74w@mail.gmail.com>
In-Reply-To: <CAFvQSYRMG5VHoCbbZ6fHuRjT+Mae22XsERJCKgfNigX_eWu74w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Mar 2019 10:23:41 +0000
Message-ID: <CAJTo0LZB0siaFty7_K1J3b1JS8uG5JOwow=12fzuL0qSovuwtw@mail.gmail.com>
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
X-List-Received-Date: Fri, 29 Mar 2019 10:23:56 -0000
Content-Type: text/plain; charset="UTF-8"

All I can say is stop digging around random paths and actually ask the
system the questions you need answers to.

- Does my recipe depend on luajit.
Check that you have DEPENDS=luajit.

- What files does luajit ship.
$ oe-pkgdata-util list-pkg-files -p luajit
Does that include a /usr/lib/pkgconfig/luajit.pc?

Ross

On Fri, 29 Mar 2019 at 00:55, Clemens Eisserer <linuxhippy@gmail.com> wrote:
>
> Hello Burton,
>
> > Check what luajit is shipping and compare that to what the pkgconfig
> > is looking for.  Calling pkgconfig directly in your recipe's devshell
> > is useful for this.
>
> Thanks for the hint regarding the devshell.
>
> Indeed, pkgconfig can not find luajit in the devshell - the path
> specified as PKG_CONFIG_PATH is:
> build/tmp-angstrom-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/xpcompiler/0.1-r0/recipe-sysroot/usr/lib/pkgconfig
> - however the folder pkgconfig does not even exist in there.
>
> Inside work/armv7.../ there is also a luajit directory, and there I
> was able to find the pc-file:
> /2.0.5-r0/sysroot-destdir/usr/lib/pkgconfig/luajit.pc
>
> So i wonder, are there some extra steps required to make the luajit
> sysroot-destdir visible to luajit's recipe-sysroot?
>
> Thanks & br, Clemens

