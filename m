Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B462D5CCBC
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 15:18:49 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web10.17659.1730301521472213369
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 08:18:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=Ve18nL85;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.181, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e291f1d659aso7418373276.3
        for <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 08:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1730301520; x=1730906320; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8jvsaC/szLpGZpks5V9wq5e3JaywqCWjkOm1LGJSos8=;
        b=Ve18nL85dTcFa+Q28aiR+cjJXnG/1IXt7xIoD/eZSOOyrDx16jKs9PsacaZw2WZiOU
         OdMMb1dSeba5e1xmkFFVxS+XFTKYr9XB69LCEdvzKjvAjDpjzEwMc/su2dIVhQmRhtfA
         VbnisWN3lbZZ7EdaeI5X0enwJR/MekZ7Pv4JFv8ZLXluPqDXg6WeeaXsNjaJ3Qd0Rs9h
         sNjLeP+urZOsYSZO160RBsoV/FNTJ7fZMfjZLgWqY+7TffxYlZF/IOvHg6HL6SInkXDx
         Drvt/OfBchLOuFyhSnqI25YWRakW4FQ0FYqH/+KU/xXFtTX6FCoz0PqkcKsY+jMdGO6j
         jMhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730301520; x=1730906320;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8jvsaC/szLpGZpks5V9wq5e3JaywqCWjkOm1LGJSos8=;
        b=v6OEfSA4Jz0WuxdYtWbScWML1OxlRVzRCgNSbGJPKX2mzlXeXyUuUVYmMHu+TDsJAz
         j8gPkY6lHEtCREa+HcXi8qcRuV6ySq0DgRv6oHiAbDG++fmod6zxCdaQEhqEO96/uq6u
         xd37k6OkZP9qfTR/TPVWgHfeON+RYZSKDn4ldMmto70V5tFntsKAS0+pC/kkXnZet0C2
         cNlxbB9qTPuwj/UFl812qBu5/XT32tDi5h9fPl/FjFXEuwXpa4VpHx2hothjwPlhq146
         gobJymhgoR5RRlkFIU5JJvo9A/2sXsw44kSIqH7MDkTvt0dZzTCJWYmULDkd8kDe2xGf
         GcpA==
X-Gm-Message-State: AOJu0Yx+TFWisozVp6eUYwEtfFeVljvnVlS52NVbFRk3OgcRAIDlgJ0U
	sB0AHzdhm+OWGLa7Tw8e3rPGO7E8naBU3o8PSffzn9VREKi3jrGJn27PLX2vVJZiCOI7SJUbHMo
	wGNrzp7/5sTK24hO1lHz0VkZRCffWTsrqf7BeuOZodIDKr3Rg
X-Google-Smtp-Source: AGHT+IFlqU7TCWz7n9DFuSBOJSNJhnAVe4dO2M9vpX3kaQ8W0NKCgidcsYPkaiURHbYe0KkvW984JTZc+DrQ+WnWXZw=
X-Received: by 2002:a05:6902:218e:b0:e30:c614:5c40 with SMTP id
 3f1490d57ef6-e30c6146004mr4690162276.2.1730301520506; Wed, 30 Oct 2024
 08:18:40 -0700 (PDT)
MIME-Version: 1.0
References: <20241002225451.263086-1-JPEWhacker@gmail.com>
In-Reply-To: <20241002225451.263086-1-JPEWhacker@gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 30 Oct 2024 08:18:28 -0700
Message-ID: <CAOSpxdZSCzmXMJ-R2Xri8OcQw4Q38b6nkbH-F83sUO9vVgkMJw@mail.gmail.com>
Subject: Re: [yocto][meta-mingw][PATCH] oeqa: Set LANG in wine tests
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com, Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 15:18:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64186

Would it be possible to cherry-pick this commit to the styhead branch?
 I'm seeing the same issue there.

Steve

On Wed, Oct 2, 2024 at 3:55=E2=80=AFPM Joshua Watt via lists.yoctoproject.o=
rg
<JPEWhacker=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Glib likes to try and determine the local name using the Windows
> GetConsoleOutputCP(), which doesn't work well running under wine in our
> test cases (it seems to be linked to stdin not being a terminal).
>
> This results in the error message:
>
> GLib-WARNING (recursed) **: Failed to determine console output code page:=
 Invalid access.. Falling back to UTF-8
>
> and then Glib falls back to the locale "UTF-8", which is invalid and the
> program will likely crash.
>
> In particular, pkg-config seems to be sensitive to this on some hosts
> (e.g. Ubuntu 24.04)
>
> Set the LANG variable to a valid language to make sure that this
> codepath in Glib is not triggered.
>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  lib/oeqa/sdkmingw/context.py | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/lib/oeqa/sdkmingw/context.py b/lib/oeqa/sdkmingw/context.py
> index 5319223..5869e57 100644
> --- a/lib/oeqa/sdkmingw/context.py
> +++ b/lib/oeqa/sdkmingw/context.py
> @@ -40,6 +40,12 @@ class OESDKMinGWTestContext(OESDKTestContext):
>          # Convenience variables to make test cases easier to write
>          env['SDK_DIR'] =3D getattr(self, 'wine_sdk_dir', '')
>
> +        # Set the language. If this is not set to a valid language, then
> +        # program that use glib will attempt to determine the language f=
rom
> +        # stdin, which results in an error, fallback to "UTF-8" which is
> +        # invalid and crash
> +        env["LANG"] =3D "C.UTF-8"
> +
>          return env
>
>      def wine_path(self, p):
> --
> 2.46.2
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63932): https://lists.yoctoproject.org/g/yocto/messag=
e/63932
> Mute This Topic: https://lists.yoctoproject.org/mt/108789984/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

