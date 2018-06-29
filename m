Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2438E00E97; Thu, 28 Jun 2018 17:37:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC496E006F1
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 17:37:09 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id b134-v6so4367841vke.13
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 17:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=w+igdMe8kB9QNwUHyhGQJ2Kz7lHdXp6y2KnQcGQf7Vc=;
	b=XZcQdie/OoElFIkQYahv/N20xPJdD2MNNFB5O/p4IDkpJV/iVaQgAc2SUY3SgX5QKA
	XRRSUbr6mQXidUJkEuA+rlVX4oid6u4mw0OppUYzwwyDiSERYTC4NxaXLXMECoNUfR2s
	mgrcFQpiJY0UMn+KSPRcV/OJIS9g7bJ7+wOeFEmqAN52w2l1Gr9DiEIE6IMoRo2ZCuTv
	TmJivUaMXtbpbIuy/CSTP4jTNMgAelPr7Wx2Z1+bfez4d88j99WZoP+K8nFeJI1mhF+g
	4Q5ZOlmQOvyl1SlbP4MpA3N+FEdXAMH5JESXFBiu0Baq3Q/aEoRjWb0V9cjNS/WGGlcK
	uN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=w+igdMe8kB9QNwUHyhGQJ2Kz7lHdXp6y2KnQcGQf7Vc=;
	b=aKCfFw+J4UH5rcQxMbwZcpzwdtPPAb1nOlnSVUIXzjfzyOfhHDsyc6dv/uxWXMP87n
	uR9CR0a3BoWRIovNz97qo0Koq5N77UOObRvuK4MKWPmtKbBrlgBLIsu6lv57Q1onCSYO
	MTYpQNnWRvrMOs1fa6tI1ZlTRkE+gfx67KpjcCQiDmHz1Ee/uuT1erC41psLTceSy+N/
	fYzNzry/9Ym1PfMSwU5xDX3Su+N2wuJkLde7ySevi5ElJQiPdqBW9nPCGWpbrSeWFGVt
	2xeoi8Gxi+g43T3mS9R0Jji5foPBmk1VZ7h1SDktLvQQX9DA9n+GAM0hU5iu3/dMVrhR
	vDAg==
X-Gm-Message-State: APt69E0o/pyGyzLGZ++cLpjcA03LYORaw1+eKr39f6W0P7prA5jUWRB3
	Q5f//4e3lwHBCJpsvDpCMm5ZEqsexbfsk6aXCSQ=
X-Google-Smtp-Source: AAOMgpdELAwC6LutwJd8hELDkLyR2QrDK4rJoSwTM+eh6I1spBN3bWqkYWfbO1i/hYC8ZpNJkpBGkTWEhgtNSmkt3xg=
X-Received: by 2002:a1f:6306:: with SMTP id x6-v6mr7556360vkb.2.1530232628973; 
	Thu, 28 Jun 2018 17:37:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:28a:0:0:0:0:0 with HTTP;
	Thu, 28 Jun 2018 17:37:08 -0700 (PDT)
In-Reply-To: <CAJTo0LZ6FK+F_nsVyi3YmsAaGhqc0RCLV74gfmb8=WRY4C6iow@mail.gmail.com>
References: <CAFzUWGm+ji+pGQJAxz-bFMUok4eLSkMgMNyUtYw_OWDyUdHz6g@mail.gmail.com>
	<CAJTo0LZ6FK+F_nsVyi3YmsAaGhqc0RCLV74gfmb8=WRY4C6iow@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 28 Jun 2018 17:37:08 -0700
Message-ID: <CAJ86T=X4NjfRUwN3vq6i8FTQ=6iqUoMjOc136ZRtfmm2ecJ+aA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Fri, 29 Jun 2018 00:37:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 28, 2018 at 3:53 PM, Burton, Ross <ross.burton@intel.com> wrote:
> Hi Giordan,
>
> https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries
> might be helpful to you.
>
> One useful thing would be to show us exactly what files are being
> installed (and what files are symlinks).  It sounds like xrootd is
> messing up library installation...

Based on the logs, it looks like xrootd is installing both versioned
shared libraries (e.g. "libXrdXml.so" is presumably a symlink to a
real library named libXrdXml.so.<something> ?) and it's ALSO
installing a set of plug-ins (e.g. "libXrdThrottle-4.so").

If so, then the real problem seems to be that the plug-ins are being
installed in /usr/lib. To avoid tripping up the default packaging
rules and QA tests, plug-ins should ideally be installed somewhere
other than ${base_libdir} or ${libdir}.

If you can fix the build so that the plug-ins (just the plug-ins, not
the versioned shared libraries) get installed to a different directory
then I guess you will be able remove the packaging rules over-rides
and the QA errors will go away.

If you can't fix the build to install the plug-ins in another
directory, then you could keep the packaging rules over-rides that you
have already and just ignore the "dev-so" QA test (unlike the
"dev-elf" QA test, which you should never ignore, the consequences of
ignoring the "dev-so" QA test are fairly benign - you will end up with
.so symlinks in the run-time package, which doesn't do any real harm).

> On 28 June 2018 at 22:19, Giordon Stark <kratsg@gmail.com> wrote:
>> Hi,
>>
>> I've read the emails in this mailing list. I'm mostly struggling to
>> understand the situation for which "-dev package contains non-symlink .so"
>> occurs. I understand that normally, one expects "*.so" files installed as
>> part of the package, with symlinks to these versions in the "-dev" package.
>> What I don't understand is the fix, and why this problem occurs in the first
>> place.
>>
>> The recipe I'm working on in question is here: xrootd_4.8.3.bb (if this link
>> doesn't work in the future, it's probably because I've merged this to
>> master). This recipe is to install this piece of code:
>> https://github.com/xrootd/xrootd.
>>
>> Here's an example of the errors:
>>
>> ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: -dev package contains
>> non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdThrottle-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecsss-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecunix-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecpwd-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdN2No2p-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSec-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdFileCache-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSsiLog-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdCksCalczcrc32-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdBwm-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdBlacklistDecision-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdClProxyPlugin-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecProt-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdOssSIgpfsT-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSsi-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdPss-4.so'
>> -dev package contains non-symlink .so: xrootd-dev path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdXrootd-4.so'
>> [dev-elf]
>> ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. Please
>> consider fixing them.
>> ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_qa
>> ERROR: Logfile of failure stored in:
>> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/temp/log.do_package_qa.28174
>> ERROR: Task
>> (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:do_package_qa)
>> failed with exit code '1'
>>
>> Then, when I add these lines to the recipe:
>>
>>   FILES_SOLIBSDEV = ""
>>   FILES_${PN} += "${libdir}/*.so"
>>
>> I find that nothing is really fixed. It seems to be a similar error, but
>> with different files now:
>>
>> ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk-
>> package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdXml.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdSsiLib.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCryptoLite.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdAppUtils.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCrypto.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdPosix.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdUtils.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdSsiShMap.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCl.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdClient.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdServer.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdPosixPreload.so'
>> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
>> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdFfs.so'
>> [dev-so]
>> ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. Please
>> consider fixing them.
>> ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_qa
>> ERROR: Logfile of failure stored in:
>> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/temp/log.do_package_qa.30048
>> ERROR: Task
>> (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:do_package_qa)
>> failed with exit code '1'
>>
>> I'm getting a bit confused as these errors didn't show up the first time.
>> And I suppose part of the confusing is about packaging vs installation.
>>
>> Thanks,
>>
>> Giordon
>> --
>> Giordon Stark
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

