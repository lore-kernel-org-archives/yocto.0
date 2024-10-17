Return-Path: <Shilpakumar476@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4F99D2124B
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 08:41:53 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.43858.1729154507389198844
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 01:41:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mpddcSyX;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: shilpakumar476@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2fb4fa17044so7381261fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 01:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729154505; x=1729759305; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QkJd8o7T5Mik9FOsyjHE5JDFa6Bo+VH9oXevBQXsmeM=;
        b=mpddcSyX9BFNwcAi/n1Cig+gYfUi3MAqArugfW23F77jVrHgJd5zl9Rw86zHWCsCyL
         93JkLtKQ7jmWRGGOobV/3aboUSIk+f6sHxGT1NNvcd1OV9Vj5ZlxmapZ6i8stuSU6kor
         mJPK0itmmnfsH+letRnOOfXGVnz8AW1FXJSYEt6hqjcykygT9kNTs3haiAuOqr7KnP+z
         kMX4mG3l+YgT5U8TsxcH+RAxjHTJtu+ZYHqz0xM4HobDJO+9fHF6blZB4acAbl+TdM0p
         TluJaAK1JAjeO+HJEMZDX9Hepvz0BxC8z/QCATk9J/XV3nzTdTWZC3XreSHwHsESr8aS
         qn9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729154505; x=1729759305;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QkJd8o7T5Mik9FOsyjHE5JDFa6Bo+VH9oXevBQXsmeM=;
        b=pBqm+BkFNHySds7Id0HT6HfC5HLQ+CjtuogupWJwBIypTShGO5jCBboqKDT/lEjHeI
         c3BZn4kvJapXCjlWIIz7SQjvxof2OxbkQZM6uArl8o9cqx0Ceq9n1dRmupQyVtDIxc77
         MYlixHKlbZvCacDM+r/0piGnueL5Qx9A8cmFTYz1ZBeTQaAqS6qLq5jOqKAgWgnQJJQC
         RsAVRBbLRyvvCqTLphKSA4RJXxJM6H/7FQ6Ve81o5Zvn1F9fpJzSkPgDO2047b2/cnTc
         EA1SxqUyVeGcOEShruQ19GHIHlao57vv7b8RLNSaxIW8qCUzgMiTxklkJ3Hvp4f1wV55
         uD9w==
X-Gm-Message-State: AOJu0Yw3HS3EGmMVM+Usf5EFe+c0p4op+3/I14tuTlFMVrr3FoGz3MXV
	+kWybYegx0jpJbu/u1eU0yn8l5xeE0i1uFmI6Mrp0qf8uoEH2XrnZDD2gA3auuczgxNvLI8Uhmf
	tk/LcaYe2XHg1qIKcg3UEdQPSqnCTVw==
X-Google-Smtp-Source: AGHT+IFFlwoO+Z4/BBNxfQ3u1mS0+bHIxXTogtknenXCPNwnT4eNVn9KN+qWMXs4npxjhnZ66v33QnaeJngba7Ef2eM=
X-Received: by 2002:a2e:a584:0:b0:2fa:ce87:b7ea with SMTP id
 38308e7fff4ca-2fb3f01a708mr95828441fa.0.1729154504952; Thu, 17 Oct 2024
 01:41:44 -0700 (PDT)
MIME-Version: 1.0
From: Shilpa <shilpakumar476@gmail.com>
Date: Thu, 17 Oct 2024 14:11:33 +0530
Message-ID: <CAOqiPbKtb1Xe+fMge7bczn--o3wYG45hBo_mgwvHrWG1J8Ji7Q@mail.gmail.com>
Subject: Confirming my mail address
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000792f20624a8282c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 08:41:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64035

--0000000000000792f20624a8282c
Content-Type: text/plain; charset="UTF-8"

Dear yocto team,

I'm very delighted to receive your email please confirm my mail address and
join me the respective groups.

Thank you
Shilpa

--0000000000000792f20624a8282c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Dear yocto team,<div dir=3D"auto"><br></div><div dir=3D"a=
uto">I&#39;m very delighted to=C2=A0receive your email please confirm my ma=
il address and join me the respective groups.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Thank you</div><div dir=3D"auto">Shilpa</div><div dir=
=3D"auto"><br></div></div>

--0000000000000792f20624a8282c--

