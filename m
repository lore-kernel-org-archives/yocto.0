Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EFF2E0097C; Tue,  8 Nov 2016 03:17:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50070E00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:17:27 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id p190so21900613wmp.1
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 03:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Btu3n147OuRZk07PK23vjxhOZhlSCuauQXRe/MVd/Fc=;
	b=W7uDCzaYRHvdwAUpgDzgu4tHFJ5nYT4QCYyMnNw81tyvqXvM+cOaQLp8PXyVmA/HY1
	Ox5kBdaoCFHMloRRPIQdJBDeJGHubvuGiHRvLioiyW9vM/RWx20twoEZcSxHFsj2pscl
	4JTUfDM3lggM9B+8PhHzfb67PuqOb+7IAjN6CpmmOnaaIU2vYX2rvQh4r9SHf8gGa1Jb
	CmbMGPl7YqXJLP9IX587UyYYG8lUiHfZ1EyMkLt+9cXWT/Skyu6ezNog05yoaNv0wodw
	Qj33qgd+cvXdTS0YsnJRzZZ6neMjlf4O302daAxeAu1AkMclXn2hYZcDTSVwiA8vGfhs
	umig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Btu3n147OuRZk07PK23vjxhOZhlSCuauQXRe/MVd/Fc=;
	b=HIRaanrSX5dQYNdb5fnasxhv6qcOAlzdUOMODWG10Y7vxKrESYpzeQCauZag3zi99f
	LvIbr77fyS0zqMPPin25+p9dD1AWB7l5voLUY5gMBsb6AA8jeMBr67IwSf1ASdA+unm8
	rwoL3cEwHAPyWMGv3iivuecC0DZF1mIoC5b///r1hR0TH4iMeiXBng03KWceOT3S0fEp
	frSsT+z7YS6A86k+goTy/xI99bNj1qrjyPTrYiT7vB5hwDtMXhKde0kVrp5qnagvwIXB
	nADISiFZVtz0de7iUYmPOXOddyMvFOlbtuh3LXcaV3zPTWN8OasYxZzr39xYdcFO2pFn
	zRIg==
X-Gm-Message-State: ABUngvetoRiNXnpaeMIognTPrz1HKWDbKkUREv9Ok7bvOWnVU9z1mZqLxzzQptrkEavPiTpxQFVV4eGJfezT2g==
X-Received: by 10.194.28.33 with SMTP id y1mr865787wjg.229.1478603846753; Tue,
	08 Nov 2016 03:17:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.210.203 with HTTP; Tue, 8 Nov 2016 03:16:46 -0800 (PST)
X-Originating-IP: [109.242.134.10]
In-Reply-To: <20161106072515.3505-1-raj.khem@gmail.com>
References: <20161106072515.3505-1-raj.khem@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 8 Nov 2016 11:16:46 +0000
Message-ID: <CAK18fxEVW3NTsxOUbJQfM3XP6V7==G_V_dPG7P9-cjxVoWhpNg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Tue, 08 Nov 2016 11:17:29 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 6, 2016 at 7:25 AM, Khem Raj <raj.khem@gmail.com> wrote:
> This is a binary repo and its quite large in size
> we do not need the whole history of this repo since
> most of stuff needed is binaries, therefore switch
> to release tarballs
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-bsp/common/firmware.inc | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index ed0782f..8862f58 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,8 +1,10 @@
> -RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
> -RPIFW_DATE ?= "20161030"
> -RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
> -RPIFW_S ?= "${WORKDIR}/git"
> +RPIFW_DATE ?= "20161020"
> +RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
> +RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
>
>  SRC_URI = "${RPIFW_SRC_URI}"
> -SRCREV = "${RPIFW_SRCREV}"
> +SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
> +SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
> +
>  PV = "${RPIFW_DATE}"

Merged to master. Thanks.

--
Andrei Gherzan

