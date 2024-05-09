Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F60C10F1A
	for <webhook@archiver.kernel.org>; Thu,  9 May 2024 15:00:01 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.12573.1715266791932918738
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 May 2024 07:59:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Tesbb1Jo;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51ff65b1e14so1015504e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 07:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715266790; x=1715871590; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HDJAW1M7LqgaN8MJMzs9DA87j2QjFk6WXu55OF1ZFe0=;
        b=Tesbb1JotfiDmOs4iNRXBtz1/cJLl6vPQcW78Y5E60Rswg/HT2BbtaDWMCKq/BNbwN
         IXcxk/wwU/txVYrwOx48P4/h6tmRdtjSix8YKvW93YAlc9Gcdg+t2DAMve52/1k/lhEo
         t6GGCILBX29nukZ4Rj1BQ2s1cZdIlyuZ7ynqafh12O+8lNxI/j/mwf8bhbYggK1ZV6bh
         Sx5FYBceXmuI5GOGdt7QUs+GxIQ+7l3EfydiByvh8oxP+tZB69WrFDeQNSwc8Y+WSFD+
         KTGmPPS5HAcYJIFQva7TRvdlYpGO+RUIlAgjnxt7g2r3znn8Qc3be5JdnHkaU1aE8KAK
         GM0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715266790; x=1715871590;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HDJAW1M7LqgaN8MJMzs9DA87j2QjFk6WXu55OF1ZFe0=;
        b=l+EB/vwkHm2lO08f7M/1uCeYQN8bl9bsCnvEG8K9lpY2wAQeIgzrnS67kzIHp2ZEr1
         Ioq5SKxBtS9eO2JovX9TfCo4JdaINVsRXRB5uJ+3LCL6nrZW8wn5ApOSLOmjelUtHc8C
         ifLJktuU1qdbY4jiYysHpypEe2g26XWCU6OqAEPsozxw9o5Uy3CvNZbKdwi2RkrBfCML
         QDI0rZDb2VTwQ0KD49aDiyyL3rRzloB5TiwwSles6avEvCI0oYHYJ5dMrJpAVu4DD1bX
         zF7GY/FGsXFRtdbTDyy43yUkw9SKv3MYFhf6hy4siQ8AfPZ8FsVTL0N50hvzQTjkwGCd
         JApg==
X-Gm-Message-State: AOJu0YwoZlIc/9BAw/kQ3DvqJdyTvUBu2qPQqHuf1Wr0S+a9A9HC8WaC
	4goCy7JiQMOhuPEYDrCgYYMl+YyqF3cXYHCW50ULvxrm6VMZ8xJePdfWbdy0NLusa+M60eTxcCq
	dWQOYv7w8vx/usHyj+rG8D1JUMvuMUQ==
X-Google-Smtp-Source: AGHT+IHWEPYvEJQyAOpcrjUudp/eh0k6uREdq1yTpQNAHbu1ROOs00AGLEcPk9UshC3ZDTDNZNgYYGUzVSYhqIP1BZ8=
X-Received: by 2002:ac2:5e2d:0:b0:51b:567e:7ea4 with SMTP id
 2adb3069b0e04-5217c46c284mr3331621e87.26.1715266789938; Thu, 09 May 2024
 07:59:49 -0700 (PDT)
MIME-Version: 1.0
References: <737087f797ecd87620bc96abab014d4fac6bb1e5.camel@linuxfoundation.org>
 <IA0PR14MB6188558226DBC7D15C1B36EF85E62@IA0PR14MB6188.namprd14.prod.outlook.com>
In-Reply-To: <IA0PR14MB6188558226DBC7D15C1B36EF85E62@IA0PR14MB6188.namprd14.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 9 May 2024 16:59:38 +0200
Message-ID: <CANNYZj8JtpUOxwV+B1uc5m-byUOkbmroAX-Lp=nbHNyr0s5pbg@mail.gmail.com>
Subject: Re: [yocto] Where are we at?
To: yocto@lists.yoctoproject.org, janne.kiiskila@izumanetworks.com
Cc: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 15:00:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63063

On Thu, 9 May 2024 at 14:50, Janne Kiiskila via lists.yoctoproject.org
<janne.kiiskila=3Dizumanetworks.com@lists.yoctoproject.org> wrote:
> Also, as is with things & the pain being in the right place - the people =
in power (i.e. people who can actually fund things) - are not going to ramp=
 up the funding, unless they start feeling the pain. This might be one way =
to getting that done. Or the more optimistic outlook being - some people wi=
ll step up & start helping more.

It would take something particularly drastic for the pain to even
register slightly. Such as:
- RP takes a leave of absence for an entire release cycle
- there's no release in the autumn
- all patches are rejected with that message

I strongly suspect this is both not feasible and at the same time not
enough, as the people in power will be able to ship their products
based on existing LTS versions, pile up patches in private trees and
derive an income from that for quite some time before their own
technical debt starts to sting.

Alex

