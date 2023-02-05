Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D7EC636CD
	for <webhook@archiver.kernel.org>; Sun,  5 Feb 2023 09:54:26 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.26127.1675590860248911083
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Feb 2023 01:54:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=K61GX3pJ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso8818149wms.5
        for <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 01:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RNfugZKY+056aeYSAYaikHZJCQ9mKBBbDTv8nbPG1wM=;
        b=K61GX3pJVm09tD80fd+0Q9ztV4qFvTRbrSXoo8HmAUIi+SZhCZVWaHlcXKaimzimbf
         +Oj12MSVcqWDnz9R5vplRetTB3CQrtK0Qqamo4hTG5pCJYJPbcMuCmZTC3ghV6Bbpk14
         kim6kP6TIbxaUAJahsNv5xENZdDK7YY1XA03o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RNfugZKY+056aeYSAYaikHZJCQ9mKBBbDTv8nbPG1wM=;
        b=IhUQsNXDyPVIIXSLayNxrnKAbntPkLrfVgPiI2WiIsGhuc5Qoi6ZstAdu/0x+lQ5YJ
         /m+Vo5dCGzPKBZAJiNhYYF8WXcF2AnWP+xK+nmRipfqcnYQkydvtx4m2lE9SvHG/EX0v
         DYggAV0CeNmAkPV+uIvvcJee2jTOchqUkjbDo5OM6M3RDK592wLzDTKfdjBRdiIzt9QS
         PrCcUYEUOZbasSZgJsuGFe3+Y25vzHYAn6U0XTda/sjsB1Ve09iT+Pxbs9kVW97zEuin
         kdsJh6iIS+OBZ8IqYOz+Nd3WqmZVkGy4fQMDC5KyUgIyN32IWn513SliJJ1KPaD4nsl4
         CPpA==
X-Gm-Message-State: AO0yUKUPsPcnuPzgsVI35bfMTej0XG7Z+2UPBaU6CqDIWUAjBi6raOdh
	Fq1kvxPWmsKt6O+eg8W5a0jrUQ==
X-Google-Smtp-Source: AK7set8RBF+Wi4pZemeWD1VlFGky1hhCMVZixhQrzJLWAnGzCPT6XXQlsDB+eFHXCmqNtQ++KyDVRA==
X-Received: by 2002:a05:600c:225a:b0:3df:12ac:7cc9 with SMTP id a26-20020a05600c225a00b003df12ac7cc9mr14484280wmm.15.1675590858579;
        Sun, 05 Feb 2023 01:54:18 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:512e:205c:f28a:2b5b? ([2001:8b0:aba:5f3c:512e:205c:f28a:2b5b])
        by smtp.gmail.com with ESMTPSA id m4-20020a05600c4f4400b003dc36981727sm14199297wmq.14.2023.02.05.01.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Feb 2023 01:54:18 -0800 (PST)
Message-ID: <efae481688d50d97920bc1e8471427a75bc9d6fd.camel@linuxfoundation.org>
Subject: Re: [yocto] error when try to use sudo command in recipe
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: SIMON BABY <simonkbaby@gmail.com>, yocto@lists.yoctoproject.org
Date: Sun, 05 Feb 2023 09:54:17 +0000
In-Reply-To: <32073.1675570518496655471@lists.yoctoproject.org>
References: 
	<3db8e6a5ee0f9dd0afecef56bba62bee283885b7.camel@linuxfoundation.org>
	 <32073.1675570518496655471@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 09:54:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59167

On Sat, 2023-02-04 at 20:15 -0800, SIMON BABY wrote:
> Hi Richard,
> Thank you for the reply.
> =C2=A0I was trying to add the
> layer=C2=A0https://github.com/savoirfairelinux/meta-embedded-containers=
=C2=A0in
> my yocto build. Below recipe uses sudo commands.=C2=A0
>=20
> https://github.com/savoirfairelinux/meta-embedded-containers/blob/b131baa=
90291c159d3a725b8d66786c85964556c/recipes-support/container-image/container=
-image.bb
>=20
> while building it fails at sudo command and getting the error below.
>=20
> sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit
> set

I don't see anything in there which runs that task under
fakeroot/pseudo. Are you building this within some kind of container
and/or under something like kas? The error suggests that sudo has been
restricted somehow but I don't think it is bitbake doing it.

I'd point out that do_pull_image task has at least three problems I
spotted at a quick glance:

a) It will kill *any* dockerd process on the system so it can't run in
parallel with any other build

b) The "sleep 5" tells you it is likely to suffer races

c) Using sudo within recipes is considered a bad practise and will
require setup of the right privlegdes to work properly

Cheers,

Richard





