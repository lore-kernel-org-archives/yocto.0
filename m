Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CA66C47DD9
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 12:05:44 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.11377.1709121937130694666
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 04:05:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NnbtJI/V;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5129e5b8cecso6457688e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 04:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709121935; x=1709726735; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VcxdN8DQXJS76QMPjN/P8aYgJo6X3dGvd0okMZCjYEA=;
        b=NnbtJI/V8NLtD2pftfp8aCvfDpbAG5TKgpJBzprg9YFkDH9E4AIEzzj/K79zopXLH3
         /3Js0zEIH6yUhE6QGQbdW6fvo+lDVdnRZlhUIUvBMkUOIkPN84RiLREAFaQGvhgGxEiv
         eGb+vzqE1gVW7Z3ja/IuX91LwS5mZltV/BjbCpM5gA3I3Rn4z1Zh+fxkcauHHlQTm1OG
         Pm/cTIqhIkfGvteGt7U/znG/OrxCdQWBbQ+Q0lo8SOwreTjbOE9le1QM0ZrlQg6bFhDG
         tvnH5A6LNQ3KZqI+VfM2J11Gg6Ab3f1Q6K89McGhE6EFJeQt0BZ31Cf2akWW6bp+wkSO
         qI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709121935; x=1709726735;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VcxdN8DQXJS76QMPjN/P8aYgJo6X3dGvd0okMZCjYEA=;
        b=Mu+nLbr/h3CdT4k1CzqSNAlfWtjLnYccSdljC91VZUE9eRhW0npXQz44lTJ1/SoWSE
         9ooRm8d7qv/SvjV3aiPUKth2nLMbtcHjZyJGoeZOClNUxiuWTv3jhGCZfWsaGcbUg5+H
         c5Xe7pZLSuQA0tWZxLh/gZl7RJczZlHJhMDAmp6raRFL22b8jLq90vPNmhijs17U5la7
         q4GUwYmZkRUlsMyYCzIpXcATJLe9fz1iyvAJEvF+uUB0v4iUIPD0o/rpdsd0Y0tr2ieK
         k4OWX3h9saCDhYeupWr20/5raUJPx8+iTsrzQYHKSnmLsvyt0OdN3VPEfVNaRlYTZ8qC
         3aeg==
X-Gm-Message-State: AOJu0YzSoQJKQcQXIs0ZmDz5YRNXy1dsqk0WsTD7rIx4VZy2+gD8XyDD
	dKtJ6mv2ye5QCMgwkFFt4+T5QTYvQir0qrAOMxK7sT0iRSLjMfZKNwWfRMJ/mOuyeSCmE69iiYQ
	l+6JUxs9sH0TTQ4KZJcVpF1wP3NjMeAmGjKI=
X-Google-Smtp-Source: AGHT+IF1SBsiQzkQnp4dH8E123WSoC6cgcnfCFoh+mIVlUd0+cp4zkt5WetNEe1cO6rA/u2MTrPsOYiedXFfEnzNDW4=
X-Received: by 2002:ac2:533a:0:b0:513:116d:4d9b with SMTP id
 f26-20020ac2533a000000b00513116d4d9bmr2771351lfh.60.1709121935004; Wed, 28
 Feb 2024 04:05:35 -0800 (PST)
MIME-Version: 1.0
References: <1x1G.1709121367782868015.Ekur@lists.yoctoproject.org>
In-Reply-To: <1x1G.1709121367782868015.Ekur@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Feb 2024 13:05:23 +0100
Message-ID: <CANNYZj8EOwTf9nba0Od1A=u5_Lf5EunFS-_oZbO_o0MFDCbuKg@mail.gmail.com>
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in
 version strings
To: yocto@lists.yoctoproject.org, patrick.huesmann@desy.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 12:05:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62630

Welcome to PR service which you need to run and use during yocto builds:

https://wiki.yoctoproject.org/wiki/PR_Service

Alex

On Wed, 28 Feb 2024 at 12:56, <patrick.huesmann@desy.de> wrote:
>
> Hi,
>
> I noticed a strange behavior of dnf not updating a package from the packa=
ge feed, and when I told it to explicitly install that newest package versi=
on it went "Downgrading: ...." as if the newest version were a older one.
>
> The "competing" packages were:
> foo-bar-1.0.0+git0+93a939c4-r0.24
> foo-bar-1.0.0+git0+f95bf929-r0.26
>
> So we have a system where foo-bar-1.0.0+git0+93a939c4-r0.24 is installed,=
 and a package feed which offers foo-bar-1.0.0+git0+f95bf929-r0.26,
> dnf is convinced that f95bf929-r0.26 is older than 93a939c4-r0.24 - which=
 is not as expected, IMHO.
>
> BitBake has the "Package version for package XYZ went backwards which wou=
ld break package feeds" error message, but it wouldn't even trigger in this=
 case, since after a lexical comparison, f95bf929 is "higher" than 93a939c4=
. But turns out that libsolv implements a whole different algorithm for com=
paring version strings [1] which splits them into 'tokens' of either only n=
umerical or only alpha characters, and compares the length of each. In abov=
e example it arrives at the commit hash after everything preceding it is eq=
ual, then it processes "93" for the 93a939c4 (delimited by "a") and "" for =
f95bf929 (delimited by "f"). Comparing "93" and "" the former is 2 characte=
rs longer, so the 93a939c4 version is considered more recent.
>
> I think this behavior is counter-intuitive and there are lots of upstream=
 recipes that append "git0+<hash>" to their PV; is the general consensus th=
at you *must never* change the Git revision of such a package without incre=
menting the PV preceding the "git0" part? (Incrementing the PR doesn't help=
 here, since dnf/libsolv never considers the PR if a PV is found to be newe=
r).
>
> I patched libsolv on our systems now to ignore everything following a "gi=
t0" in a PV, since we absolutely need to be able to update packages between=
 version bumps.
>
> Would be interested to learn if this behavior of dnf/libsolv is already k=
nown and what is the commonly accepted "best practice" dealing with it.
>
> Thanks,
> Patrick
>
> [1]: https://github.com/openSUSE/libsolv/blob/7b0788fb7ee937b7d38829bcec4=
7760e42779a66/src/evr.c#L74-L155
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62629): https://lists.yoctoproject.org/g/yocto/messag=
e/62629
> Mute This Topic: https://lists.yoctoproject.org/mt/104621339/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

