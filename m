Return-Path: <autif.mlist@gmail.com>
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 00E6EE002AB
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 09:04:45 -0800 (PST)
Received: by mail-la0-f52.google.com with SMTP id fs12so802124lab.25
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 09:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=ceD0yoddZ/fXNctFmjj+wiOXa3GjkavK2tM8YMTugP8=;
	b=DBPhjRIa8e98/YJ/dHh4ey5rRKI6mwXFSrHPjzT0MvKfGLYj5YHUkzlIc6VMPWQIja
	8QZ7rHXxC093xRkmhqz4M90SoC0Wazm5LT0cfLNrUVDGmLhIJrgkdk4L/i4IDkkBQVpt
	knLiYb5MtN66kZD+7lci0AQ4n8+Go5ylf04bXh5oJZIACRPfsIci5pZkoKChHCHADdri
	QMb9OK0aTiN37E2UFFns/xuiv1WnKfI+buBNVBShhzu5qJakMQ5tH0JjGjxFEwqUkvN/
	uXW1UjoCGKlw/yOcCabhXzBtJd0Wm5MpVAlwTKcMqpHb51cuTaBnAdqbwUsV0q/BGA8C
	OAMA==
MIME-Version: 1.0
X-Received: by 10.112.10.102 with SMTP id h6mr2286889lbb.75.1361984683386;
	Wed, 27 Feb 2013 09:04:43 -0800 (PST)
Received: by 10.112.8.37 with HTTP; Wed, 27 Feb 2013 09:04:43 -0800 (PST)
In-Reply-To: <1358810277-11975-1-git-send-email-raj.khem@gmail.com>
References: <1358810277-11975-1-git-send-email-raj.khem@gmail.com>
Date: Wed, 27 Feb 2013 12:04:43 -0500
Message-ID: <CADzUK1LaJk9n-yJtYd0QLvQC_9hFKibq2O=hpxPqWQnCejX-BQ@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono][PATCH 1/2] layer.conf: Use .= for adding to BBPATH and += to BBFILES
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
X-List-Received-Date: Wed, 27 Feb 2013 17:04:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jan 21, 2013 at 6:17 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Fixes parsing errors which is appearing after this commit to
> meta-openembedded
>
> http://cgit.openembedded.org/meta-openembedded/commit/?id=3c21a46020bd0816579648f
>
> This triggers
> exception NameError: name 'base_contains' is not defined
> without this change
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/layer.conf |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 6bcf70e..d8cc797 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -1,8 +1,8 @@
>  # We have a conf and classes directory, add to BBPATH
> -BBPATH := "${BBPATH}:${LAYERDIR}"
> +BBPATH .= ":${LAYERDIR}"
>
>  # We have a recipes directory, add to BBFILES
> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-mono/*/*.bb \
> +BBFILES += "${LAYERDIR}/recipes-mono/*/*.bb \
>              ${LAYERDIR}/recipes-mono/*/*.bbappend"
>
>  BBFILE_COLLECTIONS += "mono"
> --
> 1.7.9.5
>

Merged into master

Apologies for late merge - somehow this got lost because of bad email
filtering on my part.

