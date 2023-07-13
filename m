Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 147DFEB64DD
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 08:04:02 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.3631.1689235431555879931
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jul 2023 01:03:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@theyoctojester-info.20221208.gappssmtp.com header.s=20221208 header.b=AZZFdijk;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.42, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4fba8f2197bso730960e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 01:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20221208.gappssmtp.com; s=20221208; t=1689235430; x=1691827430;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4+Pzgr1nKTTMPSsv09TEsyqsmjFUMFWR81gLk9tq90=;
        b=AZZFdijk8baJPVL92Z3zfGIwAgUAGpl19iPvVlg0Rz5iWndx62llB8Cf8KUomCGUzl
         BuS+CGR9l8rV3C1jq8TloD6lElErGvu/wy212Tg9TbBshEGVrslpArT2huKvO9IebLup
         k5H+2O5NQvdoqJDLcmHk7eFP68KAaDApP3/1M/Sz2n/p/pBCAQqnATkxx+TnvuN9y9BH
         7mLgUifI3VrEEC9OUh6qKvDu+9B8MfaoOqM9mytkiwOMNDY2ivxoe+hgEC5XDY6wfhEQ
         T/IVXQsEu3CD79oed/HCiZLNbfcT/slaJJ81gkZotgp+wwZvXTlB/HkBogjohQObnGC7
         EeGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689235430; x=1691827430;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i4+Pzgr1nKTTMPSsv09TEsyqsmjFUMFWR81gLk9tq90=;
        b=HkkZiWC9UMlrwEzxsgV0PG5XrQIAVPD9YsFMO1gUjRRjGGgs9fxeW/AMVwBWzSKexf
         fVoPK+Hb1L9JLnrUhpQQItCgDA/uHV2YkVNSQQ7HVqWMvN4vvu00kGagZF/QzzaRGT14
         1bMNIA+7Z9+7H14PfviH5ko1PQfsnD7B0Lhlfv3BuIwTGq+5ugztEn8Vc7rCaStda/jb
         u7o7m/gvaWDESy7oyQS6X3+hA+Y4ai+SgO28fuvmzAzpTkXnkchF0t1ebqQe7Iqoc+nG
         Kt+HcuzBCKf+Hh3dZj+43qbtRqAo35Cap3LbG0Ar0uU4gsUTHCtArLLefat8YnwmVta+
         ozeg==
X-Gm-Message-State: ABy/qLbYSPWfXdYftksLfuPA77VDcwgSCBOWC+pjMsXYcHYBKf7xZSMh
	MJRX5bQ5ybw78uBw/boVWxosMljFgKrF5nSo0sOK2A==
X-Google-Smtp-Source: APBJJlHcCZRDjBfGdSAE5wVg3zGiU8POagLYe9DqUyzlv9XuokFHVdEzpH3Nbv8UGwFuV7kGq9cb3BlpesrWUO5V9LA=
X-Received: by 2002:a19:ca17:0:b0:4f8:6dbf:401d with SMTP id
 a23-20020a19ca17000000b004f86dbf401dmr537297lfg.57.1689235429459; Thu, 13 Jul
 2023 01:03:49 -0700 (PDT)
MIME-Version: 1.0
References: <eqb0.1689220943449112863.Duh4@lists.yoctoproject.org>
In-Reply-To: <eqb0.1689220943449112863.Duh4@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 13 Jul 2023 10:03:23 +0200
Message-ID: <CAEt6Nwo-zaOne6MQVjrYRsCY0L__PpXWtth0_1juc949JUmHtg@mail.gmail.com>
Subject: Re: [yocto] Remove unwanted packages from core-image-minimal. #distro
 #kirkstone #yocto
To: vivsundar@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 08:04:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60563

On Thu, Jul 13, 2023 at 8:56=E2=80=AFAM <vivsundar@gmail.com> wrote:
> But the default core-image-minimal also contains
>
> dpkg and apt packages
>
> These packages are not needed in my RFS. I tried removing them with:

Chances are that you have the package-management IMAGE_FEATURE set. Remove =
that.
https://docs.yoctoproject.org/ref-manual/features.html#image-features

> I also tried adding the following lines to local.conf
> DISTRO_FEATURE:remove =3D " dpkg apt"
This has no meaning.

