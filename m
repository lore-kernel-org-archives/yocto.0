Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38BA7C3DA78
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 18:01:37 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.95433.1673632892602447742
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 10:01:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=X3k7mv41;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id r2so21790350wrv.7
        for <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 10:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cyVVIgqC09H1LEqF7fJvjDi6Zy9FFULMqZPjQn3++Sg=;
        b=X3k7mv41WJy0Pu23o+fAthy0+LxjL80YRT3kcqUo/vFMvww4Ap7omQnKdOzBSm8Hua
         CZKSzdwOKNK7Rs/oxTyklWl1TN8LkRIWQF3JpeyWPbEsXwXYDZkKnICGyDEoecNI9O+e
         XTyb52BBEBD3uy3UlBh/vR2/goEY/f2FMrlFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cyVVIgqC09H1LEqF7fJvjDi6Zy9FFULMqZPjQn3++Sg=;
        b=Qr3E1xmLIugQSJDGPezVUeIYgHuOHlRmVJ9CBbvyDp3/w2SApTBOM3Wyj03E3iTH4U
         uwU29oQe2f+LgDvnSS6Q3vzSrAgpmJjJsU1WMjKER3cdBnK9GK+0tMkr2M83dqoDvfc2
         0gBmjKdVWWRkX1wckJ+r7G9v6m81S+6ixO3LTH19MVvC9Pa2tF7RoFaUZ3aorqLmrBvy
         yz6/wvcXJQj81dj5vvacXyvo4AZAe1CVxYrDlLIyrXCrd2Xe/DI5B/LZxMt00dNvdi0G
         Jd4BfLzD1PMz/Q5y/2Q4xzsX8aNoD5ST19YdxXgF9i54XysQWGjl4u4+qvn/1+jL0R++
         6LOQ==
X-Gm-Message-State: AFqh2kpJrGrRFNLxt5Lx3YZg5soGvPZV00PfW4iXoLJowbuXyasrMK8o
	SkE8NXbGa5y2Nw5HwkpqUhK1FA==
X-Google-Smtp-Source: AMrXdXt5NbIzy17gn1k5zjzaT0ZO9sUAtQbysh64g91uUe9BcdBkjI3ehhy7bdf5mIgiYlEHf/tL+Q==
X-Received: by 2002:adf:fbc1:0:b0:242:1415:ab02 with SMTP id d1-20020adffbc1000000b002421415ab02mr46009785wrs.9.1673632890955;
        Fri, 13 Jan 2023 10:01:30 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:615d:b1e6:6cd2:7fd3? ([2001:8b0:aba:5f3c:615d:b1e6:6cd2:7fd3])
        by smtp.gmail.com with ESMTPSA id u14-20020adfdd4e000000b002366e3f1497sm19721704wrm.6.2023.01.13.10.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 10:01:30 -0800 (PST)
Message-ID: <11d00ada72d2ab7ec5476fe09050dc9dfa790606.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH 0/2] generate regression reports
 against proper releases
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com
Date: Fri, 13 Jan 2023 18:01:29 +0000
In-Reply-To: <20230113150646.44144-1-alexis.lothore@bootlin.com>
References: <20230113150646.44144-1-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 18:01:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58983

On Fri, 2023-01-13 at 16:06 +0100, Alexis Lothor=C3=A9 via
lists.yoctoproject.org wrote:
> This work has been initiated while discussing issue #14065
> (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14065)
> The topic initially covers ptest reports between releases, but after disc=
ussions
> with R. Purdie (https://lists.yoctoproject.org/g/automated-testing/messag=
e/1211),
> a general regression report reliability topic emerged. Those first
> patches aims to make regression reports more useful during releases by co=
mputing
> against which revision it would be relevant to check for regressions.
>=20
> A few notes about those patches :
> - Since it affects release process, I struggled to properly test the new =
behavior,
> so testing has been made by stubbing send-qa-email side effects and picki=
ng some
> samples of build properties and layerinfo.json from autobuilder history t=
o run
> manually send-qa-email on my machine. But I will gladly take into account=
 any
> advice or procedure to test it more thoroughly
> - I also have some uncommitted python unit tests on "previous version
>   computation", but current scripts directory does not allow proper unit =
tests
> integration. If appropriate, I could submit some minor reworks to make it=
 viable
> for testing and submit those tests

I'm glad you mentioned this! Yes, I think it is important we add some
tests for this. We can rework these scripts as needed as the project is
their main user at this point.

> - This new regression checking introduced the need to clone a wider testr=
esults
>   history, which is (very) slow on my machine, but I do not now how slow =
it is
> on autobuilder. Could it be an issue for the delivery process ? Does it n=
eed to
> be smarter on this point ?

I think it will be slow on the autobuilder and we're going to have to
do something different to make this work well. My clone still hasn't
finished and is at 5.75GB of data now (15 mins to get the last 4.5GB)
and still going.

> - If appropriate, new patch could follow to allow regression reports gene=
ration
> against multiple revisions : for example we could check for a milestone b=
uild
> against previous milestone AND previous major release

I think that is the direction we need to go so yes please!

Cheers,

Richard


