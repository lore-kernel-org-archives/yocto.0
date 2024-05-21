Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF113C25B74
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 14:27:45 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web11.21078.1716301663403383717
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 07:27:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nd3sNFhO;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2e34e85ebf4so46312491fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 07:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716301661; x=1716906461; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qgxB9jsV5EGIHIWklpquGdRoXkRk0w/Pma/3mishNNM=;
        b=nd3sNFhOq3j31Cq5TEdvr7M0Xj8ewt5cBo2yNsiW3OJsO+Csr0qNwoGkCdjBCA4wZK
         J311HEliICgeFVmxzmbPM5SlCtfB9Rt1oT99ux5x7Hi+dbH+Izm65OvrkC9QC5w2fn8B
         7rkonqzhJhVWC4+EJ9a0batYWjWcopWgRGK3epAD5MW+ztBEuYDZauFeFCLrI95aA3or
         XDNVKUzyp8B8gJCxA/i4v6FKh16TN+JkQKfa/c+7tKkcCZFvfDzBOR1+EG9/GqKXJiZH
         CJTiisfoVX81FuKi3Fob5xBrCscOVUE6KiCeFgimJD30yZeHvs9PqpHKN80lJTQpBIUA
         s2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716301661; x=1716906461;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qgxB9jsV5EGIHIWklpquGdRoXkRk0w/Pma/3mishNNM=;
        b=haLNa8BHwbj9i7/GoT0ZiHtF7zybLWPEd8q6qjSmYNYjDvezoG80hMKbTm1FUihwYi
         QF6k8lCO7qY2sNGK8mw4M6O0YPFHnY3Kix/MUZNsR/FoKyHN7iy/2ZfNY8IeHikxHU/K
         wpUdIjuU7hlbaBEb7ftq2fhQazDMAsOVJWKw8vkJ8O1dDboWF3MRKeKE/hVAOoZwx9ev
         7TC7wwrE09zFypn+bK6yMSwLUFjvhMkvdlwQr/2DlNMvEFtbYKQa3J6sA9dfUdGWBKlO
         p1yxt9+ACzIwi4r0/35wxSL7VfGdaM1ekhpioWmhMuGNxQzBi+i60IS98EgMo3AhHcO5
         GsjA==
X-Gm-Message-State: AOJu0YwNTBkovv2tOcG3aJ2QrJlo24qUIwvJlMmuRhcv1jM395rZhUoM
	a3VyvakmgEP6P8/UDb3zOO3c8yVzx20NQq9DnHTOr1UlDoPFoMU2kHB62yC4s6ACmuZ2FdL0wcb
	CItvrWqQ1u5MYNzhkUgTmvWfcjseiRw==
X-Google-Smtp-Source: AGHT+IGGq9bT04X6idN89zp99K7sxbuCuVjgKkp+0o66kEiGSRBCG5PEL2KhbrPsszApN0qZxGG3abixarS/9O8lewU=
X-Received: by 2002:a2e:9dc3:0:b0:2e2:72a7:843f with SMTP id
 38308e7fff4ca-2e52028ae76mr183039091fa.35.1716301661011; Tue, 21 May 2024
 07:27:41 -0700 (PDT)
MIME-Version: 1.0
References: <jYQv.1716298736518064029.eGIf@lists.yoctoproject.org>
In-Reply-To: <jYQv.1716298736518064029.eGIf@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 May 2024 16:27:29 +0200
Message-ID: <CANNYZj_Ur679b81UQo+yTfQ6hud_xdK2K-AXT2O+hOVJpory1Q@mail.gmail.com>
Subject: Re: [yocto] Git Auth error on ls-remote (git-remote-https) since
 update to Yocto-5.0
To: yocto@lists.yoctoproject.org, lukas.weiss@janitza.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 14:27:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63156

Supplying passwords this way is a terrible idea, and isn't supported
(there's a comment in git fetcher source stating that explicitly). You
should transition everything to ssh (at which point the issue will go
away anyway), or place the https secrets into a more secure location
(man gitcredentials may help).

Alex





On Tue, 21 May 2024 at 15:38, Lukas Wei=C3=9F via lists.yoctoproject.org
<lukas.weiss=3Djanitza.de@lists.yoctoproject.org> wrote:
>
> Hello there,
> i just updated our Yocto Project to latest 5.0 release. First tests went =
well, but now after a subsequent repo-update (tag=3Dyocto-5.0) i have probl=
ems with call of most bitbake calls because of an error in some recipes wit=
h code in our own repository: Clean build runs without problems, but when i=
 run fetch for any recipe, i get the following error:
>
> $ bitbake -C fetch myapp
> ...
> bb.data_smart.ExpansionError: Failure expanding variable fetcher_hashes_d=
ummyfunc[vardepvalue], expression was ${@bb.fetch.get_hashvalue(d)} which t=
riggered exception FetchError: Fetcher failure: Fetch command export PSEUDO=
_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/115=
10/bus"; export GIT_SSH=3D"/home/admin/workspaces/yocto/build/conf/ssh_util=
/yocto_ssh.sh"; export PATH=3D"(...)"; export HOME=3D"/home/admin"; git -c =
gc.autoDetach=3Dfalse -c core.pager=3Dcat -c safe.bareRepository=3Dall ls-r=
emote https://gitreader:XXXXXXXXXX@repo.srv/swupdate.git  failed with exit =
code 128, output:
> fatal: Authentication failed for 'https://repo.srv/swupdate.git/'
>
> (shortened, full output see attachment; anonymized)
>
> My Recipe of swupdate uses
>
> SRC_URI =3D "git://repo.srv/swupdate.git;protocol=3Dhttps;user=3D${AUTH_S=
CM_USER}:${AUTH_SCM_PASSWD};branch=3D${BRANCH}"
>
> I have multiple Recipes using this scheme, most are working, three not. I=
 can not find a difference. When i run the given command (green) with hosts=
 git, everything works fine (so it is not really a auth problem!)
>
> I figured out, that the problem belongs to the git ls-remote command of t=
he git-remote-https program in recipes recipe-sysroot-native dir (u-boot-pl=
at/2019.01-/recipe-sysroot-native/usr/share/git-core/git-remote-https). I c=
an even reproduce this, when i run the ls-remote git command manually with =
my hosts git, with GIT_EXEC_PATH-Env variable set to the git-core dir in re=
cipe-sysroot-native.  When i replace the git-remote-https program with the =
hosts one, everything runs fine.
>
> Any ideas what is going wrong here?
>
> PS: I didn't have the Problem on older Yocto-Versions.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63152): https://lists.yoctoproject.org/g/yocto/messag=
e/63152
> Mute This Topic: https://lists.yoctoproject.org/mt/106223085/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

