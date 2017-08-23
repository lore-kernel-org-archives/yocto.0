Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A03A3E00CA6; Wed, 23 Aug 2017 11:51:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21690E00C97
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 11:51:28 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id 83so3578368pgb.3
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 11:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=6Hn56mWV5MlU8o71fBtXZn+1hMgeND+5eRejK4fs9Qs=;
	b=SvCJen+XyOXHYxwr9NoOCdGYIOZJZEjYXWOWiewlZxLjTk3jI8y03vjTuiolNnV777
	E+vaJWBx/Ey9mpJfr8UdY5jXI8oxEwoTGblH+O2klnFFSzoHCuo+HayiVkz+E0h5AoF7
	NPDAtcND4J36HYt5qPMvbVIfSCyYxyxXidggm5p3wnuB0eaKXjgcbHuyhFfH4lzFSvDi
	ueeJjM/Yam8jsqpd/Hk+zbe3rYXxWHvHpwbfAbify2AgfM09ZWPXdmXmujbg8XeWd0lY
	Y25fX5mJ0kAiJaOhYlULgGmv57Xa+oaqzEt2CYF9Y45NfdeZwUkQeaj3EJM5P3zeBMjP
	bQEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=6Hn56mWV5MlU8o71fBtXZn+1hMgeND+5eRejK4fs9Qs=;
	b=BLlAyLjQFTxj9OKXJoLRTdfbV7loVpXvcYuMD95W/D9YFe0ROKOzHHGLWW0q8XVFW+
	nLC89NmX+yFd/7IbStvQvbfaeQdKZOj2Sx7vfTmzT8P9kUi1lRsFZnWG16gpUShbo1sl
	qhZUAjbWglNJbyr66a6UxX7eaVXUOP1bFutfzFyjdIM5b+AB88FwuMdq7B/8gVNENqFY
	qjXl7Q/VEvn5B6kByfdjxFS9+EO37/DWPq7TtjBTfQ0FTTG6VWhqRNkqiEEDehoghbRH
	HQF6xL6f8nkiee2Oozm0Qnh/SWSYnxjAazsG/0UkjfqFQHwnQYt03pgls5Sa3nW24p9A
	kniw==
X-Gm-Message-State: AHYfb5iHyu18Zcc9u/2dMXPImWKKJB3yIIn2EOxCStlPX515zOHzTa63
	MDTeOZ1mHvSe+tWGUQ4=
X-Received: by 10.84.229.136 with SMTP id c8mr4181168plk.27.1503514288143;
	Wed, 23 Aug 2017 11:51:28 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:6cf9:1d5a:396a:8869:87e0?
	([2601:647:4c00:6cf9:1d5a:396a:8869:87e0])
	by smtp.gmail.com with ESMTPSA id n1sm4271339pfj.46.2017.08.23.11.51.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Aug 2017 11:51:27 -0700 (PDT)
To: Ferry Toth <ftoth@telfort.nl>, yocto@yoctoproject.org
References: <onj82v$64m$1@blaine.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <7b1dbafb-9cdb-c64b-aed7-37f6b26d8b50@gmail.com>
Date: Wed, 23 Aug 2017 11:51:26 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:56.0)
	Gecko/20100101 Thunderbird/56.0
MIME-Version: 1.0
In-Reply-To: <onj82v$64m$1@blaine.gmane.org>
Subject: Re: Problems building U-Boot for x86_64
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
X-List-Received-Date: Wed, 23 Aug 2017 18:51:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 8/22/17 11:41 PM, Ferry Toth wrote:
> I am having trouble building a specific U-Boot version with Yocto. 
> Outside of Yocto on 64 bit Ubuntu 17.04 with multilib it builds fine.
> 
> I am extending meta-intel-edison to build a 64 bit Poke Morty, with a 
> vanilla 64-bit kernel (4.12). This is working quite well.
> 
> My host is x86_64, the target is core2 with tune=core-64.
> 
> Without 64bit tune I can build U-Boot fine. With 64bit it can not link, 
> appearently because it needs lbgcc.a

what is exact error message ? is it while compiling host bits or target
bits ?

> 
> I attempted to add multilib, but although that immediately exposed bugs 
> in other recipes but actually adds libgcc.a, it does that for the target 
> sysroot only.
> 
> And for some reason, U-Boot is built with the native gcc (x86_64-linux), 
> and multilib does not add libgcc.a to that sysroot.
> 
> So, how do I add multilib to -native sysroot, preferably only to -native 
> and not to the target, as the target has not further use for it?
> 
> Strangest thing is in u-boot.inc there is: 
> EXTRA_OEMAKE = 'CROSS_COMPILE=${TARGET_PREFIX} CC="${TARGET_PREFIX}gcc 
> ${TOOLCHAIN_OPTIONS}" V=1'
> EXTRA_OEMAKE += 'HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}"'
> 
> But when I check my log file:
> NOTE: make -j8 CROSS_COMPILE=x86_64-poky-linux- CC=x86_64-poky-linux-
> gcc  ......
> 
> So TARGET_PREFIX resolves to x86_64-poky-linux, but I think my target is 
> core2_64 (or something like that). Is that normal for U-Boot?

thats ok.

> 
> I am a little lost, so any help would be greatly appreciated!
> 
> Ferry 
> 


