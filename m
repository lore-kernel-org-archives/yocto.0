Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8396E00D01; Wed, 27 Feb 2019 08:46:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FEC9E00AB0
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 08:46:24 -0800 (PST)
Received: by mail-qk1-f173.google.com with SMTP id a15so10234735qkc.1
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 08:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=bfPMpi/ltZqxqZQm8QOxv7aBUOMFId58KnDrDsS1DJA=;
	b=ehPrADRZ+38h2Eeoc2Cg29b1lPvcS9/3nqmYUEQBdfAZRmIb6l5MEquTRCUjXymR3d
	/CHyGVCdgI2atvSA90sxFQgN659lCOYmN8/DdcPAemlZZXpf+qz6zksaroSdPgsVlp93
	J27Z85J2l6DOdBuwBAs8gtn2dVppZPIsUVGBkPRxvZqnFgMq32kVWcFPrEn0ljQJWDSe
	e1OXlTITWx5S3zp3/puAfDXBo2jZ+K2raeg+7wlsJOetIIAn2fa7yEzWYGkDOkdvgVyF
	4BMZOzavKJOqjRzaDajrUmIR3CLxHOJCw5spakxgOd99qAOWbKz+xWVFDvXDbVeLDvbh
	Sx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=bfPMpi/ltZqxqZQm8QOxv7aBUOMFId58KnDrDsS1DJA=;
	b=Seu0FbDMA34D62wnUmOp+ntQM/1cZcu/O9JNXGYSZ/wLeRYZkMdL5lujzzocuK015r
	g9/fAkv+8Zuwf3akU6O+pyw7sG716KMUc+DbZhDhQnSY62jkEspPobsl5yieSM34Hg2X
	GDDmjqs2ZPJ9ps7veirs8KzLTNaTEkFh2nOmXS4ULvul3iGCRJ6mNrjUVxl83HJDpYw4
	3JOS7ARQmlExr5lHHbVwx1uVRC9IpsD25XXDJuxlGKA+TIyDZT+Qk4UXHFgSisSMTwEJ
	hv+K/erBpL3QdGEdd4hZvlB3R9mXBTl+kweWdCzLao80UthPt8YyBZS7xSW/2kMCMiWU
	MN4g==
X-Gm-Message-State: AHQUAuZkiYwiDrZmedB+CzOizHOoUg4j4s7DZAMAVn7KW+Wo5ghKDrHZ
	veWPbYJjO/Mj4/LrsxSks17JSl6fm+yp14qnJRiL7Fv7
X-Google-Smtp-Source: AHgI3IYO0phscRFn0N7V/aQ4GAFmpYzFJF8JiDfUkqXubh/FGYSM5D31EVcFRnlBqo/9RLYOJMojs9fYjXpizgRp8a8=
X-Received: by 2002:a37:4c88:: with SMTP id z130mr2930713qka.206.1551285983708;
	Wed, 27 Feb 2019 08:46:23 -0800 (PST)
MIME-Version: 1.0
References: <5c768770.1c69fb81.6d44a.fd96SMTPIN_ADDED_BROKEN@mx.google.com>
In-Reply-To: <5c768770.1c69fb81.6d44a.fd96SMTPIN_ADDED_BROKEN@mx.google.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Feb 2019 08:45:57 -0800
Message-ID: <CAMKF1sqGoTFM-yiC+VgQLE_Hgyvirt7_GHv41=SoDSmdd-Q71g@mail.gmail.com>
To: Bhupendra Singh <bhupendra.singh@ppsinternational.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: alsa utility
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
X-List-Received-Date: Wed, 27 Feb 2019 16:46:25 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 27, 2019 at 4:49 AM Bhupendra Singh
<bhupendra.singh@ppsinternational.in> wrote:
>
> Hi all
>
> How can i add alsa utility in poky core-minimal-imege.
>

https://www.yoctoproject.org/docs/2.6.1/ref-manual/ref-manual.html#var-IMAGE_INSTALL

>
>
> Thanks & Regards
>
> Bhupendra Singh
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

