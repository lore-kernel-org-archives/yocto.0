Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519BBC54EAA
	for <webhook@archiver.kernel.org>; Thu, 26 Jan 2023 22:42:46 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.88883.1674772961584219251
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Jan 2023 14:42:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cnH0r92F;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id o17-20020a05600c511100b003db021ef437so2204352wms.4
        for <yocto@lists.yoctoproject.org>; Thu, 26 Jan 2023 14:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5H8+a9grutA9k8iL+exJ2NeQlgDzOymCQPflEkA5bkA=;
        b=cnH0r92F/Y0rky1sM3+ZaNp82nfyoKpexL+Axp2mTcuq5K/azNQ0YLcRaRT2CeaLXy
         SFiT2A6L/KlTWQHXwqC8zX4tPwULSI7Arih+I5DTATvCHNG8NPX2c8DWlFtfP7yaEY0T
         0iirupksv4nzfDUFr2W+y2E/6Lq8ezztHup3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5H8+a9grutA9k8iL+exJ2NeQlgDzOymCQPflEkA5bkA=;
        b=of/2Tiukaj86Lh1p8Lr+yixjm3kYI6OQqrQXFE4GYjTLsiu3mo/sHlVU2Yx8znDVl2
         fqdEmWoGtN94Bv5cX7e2yDgSiNO1pWTYpENc/Abu9JMdCkmGL6j3Th94lc48bhTesQop
         j8q0arnWzFjUS2NMEZHtFSyO0wCxHixn290dumiVylQPVxvI1W7s4jaVv3H7RE9bUwdY
         KPddjSwaVU4+73o09ir8i/0cAKvtXjdRT4OlH38I38231Y4aqwfAPIujbAh1qytqqtrO
         Nz6ixI1bTXuijrpZ0N8T+78omjllJArg0dVZXbkWXbpRgj9kWXRZGPU0lMxoRUW3D78y
         SBTA==
X-Gm-Message-State: AFqh2kppDr/qPECMnogBaLrPOMdnJDmZrYufi1yQAb3vLQ4QGfQeHPfb
	jDVhWiaxcnmzEiwZL7VvMl+eiQ==
X-Google-Smtp-Source: AMrXdXt/cFWAzaxms8OFkNbazvYVyAIVNYlm50yJRt96aBFOKs+JkJw299ITUB8yuc+XRPaQSnnY+g==
X-Received: by 2002:a7b:cbd6:0:b0:3db:622:4962 with SMTP id n22-20020a7bcbd6000000b003db06224962mr37650174wmi.21.1674772959705;
        Thu, 26 Jan 2023 14:42:39 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:3876:ca46:43a6:4b49? ([2001:8b0:aba:5f3c:3876:ca46:43a6:4b49])
        by smtp.gmail.com with ESMTPSA id y34-20020a05600c342200b003dc16dee9b1sm2504338wmp.15.2023.01.26.14.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 14:42:39 -0800 (PST)
Message-ID: <6c9f63bbb86f39e3f2a24bbecd89499006edf7f9.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH v3 0/5] generate regression reports
 against proper releases
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
Date: Thu, 26 Jan 2023 22:42:38 +0000
In-Reply-To: <20230124173017.134017-1-alexis.lothore@bootlin.com>
References: <20230124173017.134017-1-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Jan 2023 22:42:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59066

On Tue, 2023-01-24 at 18:30 +0100, Alexis Lothor=C3=A9 via
lists.yoctoproject.org wrote:
> Hi, this is the 3nd version of work initiated to improve regression repor=
ts
> usefulness, started around issue YOCTO #1465
> (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14065).
>=20
> Changes since v2:
>  - add symlink to preserve compatibility with current autobuilder configu=
ration
>=20
> Changes since v1:
>  - minor rework to be able to import send_qa_email.py as a standard pytho=
n
>    module
>  - properly manage non-releases versions since qe_send_email.py can be ca=
lled
>    with such "release" versions ("-r" parameter)
>  - add unit tests on previous version computation
>  - do not fetch yocto-testresults full history: identify needed revisions=
 with
>    git ls-remote and retrieve them with git fetch
>=20
> Alexis Lothor=C3=A9 (5):
>   scripts/send_qa_email.py: Rename send-qa-email to send_qa_email.py
>   scripts/send_qa_email.py: Wrap send_qa_email.py content in function
>   scripts/send-qa-email: Generate regression reports against most
>     relevant release
>   scripts/send_qa_email.py: add unit tests on previous version
>     computation
>   scripts/send-qa-email: add symlink to preserve compatibility with
>     autobuilder
>=20
>  scripts/send-qa-email         | 165 +------------------------
>  scripts/send_qa_email.py      | 223 ++++++++++++++++++++++++++++++++++
>  scripts/shared-repo-unpack    |   2 +-
>  scripts/test_send_qa_email.py |  57 +++++++++
>  scripts/utils.py              |  47 +++++++
>  5 files changed, 329 insertions(+), 165 deletions(-)
>  mode change 100755 =3D> 120000 scripts/send-qa-email
>  create mode 100755 scripts/send_qa_email.py
>  create mode 100755 scripts/test_send_qa_email.py

Thanks. Since I like living dangerously, I've put these on the master
branch for the M2 release build. I wanted to see how this does in a
real world test.

I did notice one issue which we'll need to fix in some follow up
patches, I'll reply to the patch about that.

Cheers,

Richard

