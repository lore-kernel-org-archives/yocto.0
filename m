Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DE22E00FFE; Wed, 23 Sep 2015 15:58:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42311E00B77
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:58:43 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so4896433wic.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:58:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=EoBqcxH3FIX+BdtOVB3EOH25Vp04tdNh6KTJ2cB5o3c=;
	b=Ox6bk9kf3Ki3nEbA0pV9e8Mlx2AIkYNk35Q1qm0N7CYvG0KZMgN8RdDqXV5ploUm8u
	IF6JXuQnc2tbP3ODp19K4Cfxrs3IyggceLDx+sa7bNYHvdTERWblbsi5KmLiUq8yWpK6
	TnfGxVMYDC9yq3tdqjMwvp36syrvcBDOjNDCi8n9m6FMfDmfgDeK2haAj4tt97CoRs8C
	snJudWkhRNPERGCn+Fe6uFDrjxDwkI43lcbImNW8ISv0Dbxku4vsAv8actmltxa7bUHW
	IH46SfXiyc1FGZT0adHITNqJEYgnsMTm2MTubHojASlWyHagEpSCf7qPP3KtuNTHSVBL
	f70g==
X-Gm-Message-State: ALoCoQnmFv04M9vCW9dlejaq/ZoIHpam0gWX+hrhf/J2ktcfTZPW40S6u/mhkQPWQk/PhqXS3QDg
X-Received: by 10.181.8.72 with SMTP id di8mr6565034wid.62.1443049123035;
	Wed, 23 Sep 2015 15:58:43 -0700 (PDT)
Received: from resin (dslb-088-067-185-139.088.067.pools.vodafone-ip.de.
	[88.67.185.139])
	by smtp.gmail.com with ESMTPSA id x7sm2568830wia.10.2015.09.23.15.58.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Sep 2015 15:58:41 -0700 (PDT)
Date: Thu, 24 Sep 2015 01:58:39 +0300
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20150923225839.GF23493@resin>
References: <1440402701-6195-1-git-send-email-raj.khem@gmail.com>
	<1440402701-6195-2-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1440402701-6195-2-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V3 2/5] userland: Add wayland support
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
X-List-Received-Date: Wed, 23 Sep 2015 22:58:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 24, 2015 at 12:51:38AM -0700, Khem Raj wrote:
> backport and fix needed patches for supporting wayland-egl
> use PACKAGECONFIG for wayland so we can add proper DEPENDS on wayland
> Fix QA warnings about dev-so
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...-applications-to-set-next-resource-handle.patch |  210 +++
>  ...ayland-Add-support-for-the-Wayland-winsys.patch | 1847 ++++++++++++++++++++
>  .../0006-wayland-Add-Wayland-example.patch         |  864 +++++++++
>  ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   30 +
>  recipes-graphics/userland/userland_git.bb          |   13 +-
>  5 files changed, 2963 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-graphics/userland/userland/0004-Allow-applications-to-set-next-resource-handle.patch
>  create mode 100644 recipes-graphics/userland/userland/0005-wayland-Add-support-for-the-Wayland-winsys.patch
>  create mode 100644 recipes-graphics/userland/userland/0006-wayland-Add-Wayland-example.patch
>  create mode 100644 recipes-graphics/userland/userland/0007-wayland-egl-Add-bcm_host-to-dependencies.patch
>

Hello,

Any ideas why I encounter difficulties while applying this patch?

---
Applying: userland: Add wayland support
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:48:
trailing whitespace.
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:55:
trailing whitespace.
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:64:
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:85:
trailing whitespace.
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:87:
trailing whitespace.  +/**HACKHACK - give us the ability to inject a
DispmanX fatal: corrupt patch at line 2943
Patch failed at 0001 userland: Add wayland support The copy of the patch
that failed is found in:
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch When
you have resolved this problem, run "git am --continue".  If you prefer to
skip this patch, run "git am --skip" instead.  To restore the original
branch and stop patching, run "git am --abort".
---

--
Andrei Gherzan

