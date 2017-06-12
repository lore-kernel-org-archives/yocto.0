Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 369BBE00ACF; Sun, 11 Jun 2017 21:01:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39493E00AA2
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 21:01:11 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id e23so19182518wre.3
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 21:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pkUYNCqLolvc5zgV0F34/a7NdXRIE6TDuDp0WKy3jos=;
	b=vC4aC6P5yAkYr7FMZV8VbHcVEwBX5YUHKgbEiljbgWiBFVhr1tlCmuXrHf0vmu4feE
	lWuYkPH6VDFSpUog8sC1FHuYNsuvSI9lmtLmigPT8GDwaxcnFQaSjm9vBJKaQAxFloNk
	ZqiENMaoTGJz16Bc3lBEauHSj5//UdW0T3qUA+9TDR3GGUoEonfP5aBnP3/ChWtIqRL7
	chqr4yic0dDObJVwBZg4UpqcRkG8GdJ/gpI2oVvR20RAb1CnXOYT9MfW39YK5ETrF6dj
	LHvwAZrorBTAlvmL1KlbdwLjh3WMbW5yZ2H+Kauk8Q8XufNRfVR8tuQIdiQzx/CT0iby
	tHpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pkUYNCqLolvc5zgV0F34/a7NdXRIE6TDuDp0WKy3jos=;
	b=UL/QR82WLLbm/dzt/ntIDqrmo1OrPviDhzqJEXinPr6WFWVlT8D6sbCg4fBr9giwyy
	Gj/sRn9EIgomc6ZTL1USy0CDDCBITdcv3+lwD2uEg7ipLxVAecvGnCpVXZJTwp088HXa
	AfqdcjFLkWVkQL3nc6Joz9JxHYgbP7Hl6PQqX6/2kEC8jdY8UcWIQFlfyeWovc80Ec7U
	I+RtDI6cPmxv8uur+W+xHv4Gc+WmWStc3aEawxDveS5HW2afd0bUoGbCc4961/KP+87a
	qlxq21IQXS8WVOm71c2aRPFWYkShaKh32qK70CpOC0G+BtaRkprcAW/v5HVmf9A9fd2I
	cW1Q==
X-Gm-Message-State: AKS2vOxV2pLuN/FbzLlLFCflQU393ugrtdCwLYMWFG9Grz3QC9PKpuc6
	jTd0TMb2XEpCkuxNrIVByjD5GvqfDw==
X-Received: by 10.80.154.129 with SMTP id p1mr4194785edb.131.1497240070790;
	Sun, 11 Jun 2017 21:01:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Sun, 11 Jun 2017 21:00:40 -0700 (PDT)
In-Reply-To: <1497229386-28541-1-git-send-email-changhyeok.bae@gmail.com>
References: <1497229386-28541-1-git-send-email-changhyeok.bae@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 11 Jun 2017 21:00:40 -0700
Message-ID: <CAMKF1soh9YHRHi2=5rErf78jzPLeSsPn-ff8oao2WpPtLUpPJw@mail.gmail.com>
To: Changhyeok Bae <changhyeok.bae@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: [yocto-docs][PATCH] ref-manual: Replace uclibc to musl
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
X-List-Received-Date: Mon, 12 Jun 2017 04:01:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Jun 11, 2017 at 6:03 PM, Changhyeok Bae
<changhyeok.bae@gmail.com> wrote:
> uClibc Replaced by musl from Yocto 2.2
>
> Signed-off-by: Changhyeok Bae <changhyeok.bae@gmail.com>
> ---
>  documentation/ref-manual/ref-variables.xml | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
> index bd9e517..f284e6e 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -5131,9 +5131,9 @@
>                      is normally the same as the
>                      <link linkend='var-TARGET_OS'><filename>TARGET_OS</filename></link>.
>                      The variable can be set to "linux" for <filename>glibc</filename>-based systems and
> -                    to "linux-uclibc" for <filename>uclibc</filename>.
> +                    to "linux-musl" for <filename>musl</filename>.
>                      For ARM/EABI targets, there are also "linux-gnueabi" and
> -                    "linux-uclibc-gnueabi" values possible.
> +                    "linux-musl-gnueabi" values possible.
>                  </para>
>              </glossdef>
>          </glossentry>
> @@ -14152,9 +14152,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
>  <!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
>                      Specifies the target's operating system.
>                      The variable can be set to "linux" for <filename>glibc</filename>-based systems and
> -                    to "linux-uclibc" for <filename>uclibc</filename>.
> +                    to "linux-musl" for <filename>musl</filename>.
>                      For ARM/EABI targets, there are also "linux-gnueabi" and
> -                    "linux-uclibc-gnueabi" values possible.
> +                    "linux-musl-gnueabi" values possible.


this should be linux-musleabi

>                  </para>
>              </glossdef>
>          </glossentry>
> @@ -14283,7 +14283,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
>
>          <glossentry id='var-TCLIBC'><glossterm>TCLIBC</glossterm>
>              <info>
> -                TCLIBC[doc] = "Specifies GNU standard C library (libc) variant to use during the build process. You can select 'glibc' or 'uclibc'."
> +                TCLIBC[doc] = "Specifies GNU standard C library (libc) variant to use during the build process. You can select 'glibc' or 'musl'."
>              </info>
>              <glossdef>
>                  <para role="glossdeffirst">
> @@ -14295,7 +14295,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
>                  </para>
>
>                  <para>
> -                    You can select "glibc" or "uclibc".
> +                    You can select "glibc" or "musl".
>                  </para>
>              </glossdef>
>          </glossentry>
> @@ -14334,7 +14334,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
>                      <link linkend='var-TCLIBC'><filename>TCLIBC</filename></link>,
>                      which controls the variant of the GNU standard C library
>                      (<filename>libc</filename>) used during the build process:
> -                    <filename>glibc</filename> or <filename>uclibc</filename>.
> +                    <filename>glibc</filename> or <filename>musl</filename>.
>                  </para>
>
>                  <para>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

