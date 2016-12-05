Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B10F0E008D3; Mon,  5 Dec 2016 10:20:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16455E0086E
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 10:20:19 -0800 (PST)
Received: by mail-ua0-f182.google.com with SMTP id 51so356882801uai.1
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 10:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NhS+LdLEvj8/0Sxo4sz3meW7yQqqgkgr8QXzQpN5Qgo=;
	b=njcwLZvF1rBngYwKs/8w153MYtN6o8vuSYf9qkSRbYRlpS4cNVmac915Pkh6x+8/v+
	BXe44E1CqujIaX1MC5pMihQ7gvwsEAWMhgXYX2JYdgF9ioFWewELb52TPwHIM+LI9yqV
	M1EI4S5I6UjhNcpQt40O3nIsn0Ox47Rk2/MjaP2TBASdqqzec9rXqPSD2jWDtTD2u4kw
	ioJ0ZenWlWtLBFj/+/VmAgdSVN+FbbaYTrV/Y9/4SrKNjE/G5cw+Q83VM6YVn61tZAp2
	kdbsgnNgVtG35l+wLt4jotlgSfU9cHe3RXMTowIpRRE3iw71mS8huePkbFVTNih0UYOF
	RXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NhS+LdLEvj8/0Sxo4sz3meW7yQqqgkgr8QXzQpN5Qgo=;
	b=MRlGyDi2xWeliWDIqIF0MeeqdBOVp8/Kp94YOAPmFV8bdNN9BeTOOdGY72tbONz7oS
	A0mFp/zLBLqQaTQHpgh2k/qMQIzh1M6Pbeb6/VuC3WdOc0IcJqihLeYPYPbEhFMyA9Ie
	rcQtDrSxa5xRlbxiX88FWaoG1yhhZ9wqjnqbapaDsUACILZ5EOKDkm08pEtfEINXl5LA
	KVLZbGiTsjHFI8468yviWGQ4HEPJknpR5EHZVwEqFSdHDBohZ7t3zdtAg1qNeS5Ntupi
	ODBUbKe4FC0CW3NdOYlNAfIxDNY0MukBK/HZHxHX2XYbjEIX88Uz5Lw9IA2h6+m4vctZ
	op6A==
X-Gm-Message-State: AKaTC03b4KmSQgaCSi1UHkFBQ35vdWdwSe3bSzqSpfvr7hL1UkgMNUJmO+/CGA6Icf1J3O/vJAyOyIWE5hioIg==
X-Received: by 10.159.32.99 with SMTP id 90mr37686179uam.138.1480962018954;
	Mon, 05 Dec 2016 10:20:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Mon, 5 Dec 2016 10:19:48 -0800 (PST)
In-Reply-To: <20161205110027.13585-1-net147@gmail.com>
References: <20161205110027.13585-1-net147@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 Dec 2016 10:19:48 -0800
Message-ID: <CAMKF1sr7aoxdKYCbz4S9K+-1CDZa73zmFmykQg9OPq_VN-A+AA@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware: Update to 20161125
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
X-List-Received-Date: Mon, 05 Dec 2016 18:20:21 -0000
Content-Type: text/plain; charset=UTF-8

this is ok.

On Mon, Dec 5, 2016 at 3:00 AM, Jonathan Liu <net147@gmail.com> wrote:
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-bsp/common/firmware.inc | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index 8862f58..1961b48 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,10 +1,10 @@
> -RPIFW_DATE ?= "20161020"
> +RPIFW_DATE ?= "20161125"
>  RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
>  RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
>
>  SRC_URI = "${RPIFW_SRC_URI}"
> -SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
> -SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
> +SRC_URI[md5sum] = "a9281d2869e2d7673a83d41bacfa66c2"
> +SRC_URI[sha256sum] = "744e050630621c70991c91e0ee8663dc2f579e743583ca762b13b00bc75859bc"
>
>  PV = "${RPIFW_DATE}"
>
> --
> 2.10.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

