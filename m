Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B92F9E0053F; Thu,  4 Oct 2018 10:34:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
	[209.85.222.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A92E003D9
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 10:34:06 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id m7so3717534uao.8
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 10:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Wo9ScJNdFBvAHBF/2q8ZsFKvJ99mi7ce3oZq3pN2KvA=;
	b=fWFvKAOBN/o1y2k2bapcUHBG6R8gmIa31TGixd+hoKJfKjTuhKsywRsJaLLLUZwuWl
	IvJxCmfYUJCEUeto2R0BASVuxBL+5CGddb+MhE8BBndaX4fYwoSIAG6XTonAh6QuVAjt
	b8MdKdXIFRmE5UatfaO5f6Tmv0SKEdpiFPdVJUtZkXt9w3VWZ6y9mJXdYLHj69G//zpz
	oGmq5BQ5aJOM9pBR5xp7Xr6iXfNBuoFmDmWQMR800DaxBD6Ta8f/dWLt1zUrmWkqtIzX
	tMWRItrjDfGSNhibsfVyKipXgy9pOpRGj/dnM8IN1FbY+Msy6MNfrcaaAMkgksO1kr8c
	TdYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Wo9ScJNdFBvAHBF/2q8ZsFKvJ99mi7ce3oZq3pN2KvA=;
	b=onEoojmr8lJXtZzK3cgy5CFuUFJ3cmKh2Nv9fshaONPjVnE/AQeFRhvILv1HdkPvND
	NGaf3gOuvMQL4E8HbBTmB0xL3NPwEQm+dgO4QiVpMvA0isqv0CxpRzm6ydziOr8wLESd
	M+UkpJJuFjjhknVdj+JrmGWnxrEgHzDkxQtpBmx9wD0VRZ1te1uBGVieRkleuvyN20/Q
	dI2brkmE6m/DquebjkzpxYULrBk8IGJfvBbc//FJZjSJOlb8Ex/JselIASgD5hU1/Rg4
	dEXpoE35Ns3QtlX046uBWNc3SHm2nWWiJ2ws8xmeBmW1Lt5GEoPhBjYwhmlBWJkO/H+0
	QMwg==
X-Gm-Message-State: ABuFfojG6b9GTukHdWkpyRsvQ0Fh6AtaQKj2FuXBhEiREAZW3u5HKd7O
	myiJxUl826JzQ4zwLo9eIrcfp+YnE90FRrHpnxAFyACp
X-Google-Smtp-Source: ACcGV60N6UR3KYmtx66S60inagrWVsmtOfpwQfK+gO08en6Gq78snoidhGhXNCClBP2kofLK/oosceCrFgseE4RkSsI=
X-Received: by 2002:ab0:1427:: with SMTP id
	b36-v6mr3097461uae.47.1538674445963; 
	Thu, 04 Oct 2018 10:34:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2748:0:0:0:0:0 with HTTP;
	Thu, 4 Oct 2018 10:34:05 -0700 (PDT)
In-Reply-To: <20181003161616.25047-1-dev@sashko.rv.ua>
References: <20181003161616.25047-1-dev@sashko.rv.ua>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 4 Oct 2018 10:34:05 -0700
Message-ID: <CAJ86T=VME6YWFytZQqPwP8nbTp9U8v+d15EkxuRMjHVo9_s+yA@mail.gmail.com>
To: Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Oleksandr Kravchuk <dev@sashko.rv.ua>
Subject: Re: [meta-gplv2] gnutls: use https mirror for SRC_URI instead of ftp
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
X-List-Received-Date: Thu, 04 Oct 2018 17:34:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 3, 2018 at 9:16 AM, Oleksandr Kravchuk
<open.source@oleksandr-kravchuk.com> wrote:
> Signed-off-by: Oleksandr Kravchuk <dev@sashko.rv.ua>
> ---
>  recipes-support/gnutls/gnutls.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutls/gnutls.inc
> index 4cf375f..0e2c0b7 100644
> --- a/recipes-support/gnutls/gnutls.inc
> +++ b/recipes-support/gnutls/gnutls.inc
> @@ -16,7 +16,7 @@ DEPENDS_append_libc-musl = " argp-standalone"
>
>  SHRT_VER = "${@d.getVar('PV').split('.')[0]}.${@d.getVar('PV').split('.')[1]}"
>
> -SRC_URI = "ftp://ftp.gnutls.org/gcrypt/gnutls/v${SHRT_VER}/gnutls-${PV}.tar.xz"
> +SRC_URI = "https://www.gnupg.org/ftp/gcrypt/gnutls/vv${SHRT_VER}/gnutls-${PV}.tar.xz"

Is the double v really required?

>  inherit autotools texinfo binconfig pkgconfig gettext lib_package gtk-doc
>
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

