Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08F00CF2577
	for <webhook@archiver.kernel.org>; Wed, 19 Nov 2025 04:05:33 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7299.1763525129316416643
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 20:05:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ag1z0hoR;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-787da30c53dso55101947b3.0
        for <yocto@lists.yoctoproject.org>; Tue, 18 Nov 2025 20:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763525128; x=1764129928; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+44w2sMYZpjxQnuj+MkHsf+tfJ9A1k7/b/39Bd+Q9AQ=;
        b=Ag1z0hoRmZZpXOM4HnPlmWl4X7q+S9OUip1rE3mlYK+p6oBZE9fdVlrOq1ko0D3ZE7
         YzJP1RDhuYlXapg+GjJLd+/UPVvEIYoyDYKNQYU6dKxlYhuwnA77q5r5jwZRi1sScyHW
         4leLypeKnUxWpxPD6e2uasko+QSZwBfANeIyknYgqX61/tMveJNm/DYUtuDrnex8aN1Z
         7nWIrCSIugAsGlcYD3bTSDjVHYSxxC0zHC5VU9P5y7Uu6bdQMN9BZY8EdifLiLIXIwj0
         chUD2JZhgR+riP3Egjek1hclbcPHm/QaKbA8itj9FCtF7J00nkC2b/Q8yhj5IhqYrEFK
         Vm3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763525128; x=1764129928;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+44w2sMYZpjxQnuj+MkHsf+tfJ9A1k7/b/39Bd+Q9AQ=;
        b=OQ1Fk4ZgPq8PA0Rctt2kO9D6whXVowAoBJpZ4shLNX0qsFL7Ho6zC8XygYdN68QOLT
         H2034k9u4JpskxuCCYDH4WQ/HXJ1ERdGy7JAuf5LGaExzHVsVtECSEi+RVfFrzyOH0hQ
         CkRTA1ftTumu8E4lE4N/lgzirChr/hS0PVl1dot2WFgKLNQ5UYl7C1fu7hQaD7lyvGAE
         9DoLwbJu7rMjXa+KTR2hv1vp1vKXiv2VqX3Z8klG1ugbQjXRNZrROobt+ZX9JBe65NTV
         QUnw6QfgwdMd53qqRunrq0GSJGlAlUDT3ew18KaTCIIsHK6MaKfPRxt8n2HOCl9B6/3O
         J1Cw==
X-Forwarded-Encrypted: i=1; AJvYcCWVpN6eqUxuQUMeONpMxPjc2eL7rwyPRzA+eZax6lpUTrh+ejUMe6vZEZYnNIG6RMBr5ZEoxg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxPUad1CBAbNs7oJlTbGCxPHZFxZtNZ7SntV/omWL7RzhhSI8/S
	T9GNuLI81pwJTH6UNVgtyzvudjAN/22eqtlpmI+H2IUxZlsC7pIdBa5hF7m6kEub8buBnxCMhqP
	5Ckn2QUoQFZLUS8IWApgjghzQb6Z7alzi73mUnFE=
X-Gm-Gg: ASbGncvKucXJDF0fiA33fmo+ZEmazbdMdrq7S8LbX39k0iJzRapSD/ULQiOMssgyp+o
	1OkU24SU1VQ4XxFWOswM9RTkSWVz7szZ5y2O6iyS+cl4yBB6U7yk7L/BoPPbBGL3VexcaWqPMTE
	KdkoKElvBw5sE12A5Hgkd5m6Va7it5gBtWBJBltRDB2bwoC4W8Iub9Bq3+JVGRibQcUMEws6cOJ
	puusoRC7ZSDIUPHX/5ezeIhl+npv/0VzbULq/QQ6MPRschmDjhTvUI3K5K6hx/NESi6W9ZUr55X
	ZveP3V2zE5ESLz7EFBhIZJNTbrL1JiN+SZ9d80KgKz9HkSeiRhOdPbJx+q+/ywAPiWOdcXAEHsF
	18oUl9de7mu6bah1kQQhjFgi6o3E6e4JFFoTJk6y9/3qb5g==
X-Google-Smtp-Source: AGHT+IGYJCSIrvjkhjTIRrshfDeHjy1/emh5Pygc8RYP/4yklaHvBROQadvUeMN9ZtgEvndYmh+IUxyep/JoGl0Gk+Q=
X-Received: by 2002:a05:690e:1586:10b0:640:d092:6489 with SMTP id
 956f58d0204a3-641e7646c85mr12420010d50.45.1763525128210; Tue, 18 Nov 2025
 20:05:28 -0800 (PST)
MIME-Version: 1.0
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Nov 2025 20:05:02 -0800
X-Gm-Features: AWmQ_bnHXthG_NM58SA7eqRSKhjKmhjjj-vr6uUpZHWtkXkZpyMvPSexYeRnyBo
Message-ID: <CAMKF1sq=PB-ahsheN4iCD9w9MzmnCwUUZxTmaCJNBVhYpwKm1g@mail.gmail.com>
Subject: Whinlatter ( 5.3 ) release and maintenance for meta-openembedded layers
To: openembeded-devel <Openembedded-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000d1cbf30643eab09e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Nov 2025 04:05:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66032

--000000000000d1cbf30643eab09e
Content-Type: text/plain; charset="UTF-8"

Hey All,

Whinlatter release is in its final stages for OE-Core. Accordingly we will
be branching meta-openembedded for whinlatter as soon as the OE-core is
branched out.

If you have patches lined up for this release, please send them by this
week. I am also interested in ptest fixes particularly, if folks can run
ptests on meta-openembedded layers and report, patches to fix the failures
are even better.

Anuj Mittal has agreed to maintain this release along with scarthgap LTS
that he has been
doing an awesome job with. Ankur Tyagi will co-maintain whinlatter
alongside Anuj to even out
the load a bit.

I will send an update again when the release branch is created.

Thank you
-Khem

--000000000000d1cbf30643eab09e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey All,<div><br></div><div>Whinlatter release is in its f=
inal stages for OE-Core. Accordingly we will be branching meta-openembedded=
 for whinlatter as soon as the OE-core is branched out.</div><div><br></div=
><div>If you have patches lined up for this release, please send them by th=
is week. I am also interested in ptest fixes particularly, if folks can run=
 ptests on meta-openembedded layers and report,=C2=A0patches to fix the fai=
lures are even=C2=A0better.</div><div><br></div><div>Anuj Mittal has agreed=
 to maintain this release along with scarthgap LTS that he has been</div><d=
iv>doing an awesome job with. Ankur Tyagi will co-maintain whinlatter along=
side Anuj to even out</div><div>the load a bit.</div><div><br></div><div>I =
will send an update again when the release branch is created.</div><div><br=
></div><div>Thank you</div><div>-Khem</div></div>

--000000000000d1cbf30643eab09e--

