Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15182E00522; Sat, 28 Feb 2015 15:53:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  3.1 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E92FE0043B
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 15:53:41 -0800 (PST)
Received: by lbiz12 with SMTP id z12so819094lbi.5
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 15:53:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=TWkRfw3CVLJa7kdo2Py+CanoXkRc2qI5iokI1wVCY8c=;
	b=SpUsuf0A63+i2J3rPy4Hjur8DFIpeRQwz8l+DTDPCkHA+hG89EY/SVdIKS7rim+TEx
	r1uax5gpidIP47ns0OPAEH3XomIV6gqyMqW90y4yC3YNmkioFWJZnFZG5Z4U2vJBoYji
	fN26rX6za9eCtg2lPUl8idWBTgGhkVNzu/Vqk92DXr7fshC640raQfCe6yUfSmzTFv6w
	4LN6SdK6kJnCuBd2mahYJ5B4iCd4Oh3i2CPX5chyCjeuyt3XvnCZqUlG5otEM9K+LSH5
	tSHh4xepHrXLQYe7YSFiRVhwiCVKSIyUq1z36C8P2vaRI43I/vEgMEPP0HFYg0mbNCsf
	Rmiw==
X-Gm-Message-State: ALoCoQkxNL15TDtNOPx2phvEhGOTTVtj61z24nk1gVnu1Sxh5d5lbIm3qZcWiIHSQXvSW/NuOF1L
X-Received: by 10.112.173.41 with SMTP id bh9mr7238084lbc.107.1425167618791;
	Sat, 28 Feb 2015 15:53:38 -0800 (PST)
Received: from gmail.com (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id wp8sm1553926lbb.30.2015.02.28.15.53.37
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 28 Feb 2015 15:53:38 -0800 (PST)
Date: Sun, 1 Mar 2015 00:53:32 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20150228235332.GA22308@gmail.com>
References: <1423525941-19710-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1423525941-19710-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [meta-raspberrypi][PATCH V2 1/5] linux-raspberrypi: Refactor kernel recipes
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
X-List-Received-Date: Sat, 28 Feb 2015 23:53:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 10, 2015 at 12:52:17AM +0100, Andrei Gherzan wrote:
> We use this to simplify the update process. Updating a kernel version will not
> require renaming the recipe but only tweaking LINUX_VERSION.
>
> Update kernel version:
>         - bump SRCREV
>         - bump LINUX_VERSION if needed
>
> [Support #26]
>
> Change-Id: I7565ddd1f03cc34c34aa5da92664a0057b415c9a
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc        | 2 +-
>  recipes-kernel/linux/linux-raspberrypi_3.10.38.bb | 6 ------
>  recipes-kernel/linux/linux-raspberrypi_3.10.bb    | 8 ++++++++
>  recipes-kernel/linux/linux-raspberrypi_3.12.36.bb | 6 ------
>  recipes-kernel/linux/linux-raspberrypi_3.12.bb    | 8 ++++++++
>  recipes-kernel/linux/linux-raspberrypi_3.16.5.bb  | 6 ------
>  recipes-kernel/linux/linux-raspberrypi_3.16.bb    | 8 ++++++++
>  recipes-kernel/linux/linux-raspberrypi_3.18.5.bb  | 5 -----
>  recipes-kernel/linux/linux-raspberrypi_3.18.bb    | 8 ++++++++
>  recipes-kernel/linux/linux-raspberrypi_3.6.11.bb  | 6 ------
>  recipes-kernel/linux/linux-raspberrypi_3.6.bb     | 8 ++++++++
>  recipes-kernel/linux/linux-raspberrypi_3.8.13.bb  | 6 ------
>  recipes-kernel/linux/linux-raspberrypi_3.8.bb     | 8 ++++++++
>  13 files changed, 49 insertions(+), 36 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.bb
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.bb
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.bb
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.bb
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.bb
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.bb
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index ff0c5ce..c00128d 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -11,7 +11,7 @@ SRC_URI += " \
>
>  COMPATIBLE_MACHINE = "raspberrypi"
>
> -PV_append = "+git${SRCREV}"
> +PV = "${LINUX_VERSION}+git${SRCREV}"
>
>  # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
>  KERNEL_DEFCONFIG = "bcmrpi_defconfig"
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
> deleted file mode 100644
> index a0c5012..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -SRCREV = "1b49b450222df26e4abf7abb6d9302f72b2ed386"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> -
> -require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
> new file mode 100644
> index 0000000..e5d5bf2
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
> @@ -0,0 +1,8 @@
> +LINUX_VERSION ?= "3.10.38"
> +
> +SRCREV = "1b49b450222df26e4abf7abb6d9302f72b2ed386"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
> +           file://sl030raspberrypii2ckernel.patch \
> +          "
> +
> +require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
> deleted file mode 100644
> index e9e9ad7..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -SRCREV = "90fa5df724d147564149c7b79cb1ffc571a345ec"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> -
> -require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
> new file mode 100644
> index 0000000..2952778
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
> @@ -0,0 +1,8 @@
> +LINUX_VERSION ?= "3.12.36"
> +
> +SRCREV = "90fa5df724d147564149c7b79cb1ffc571a345ec"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
> +           file://sl030raspberrypii2ckernel.patch \
> +          "
> +
> +require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb b/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
> deleted file mode 100644
> index 97947c2..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -SRCREV = "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.16.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> -
> -require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.bb b/recipes-kernel/linux/linux-raspberrypi_3.16.bb
> new file mode 100644
> index 0000000..ccc414f
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.16.bb
> @@ -0,0 +1,8 @@
> +LINUX_VERSION ?= "3.16.5"
> +
> +SRCREV = "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.16.y \
> +           file://sl030raspberrypii2ckernel.patch \
> +          "
> +
> +require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
> deleted file mode 100644
> index 663522e..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -SRCREV = "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> -require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> new file mode 100644
> index 0000000..921e702
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> @@ -0,0 +1,8 @@
> +LINUX_VERSION ?= "3.18.5"
> +
> +SRCREV = "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
> +           file://sl030raspberrypii2ckernel.patch \
> +          "
> +
> +require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> deleted file mode 100644
> index a154bcf..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -SRCREV = "2a8d45ec0883e3cbdce920855b3461ac77308a5f"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> -
> -require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.bb
> new file mode 100644
> index 0000000..fc9ac89
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.6.bb
> @@ -0,0 +1,8 @@
> +LINUX_VERSION ?= "3.6.11"
> +
> +SRCREV = "2a8d45ec0883e3cbdce920855b3461ac77308a5f"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
> +           file://sl030raspberrypii2ckernel.patch \
> +          "
> +
> +require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> deleted file mode 100644
> index dc8cf0a..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> -
> -require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.bb
> new file mode 100644
> index 0000000..ae0dc99
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.8.bb
> @@ -0,0 +1,8 @@
> +LINUX_VERSION ?= "3.8.13"
> +
> +SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
> +           file://sl030raspberrypii2ckernel.patch \
> +          "
> +
> +require linux-raspberrypi.inc
> --
> 2.1.0
>

Merged along with the entire series.

--
Andrei Gherzan

