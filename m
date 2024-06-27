Return-Path: <james.hilliard1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F6A0C3064D
	for <webhook@archiver.kernel.org>; Thu, 27 Jun 2024 18:12:08 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web11.1152.1719511926411357004
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 11:12:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C811PX4i;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: james.hilliard1@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-445033fbc24so18574611cf.3
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 11:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719511925; x=1720116725; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tdBwop3XqAo6oIYspHdwS4UNv5qMPgY3B0LnwVgESak=;
        b=C811PX4iRtw8xo2N4PeRl8Mfz4JUjKUqVhxHpgeCfnjs3+Asm0l9G/W0DNBAYKvZaM
         lHMX7dZiqRlj3sz0y2Qe4fjQmEGNmFXosGSC0rp7Wj80HXBvxT08iR9iJ8YJI7mZ/ET8
         GrjXdQ63YDpNi/gOB1mYzf9aknXsxWk7bzgvmhofQ5xU00kZJN0D7JG8pUGTb9eMfaoT
         V1TcHZYe7wLJTzCZ7yO1rzLU4mUzKi2BPhhYIr6AZ7l3XlPBDiVdTR8e6W29kW6EJxrQ
         YgVeQi5ZRWqs03mMfs5RQrVUo3qh/br4e0ZD6WAXufh+CLhxDW8uDfMC0pXbE1VvylQh
         2Z3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719511925; x=1720116725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tdBwop3XqAo6oIYspHdwS4UNv5qMPgY3B0LnwVgESak=;
        b=sFKBL9nPvgLe9hjehjAtn8OTT0G4K/Fpv6Xar7T6ufNBwQNUwOI+aJDmlwSmU/dLzF
         RsvI+53nyd3FjGcni3opmOCjhTYIau9IUKpSHIraHbAOGaPyBe6ws+wDtcQWwAZb0Ksn
         hcCFtJKW2hTixcFK8qklsWvZKkzuMiYHuAOfeP2p7VkXvU/URCNSqMENomBzhc7f+Kmt
         643NqebrKNFK+g1JXWjr4tFy1OJKGVd7Dg9UAeR/Qk0FKxRSN++X3ghKLCQF1Nog40tZ
         ncSLj2Mz2d5cA7t9DA7vMK2vOzMjk/ejKTqYUbFH/w9wFUbn1yXyaFCKvOrcX0OWMqy8
         668A==
X-Gm-Message-State: AOJu0YxFmmPCvRkb4qwiJqon3ewobohmd2ErwNes/G1OCVTXFzvtcpzQ
	CUs7lbUNEX+m1u0Avpc0S8M3AcekaNyhAinxpeFjXnbI7b5Kq3BRnEQgYJgPxbKhzq+PY0uL1Cq
	fstbW8bUs16+BSkeGjt1n+sUGwFA=
X-Google-Smtp-Source: AGHT+IHd6umadLSpAzbcT+KU2bXEXab42OGT2THHFsGB3x24UqRa82nQOBzu6meqfG+GWDQ9JsWBsJNRwqZg+S/rb3s=
X-Received: by 2002:a05:622a:18a7:b0:43a:e2da:2b78 with SMTP id
 d75a77b69052e-444d9217371mr156856691cf.29.1719511925315; Thu, 27 Jun 2024
 11:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240531185101.2228696-1-james.hilliard1@gmail.com>
In-Reply-To: <20240531185101.2228696-1-james.hilliard1@gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Thu, 27 Jun 2024 12:11:53 -0600
Message-ID: <CADvTj4oyWEGGfCige1PhMAc4kExbDwDZu5jyk3yT9Gdqb5D5XA@mail.gmail.com>
Subject: Re: [prelink-cross] src/execstack.c: fix prelink_path type
To: mark.hatle@kernel.crashing.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 18:12:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63404

Think you could take a look at this?

On Fri, May 31, 2024 at 12:51=E2=80=AFPM James Hilliard
<james.hilliard1@gmail.com> wrote:
>
> Fixes:
> execstack.c: In function =E2=80=98execstack_make_rdwr=E2=80=99:
> execstack.c:127:17: error: passing argument 1 of =E2=80=98asprintf=E2=80=
=99 from incompatible pointer type [-Wincompatible-pointer-types]
>   127 |       asprintf (&prelink_path, "%s/%s", dirname, PRELINK_PROG EXE=
EXT);
>       |                 ^~~~~~~~~~~~~
>       |                 |
>       |                 const char **
> In file included from execstack.c:10:
> /usr/include/stdio.h:403:40: note: expected =E2=80=98char ** restrict=E2=
=80=99 but argument is of type =E2=80=98const char **=E2=80=99
>   403 | extern int asprintf (char **__restrict __ptr,
>       |                      ~~~~~~~~~~~~~~~~~~^~~~~
>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> ---
>  src/execstack.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/src/execstack.c b/src/execstack.c
> index fe044c5..4a8b916 100644
> --- a/src/execstack.c
> +++ b/src/execstack.c
> @@ -41,7 +41,7 @@ const char *program_path;
>
>  /* The full pathname of the prelink tool, or NULL if it hasn't been
>     computed yet.  */
> -const char *prelink_path;
> +char *prelink_path;
>
>  static error_t
>  parse_opt (int key, char *arg, struct argp_state *state)
> --
> 2.34.1
>

