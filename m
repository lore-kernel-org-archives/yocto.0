Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F038E01422
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 15:03:56 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id hf12so1758437vcb.27
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 15:03:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=gcjkCezlVjI7MaCpfpjY6DDFpv6SUTQI16bNdscEwG4=;
	b=MAB/TwmVjxFIs99c7W1zlhD0xVb2EVvXp3yqb0ZVwuhitP1zEWd+y3fPHvUB2QOrQG
	sIEcm3DztIAkGr0dbw7OftkcLHU+xAB2bAOY0qrq6WHHLO9RKonEnTYEWERrFbwCdh+o
	ZrdFHdOIWJG7qFCCOYl6U64slOzghk85aWl4Wn5D1VbZH1kVBZThMNQee2JuJsHQJSpV
	Jcicv7eE1JYwmEpdsNvI+BzFN9EisUtqiYQchuQjnwzq12ustPgdGanzXeYrnHxOzQe6
	lXI9BloTMn8+RCc9sh9bUGn8pJMM9bsTq5V0YjPgS9jsIQnGJPUVKeS0mtRwbOkvoqxg
	lyCg==
MIME-Version: 1.0
X-Received: by 10.220.225.2 with SMTP id iq2mr9741915vcb.59.1374530636004;
	Mon, 22 Jul 2013 15:03:56 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Mon, 22 Jul 2013 15:03:55 -0700 (PDT)
In-Reply-To: <1374530411-3608-1-git-send-email-elizabeth.flanagan@intel.com>
References: <1374530411-3608-1-git-send-email-elizabeth.flanagan@intel.com>
Date: Mon, 22 Jul 2013 15:03:55 -0700
Message-ID: <CAPhnLPAG=_tzCv69mEE0oY3L_RnpW965q3V=o0YOsxv8aFSADw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQn1fR9PnKz8ao8c/PeeZ8+GkZ8W124fhwSIdrmIXNU71u8MGmMRCbUdZh1j5RY8ST3TceVG
Subject: Re: [PATCH] poky.conf: Change SDK_NAME to include machine
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
X-List-Received-Date: Mon, 22 Jul 2013 22:03:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

Sorry for the multiple emails all.

-b

On Mon, Jul 22, 2013 at 3:00 PM, Elizabeth Flanagan
<elizabeth.flanagan@intel.com> wrote:
> From: Beth Flanagan <elizabeth.flanagan@intel.com>
>
> When building for multiple arches, you can tromp all over the toolchain
> that lives in the deploy directory as the naming is not granular enough.
>
> This patch adds MACHINE to the SDK_NAME so that:
>
> poky-eglibc-arm-toolchain-gmae-1.4+snapshot-20130717.sh
>
> becomes:
>
> poky-eglibc-qemuarm-x86_64-arm-toolchain-gmae-1.4+snapshot-20130717.sh
> ---
>  meta-yocto/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index 7be7d92..4005c1a 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -22,7 +22,7 @@ PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
>  PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.8%"
>  PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
>
> -SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
> +SDK_NAME = "${DISTRO}-${TCLIBC}-${MACHINE}-${SDK_ARCH}-${TARGET_ARCH}"
>  SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
>
>  EXTRAOPKGCONFIG = "poky-feed-config-opkg"
> --
> 1.8.1.2
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

