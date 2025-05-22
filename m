Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 117CFC54E90
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 10:45:29 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.21139.1747910725531613530
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 May 2025 03:45:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aeR7FTb5;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6f8a70fe146so123848106d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 03:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747910724; x=1748515524; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8n1v3azCNvYg1fHbQWDzjczygDVHm7HmTpbExAh3ss=;
        b=aeR7FTb5dsuhy5+sosu9XItUEMn+pJHvRaH2HIGYuPg9IVnTbVZ+xyAJyr/JPbPa2I
         oCEUHY8Tupn3AMSP/bcYBPPktFdlw3M0NOIIzeUN3bpMHtYVWf6n2O++yx72O4PQbKLH
         Zv1uNAg/u85b41Fj2JBCVKhsAQVcqvZ6d0/bFd51tQozUCliSbQReg165e2uZ0mJEw70
         SmHySeJXeWNuC/OTRRYG4X8VwAi/z0QbSwXpaw/xshb38NyVIRApfmfQ4bRuoydpaELi
         kt2iMkQHIjEG8d2FPuXyKNWB11j0a7j2kzOqP4TMV5nKu5sPhVW/0qo9OZ4QyXLAv8nk
         yo1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747910724; x=1748515524;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8n1v3azCNvYg1fHbQWDzjczygDVHm7HmTpbExAh3ss=;
        b=JLU/MgcKlDSlcWZUxNOV2i7G7vq5uF2i/c6PMLGWkNbKmldRjI6gSzbh9U/47hGBeJ
         nPmK+aUIENIIOBBMD1rvbGYvBmbO+dKUXd425Bw8VNKzzhGVFWNbUtWJ2rPxMV4tp+Av
         7DW/JB3bBi5PcFcD+q8dQb9D1GiKlAf07uy+94YAIfnNOD36G+I/lv+GKJHuetSCH5NV
         MyGuakRU0AQ04CeUpzDhoxzWacS0ZEsUJ53+1lNl2KvqnxG14I+G04qLEjGJtGuI+0Vh
         b9HrjWsz6z1vvdVQmXMTOYUxa3GLDx17VIt68dWUGbRpek7OhX8mdg+cxRYes6enaVxV
         bh5Q==
X-Gm-Message-State: AOJu0YxY9u78G67AFMUui5YJfLd4STJwovr4pnEEv4oXW9wF1ojTlMgi
	5P2ZGxeGOyjH/oI7kiY4yV3DMu0vkJ6k/3w9saHQFw8QgIfIm4+PTOVjk0hixyo6pYEPT36UpPD
	x0e7hGFQKZUCCNnljD64sHrMrgo5WRmkfQQ==
X-Gm-Gg: ASbGnct1ukM4E2dqmk7u1+04Qk000MiWqj+g9jInK3rs6niQ0pJrypnpPc6dNrz5FmP
	pi3fkedCUzqmcSLnC/l/4RdKTFU8VKLJbU3L2sZfNCnzJ1e/XbnPgWreFL5e7lpQtRF9RnhlsoS
	uciyOeHJ00ckWhDeIn45K4nISyWicX8XWjMg==
X-Google-Smtp-Source: AGHT+IHhhCyrT02EY5e34+LLPiZNhDpRiu50V0ezOLtNSpymJean+TusHRT4dwzq5PB5eVUimXknaWylbcYykve6K78=
X-Received: by 2002:ad4:5f0d:0:b0:6e5:bc9:95f8 with SMTP id
 6a1803df08f44-6f8b2c65fe5mr371619406d6.17.1747910724433; Thu, 22 May 2025
 03:45:24 -0700 (PDT)
MIME-Version: 1.0
References: <zaAO.1747909903312722330.F7i9@lists.yoctoproject.org>
In-Reply-To: <zaAO.1747909903312722330.F7i9@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 22 May 2025 12:45:13 +0200
X-Gm-Features: AX0GCFun8I1KynxxCb9iWjMg0NCoai4r9HOdCh18sm5auxaUvKU8RlqkFfwBCIo
Message-ID: <CANNYZj-ee1PYLRvQY1KiNboHjD+yw3N6fVh6kBc0pLmXdSbW=Q@mail.gmail.com>
Subject: Re: [yocto] Do_package is changing permissions of files
To: yocto@lists.yoctoproject.org, rroyce@textronsystems.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 10:45:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65394

On Thu, 22 May 2025 at 12:31, rroyce via lists.yoctoproject.org
<rroyce=3Dtextronsystems.com@lists.yoctoproject.org> wrote:
> When the do_package step executes it is changing permissions of files in =
{S}/{B}. These files with changed permissions are stored in the cache so th=
e next time do_compile executes against the cached files the files are diff=
erent from the last time it executed. Is this is a bug or a feature of do_p=
ackage that isn't well documented? Or it could be that I am doing something=
 incorrectly with setting up the source directory that do_package sets perm=
issions in it?
>

do_package does not touch anything in B or S. It copies from D into
WORKDIR/package, and any further processing is done from that
directory.

Alx

