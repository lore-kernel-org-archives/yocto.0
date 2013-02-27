Return-Path: <autif.mlist@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 95549E00550
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 09:05:12 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id fq13so804249lab.21
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 09:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=haE4+WfcWFrs5w/VTgHhA3AzJZUlaax/G6ByBVBtMv8=;
	b=JPs6yT59yyHC+6LTs7SgJuo83D+ZJvDpNL4gfGi4+bndUVnbfetfUY3yC+TfNUOp5J
	wyejLLpJ5cQfXmlU+N0GfT2u7cmqzGKh2xDwUAjh9/yr8nhmXOxqv1YXlF2l64nbNUBz
	o/z6a9C99WhsYtSq7XjfJXs+DWmPKU9P/cCgwhgdnppjhGWi+vuQDKOoUjGaO5z+aktJ
	pws96Ns8b0UN9eIg0YY/jwVDPP9gUitdybH5tJ4dCCmPJVLei2tlo+nqVqPVIxVsBedn
	VX+x9pfoP1y0bpClEeOdzOUpm6cqxA5YymT8qAe5JUIDqqzpcPug99gJ/Ra0YLdTG/uW
	td5w==
MIME-Version: 1.0
X-Received: by 10.152.134.40 with SMTP id ph8mr2610587lab.39.1361984710794;
	Wed, 27 Feb 2013 09:05:10 -0800 (PST)
Received: by 10.112.8.37 with HTTP; Wed, 27 Feb 2013 09:05:10 -0800 (PST)
In-Reply-To: <1358810277-11975-2-git-send-email-raj.khem@gmail.com>
References: <1358810277-11975-1-git-send-email-raj.khem@gmail.com>
	<1358810277-11975-2-git-send-email-raj.khem@gmail.com>
Date: Wed, 27 Feb 2013 12:05:10 -0500
Message-ID: <CADzUK1+6wEc3mNAymgshmPDBrcoJ8RnzUpTmJyM0RTLPOFHruw@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono][PATCH 2/2] monotools-server: Remove multiline comment
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Feb 2013 17:05:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jan 21, 2013 at 6:17 PM, Khem Raj <raj.khem@gmail.com> wrote:
> bitbake/master does not like it anymore
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../monotools-server/monotools-server_2.0.bb       |    2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/recipes-mono/monotools-server/monotools-server_2.0.bb b/recipes-mono/monotools-server/monotools-server_2.0.bb
> index 551c586..ef738da 100644
> --- a/recipes-mono/monotools-server/monotools-server_2.0.bb
> +++ b/recipes-mono/monotools-server/monotools-server_2.0.bb
> @@ -22,8 +22,6 @@ SRC_URI += " \
>         file://fix-pkglib_SCRIPTS.patch \
>         "
>
> -#      file://Makefile-pkglib.patch \
> -
>  DEPENDS = "mono-xsp gtk-sharp"
>
>  S = "${WORKDIR}/${PN}"
> --
> 1.7.9.5
>

Merged into master

Apologies for late merge - somehow this got lost because of bad email
filtering on my part.

