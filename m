Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BD4AE009CF; Thu, 28 Jun 2018 15:53:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61CFDE00791
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 15:53:47 -0700 (PDT)
Received: by mail-ot0-f169.google.com with SMTP id w13-v6so7951803ote.11
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 15:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NBCWFuX/C2bxEoYFZPEMAja2otplSwE+188Grw4ojIg=;
	b=zAWI3/hxGwkAGuJSGoMa4pbFUbn3DMkAbzx7Y2wXb0wps6z4Ie6N+d51lLBSZ0wnNb
	inGi1jQGi/7JyVb9bFc4B4MoDCz4pZONdw4A4JJznb/Udo0+DlfSEf02hz6Aple6WRm/
	NsVBkdYzlFYr2IR+LP3tHYg901dF8rZEy2IQ208avRJLONpQwOKpJTio6LB6Gw4MnuGI
	d7AiqUk2gHn4vzfWfVIv5qZJdQcZ3V7CcAXscS58Fr055ZjkPQmMaVUXGRuGOi/rHktl
	NNu13PXh1VXdeMdaKDKIbmKXvVbJXcKRtKAk4TlhpxJyN4RImqct/GaBSRQpsmTw2TlX
	LBYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NBCWFuX/C2bxEoYFZPEMAja2otplSwE+188Grw4ojIg=;
	b=By6wjQgptInrVM5JwYdDxkHwtS2j68+HGOp7TF44YZVXy0E8Pin9mKeVnxxKxfE2mY
	vJ2f9s9DNNRXUZHx5Z9oDLNduXNo2/pVtuzLnNkzohORtEO+42ct/zqHnO7uVygPoADK
	8E8VWVtIbAgzabOQ+5FRODNTkbg5AfUBXCG6w9Y1XyaOThKBY2l7MI1xbZ6rs3Ylr4hk
	FPgXpZoSAqL8Yl9Cu4ljGTuwqLhox0nYoXln3N+fX47pD/CFBWq8h7aKeVUII+TH6pqJ
	dY8C8wJT4GaBTl1luPr1gdIXHvDpZWDAkOQhGdyPI+TqdkMg7A2jWay3EAx1eBpkJQUF
	BI1Q==
X-Gm-Message-State: APt69E1gKSEAkhLqBSgXV27S1mT3KhkAogxfO/BcT6zGf3gwKRrH6Q5U
	vcAPfXfe7UW18MGX+kxSajwQPlRU/dydnq3qPzOiSw==
X-Google-Smtp-Source: AAOMgpd/N9fmzNYa1KDqQzI4FsR+GKnUZqn0grfVi+9yuZ2xSz4T1tF/9hb/Sk2qnL3J5BDAEvYVezJTtQw6LOYmb5E=
X-Received: by 2002:a9d:37f6:: with SMTP id
	x109-v6mr7666330otb.152.1530226426787; 
	Thu, 28 Jun 2018 15:53:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP; Thu, 28 Jun 2018 15:53:26
	-0700 (PDT)
In-Reply-To: <CAFzUWGm+ji+pGQJAxz-bFMUok4eLSkMgMNyUtYw_OWDyUdHz6g@mail.gmail.com>
References: <CAFzUWGm+ji+pGQJAxz-bFMUok4eLSkMgMNyUtYw_OWDyUdHz6g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Jun 2018 23:53:26 +0100
Message-ID: <CAJTo0LZ6FK+F_nsVyi3YmsAaGhqc0RCLV74gfmb8=WRY4C6iow@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Understanding "dev package contains non-symlink"
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
X-List-Received-Date: Thu, 28 Jun 2018 22:53:48 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Giordan,

https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries
might be helpful to you.

One useful thing would be to show us exactly what files are being
installed (and what files are symlinks).  It sounds like xrootd is
messing up library installation...

Ross

On 28 June 2018 at 22:19, Giordon Stark <kratsg@gmail.com> wrote:
> Hi,
>
> I've read the emails in this mailing list. I'm mostly struggling to
> understand the situation for which "-dev package contains non-symlink .so"
> occurs. I understand that normally, one expects "*.so" files installed as
> part of the package, with symlinks to these versions in the "-dev" package.
> What I don't understand is the fix, and why this problem occurs in the first
> place.
>
> The recipe I'm working on in question is here: xrootd_4.8.3.bb (if this link
> doesn't work in the future, it's probably because I've merged this to
> master). This recipe is to install this piece of code:
> https://github.com/xrootd/xrootd.
>
> Here's an example of the errors:
>
> ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: -dev package contains
> non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdThrottle-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecsss-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecunix-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecpwd-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdN2No2p-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSec-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdFileCache-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSsiLog-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdCksCalczcrc32-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdBwm-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdBlacklistDecision-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdClProxyPlugin-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecProt-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdOssSIgpfsT-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSsi-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdPss-4.so'
> -dev package contains non-symlink .so: xrootd-dev path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdXrootd-4.so'
> [dev-elf]
> ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. Please
> consider fixing them.
> ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/temp/log.do_package_qa.28174
> ERROR: Task
> (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:do_package_qa)
> failed with exit code '1'
>
> Then, when I add these lines to the recipe:
>
>   FILES_SOLIBSDEV = ""
>   FILES_${PN} += "${libdir}/*.so"
>
> I find that nothing is really fixed. It seems to be a similar error, but
> with different files now:
>
> ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk-
> package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdXml.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdSsiLib.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCryptoLite.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdAppUtils.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCrypto.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdPosix.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdUtils.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdSsiShMap.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCl.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdClient.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdServer.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdPosixPreload.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdFfs.so'
> [dev-so]
> ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. Please
> consider fixing them.
> ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/temp/log.do_package_qa.30048
> ERROR: Task
> (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:do_package_qa)
> failed with exit code '1'
>
> I'm getting a bit confused as these errors didn't show up the first time.
> And I suppose part of the confusing is about packaging vs installation.
>
> Thanks,
>
> Giordon
> --
> Giordon Stark
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

