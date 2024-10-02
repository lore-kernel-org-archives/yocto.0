Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44F9ACF3199
	for <webhook@archiver.kernel.org>; Wed,  2 Oct 2024 07:04:22 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.1695.1727852652509081076
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Oct 2024 00:04:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=idmMyMlC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37cd3419937so3240719f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 00:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1727852650; x=1728457450; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7i17uf5wvglLMuFqGQ/ppXLeX9PKDlrm14ZQxeob3xs=;
        b=idmMyMlCZ1C5vBH19cPO8G2ZC2IgaFB/NvMy0mQAAciF76IEdPD4zKkQyCQiA2yPS4
         33vVgj7LRKIy3RL0YdRfUhsmSaQ99OiVWQSes7p1bwYVdDKk8IQGcph3Il6wX08konPJ
         9SxsqX0VyKg8qJXbi+UUv5gv7oG8ycFuZ6dhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727852650; x=1728457450;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7i17uf5wvglLMuFqGQ/ppXLeX9PKDlrm14ZQxeob3xs=;
        b=gih96SBn5ioSUmUk8JVQ1S2HYOq6qO64wzCEDqSR2i7bBuBJLeAHFAmxl1m+/atWaW
         knBmkDlep2efotrKlJZ2m47gZ/aZ05wximPts7O5k3oCr1mSiEJfIupHk5O9JtfOmi9G
         inLx/VPxKAQflnqMqWuD6Lma8sahJHwHk4HHfZeYjbOCby7vLJhFS3nnSOyz1AKwxXwr
         0QGydrPeULvvobU1aPrmSlkUlEUcoRjzxhB8ZckShJM5VSF2Cw9NdbC17nDtR0FQuDp4
         N/Z7pHpNj1numvFe6nQeE2hDeo+WqoMd/0N+8pcGKJTJibWrZ539jBA9lHmgLKyH1dHo
         mmDQ==
X-Gm-Message-State: AOJu0YwawXtU96gYX1E5ngGV+cCCWk4vYmFJTiuOWagpoAKNiSIUimeb
	kt3VwJH+YfvE9t2EzldzYArbfn7RfwPXHUIfWo3yMklyCARxO8VJVYn83B66FCzsWScytABl5zP
	U
X-Google-Smtp-Source: AGHT+IFcMHDKzdp7Wg2kugXZdlEaW0IMHB8xuT44wC6p/UKeefdXzvgKGu8vXhKMwQQZ55sED58++w==
X-Received: by 2002:a5d:67ca:0:b0:374:c2cf:c01c with SMTP id ffacd0b85a97d-37cfba183camr1105677f8f.48.1727852650461;
        Wed, 02 Oct 2024 00:04:10 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:33ed:8fde:4d0c:205f? ([2001:8b0:aba:5f3c:33ed:8fde:4d0c:205f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd56e6488sm13353504f8f.46.2024.10.02.00.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 00:04:09 -0700 (PDT)
Message-ID: <8eda1101b67785ef55bdf0dc2fb88c744cb774b8.camel@linuxfoundation.org>
Subject: Re: [yocto] A very unhelpful message
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, dellis@innoflight.com
Date: Wed, 02 Oct 2024 08:04:08 +0100
In-Reply-To: <PH1P110MB12656EACA26E9D3F12F791F1B070A@PH1P110MB1265.NAMP110.PROD.OUTLOOK.COM>
References: 
	<PH1P110MB12656EACA26E9D3F12F791F1B070A@PH1P110MB1265.NAMP110.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 07:04:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63925

On Wed, 2024-10-02 at 03:32 +0000, Duane Ellis via lists.yoctoproject.org w=
rote:
> It=E2=80=99s been reported before:
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0 https://lists.yoctoproject.org/g/yocto/topic/war=
ning_image_fstypes_remove/103013050
> =C2=A0
> The gripe I have is this:
> =C2=A0
> It occurs =E2=80=93 but bitbake does *NOT* tell or give you a hint to *WH=
ICH * bitbake file is causing this.
> Error and warning messages like this should include the recipe name or di=
rectory or something that
> =C2=A0
> This simple change would be very helpful to victims of this madness
> =C2=A0
> diff --git a/bitbake/lib/bb/parse/ast.py b/bitbake/lib/bb/parse/ast.py
> index 9e0a0f5c98..8e700b1043 100644
> --- a/bitbake/lib/bb/parse/ast.py
> +++ b/bitbake/lib/bb/parse/ast.py
> @@ -132,7 +132,7 @@ class DataNode(AstNode):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ":append" in key=
 or ":remove" in key or ":prepend" in key:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
if op in ["append", "prepend", "postdot", "predot", "ques"]:
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 bb.warn(key + " " + groupd[op] + " is not a recommended =
operator combination, please replace it.")
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 bb.warn(self.filename + ":%d: " % self.lineno + key + " =
" + groupd[op] + " is not a recommended operator combination, please replac=
e it.")
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0flag =3D None
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if 'flag' in groupd and =
groupd['flag'] is not None:

I don't know why I didn't do that in the patch which added this code.

Changing the warning to include the filename/lineno seems like a good
idea and such a patch would probably get merged.

> =C2=A0BETTER =E2=80=93 change the bb.warn() to *NOT* print WARNING: at th=
e start of the line. But *AFTER* the =E2=80=98%d:=E2=80=99
> =C2=A0
> Reason:=C2=A0=20
> =C2=A0
> BB does not use the well-known standard error reporting format used
> by just about every UNIX tool out there.
> Examples include: GCC, GREP (with the -n option) to name a few well-
> known examples.
> =C2=A0
> Why? Many tools, Eclipse (error parser), VSCODE, Emacs and VIM can
> parse the tool output in this form and turn the item into a clickable
> error in your IDE or EDITOR of your choice. But if the tool does not
> output this format it makes it harder to resolve errors

This is a bit harder as bitbake can mix debug, normal output and
warnings onto its console output. A prefix is used at the start of
lines to make it much clearer in streams of logs where there are such
messages.

When running in larger builds, the messages can also be prefixed with
the name of the recipe generating the message as in a multi-task
environment, it has been found to be problematic not to know where the
message was coming from.

Given those reasons, I'm not sure we can easily change this. I do agree
line/file info is sensible though.

Cheers,

Richard


