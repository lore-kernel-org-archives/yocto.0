Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECFE1C25B7A
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 14:55:05 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.20644.1716300705333226627
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 07:11:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NbwUP4CP;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1ed41eb3382so1799385ad.0
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 07:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716300704; x=1716905504; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NRHkl1DKNHupPek2cicyxTRgS8w6piiTOHbk73tFtxs=;
        b=NbwUP4CPC1rI4FZHsXsMZ9Re6xeFY6GDM8msCNZ86E5sAa4WHnVHpB97VPgprRoNkC
         QagOP6Vg2joyxNQV3QqOFTVhDWAeS+W2+bBdZTEsApVRfIlgdjFc+wxnsjJlcHjA0YZp
         KauzgwjAWRI7kxSRO0gwlde9Ql1Gn0pAGvhmFlWADvf/8mjQPNJ0NivHZr6edjDiySTy
         yMJ+vLOp6JTTf7eQyMOacIMrLPyvvzd4RpkYEovR9yXJVB3V60CMtC0b360uF9N0VL+I
         gor0UFdKwNMWszBMMHePglL0UQi+Frtwt3Ida7nxVD+c8MjuWV3ueZ3i5As8WSUafANb
         5esA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716300704; x=1716905504;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NRHkl1DKNHupPek2cicyxTRgS8w6piiTOHbk73tFtxs=;
        b=VEjOS2k76RO6sHUBXQ6YL8adodKk4VL0qZ53A1+JYb6RoP1D62IuIAnkWn/tcPynok
         BTYQdE+Z1za3SJGSwB60iOLJF8WEDZHA7u7Tj4XBSlvJoYMSzVrQwGECDr/z04T6bZ/G
         kx3J4k0d07ElXkJM1G9jCMs5Iz2VS+c1RhS+ePRt+vOM5duqC93lGP9UwOhoPkd5w81d
         tAs97gmbDyS5JvhzBFA26FtmoQZbI6gesuZneNMtQtz41CcTLsWH8/rZpy306DBa0OYl
         S8QiJTQEf0XU/ySM+GXKmD3/GCJttf+X/pU+h35QJRptWsksT4WZKY6iTydc8LyAqnYo
         EzpA==
X-Gm-Message-State: AOJu0Yz0xcmfsrOLaxzQCLGqnqJZNFFKQ6vumbgIjdDvpNGqUIWS+r6d
	DNfWO3WB+2eslV0uE5n/jLJ8DsRfUy0X/v2Y8NL9Xj9Hqctkg5HkgMCjRfCh3fVOyIxafGrwIAv
	DC3F+/x6bfbcvflF4Lbt3rjAeawurowM95II=
X-Google-Smtp-Source: AGHT+IFps0jJAoW/eG8Gh7p5AWbaEhXYRyYstY0CrI7K63dLrBU+kFDGyM9HH+NRByxA2TKs0ofeLGwis9l7HNIMuU4=
X-Received: by 2002:a17:902:f683:b0:1f3:4e4:f76a with SMTP id
 d9443c01a7336-1f304e53670mr72396185ad.65.1716300703988; Tue, 21 May 2024
 07:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <jYQv.1716298736518064029.eGIf@lists.yoctoproject.org>
In-Reply-To: <jYQv.1716298736518064029.eGIf@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 21 May 2024 16:11:32 +0200
Message-ID: <CAGAf8LxoACaZ3wXp6whZbxbPMcR=M0TcmGeKjE7+G3XpRsTvUw@mail.gmail.com>
Subject: Re: [yocto] Git Auth error on ls-remote (git-remote-https) since update to Yocto-5.0
To: yocto@lists.yoctoproject.org, lukas.weiss@janitza.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 14:55:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63158

Looks like you are using wget2 fetcher instead of old good wget?!

Which distro on the host are you using? Fedora? Or something else?

Please, start reading from here!

https://lists.yoctoproject.org/g/yocto/message/63118

Zee
_______





On Tue, May 21, 2024 at 3:38=E2=80=AFPM Lukas Wei=C3=9F via lists.yoctoproj=
ect.org
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
>=20
>

