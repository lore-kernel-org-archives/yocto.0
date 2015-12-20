Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44E14E00B9E; Sun, 20 Dec 2015 13:44:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B48E00825
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 13:44:20 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id 186so139738923iow.0
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 13:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=o1/18TbyFM384efEzr4fDurPgnmMCWb5HoaxnT7Li8I=;
	b=GY/C0S9qVV8ZIxldi5paxAz3TK1cMW4LRATE7zMl2YgfOb3zNNc6gcBUqcDAjf/3T5
	hsNwGZy9Ae2aPXjZOGLY0sgpkiVyBKJHjE3/s2TXmaBZHD8zaFnlq7RzOKZ656FqhHcl
	IOmzwoYUlwuVFvCz2tpT6HcIg6yP6Y2a2QMVt+TcLFhdF1YI8Z/+aybCybpG16V1xRmr
	5l/HKFlKkMT6/dK3nPFGQuLz2BMbIf6MiU1v+VaUYOqpgTCpr1DeTxO3wg4pWR4t7IWj
	bdiNAl93Ccwkuzx9XteRp92R3a0xpPo1X1cxWxNKzi1lGBvvvxuxmS6Ov1VnIRXix2NB
	dFBg==
X-Received: by 10.107.9.224 with SMTP id 93mr15263410ioj.112.1450647860031;
	Sun, 20 Dec 2015 13:44:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Sun, 20 Dec 2015 13:43:50 -0800 (PST)
In-Reply-To: <1450644797-13141-2-git-send-email-leon@anavi.org>
References: <1450644797-13141-1-git-send-email-leon@anavi.org>
	<1450644797-13141-2-git-send-email-leon@anavi.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 20 Dec 2015 13:43:50 -0800
Message-ID: <CAMKF1spDQ58i_Gp=1vr-8Pb1LG1Mek2h+x4OYQa2YGtBRLRMjQ@mail.gmail.com>
To: Leon Anavi <leon@anavi.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] python-sense-hat: Add recipe to support Raspberry Pi Sense HAT
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
X-List-Received-Date: Sun, 20 Dec 2015 21:44:27 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 20, 2015 at 12:53 PM, Leon Anavi <leon@anavi.org> wrote:
> Python module to control the Raspberry Pi Sense HAT used in
> the Astro Pi mission. This recipe provides the officially
> supported library for the Sense HAT with access to all of the
> on-board sensors and the LED matrix.
>
> Signed-off-by: Leon Anavi <leon@anavi.org>
> ---
>  recipes-devtools/python/python-sense-hat_2.1.0.bb | 31 +++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 recipes-devtools/python/python-sense-hat_2.1.0.bb
>
> diff --git a/recipes-devtools/python/python-sense-hat_2.1.0.bb b/recipes-devtools/python/python-sense-hat_2.1.0.bb
> new file mode 100644
> index 0000000..0665536
> --- /dev/null
> +++ b/recipes-devtools/python/python-sense-hat_2.1.0.bb
> @@ -0,0 +1,31 @@
> +SUMMARY = "Python module to control the Raspberry Pi Sense HAT used in the Astro Pi mission"
> +HOMEPAGE = "https://github.com/RPi-Distro/python-sense-hat"
> +SECTION = "devel/python"
> +LICENSE = "BSD"
> +LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=d80fe312e1ff5fbd97369b093bf21cda"
> +
> +SRCNAME = "sense-hat"
> +
> +SRC_URI = "https://pypi.python.org/packages/source/s/${SRCNAME}/${SRCNAME}-${PV}.tar.gz"
> +
> +SRC_URI[md5sum] = "71217f15ea963040f06e2f50722186ca"
> +SRC_URI[sha256sum] = "c6c76707c0ea514e4b0f1f96f1b5b79755875891aae037df7434b6aad7b9dbca"
> +
> +S = "${WORKDIR}/${SRCNAME}-${PV}"
> +
> +inherit setuptools
> +
> +DEPENDS_${PN} += " \

Just use DEPENDS here and remove -dev entries below, its implied with DEPENDS

> +               jpeg \
> +               jpeg-dev \
> +               zlib \
> +               zlib-dev \
> +               freetype \
> +               freetype-dev \
> +               "
> +
> +RDEPENDS_${PN} += " \
> +               python-numpy \
> +               python-rtimu \
> +               python-imaging \
> +               "
> --
> 2.5.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

