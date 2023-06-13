Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E41C7EE29
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 08:43:45 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.8650.1686645822666219547
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 01:43:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=JOzgiESw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4f624daccd1so6043701e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 01:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686645821; x=1689237821;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zQEDPpNrn0Q1t1OgV+o5EaCDIc2vfVUbxha8YFSvo9c=;
        b=JOzgiESwVFoE7jfAZdacaIe8P6rxDcujzO/oF859DMgECULWzEbW9bH4DAcwJxU+Gv
         6S/F0FGtZqbmx6W/uUWAd4QIdJuMooGMZvRLZLGC22Fa1SYvWvIfZDlIWkiAdIlMiAqJ
         4vtv/DMg5mB8sVW8+16jCfgZVu0nHBwpYYscU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686645821; x=1689237821;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zQEDPpNrn0Q1t1OgV+o5EaCDIc2vfVUbxha8YFSvo9c=;
        b=PdHHHHV+Rnf2MGg9HKWVpmEgzoVtC7bBo+n7JyYWknezPNBvj99fSZFP94kcvMm5v5
         aRix9OAJy1eJF+dEqzBgGIebXRt6D9uR/wZfefkaXZTL4If4cCuz2CnsfYrA3Bz+5y5v
         9kBAwatPNDFpwJjnZm3JC0GW+ieSpL/LVQnYiFtSmM0gdoMwn5D+lQvYylL0D4wcYbkn
         rN0SBCzCM1pjw9M6RGzLlpZWqB+RqUdwdVfjtZ0hrLaw5x0Q4Ig5vR+OAKxj7rSVISwe
         L0rtMbTrMVDLVc0GrgN4DqG0wZa5uwV0dDf2z8mvOzwblyXIzeU/v1KHtyszyaCyuTLz
         26Ng==
X-Gm-Message-State: AC+VfDz5yP1s/AxAWzBrB4miqU0WvNwvZviWEEKf6Flv4Vm2BNBP/0Qe
	RDZryOPuSPOkmyHC6hvICWtd8w==
X-Google-Smtp-Source: ACHHUZ7sATOFUy2Xm6aqDVgLnQ0Qh7+WBazWtAB2s0igul+JgV2jOTTZ9Za/AMX/cq4MzaJ3Iv2Uvg==
X-Received: by 2002:ac2:5050:0:b0:4f3:b4ab:d0db with SMTP id a16-20020ac25050000000b004f3b4abd0dbmr4412047lfm.31.1686645820711;
        Tue, 13 Jun 2023 01:43:40 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9a70:bab1:9f22:b535? ([2001:8b0:aba:5f3c:9a70:bab1:9f22:b535])
        by smtp.gmail.com with ESMTPSA id a7-20020a05600c224700b003f60a9ccd34sm13773425wmm.37.2023.06.13.01.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 01:43:40 -0700 (PDT)
Message-ID: <90bf11e12bb7d24541f77ccf826050498c5bcbb2.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] clobberdir: only move
 dirs more than 60s old
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Trevor Gamblin <tgamblin@baylibre.com>, yocto@lists.yoctoproject.org
Date: Tue, 13 Jun 2023 09:43:39 +0100
In-Reply-To: <20230607194102.3785739-1-tgamblin@baylibre.com>
References: <20230607194102.3785739-1-tgamblin@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 08:43:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60270

On Wed, 2023-06-07 at 15:41 -0400, Trevor Gamblin wrote:
> See: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14952
>=20
> Help avoid contention by adding a check to ensure targets are at
> least 60s old when attempting to move them into a trash directory.
>=20
> Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
> ---
>  janitor/clobberdir | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>=20
> diff --git a/janitor/clobberdir b/janitor/clobberdir
> index 16b019e..832173c 100755
> --- a/janitor/clobberdir
> +++ b/janitor/clobberdir
> @@ -52,8 +52,12 @@ trashdir =3D utils.getconfig("TRASH_DIR", ourconfig)
>  for x in [clobberdir]:
>      if os.path.exists(x) and os.path.exists(trashdir):
>          if (os.stat(trashdir).st_dev =3D=3D os.stat(x).st_dev):
> -            trashdest =3D trashdir + "/" + str(int(time.time())) + '-'  =
+ str(random.randrange(100, 100000, 2))
> -            mkdir(trashdest)
> -            subprocess.check_call(['mv', x, trashdest])
> +            x_age =3D time.time() - os.path.getmtime(x)
> +            if x_age > 60:
> +                trashdest =3D trashdir + "/" + str(int(time.time())) + '=
-'  + str(random.randrange(100, 100000, 2))
> +                mkdir(trashdest)
> +                subprocess.check_call(['mv', x, trashdest])
> +            else:
> +                print("Not moving '%s' - age is only %s seconds. There m=
ay be another process using it" % (x, str(int(x_age))))
>          else:
>              subprocess.check_call(['rm', "-rf", x])

I think we need to do this on the other side of the setup.

If we ask to run clobberdir, it needs to succeed and I don't think the
move causes us issues. What does cause problems is if a bitbake server
was still active on a build directory and shutting down. If we move the
directory from under it, that is ok, what causes problems is if we
actually delete it.

The age check therefore needs to be in trash_processor() in janitor/ab-
janitor.

Cheers,

Richard


