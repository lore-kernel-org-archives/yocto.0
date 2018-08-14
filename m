Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCA0DE009E7; Tue, 14 Aug 2018 05:20:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9A67E006D8
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 05:20:05 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id 8-v6so33216371oip.0
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 05:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GVMa90sXHF1QgORtkovHBB6qRgzuLg11scPOTw6r4io=;
	b=Pc0LE1/DpW9QTlW4153JnFE31cGjJh4Ar0rj653GaJe3zdCs4/VTe6+C2bjuIR4F6J
	DZr1kaw9OhPv4Qiko3SSQaLgyV0SOchOFQh0Avi2YH7iy5oicTbaqHIRRsZHT8Bu5UCA
	1IE9BN0YXDj5lqjIMuwMtuFaCkfnc8NqlNHynC11aqjLKrVpwpshlL4UJPHABxRYUM3C
	lwdud5fkrKWF2/LOfhYxP1N4kpGaQ3jV7fFT5FmzBrwXoN6F4jaBA47rzrVrWaF2eJ41
	cunI64aBN/8YXmTkfPIrbDaQTJc9yB/2X9/btY7zX3Nnf4IJ6bJou1jheRh8yIFIAbgj
	Md1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GVMa90sXHF1QgORtkovHBB6qRgzuLg11scPOTw6r4io=;
	b=GeQ1d2Ta7DP4WfjqwNp8hqWtys+amcwtF6R4UqY5cVK2n8ECaM5aU+hnc9pwsm+WGU
	cy5A9CPJJgjabSOdWJWpIci7AjlGqrSDHcPogVx3UGGxmjRpBKYdTQYZkGBBIbEXWfr+
	Q2/AII2TWIObcGyIQfxwLWOL6BXJsF7VP/viRLQZQmoaBVqayFAHp31FxisY5Q4T9ekF
	j0K8dhMDhMdjiqOjQduToSBsSRAE/RRG4tiKB0TaorrMaaC6wJZSxtuSPjWml9qarOTv
	YwS+a38HNAS6DnQALZqbwVFnU3KlGItKPdTalV4Am5YvxZQy9B6aiRTISYzS9CiCMrFb
	Lt8w==
X-Gm-Message-State: AOUpUlEOUGdLO1OPQ0VCdBmLu75+fboXaLyCsWudPi6yOFLtzUWuzR99
	dbv3uHy4B9G50s4B/kpkKivzEvSnJ/UgB6Inp7C52ujDfos=
X-Google-Smtp-Source: AA+uWPxt6yKcMfnjUIuWekwQ17lahaZYQYIjE3GrbxLUom9QO/TW/TeRzLcQzxumdyC2ieoeu2ynI3wlKo3TDhCUu50=
X-Received: by 2002:aca:b256:: with SMTP id
	b83-v6mr23273088oif.235.1534249205518; 
	Tue, 14 Aug 2018 05:20:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Tue, 14 Aug 2018 05:19:44
	-0700 (PDT)
In-Reply-To: <CAFSZm+hiLmGNesTAWNBhw-+iPr6WQ8LFC-mRCJNBTxDX7npjdQ@mail.gmail.com>
References: <CAFSZm+hiLmGNesTAWNBhw-+iPr6WQ8LFC-mRCJNBTxDX7npjdQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Aug 2018 13:19:44 +0100
Message-ID: <CAJTo0LYBZk9T1RYodoG7Y7f=nWcKDf96X8GWje4nP8jLrSXsWw@mail.gmail.com>
To: Aaron Cohen <aaron@assonance.org>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: oe-run-native uses host python3 instead of sysroot
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
X-List-Received-Date: Tue, 14 Aug 2018 12:20:07 -0000
Content-Type: text/plain; charset="UTF-8"

That sounds like a bug but your fix isn't complete (doesn't handle
perl-native, for example), so the script should find the *-native
directories itself.  I've filed
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12889 so this
doesn't get lost.

Ross

On 10 August 2018 at 16:58, Aaron Cohen <aaron@assonance.org> wrote:
> Trying to run bmaptool on Centos 7, oe-run-native using the command
> "oe-run-native bmap-tools-native bmaptool copy -h" gives the following
> error:
>
> --- a/scripts/oe-run-nativeTraceback (most recent call last):
>   File
> "/home/joel-cohen/code/yocto-2.5/xilinx-build/tmp/work/x86_64-linux/bmap-tools-native/3.4-r0/recipe-sysroot-native/usr/bin/bmaptool",
> line 6, in <module>
>     from pkg_resources import load_entry_point
>   File "/usr/lib/python2.7/site-packages/pkg_resources.py", line 3007, in
> <module>
>     working_set.require(__requires__)
>   File "/usr/lib/python2.7/site-packages/pkg_resources.py", line 728, in
> require
>     needed = self.resolve(parse_requirements(requirements))
>   File "/usr/lib/python2.7/site-packages/pkg_resources.py", line 626, in
> resolve
>     raise DistributionNotFound(req)
> pkg_resources.DistributionNotFound: bmap-tools==3.4
>
> which is caused because the python3 that it is using is my host's old
> version (3.4.8) rather than from the recipe sysroot.
>
> The following patch fixes it for me, but I wonder if there's a better
> solution. I do think that finding the sysroot python3 is in general
> preferable to using whatever happens to be on the host...
>
> A side note: the bmaptool currently in oe throws a weird error when given no
> arguments rather than a usage message. This has been fixed upstream.
>
> --Aaron
>
> +++ b/scripts/oe-run-native
> @@ -55,7 +55,7 @@ fi
>  OLD_PATH=$PATH
>
>  # look for a tool only in native sysroot
> -PATH=$OECORE_NATIVE_SYSROOT/usr/bin:$OECORE_NATIVE_SYSROOT/bin:$OECORE_NATIVE_SYSROOT/usr/sbin:$OECORE_NATIVE_SYSROOT/sbin
> +PATH=$OECORE_NATIVE_SYSROOT/usr/bin:$OECORE_NATIVE_SYSROOT/bin:$OECORE_NATIVE_SYSROOT/usr/sbin:$OECORE_NATIVE_SYSROOT/sbin:$OECORE_NATIVE_SYSROOT/usr/bin/python3-native
>  tool_find=`/usr/bin/which $tool 2>/dev/null`
>
>  if [ -n "$tool_find" ] ; then
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

