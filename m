Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B970C282EC
	for <webhook@archiver.kernel.org>; Fri, 14 Mar 2025 08:15:33 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web11.9063.1741940124690284752
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Mar 2025 01:15:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dG27hfRt;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6e91d323346so20265546d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 14 Mar 2025 01:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741940124; x=1742544924; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DrpfKY2WJvngxQzxOWM2/KAs3PymAMt5p4sRFvT7nfM=;
        b=dG27hfRtK+FNLD/AlOEUJBEbGO6Qpw8G9G5xe1Zy4VG1BM48DCY8xw5jN6NIuhOCMP
         /1nPUrc8MmenxLsU38Ef9IqOm9UvU7vBxisBdqfGQh+ZX4UnqtzU2f4JujlAqrx2GZWP
         FIAoPQJ2ZvuvVPWLlaAAyfj/MsYZIgdjljsBn9Gz179eXyImKT0OtJS0/aO0vwzxXF/b
         vKqrwXJg2/A7TPuuYgzUh8mRIMRkPfAslGHsUZpx66YK/qtX20j9f0EbEnP55NFiS8bz
         jxyVr5wZL/O6VnOeFwanNZccw1oSr6m70LF3d3jlx0lDmWUYVOS4W6NjW+fs6cz3ALq2
         slaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741940124; x=1742544924;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DrpfKY2WJvngxQzxOWM2/KAs3PymAMt5p4sRFvT7nfM=;
        b=CG0m1AF4wtwZvigmLFR+9fs35IN6mgK5+fKcPBSY48OfS9+tamLKKErxBOIhQzm4K7
         k0rS7huhpOTuXWUagHJ8pLD6hX8DLzq6OE0T/EcoZqPnMN6yZ5vw8eMORHiqNzW0gqo/
         5rFU4D7c7dczRNJ1Z2GAT4yduhkYKU7c9QkMKpTsRKZ4T3Qbzp/5q53pPRJvaxbpb1vF
         M373LGE7gI9k1m7u6UFd7yp2Uh+nOyN4sfsaCup/H4f5rfdgy8ZLsflXKKT4+Xlh1oxt
         iJwzGyinhezQALTr21aBmkDhOMiOogi0ys6IyVxju7wTaUUawjfVcOn8q1ZWsL99jrO8
         7osg==
X-Gm-Message-State: AOJu0YxzQYrKVFOM0RM7UE14AH2w0PPqPesn8R1hAvjjn3Z30CEMKHCY
	BerVuyi0E/2QccZqwsSiU8jHxU0cGQxGnGV+o8BSUcct63gPJUmpm4AhGcDcHvrxl5ZshS1Hr0l
	0tvYszVBT7SmHfEYby2GD0/bRISE=
X-Gm-Gg: ASbGncsRB/9ZE84ZGVYejXG0mEW+SdxsZuQtpgQoyzkFPhJsuj5vziI39WgxOwsI9a9
	MVOei2ybwDnwZFa9UU9JiHVcW5WwA5qgpwwqbCKiH8w+BTx/7BcjeRx+8IYDk5c6lfByAifE6In
	wSjwxclGhgfsu3u0lIjS55Qzk2Oko0nXMy42PJ6qukQ9tkQNiFLEycIaT7MI4u
X-Google-Smtp-Source: AGHT+IGk53OE+yr1Nk2gHvh3kMTRk3Bpqi6eJylK/RXNq68HakcMNQSwg3yy0SWTg+QbewQZ95tqe3HL2arpml7CSuA=
X-Received: by 2002:a05:6214:5016:b0:6e4:4012:b6f1 with SMTP id
 6a1803df08f44-6eaeabdde9cmr20157226d6.3.1741940123676; Fri, 14 Mar 2025
 01:15:23 -0700 (PDT)
MIME-Version: 1.0
References: <093b7c87-b979-4f89-981f-cbc4e49e27db@berginkonsult.se>
 <CANNYZj9pn1jOhtS-uQJ0wr6OuZYWkd34ji2kg4+1YEYPskm9fg@mail.gmail.com> <32cd3d50-7273-41c5-9e0b-808cb7a500e0@berginkonsult.se>
In-Reply-To: <32cd3d50-7273-41c5-9e0b-808cb7a500e0@berginkonsult.se>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 14 Mar 2025 09:15:12 +0100
X-Gm-Features: AQ5f1Jou7Y7qPTlK_2KpjhqD2Gj3FOmR0GsCiwEgVunggNkrGzXnoKc734sXzqQ
Message-ID: <CANNYZj9p4i+afZKB1wQyi=uKoAJFACcpn=D1P4ky96ZU18JZ_g@mail.gmail.com>
Subject: Re: [yocto] Workflow with Extensible SDK and rust project
To: Peter Bergin <peter@berginkonsult.se>
Cc: yocto@lists.yoctoproject.org, 
	Adrian Freihofer <adrian.freihofer@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Mar 2025 08:15:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64957

On Fri, 14 Mar 2025 at 08:07, Peter Bergin <peter@berginkonsult.se> wrote:

> > I am basically encouraging people to move away from esdk bundles into
> > 'direct' esdk workflows where you set up a sdk environment from a
> > bitbake environment:
> >
> > https://docs.yoctoproject.org/sdk-manual/extensible.html#installing-the=
-extensible-sdk
>
> What are the main reasons for this recommendation?

The reasons are listed directly in the link.

"This avoids having to produce, test, distribute and maintain separate
SDK installer archives, which can get very large. There is only one
environment for the regular Yocto build and the SDK and less code
paths where things can go not according to plan. It=E2=80=99s easier to upd=
ate
the SDK: it simply means updating the Yocto layers with git fetch or
layer management tooling. The SDK extensibility is better than in the
second option: just run bitbake again to add more things to the
sysroot, or add layers if even more things are required."

Adrian can add from his experiences using it.

Alex

