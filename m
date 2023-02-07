Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 046EAC636CC
	for <webhook@archiver.kernel.org>; Tue,  7 Feb 2023 14:42:32 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.84951.1675780941428019430
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Feb 2023 06:42:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CMEuGjKv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id bg5-20020a05600c3c8500b003e00c739ce4so2995023wmb.5
        for <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 06:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3pCfpKq/Fhv900BfWcGJO6IPac4Rx4+JCJET54peth8=;
        b=CMEuGjKvOWcs9w2NigKC2CeH00kV6OIzWYg2deXpwXVeJw6/lkFKJnGb1qDpATlNaH
         SvxQf6WSQk4SygYYGWxx8FOxsO/3B3bHBnzSQHtdNHKOvX+nrOijljNv52BGDb7wlII9
         EMWnKmuMjN01nWTMTgmksf8qiLfrQBnWf9P4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3pCfpKq/Fhv900BfWcGJO6IPac4Rx4+JCJET54peth8=;
        b=7nSYZ8xC4pFakV0B1to0bits/JPi6VKv5S+sbnhkPmRFSeAKGC8nNOUZySGZwwIuBk
         KrzF8hQAIl7ZwLU/83WVKpr8WJnIDzKKtHgxoAe9H62wpTVfDKF5GvdOg2gmrJIbWWuw
         TEyLkZplj8HCvMTLE/of2ZjaDP4+FX5SqMwQrZN/VDjGqhkWi1HGdH3y7LLrmYyXnH6K
         +W0m/NmaS4Vuj3HrGJxGNd9kCrEkCAc097nKqGG9FHzyUKJpSxs3LX6KOch+hqlTVElB
         9POeUrLkAJj7I6U1mPWMhCv6TXfFrn6/vOPukqA5l1SJJTT4tAf3PWwxxNRZYIEyEZ/o
         TyGw==
X-Gm-Message-State: AO0yUKVW5acUWxAMljnGqd9ULGQ3Lo4QpXceC/8IBG3VNbv0v1G+vggY
	pH/qlqTyE8KJvKfJWwwiqQ0XYw==
X-Google-Smtp-Source: AK7set9zQJ40LyOPgF3T5ImF+1HKoDgC97F7kBLYmgT0q16QMCW2Fl9DNMe6p1gjJXdxgQi5Cs8zUQ==
X-Received: by 2002:a05:600c:331a:b0:3dd:f286:5ae9 with SMTP id q26-20020a05600c331a00b003ddf2865ae9mr3329652wmp.9.1675780939790;
        Tue, 07 Feb 2023 06:42:19 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:52fa:55ec:3791:f6b5? ([2001:8b0:aba:5f3c:52fa:55ec:3791:f6b5])
        by smtp.gmail.com with ESMTPSA id p17-20020a05600c205100b003dd1bd0b915sm16011426wmg.22.2023.02.07.06.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 06:42:19 -0800 (PST)
Message-ID: <766584aee3b3db7d526098ee3027e5ed2dbf7908.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH 0/3] ease send-qa-email usage with
 older history
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
Date: Tue, 07 Feb 2023 14:42:18 +0000
In-Reply-To: <20230207141217.33892-1-alexis.lothore@bootlin.com>
References: <20230207141217.33892-1-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 14:42:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59192

On Tue, 2023-02-07 at 15:12 +0100, Alexis Lothor=C3=A9 via
lists.yoctoproject.org wrote:
> Hello,
> this minor patch series bring minor fixes into send-qa-email to ease
> development/debugging in it:
> - fetching current build test results works well in CI builds because we =
are
>   sure that the build results will be in the 5 upper commits of testsresu=
lts
>   repository shallow clone (because it has been pushed just before prepar=
ing the
>   regression report). It is not true when trying to run send-qa-email off=
line on
>   older revisions (for development, debugging or improvement of scripting=
), so
>   we need to force-fetch the target revision as it is done currently for =
the
>   base revision. As a consequence, this new behaviour allows to make even=
 more
>   "shallow" clones of testresults since all needed data will be force-fet=
ched
> - When downloading a test regression report on official release webserver=
, we do
>   not have information about what base have been used or what is the exac=
t
>   tested revision (at least, without checking the corresponding build log=
s on
>   autobuilder). So I propose to add this information at the top of each
>   regression report, making it look like this:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D Regression report =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D> Target:      master          (5e249ec855517765f4b99e8039cb888ffa09c2=
11)
> =3D> Base:        4.2_M1          (4d19594b8bdacde6d809d3f2a25cff7c5a4229=
5e)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> Match: oeselftest_almalinux-9.1_qemux86-64_20221208113119
>        oeselftest_centos-8_qemux86-64_20230126230327
> Match: oeselftest_debian-11_qemux86-64_20221208033325
>        oeselftest_debian-11_qemux86-64_20230126150229
> [...]
>=20
> I assumed that no tool is currently trying to parse the regression report=
s, so
> I chose arbitrarily the metadata format.

The reports have never been useful enough to parse so that should be
fine.

> @Richard : on a side note, the broken From field in my previous emails wa=
s probably
> due to an accent in my name, it should be fixed now. Please let me know i=
f you
> still have issues with this, in this case I will force the --from field.

It still shows incorrectly for me. It is an issue with the bootlin mail
setup and DNS, not to do with the character encoding. My changing the
accent, it is now duplicating the signed off by lines so I'd avoid
doing that!

Cheers,

Richard


