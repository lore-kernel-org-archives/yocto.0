Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA656D0E6ED
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 13:54:49 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.17475.1764078879521057188
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Nov 2025 05:54:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EEzXhZND;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-882451b353fso40235446d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 05:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764078878; x=1764683678; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gvOu9venQbsmw4Il0Ch6kmrSkwUGFyTYkiglklrZ6BM=;
        b=EEzXhZNDNeFH+ToF/NtboC3V7zkzX6REymUZrqm3zqJUL76theaX6yadLs+78JziSL
         wB6bo3Se3rPOzX6LaBPUD7G2VQn+MfNhG33OvhCyT29bwm5EqzyUotBhhTdDAOzb6Yb2
         /a4IryEWxoru3EGl2FD3JYk/yNNvJbNU3kQ91585kNpyhd6R/kaLg1It5NbCiVn4uu+y
         dAxw4XtZoXTEfy985ljofbY/Cizog7VtfMa5/Iyq3fWl/oWhIbHTvufCw8khKdYLZAGQ
         zzcknbk531g7CNRDKC83vxTwEUl5ZuokoP405y6IDQ5+KRyOBtGc7n2f5b6DE6rCQ00c
         lkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764078878; x=1764683678;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gvOu9venQbsmw4Il0Ch6kmrSkwUGFyTYkiglklrZ6BM=;
        b=iv07/ipXCLxhGn5t8RGhEsfPmDVsbdy9AGxSePPLM0DwiUkcj1ZjNkPzOsLRPCXCXO
         FqUCafj4A2dcGrGoTiUmdBEEpAjDmyfYnMDi239MXqBkRFGFOgfjMkdpx78TU+nQhYnQ
         66vssTAvUpkBiFByBk1iICxComugVMpfo66jGDm1Iajku5MycaPjCN/HEkGX9LwbTG5Z
         BE9zLT3ywlhSauenHhvLAdLaFM9mJ/F+mhZe+RYPBgnMg3H60r1qtBVHvg4jDg1ltSoP
         1E4J4rxU2LLv6xqoUM5ikjSwx5bMsHOTQG+bUgkjjg1njjx1/ltL+yDBLSw7rybyOzPO
         pNZg==
X-Gm-Message-State: AOJu0YzI3xHtoVI8Ik6MCZWzMfV7Zz9DXDUbHg6vYYV+7Tq+gghEbZXl
	8TbJh6eH6PCMVHRTitf6lhnNaCuTO+i/uro1JbCEkl3Zuw8epX7zhL4Pk94SldEpWE3V0WoW4qK
	C64CVoiU42emthOtF8MEYUJeEwEokqtn5QQ==
X-Gm-Gg: ASbGncurEji7gHHWMZsqecHPDGaQbf9lF6lm1W+o6Mxtu6yAw6RGm0rWz1MmJuUexdV
	z1GpZaXSlCXyBnQSRulAu+OAgLRGT9aDkNIS7vxRJFufTgktTA5K/YCIjB7P1b7UYhfF4TSt6li
	EkRK365FK1q3JJMz/3WBnUvxm+vQAadqf7dhrlVyuxuCZWcSDuMjdYfbcXtcY1DumPDrn6uJ6WW
	5T/qxfG5fgDOK/JUViNecSpUHXo4B3McjHEzpvKclsQ3gyg5WnlcW35dYm7ZiyMUykirnZjF5GE
	vCpBiKu0dW/lDJobZoGScddbNaDPTQ==
X-Google-Smtp-Source: AGHT+IENDpYgpwi0YtGaaXgZ3TStQZaqgfKW5XNBgDI2PpYN9HNYYO/+OUvH9ijvYg8XaHJsIr9Hz5vH/4AuJ6O+/MY=
X-Received: by 2002:a05:6214:3116:b0:87c:1d41:575d with SMTP id
 6a1803df08f44-8863ae8993fmr36101186d6.3.1764078878384; Tue, 25 Nov 2025
 05:54:38 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb8SJ79GDs5aGpz0MGuNNdKf26Z7nw81yNtAsUr9VNq01A@mail.gmail.com>
In-Reply-To: <CAK5yBb8SJ79GDs5aGpz0MGuNNdKf26Z7nw81yNtAsUr9VNq01A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 25 Nov 2025 14:54:27 +0100
X-Gm-Features: AWmQ_bnHgFL_KqvYjmt1Mys0VOZOpe-5esJlMiHLxskANWkCyzOYslW2xVqfocw
Message-ID: <CANNYZj_dHLwvmknhhXjJwak9_G6cu2COOWhBeqv5HE_C-TDZAA@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 18 November 2025 (WW46)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Cc: Joshua Watt <jpewhacker@gmail.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 13:54:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66057

On Tue, 18 Nov 2025 at 16:55, Stephen Jolley via
lists.openembedded.org
<sjolley.yp.pm=3Dgmail.com@lists.openembedded.org> wrote:
> We aim to build 5.3 when the remaining identified issues with bitbake-set=
up are resolved:
...
> Other potential changes that have been discussed but don=E2=80=99t have w=
orkable patches yet:
>
> defaulting to a common sstate directory and hashequiv server

I looked into this a bit. The key question is how would the lifecycle
of such a server be managed (e.g. what starts the server and what
shuts it down, since we don't want to leave users with mysterious,
dangling processes doing nothing).

I think a workable approach would be this:

- bitbake invocations would continue to start (and stop) private
server processes that are accessed through a unix socket inside their
respective build directories
- such invocations would be configured to use a *shared* sqlite
database that is inside bitbake-setup's top directory
- sqlite documentation gives reassurances that this is okay:
https://sqlite.org/faq.html#q5

An alternative would be to somehow manage a common, single server, but
I just can't figure out how to do it automatically, and without fuss
and complications. Something has to start it, something has to shut it
down. It must be available when any bitbake invocation from any setup
directory happens. Users should not have to issue special magic
commands to make it work. I think sharing the database is far easier.

So the particular nomenclature for this would be:

BB_HASHSERVE =3D "auto-shared-database" (e.g. start and stop the server
automatically, but configure it to use a common database file, unlike
'auto' which keeps the database private to a build directory)
BB_HASHSERVE_SHARED_DB =3D "/path/to/common/hashserv.db"

bitbake-setup would put this (and SSTATE_DIR) into site.conf that is
symlinked into every build.

Terrible idea? Tell me :)

Alex

