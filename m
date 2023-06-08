Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948BDC7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 13:52:09 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.9642.1686232319429926397
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 06:51:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=hkSurWKa;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: jpewhacker@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2b1b66a8fd5so5852451fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 06:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686232318; x=1688824318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xrYsgyGJig7tHSK8K7KtfCMMkW/A/8q0z5uzJTJsEQw=;
        b=hkSurWKaSCk+9pyQ00fcHpXDNsw9oaxoexYaYRB76/9AhH8DsMIe/QMAexqtQH+I1z
         Mn1Q0rUG3Y7NeeOi6Euy6Dbhs3N/WWqQaq2czhfqJIBERoYcg56dv7t595T/R6w/LTAs
         fJa6CwAIUhnu1GpCgXQGQtdzWFJEFOtF1aQULQkhrgcHJy+8K1JiUqdJJRBfm+oDoh2U
         HYW3mXqgoP/P548+Iwk5ZyqGGDGUXQfhwHNSCene5Jn7vmXhQJfYcrxge966k0SCMsgo
         0BwBI9K5DGEkw2IWXCynTUyugZVipPkPa6Xjutg6Go8OBFw5ZvhCZXWF/zdgQpIh8b4D
         oThQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686232318; x=1688824318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xrYsgyGJig7tHSK8K7KtfCMMkW/A/8q0z5uzJTJsEQw=;
        b=i7Z+qR72WMYqRu37M+CtKihSklLSKaxXCpoBlcLP0OeiXvWuCksQil2+DcyAn7BAwl
         AKr6C3qto9pFPXAeTpR7pgHcWtaWTrPrIH+LWZQ236YensRt0V8JvONevmgT8eEqlJLo
         FJsjwco5S+Y9HBQR/pIaBFImiGdnx19cRa+SmTd/LvwX7whPfdZC77uJgr9Dxgde3K+b
         GICZ8OVQLIy0gu3aiAbc5HL4ROe2ks9nFLAGXyMYvgfxYHKDfb2INajF3lBCKnGU9SUW
         fyA19+lZArC0cPKG08LvK5XqnctX6l4T7nHOGEWgZK5wLpMnVtGcnGZce5PURZ0+J+Gz
         KsgQ==
X-Gm-Message-State: AC+VfDynndgXzXkbgmY9clyx6vXZjwLWv/zaztujEFbg1k47j01lfGfB
	dXniH4E4w9AbN29wioKCdS9UORjnFJE+i5lNQ1w=
X-Google-Smtp-Source: ACHHUZ60e6bk3igte97go5oZLSPVseY8nCykKClA8pAbyizpOeyM7s6IGqtusMfI9JAPZDAyfb5slCc58MqJqExyG9I=
X-Received: by 2002:a2e:7e03:0:b0:2b1:edfe:8171 with SMTP id
 z3-20020a2e7e03000000b002b1edfe8171mr3181652ljc.36.1686232317412; Thu, 08 Jun
 2023 06:51:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230608094926.2280379-1-samuli.piippo@qt.io>
In-Reply-To: <20230608094926.2280379-1-samuli.piippo@qt.io>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 8 Jun 2023 08:51:45 -0500
Message-ID: <CAJdd5GaqrkdUO7yDDSfXbzLfxBXjynKKO_-bLiZueb=Mg00shQ@mail.gmail.com>
Subject: Re: [meta-mingw] [PATCHv2] Ignore WINDMC from hash
To: Samuli Piippo <samuli.piippo@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 13:52:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60232

On Thu, Jun 8, 2023 at 4:49=E2=80=AFAM Samuli Piippo <samuli.piippo@gmail.c=
om> wrote:
>
> Amend 6c54d16058ed8fb911c44df93b5732ae693b9803 and add WINDMC
> to be ignored from hash, otherwise it contaminates sstate cache
> for every recipe.

Applied. Thanks

>
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  conf/machine-sdk/include/mingw32-common.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-s=
dk/include/mingw32-common.inc
> index 9ec6e07..1007bd4 100644
> --- a/conf/machine-sdk/include/mingw32-common.inc
> +++ b/conf/machine-sdk/include/mingw32-common.inc
> @@ -46,7 +46,7 @@ export WINDMC
>  export WINDRES
>  export RC
>
> -BB_BASEHASH_IGNORE_VARS:append =3D " WINDRES RC"
> +BB_BASEHASH_IGNORE_VARS:append =3D " WINDRES RC WINDMC"
>
>  # Needed to override no-static-libs.inc
>  DISABLE_STATIC:mingw32 =3D ""
> --
> 2.25.1
>

