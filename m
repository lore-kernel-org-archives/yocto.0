Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3CF9E00CE6; Fri, 22 Feb 2019 14:57:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC053E00B5C
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 14:57:52 -0800 (PST)
Received: by mail-io1-f51.google.com with SMTP id p196so3085063iod.9
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 14:57:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JJDgxhIPPGIVzk9cXA6lJK/rbcoa6y5Ad+2y59qnoW0=;
	b=NPY1IBmYtPNVWALvi8vBUXPllwz4jFS6yyVhZjiQ8sXpIO1e1CZj0oQ+5/J8Y9CIB5
	r8AO6O12tlbTrno1hxQ/mTbLyrOueFEzvSCq1AsB59QF093rWdnqR0xAuZaMrUB5wiN0
	XbhObQrxLUktr5x41Wnf8TuYKabbOnnLTgwObXwY5/duN2JzJVZWtRA+RZyFq7O5FYCu
	PahXzG4aHsHJZuqqTEpAsF3A2XyK3Zr3UtN3HbWcC8BYTqlJJHkqi5Y9gN16bbgVy3Ud
	t/hdrAjEuYnRz3F6yhgGmppsYAGESZHagyAGQx9tZu0tW3joyJLEqLqbcSpaoi5UJAqC
	A/wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JJDgxhIPPGIVzk9cXA6lJK/rbcoa6y5Ad+2y59qnoW0=;
	b=BFd0BjQXlWtRxnTNMceKG8SmwKRiaD5tdtGrxZ740rE5j4w7H5h0sN0N/PMmXWgiA4
	+wrXxcE64f8rrtdTbNOIQvtI37Q5PnOnY71cFv3znjCJXeFI9oUT3i6CtWGRahR0X5hx
	Ty1qwFiiPbbVMGcQI7p5EycxbT1LcKgxR2cTsTgO2CaYK51ZOw9msbw6PLseNxqD8aRd
	4KJDNv/L0RK9a0aVV+UeR+9puBytFisXNFNq7pDQM0il2ug6iPjRXTsmCB5cii3V+xnz
	cOrKCYwgrUI6izVb8K8iShxzzBc9XPjlqd5Phs0D25IGHiPcU6DYpZBaPcKsWr/PimAa
	gitw==
X-Gm-Message-State: AHQUAuaRGVoubKOcjuG5QoZAbvjRw3TXg+ArhyjWM5MxO1zR6uXoj4yJ
	XHoSDLLjWid1yjP5uZhCiqPPv7W+PRWUrTBc2NGO1A==
X-Google-Smtp-Source: AHgI3IY98rC87m6mvOomLr9WRLXXeguDVnSjF5Zy0LasXTNOrsJGMR3ZVHBKQ87UG+OI96gwasxfIoQjpVTxAeEoSVA=
X-Received: by 2002:a5d:848b:: with SMTP id t11mr3385089iom.270.1550876271917; 
	Fri, 22 Feb 2019 14:57:51 -0800 (PST)
MIME-Version: 1.0
References: <CALVd-wOQCtsKK5jpMGc5R3-cCrYi-=-sQmGzvnLMCD=pdTk31g@mail.gmail.com>
	<TYAPR01MB2031B0D1EF1448ED96F21032927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<CALVd-wNod6oxi=t3KCiDg2HKO6nqBNWt+3avaBTTV=3x3yAT3w@mail.gmail.com>
In-Reply-To: <CALVd-wNod6oxi=t3KCiDg2HKO6nqBNWt+3avaBTTV=3x3yAT3w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 22 Feb 2019 22:57:40 +0000
Message-ID: <CAJTo0LaB0Ca1n+nAe0bCiSDMnA+SkZEYPfydAZMd-s_gbhFf4Q@mail.gmail.com>
To: chaitanya cherukuri <ccvk.chaitanya@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to Install Third party rpm packages
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
X-List-Received-Date: Fri, 22 Feb 2019 22:57:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Feb 2019 at 22:16, chaitanya cherukuri
<ccvk.chaitanya@gmail.com> wrote:
> Do I need to write a recipe where I fetch this package?

Yes, write a recipe that has SRC_URI as the original RPM, then you can
write a do_install() to put the files in the right place, package it
correctly, and so on.

Just using the RPM as-is most likely won't work because the chances
are your Yocto distribution isn't binary-compatible at the packaging
level with whatever distribution the RPM was built for.

Ross

