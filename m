Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 867A3E008EE; Mon, 29 Feb 2016 13:21:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97512E008EE
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:21:47 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id l68so8350937wml.0
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Q2x0QbrY0pWlf8yAeGp3QgkgKllHPQTFQehjYy2MUKE=;
	b=fRAYv2DT+BLio9aCwwSnMmhSsmr3AmnX9WCuPvgMzh8dgXNPA5QE8rqJ8L8BMgiT7V
	pyZv2q9hovzQ2TkyNZwtcp2CYbLVSjl81aTfGgXnnGdMYdOow7LK3n+fuOXUuITfyHN1
	Kzl+aXu2lK3/LIEeQizJHD+NNyAz6u8RVTM4EdQe3DJyKgGzjgnOJLk1eW84eP87u518
	j3ZsMwm4zAugCzSYTcXmHgf0/SXjLlf148XZ6MyrcFa/KuOOY+Y+nGmAb2WcFNo5PVCV
	qEVZhMpNZtX5AE3eHCQOgDsDpe/psUHrwug6vPneeqaCfjlwzTw+t6XSMA0wECVQB0+0
	jBYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Q2x0QbrY0pWlf8yAeGp3QgkgKllHPQTFQehjYy2MUKE=;
	b=AqCQUIyJnPZcbQXC9G5/20SO9PKxsjgPJ7mpGYJ+HdYIwn/RYu2Llomvfd22X23MZX
	dM5TEQztzLsJHJU/lOExohCY1tnfKcP5Ka0VFr4yVoMU7h4OB1TsDUxP72fWMqcLqVhh
	ubzXSwu7aEpjaPXzLjQ2vrBPXJ+bJH+ZQeCWtRjgeXd5rMBbp87NALGDcCsBYEb3cpGa
	6+PFNl3CJJwGs6n0S9M/NvTXtoKOkyoVwFPm/ju+usZT8063MVs4+FWoWPgKRsCuyTtr
	MvGZor5uuVVSqSZse+RIIi7vu7HNEtfAej+S2ZcdOBDr6hJSnqlBotZ5pzlglOUSPLOM
	0b7Q==
X-Gm-Message-State: AD7BkJJupjXSth9zpzi80JXUteeXk+4GWiT8Urc8rydEBXGMCa5Scu+rPfCCJ5LAEyOnvQ==
X-Received: by 10.28.23.196 with SMTP id 187mr73591wmx.17.1456780906759;
	Mon, 29 Feb 2016 13:21:46 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	l132sm18093376wmf.7.2016.02.29.13.21.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Feb 2016 13:21:45 -0800 (PST)
Date: Mon, 29 Feb 2016 22:21:43 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160229212143.GH2087@resin.home>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<3ab781f1bae8e3e0d0e8bff3512f56e30cf11429.1456586389.git.raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <3ab781f1bae8e3e0d0e8bff3512f56e30cf11429.1456586389.git.raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 10/23] rpio: Include sys/types.h for caddr_t
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
X-List-Received-Date: Mon, 29 Feb 2016 21:21:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 27, 2016 at 03:26:49PM +0000, Khem Raj wrote:
> Fixes build with musl
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...-types.h-explicitly-for-getting-caddr_t-d.patch | 30 ++++++++++++++++++++++
>  recipes-devtools/python/rpio_0.10.0.bb             |  6 ++---
>  2 files changed, 33 insertions(+), 3 deletions(-)
>  create mode 100644 recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch
>
> diff --git a/recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch b/recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch
> new file mode 100644
> index 0000000..bed9749
> --- /dev/null
> +++ b/recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch
> @@ -0,0 +1,30 @@
> +From c86bfacc98d58244f532626954ed00d84ecfa82d Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Sat, 30 Jan 2016 17:12:37 -0800
> +Subject: [PATCH] include sys/types.h explicitly for getting caddr_t definition
> +
> +Helps fixing build on musl where sys/types.h is not included indirectly
> +as happening on glibc
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> +Upstream-Status: Submitted
> +
> + source/c_gpio/c_gpio.c | 1 +
> + 1 file changed, 1 insertion(+)
> +
> +diff --git a/source/c_gpio/c_gpio.c b/source/c_gpio/c_gpio.c
> +index 25a04ca..70df632 100644
> +--- a/source/c_gpio/c_gpio.c
> ++++ b/source/c_gpio/c_gpio.c
> +@@ -29,6 +29,7 @@
> + #include <stdint.h>
> + #include <stdlib.h>
> + #include <fcntl.h>
> ++#include <sys/types.h>
> + #include <sys/mman.h>
> + #include "c_gpio.h"
> +
> +--
> +2.7.0
> +
> diff --git a/recipes-devtools/python/rpio_0.10.0.bb b/recipes-devtools/python/rpio_0.10.0.bb
> index 1cc1661..69ecb6f 100644
> --- a/recipes-devtools/python/rpio_0.10.0.bb
> +++ b/recipes-devtools/python/rpio_0.10.0.bb
> @@ -7,9 +7,9 @@ LIC_FILES_CHKSUM = "file://README.rst;beginline=41;endline=53;md5=d5d95d7486a4d9
>
>  SRCNAME = "RPIO"
>
> -SRC_URI = "\
> -          http://pypi.python.org/packages/source/R/RPIO/${SRCNAME}-${PV}.tar.gz \
> -          "
> +SRC_URI = "http://pypi.python.org/packages/source/R/RPIO/${SRCNAME}-${PV}.tar.gz \
> +           file://0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch \
> +           "
>  S = "${WORKDIR}/${SRCNAME}-${PV}"
>
>  inherit setuptools

Merged to master. Thank you.

--
Andrei Gherzan

