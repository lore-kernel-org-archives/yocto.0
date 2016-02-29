Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73D68E00872; Mon, 29 Feb 2016 13:21:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C103E00872
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:21:28 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id l68so7490956wml.1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:21:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=fR1vYCqHvqTt7+ljMI4GQhiIVCK1lj+OxCFKOvmOOM8=;
	b=lSEaDftsdEAgVXusbuO0PoVvW9ThbNSGoQicPpSlZWr0rxC5eLUVRsSqT2myusVjyv
	VpfpRu6clVJTDpspKvuSTwAbnHmEwWIIhQ63d8IIdvQ3lJcagaoUYdt9Cqzs1g2wUl48
	MrepOhkMc6FKtbXWtu1e9cCYEqyd7tUqc/CdC6lWp6qfOwP1W+JG65BAcEIW3vsJ/9nc
	M8361aiJ0jCRFVBqTpwPQoomM3q0CPFAjgqb+lK9Q4YFgZbyQ6FsvWYXqWq8SHSoQLaX
	t73M6k523u1TbGK5Fbea1D4uMe5RfXcRgHAxduBbynHUcrXYZqSI58IF2lfGD4AmDGtn
	TaQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fR1vYCqHvqTt7+ljMI4GQhiIVCK1lj+OxCFKOvmOOM8=;
	b=UJWJWy54OSBMOzvHVOpEU6rLBqzGnbIq0L3m1IeUo2TXDj5w6jdi3wgEa8HtKmO5lt
	7swk/lhSxKEv8X9MG1I4uzuL6XkuDqbJtFyR5ZKapGqfaBtlh51nXaUKlOUrGfdMHjLQ
	QE4FScS0QLDnCXbZipjvWgxCXxOhp9P1yA9sVi8KCSa6RIw/mS9PFIkmr9iE+3MEFLDr
	o9AKq6Hciiro86M5qVWE2Pdj8Nk3WPMHzQa/SYiwCxa9GhCSd1Y+OvXV0pNDoGCyZPmz
	x764zPoCNpEiyaKilKVK6sfSnGV3FR2XwF2qm/MethaWJpcx5yV+Vfx4QmDd/+DbwiQh
	1Zeg==
X-Gm-Message-State: AD7BkJJnMhKMEVPWV6ZTDbRYTeSgAYZJFzkb9dVBwQf5QaKGcA39++8fTLD6dZo65q5eoQ==
X-Received: by 10.194.22.97 with SMTP id c1mr16843425wjf.19.1456780887334;
	Mon, 29 Feb 2016 13:21:27 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	t3sm27774089wjz.11.2016.02.29.13.21.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Feb 2016 13:21:26 -0800 (PST)
Date: Mon, 29 Feb 2016 22:21:24 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160229212124.GG2087@resin.home>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<f216583ae91ecd620e0a9e175bb9e38cac15d113.1456586389.git.raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <f216583ae91ecd620e0a9e175bb9e38cac15d113.1456586389.git.raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 07/23] python-rtimu: Fix build with musl
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
X-List-Received-Date: Mon, 29 Feb 2016 21:21:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 27, 2016 at 03:26:46PM +0000, Khem Raj wrote:
> ioctl(3) needs to include asm/ioctl.h for its signature
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...0001-include-asm-ioctl.h-for-ioctl-define.patch | 33 ++++++++++++++++++++++
>  recipes-devtools/python/python-rtimu_git.bb        |  4 ++-
>  2 files changed, 36 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch
>
> diff --git a/recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch b/recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch
> new file mode 100644
> index 0000000..4a93a1c
> --- /dev/null
> +++ b/recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch
> @@ -0,0 +1,33 @@
> +From c3aa4af56652b403e304ea5f321acfe289e42922 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Sat, 30 Jan 2016 16:07:14 -0800
> +Subject: [PATCH] include asm/ioctl.h for ioctl() define
> +
> +also fixes errors e.g.
> +
> +../../RTIMULib/RTIMUHal.cpp:208:29: error: '_IOC_SIZEBITS' was not
> +declared in this scope
> +         return ioctl(m_SPI, SPI_IOC_MESSAGE(1), &wrIOC);
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> +Upstream-Status: Submitted
> +
> + RTIMULib/RTIMUHal.cpp | 1 +
> + 1 file changed, 1 insertion(+)
> +
> +diff --git a/RTIMULib/RTIMUHal.cpp b/RTIMULib/RTIMUHal.cpp
> +index f9c3d15..d968326 100644
> +--- a/RTIMULib/RTIMUHal.cpp
> ++++ b/RTIMULib/RTIMUHal.cpp
> +@@ -29,6 +29,7 @@
> + #if !defined(WIN32) && !defined(__APPLE__)
> +
> + #include <linux/spi/spidev.h>
> ++#include <asm/ioctl.h>
> +
> + RTIMUHal::RTIMUHal()
> + {
> +--
> +2.7.0
> +
> diff --git a/recipes-devtools/python/python-rtimu_git.bb b/recipes-devtools/python/python-rtimu_git.bb
> index f51a234..63c92b3 100644
> --- a/recipes-devtools/python/python-rtimu_git.bb
> +++ b/recipes-devtools/python/python-rtimu_git.bb
> @@ -5,7 +5,9 @@ SECTION = "devel/python"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://../../LICENSE;md5=96cdecb41125f498958e09b72faf318e"
>
> -SRC_URI = "git://github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master"
> +SRC_URI = "git://github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master \
> +           file://0001-include-asm-ioctl.h-for-ioctl-define.patch;patchdir=../.. \
> +          "
>  SRCREV = "b949681af69b45f0f7f4bb53b6770037b5b02178"
>
>  S = "${WORKDIR}/git/Linux/python/"

Hi Raj! Merged to master. Thank you.

--
Andrei Gherzan

