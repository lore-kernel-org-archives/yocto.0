Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B1DEB64DA
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 13:39:51 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.18639.1686836383679898150
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 06:39:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=RcUjFnTn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-30fcda210cfso2427155f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 06:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686836382; x=1689428382;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5UljKhSPVBPLzioRuOH/1Ngtwh8rYopOWXwSAihmikk=;
        b=RcUjFnTn//32IH07gJfQxMFAZh3uONc54ICUJmHjATA0yYnOlsvh8R4opnbbnF1E1M
         I6eRWHTQSFMAIddDmpxfx0pPAUpX3e1pjoVJVH3P/kSMeun7fNpQK+g/d7A8wpOgIwft
         b7sqp8IOVOirorR4GQ3G/Sv9pSI+gcfseIhvE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686836382; x=1689428382;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5UljKhSPVBPLzioRuOH/1Ngtwh8rYopOWXwSAihmikk=;
        b=Acvrv2m7b4+z00RgTHYkj17g315bg1LQYabuTHLy/k9BMfpLkRaitl+/B0m/4d+kka
         FbsTThQnprQc8MH1VQXBHIOidpLRepMiSLnVutf5EpP+MYm3k9b30wn2/5uk85TTRGNP
         n15hGAmQccdvuvXYo2W9SHUR5Ue8dChyLScG2c1OK7leR7tJVBEOyp2vFWqkwYM9mpbH
         sPjADmasUQK9rgkDAWYyCfQuBPEVZfUOgGLglo4SRY7M3NLK5I3kEm6weT87AO3iqfG9
         QCjt+2FujYXKofkRgWD/1wg/EEtwJEhHXNXDsVUn4yD4Kz13RrJI7eX6yp2bm6I/raMS
         Fg1w==
X-Gm-Message-State: AC+VfDzeKcUD9i2CNF9W8O7AwCb+Rb1lDMlWRQxIGDCpZFDF5Hx5kaa4
	ezdgv0QYbI8JOWPKqaOCH8qYKA==
X-Google-Smtp-Source: ACHHUZ7VqM6aMlCNvpxYwgR1ptOyJx45M0uQiga+wTqE1YVNw6I+if35EAbjV4s1Gyce4wIUb8EhPw==
X-Received: by 2002:a5d:6b0f:0:b0:311:17ae:ddbf with SMTP id v15-20020a5d6b0f000000b0031117aeddbfmr1343889wrw.51.1686836381998;
        Thu, 15 Jun 2023 06:39:41 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:441c:bff7:bd09:d1e1? ([2001:8b0:aba:5f3c:441c:bff7:bd09:d1e1])
        by smtp.gmail.com with ESMTPSA id m7-20020a056000008700b0030fa166d8a1sm18596990wrx.34.2023.06.15.06.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 06:39:41 -0700 (PDT)
Message-ID: <70cbbbbb48a55be2373f9674323f3534c396eaa5.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] ab-janitor: only rm
 trashdir files over 60s old
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Trevor Gamblin <tgamblin@baylibre.com>, yocto@lists.yoctoproject.org
Date: Thu, 15 Jun 2023 14:39:41 +0100
In-Reply-To: <20230613170501.2326478-1-tgamblin@baylibre.com>
References: <20230613170501.2326478-1-tgamblin@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 13:39:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60308

On Tue, 2023-06-13 at 13:05 -0400, Trevor Gamblin wrote:
> [YOCTO #14952] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D149=
52
>=20
> Help avoid contention by adding a check to ensure files and directories
> are at least 60s old when attempting to delete them from the trashdir,
> in case bitbake or another process is still actively using them.
>=20
> Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
> ---
>  janitor/ab-janitor | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/janitor/ab-janitor b/janitor/ab-janitor
> index 080b598..659817e 100755
> --- a/janitor/ab-janitor
> +++ b/janitor/ab-janitor
> @@ -43,7 +43,13 @@ def trash_processor(trashdir):
>          try:
>              files =3D os.listdir(trashdir)
>              if files:
> -                os.system("nice -n 10 ionice -c 3 rm %s/* -rf" % trashdi=
r)
> +                for file in files:
> +                    file_path =3D trashdir + "/" + file
> +                    file_age =3D time.time() - os.path.getmtime(file_pat=
h)
> +                    if file_age >=3D 60:
> +                        os.system("nice -n 10 ionice -c 3 rm %s -rf" % f=
ile_path)
> +                    else:
> +                        print("Not removing '%s' - age is only %s second=
s. There may be another process using it" % (file_path, str(int(file_age)))=
)
>              else:
>                  time.sleep(120*60) # 30 minutes
>          except Exception as e:

Looks good, merged, thanks!

Cheers,

Richard

