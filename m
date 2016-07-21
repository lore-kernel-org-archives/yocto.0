Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B0E7E00EB5; Thu, 21 Jul 2016 06:39:05 -0700 (PDT)
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
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86042E00E77
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 06:39:02 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id j37so3796664qta.0
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 06:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JXUNWW2qzDm36NED31US8mXdqr4MxMxIBmR1BuFtNhI=;
	b=QQIuGFq4lX7/hJdkqysxtkEyi18lvNOt0s/HfGN91UIwqJY80TR8y84j/OD+IdUNDw
	HFKiJp6HANCYJlA8irqHBZ83HROZl15h5X9EtD2QRPeFuxkTfUehly9/+qI8+Nui/q1a
	y2YL2obXExoJO6I9KLyoK/VNNi4nq7SEWfVudOXv+u4/N/TsQWJtPNJQp+3qTXZWth+y
	AlYfln6C86XyelzUhki/DJbL3ZHDDGxiyS6zaPcFx4VMvHPw9N7JMFANgS/TxLsM1Nnb
	6FBzWnJ53fjkkwZOXfBSKG+oWPWb6bGQ3zECKu+RQaVXbgn+qCulwFaq695AcFPWmlZa
	b75A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JXUNWW2qzDm36NED31US8mXdqr4MxMxIBmR1BuFtNhI=;
	b=feWPQ+ZpvGU5yP6LSE+4CuWdHuZPnQpmT3vYvyHBl7lBG3Vh0TT+pxAQsPlZyhE+LK
	eihg/fubsOoPZxnHwF448GvOwvGl5l5ftIGPESQTnXRsW7D5sog8SBY1guoY7uFV0ALH
	Op3WZrBoPIky2ENYrj7nM4gNnmAbgU/t5naPMb55Sk0NdL+J4SWznmGTt5mhbOIENJVF
	ioHny+QcSh902fhY8XbIhp0z4jJTo8VV179jYi+3Z/tSfqisTTzQumnztp/KI0CdLLWz
	R2UPuVuUnv3o4U9gwFvsbJ+t8l+ZL5fVKuh6ahNy6iHZnJFJxQVUO5bSDtELLWafuy+L
	XJMw==
X-Gm-Message-State: ALyK8tInDAOW5NrgeiRveA/d9vvB+ZpouzJ4fhewzx9rI1Ylerr6kej4viXCnAl57+tVpY2LXtXAJF+/6S6b2A==
X-Received: by 10.237.50.35 with SMTP id y32mr43506660qtd.98.1469108342371;
	Thu, 21 Jul 2016 06:39:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Thu, 21 Jul 2016 06:38:33 -0700 (PDT)
In-Reply-To: <1469090900-29903-1-git-send-email-thomas.perrot@tupi.fr>
References: <1469090900-29903-1-git-send-email-thomas.perrot@tupi.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jul 2016 06:38:33 -0700
Message-ID: <CAMKF1sqMoqDB7DVaKUnX8BcnvSJ4V6PLk8ZnkeFae1nfgCn8_w@mail.gmail.com>
To: Thomas Perrot <thomas.perrot@tupi.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] Fix a trousers build on when not in use systemd: unparsed line: 'inherit'
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
X-List-Received-Date: Thu, 21 Jul 2016 13:39:05 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 21, 2016 at 1:48 AM, Thomas Perrot <thomas.perrot@tupi.fr> wrote:
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
> ---
>  recipes-tpm/trousers/trousers_0.3.13.bb | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/recipes-tpm/trousers/trousers_0.3.13.bb b/recipes-tpm/trousers/trousers_0.3.13.bb
> index e274972..6853f18 100644
> --- a/recipes-tpm/trousers/trousers_0.3.13.bb
> +++ b/recipes-tpm/trousers/trousers_0.3.13.bb
> @@ -16,8 +16,7 @@ SRC_URI = "http://sourceforge.net/projects/trousers/files/${BPN}/${PV}/${BPN}-${
>  SRC_URI[md5sum] = "ad508f97b406f6e48cd90e85d78e7ca8"
>  SRC_URI[sha256sum] = "bb908e4a3c88a17b247a4fc8e0fff3419d8a13170fe7bdfbe0e2c5c082a276d3"
>
> -inherit autotools pkgconfig useradd update-rc.d
> -inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
> +inherit autotools pkgconfig useradd update-rc.d ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}

while this is ok. For consistency may be check for systemd in
DISTRO_FEATURES check is better since thats what is used in other
places.

>
>  PACKAGECONFIG ?= "gmp "
>  PACKAGECONFIG[gmp] = "--with-gmp, --with-gmp=no, gmp"
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

