Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97B9C27C5E
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 11:01:40 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.16785.1718017290895754667
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 04:01:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cZx46OCr;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52c8ddc2b29so609362e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 04:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718017289; x=1718622089; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LbJky/zItNpeHSUrqwaM5fxm84KhB8IR8odo3iVwBOA=;
        b=cZx46OCr83e8L/XsF78Xp7IlfvRoLED7VFnhcl3H+B6buXCPxX6KpMQxQf/+wPLRCh
         K3I3di7xqwHCPa00Y0zEBADyQi3t03VAnCZVpW2xQeFib5Yq77nvXMKgateG1+6FXQjz
         5PAsR2aK8iQpH3ELuTHHpJqwpMD+nphrQIEVWCc+InwfZofRMTKEqknyluIgeyrsMehw
         /LDXrA1nOpguYH1iaL5Fz5A1phyLbZnRSVgOZxl2ZDdKvv/gRJe1400ecp1b5qmKNBWl
         P8TC5gNy7GtQjmf0BURCgFfGmqvhLyd6/M7WUG9AAtBbOcfR/H10E3CNLzwofEHvJ15I
         zUsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718017289; x=1718622089;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LbJky/zItNpeHSUrqwaM5fxm84KhB8IR8odo3iVwBOA=;
        b=HRehh4ok9aNNvxrLXxbXmZ5ONeeV+VbrQuVfCi4K6Tetn5RzKzIOxKG5XGfEBaApIj
         FivINTsXJu5+hGhFHGqSudl34lk4GBiHAAlnUGwSbWoh4Z/gx8bCXKsh/69Giadg7ucT
         Z6V4qtAJs+/VpNRzEKaUljiIo6we5x0GkN4qtLX41jNmxoI51vuR7BLvuW678tAGL3t1
         BG9j1KuI7EWkdubRH8eQFLl4VQDcfQ4NSZC2OzhXvHv4EKgBXXImPtcfQPtyK0sXwgPE
         00XA1N6sd991K3T1oj73h/hRgiI0F92djJQ9JzDcLz6qd4bewMt2AK3r7H1uK7+PYsGW
         iDmQ==
X-Gm-Message-State: AOJu0YyTCfaqb+yQckB6vbKYAF7Mq8zCeCieRkmQqsa6t8rk/yiJsdtH
	Nl7U5J/enwotUD7ZwNkDnCWb0vqyPsWYpHILQgB+u9KraGdpHYwLurIKbC/w0I4GBGGUzdLI7tb
	h4/FYM8vaYR0eCv+/llA6tQ5+I7ZSDWl3
X-Google-Smtp-Source: AGHT+IErMjNPx2SwyaR2hqAb20XKsl3NXpTyQsnus8kKsmM/ByWwQ5IWr1n0N9DnFT+4gOXTMDuRvRKLYUfu3PYZ4ps=
X-Received: by 2002:ac2:4644:0:b0:52b:c10f:995d with SMTP id
 2adb3069b0e04-52bc10f9afemr5924660e87.67.1718017288654; Mon, 10 Jun 2024
 04:01:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240523055240.593564-1-martin.jansa@gmail.com> <17D20853941E7BA8.4692@lists.yoctoproject.org>
In-Reply-To: <17D20853941E7BA8.4692@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 10 Jun 2024 13:01:17 +0200
Message-ID: <CA+chaQe3P_2O7az092h+2=hhUg6m84Tke8ggp2b_Hx5FmLv+kw@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 2/2] mmap-smack-test, smack-test,
 tcp-smack-test, udp-smack-test: don't use S = ${WORKDIR}
To: yocto@lists.yoctoproject.org, martin.jansa@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 11:01:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63304

gentle ping

On Thu, May 23, 2024 at 7:53=E2=80=AFAM Martin Jansa via
lists.yoctoproject.org <martin.jansa=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> * fixes:
>   Parsing recipes...
>   ERROR: meta-security/recipes-mac/smack/mmap-smack-test_1.0.bb: Using S =
=3D ${WORKDIR} is no longer supported
>   ERROR: meta-security/recipes-mac/smack/tcp-smack-test_1.0.bb: Using S =
=3D ${WORKDIR} is no longer supported
>   ERROR: meta-security/recipes-mac/smack/udp-smack-test_1.0.bb: Using S =
=3D ${WORKDIR} is no longer supported
>   ERROR: meta-security/recipes-mac/smack/smack-test_1.0.bb: Using S =3D $=
{WORKDIR} is no longer supported
>   ERROR: Parsing halted due to errors, see error messages above
>
> * see:
>   https://lists.openembedded.org/g/openembedded-architecture/message/2007
>
> * it's fatal error since:
>   https://git.openembedded.org/openembedded-core/commit/?h=3Dmaster&id=3D=
32cba1cc916ad530c5e6630a927e74ca6f06289b
>
> Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
> ---
>  recipes-mac/smack/mmap-smack-test_1.0.bb | 4 +++-
>  recipes-mac/smack/smack-test_1.0.bb      | 5 +++--
>  recipes-mac/smack/tcp-smack-test_1.0.bb  | 5 +++--
>  recipes-mac/smack/udp-smack-test_1.0.bb  | 6 ++++--
>  4 files changed, 13 insertions(+), 7 deletions(-)
>
> diff --git a/recipes-mac/smack/mmap-smack-test_1.0.bb b/recipes-mac/smack=
/mmap-smack-test_1.0.bb
> index 9d11509..b11fbf3 100644
> --- a/recipes-mac/smack/mmap-smack-test_1.0.bb
> +++ b/recipes-mac/smack/mmap-smack-test_1.0.bb
> @@ -5,7 +5,9 @@ LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md=
5=3D0835ade698e0bcf8506ecda
>
>  SRC_URI =3D "file://mmap.c"
>
> -S =3D "${WORKDIR}"
> +S =3D "${WORKDIR}/sources"
> +UNPACKDIR =3D "${S}"
> +
>  do_compile() {
>      ${CC} mmap.c ${LDFLAGS} -o mmap_test
>  }
> diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smac=
k-test_1.0.bb
> index 3ab57c6..0949cd5 100644
> --- a/recipes-mac/smack/smack-test_1.0.bb
> +++ b/recipes-mac/smack/smack-test_1.0.bb
> @@ -8,9 +8,10 @@ SRC_URI =3D " \
>             file://smack_test_file_access.sh \
>             file://test_privileged_change_self_label.sh \
>             file://test_smack_onlycap.sh \
> -"
> +"
>
> -S =3D "${WORKDIR}"
> +S =3D "${WORKDIR}/sources"
> +UNPACKDIR =3D "${S}"
>
>  inherit features_check
>
> diff --git a/recipes-mac/smack/tcp-smack-test_1.0.bb b/recipes-mac/smack/=
tcp-smack-test_1.0.bb
> index d2b3f6b..370905d 100644
> --- a/recipes-mac/smack/tcp-smack-test_1.0.bb
> +++ b/recipes-mac/smack/tcp-smack-test_1.0.bb
> @@ -6,9 +6,10 @@ LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;m=
d5=3D0835ade698e0bcf8506ecda
>  SRC_URI =3D "file://tcp_server.c \
>             file://tcp_client.c \
>             file://test_smack_tcp_sockets.sh \
> -"
> +"
>
> -S =3D "${WORKDIR}"
> +S =3D "${WORKDIR}/sources"
> +UNPACKDIR =3D "${S}"
>
>  do_compile() {
>      ${CC} tcp_client.c ${LDFLAGS} -o tcp_client
> diff --git a/recipes-mac/smack/udp-smack-test_1.0.bb b/recipes-mac/smack/=
udp-smack-test_1.0.bb
> index 9193f89..861138d 100644
> --- a/recipes-mac/smack/udp-smack-test_1.0.bb
> +++ b/recipes-mac/smack/udp-smack-test_1.0.bb
> @@ -6,9 +6,11 @@ LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;m=
d5=3D0835ade698e0bcf8506ecda
>  SRC_URI =3D "file://udp_server.c \
>             file://udp_client.c \
>             file://test_smack_udp_sockets.sh \
> -"
> +"
> +
> +S =3D "${WORKDIR}/sources"
> +UNPACKDIR =3D "${S}"
>
> -S =3D "${WORKDIR}"
>  do_compile() {
>      ${CC} udp_client.c ${LDFLAGS} -o udp_client
>      ${CC} udp_server.c ${LDFLAGS} -o udp_server
> --
> 2.45.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63172): https://lists.yoctoproject.org/g/yocto/messag=
e/63172
> Mute This Topic: https://lists.yoctoproject.org/mt/106257757/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

