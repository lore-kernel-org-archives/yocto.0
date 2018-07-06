Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF00CE00E02; Fri,  6 Jul 2018 13:52:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1117E0084E
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 13:52:45 -0700 (PDT)
Received: by mail-ua0-f181.google.com with SMTP id v15-v6so8317345ual.11
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 13:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lGy12DT9id7RM+Al8XkulQoo0Or/brL/sUZVxPbEL2Q=;
	b=qHJWjfLHPSf+gByleo8GUwYVTPCZa46qWKyaKuHquKkyA1HcuHfp8yacXdH2hL+f/W
	ci7OiTRUQyFumP9Mqp9D2SRWzNODCADjDLxmvMEToIn5bfErRxDg7cfdu6WYPO2iS2zF
	mzhrxXtQxntmv9hg0m/9aEq81u4fK88Jo/rJCU7wG4QcOZqaHmEyYuSJuTH4yjqe952I
	tZpeWcFc2LdyiwEbrSLH4juJaAt4m6gPTT8Sr5+oRdy2wP+Y0Oa/4RRKM5WkONJMXgps
	kGuDRZ/Gtj1VpxUTGrl/NfM7nUyA8G+uBkUJXT0vmFyx0SMGYVhKXmzEcriIUsQ1uiLk
	iCiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lGy12DT9id7RM+Al8XkulQoo0Or/brL/sUZVxPbEL2Q=;
	b=M2zJ17S3Eyz3DjZw7o4YxKflwyI183qD1jfg6RsZIjtwo3KOJagDCDKEVv+B1kNaBx
	sPni663nOpdpv2e+p8Ay2cAZBWCExZCd/IFFMSLMdxkvVpSYRk6pkILDvXmeHuXemfz/
	wAqfTgYirM5ag+gCSYmEYBAFW5KFcvNmZTnCFbIydhEmlsU+z5+d014z8amJdqjkrRUY
	/9I+nZie3oqfrQYOZau3WdGwETMa4QDBj6uQ8iTnGntdHGXF0NddwOEiRw+jrjXYCA2D
	vARhXb4opQlhmU0LpSiuPbh9GQ6XyY0V0PJ+mufmO8vX+jseQnLLg1btL49JnxoPYqJU
	VEog==
X-Gm-Message-State: APt69E16+rGQEfJjY+vNe1jturRcwJ2Up6FAePQ/A7Y9py2JoAerEtLz
	zxe1awlQXjU/F5uc4RRmgCFIhqZpIqyCuDYSFTU=
X-Google-Smtp-Source: AAOMgpflIR1KkD9ay3z2skgSLYGZiqRwL1O7XJckGU5mParlI/qDs5+lAjWzYoootFt6z0g47OyQ1PUB4j2YhnisNRM=
X-Received: by 2002:ab0:1544:: with SMTP id p4-v6mr7199725uae.81.1530910365278;
	Fri, 06 Jul 2018 13:52:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 13:52:44 -0700 (PDT)
In-Reply-To: <CAFzUWGmE8sUDbBUZjfzRCSJ6e_SXiLfxYkof3uB+b275sD_0pg@mail.gmail.com>
References: <CAFzUWGm+ji+pGQJAxz-bFMUok4eLSkMgMNyUtYw_OWDyUdHz6g@mail.gmail.com>
	<CAJTo0LZ6FK+F_nsVyi3YmsAaGhqc0RCLV74gfmb8=WRY4C6iow@mail.gmail.com>
	<CAJ86T=X4NjfRUwN3vq6i8FTQ=6iqUoMjOc136ZRtfmm2ecJ+aA@mail.gmail.com>
	<CAFzUWGmE8sUDbBUZjfzRCSJ6e_SXiLfxYkof3uB+b275sD_0pg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 6 Jul 2018 13:52:44 -0700
Message-ID: <CAJ86T=WyWPYtBNUvWySd6qTTg5HyB1Hg_nHqftg+vpP7wtDizA@mail.gmail.com>
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
X-List-Received-Date: Fri, 06 Jul 2018 20:52:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 6, 2018 at 1:28 PM, Giordon Stark <kratsg@gmail.com> wrote:
> Hi,
>
> Been struggling to understand the differences here. This is what the
> directory looks like
>
> kratsg@dc:/local/d4/gstark/poky/build$ ls
> tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/
> total 4.3M
> drwxr-xr-x 2 kratsg atlas 4.0K Jun 28 16:13 .
> drwxr-xr-x 5 kratsg atlas 4.0K Jun 28 16:13 ..
> lrwxrwxrwx 1 kratsg atlas   19 Jun 28 16:13 libXrdAppUtils.so ->
> libXrdAppUtils.so.1
> lrwxrwxrwx 1 kratsg atlas   23 Jun 28 16:13 libXrdAppUtils.so.1 ->
> libXrdAppUtils.so.1.0.0
> -rwxr-xr-x 2 kratsg atlas  44K Jun 28 16:13 libXrdAppUtils.so.1.0.0
> -rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdBlacklistDecision-4.so
> -rwxr-xr-x 2 kratsg atlas  59K Jun 28 16:13 libXrdBwm-4.so
> -rwxr-xr-x 2 kratsg atlas  11K Jun 28 16:13 libXrdCksCalczcrc32-4.so
> lrwxrwxrwx 1 kratsg atlas   13 Jun 28 16:13 libXrdCl.so -> libXrdCl.so.2
> -rwxr-xr-x 2 kratsg atlas  27K Jun 28 16:13 libXrdClProxyPlugin-4.so
> lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdClient.so ->
> libXrdClient.so.2
> lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdClient.so.2 ->
> libXrdClient.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas 554K Jun 28 16:13 libXrdClient.so.2.0.0
> lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdCl.so.2 ->
> libXrdCl.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas 937K Jun 28 16:13 libXrdCl.so.2.0.0
> lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdCrypto.so ->
> libXrdCrypto.so.1
> lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdCryptoLite.so ->
> libXrdCryptoLite.so.1
> lrwxrwxrwx 1 kratsg atlas   25 Jun 28 16:13 libXrdCryptoLite.so.1 ->
> libXrdCryptoLite.so.1.0.0
> -rwxr-xr-x 2 kratsg atlas 5.9K Jun 28 16:13 libXrdCryptoLite.so.1.0.0
> lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdCrypto.so.1 ->
> libXrdCrypto.so.1.0.0
> -rwxr-xr-x 2 kratsg atlas  95K Jun 28 16:13 libXrdCrypto.so.1.0.0
> lrwxrwxrwx 1 kratsg atlas   14 Jun 28 16:13 libXrdFfs.so -> libXrdFfs.so.2
> lrwxrwxrwx 1 kratsg atlas   18 Jun 28 16:13 libXrdFfs.so.2 ->
> libXrdFfs.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas  47K Jun 28 16:13 libXrdFfs.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas 156K Jun 28 16:13 libXrdFileCache-4.so
> -rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdN2No2p-4.so
> -rwxr-xr-x 2 kratsg atlas  11K Jun 28 16:13 libXrdOssSIgpfsT-4.so
> lrwxrwxrwx 1 kratsg atlas   16 Jun 28 16:13 libXrdPosix.so ->
> libXrdPosix.so.2
> lrwxrwxrwx 1 kratsg atlas   23 Jun 28 16:13 libXrdPosixPreload.so ->
> libXrdPosixPreload.so.1
> lrwxrwxrwx 1 kratsg atlas   27 Jun 28 16:13 libXrdPosixPreload.so.1 ->
> libXrdPosixPreload.so.1.0.0
> -rwxr-xr-x 2 kratsg atlas  67K Jun 28 16:13 libXrdPosixPreload.so.1.0.0
> lrwxrwxrwx 1 kratsg atlas   20 Jun 28 16:13 libXrdPosix.so.2 ->
> libXrdPosix.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas 128K Jun 28 16:13 libXrdPosix.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas  56K Jun 28 16:13 libXrdPss-4.so
> -rwxr-xr-x 2 kratsg atlas  19K Jun 28 16:13 libXrdSecProt-4.so
> -rwxr-xr-x 2 kratsg atlas 112K Jun 28 16:13 libXrdSecpwd-4.so
> -rwxr-xr-x 2 kratsg atlas  35K Jun 28 16:13 libXrdSecsss-4.so
> -rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdSecunix-4.so
> -rwxr-xr-x 2 kratsg atlas  52K Jun 28 16:13 libXrdSec-4.so
> lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdServer.so ->
> libXrdServer.so.2
> lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdServer.so.2 ->
> libXrdServer.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas 764K Jun 28 16:13 libXrdServer.so.2.0.0
> lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdSsiLib.so ->
> libXrdSsiLib.so.1
> lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdSsiLib.so.1 ->
> libXrdSsiLib.so.1.0.0
> -rwxr-xr-x 2 kratsg atlas 108K Jun 28 16:13 libXrdSsiLib.so.1.0.0
> -rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdSsiLog-4.so
> lrwxrwxrwx 1 kratsg atlas   19 Jun 28 16:13 libXrdSsiShMap.so ->
> libXrdSsiShMap.so.1
> lrwxrwxrwx 1 kratsg atlas   23 Jun 28 16:13 libXrdSsiShMap.so.1 ->
> libXrdSsiShMap.so.1.0.0
> -rwxr-xr-x 2 kratsg atlas  31K Jun 28 16:13 libXrdSsiShMap.so.1.0.0
> -rwxr-xr-x 2 kratsg atlas 100K Jun 28 16:13 libXrdSsi-4.so
> -rwxr-xr-x 2 kratsg atlas  47K Jun 28 16:13 libXrdThrottle-4.so
> lrwxrwxrwx 1 kratsg atlas   16 Jun 28 16:13 libXrdUtils.so ->
> libXrdUtils.so.2
> lrwxrwxrwx 1 kratsg atlas   20 Jun 28 16:13 libXrdUtils.so.2 ->
> libXrdUtils.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas 589K Jun 28 16:13 libXrdUtils.so.2.0.0
> lrwxrwxrwx 1 kratsg atlas   14 Jun 28 16:13 libXrdXml.so -> libXrdXml.so.2
> lrwxrwxrwx 1 kratsg atlas   18 Jun 28 16:13 libXrdXml.so.2 ->
> libXrdXml.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas  88K Jun 28 16:13 libXrdXml.so.2.0.0
> -rwxr-xr-x 2 kratsg atlas  11K Jun 28 16:13 libXrdXrootd-4.so
>
>
> According to the docs, there is a CMAKE_INSTALL_PREFIX I can configure:
>
>   * CMAKE_INSTALL_PREFIX - indicates where the XRootD files should be
> installed,
>                            (default: /usr)
>
> and this might let me set the install prefix to something custom, move those
> files into the package, and the plug-ins elsewhere.. But I'm not sure if
> this is the right way to go... e.g.
>
> EXTRA_OEMAKE = "-DCMAKE_INSTALL_PREFIX=/opt/xrootd" or something.

That's probably just going to install everything in a different
location. What you ideally want is to install the shared libraries
(e.g. libXrdAppUtils.so*, etc) where they are now in /usr/lib and the
plug-ins (e.g. lib*-4.so) somewhere else. That will potentially
require patching the cmake files etc and probably the sources as well
(to change the directory from which plug-ins are loaded).

You could perhaps get away with moving the plug-ins from a
do_install_append() (ie let cmake install proceed as it does now and
then move them afterwards) but then you'd still need to potentially
patch the sources so that the plug-ins are found in their new
location.

If you're not interested in that amount of work (and submitting the
fixes upstream, etc) then, as already suggested, you can alternatively
just force all .so files into the main run-time package and ignore the
"dev-so" QA test. That would be an acceptable workaround.

