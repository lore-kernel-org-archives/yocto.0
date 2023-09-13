Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B086EDEC78
	for <webhook@archiver.kernel.org>; Wed, 13 Sep 2023 15:30:10 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.1641.1694619008563507289
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Sep 2023 08:30:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=xU6R98iw;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.46, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-9ad8d0be93aso243506966b.0
        for <yocto@lists.yoctoproject.org>; Wed, 13 Sep 2023 08:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1694619007; x=1695223807; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6uNq0tSrIdlNJFlEX+ykup3oOGkTatya0fN05NpeQu8=;
        b=xU6R98iwTXtwoRE0QFxj2svx6qLqmCN7hPJOr8VMsiatQwhB1B1bUrk4sOSAd1raG6
         CE2g1qtov4CcVaJovRlMHU9E3n+KJQygnchzGV+b/gSQYIZOEGM1KAYe5GV5ztUoSBEv
         dPrvs4Dyeg6FheQXbtteBVev7l73+k/+4KfwM+4Zz76u3OMPrLG08GN0ju7S0inRpttA
         arjdD1vCbR0/Ft4YVLpOPx91S2Hw6iPs4ZjjB9PFV91NRVB1H1/rqR4XDqfTsoHBPlfh
         NjWlJyjlmEA8Qndli2+O918JL0RD39xxhwbNDMiHYxgORapkQV/8/Na4J1R169zs/eLn
         lgOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694619007; x=1695223807;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6uNq0tSrIdlNJFlEX+ykup3oOGkTatya0fN05NpeQu8=;
        b=TLBN3bdejsicB6/mFbFDhfeDfxNPtNoxLk5pHpKzVbIJo6+joqlP84XEWm5z3/8xmS
         Zl7r1k8cuaKYRA23mXviKNjwibD3JIrOYwBy7J9o0v6iy3MRmr2SAj0IyvT8YUjJMkHY
         4YT8jod4nO1f0umCPs3uXN1Hozg5QDisDkCD/u5xu4V9cHKzZd2a2crEIOWe0UlO9Pho
         BHwsRnNxuHc+NdK5AmrJ1yC7pXBLOfenQ9PRnZcp85KxAcI0lK1IemmKWWdwA6J0WnQd
         j9E5ngFjUb9MVnfeWu494+9Mrkns6dU1dEz8PVyD7HzIbo+6CGAbsVXh/hn5NLFd5nfY
         ca7A==
X-Gm-Message-State: AOJu0YyIYbo1WsqnGCMwipHal/A6w1CHY3PWuLyV8NagT0xcm4In5waW
	JUrcN1n78U3M+T8AZSwEgJrLH7JKlewoLtX4ATMm7eGYExG3oWFcL508ew==
X-Google-Smtp-Source: AGHT+IEt+1lixjQ+0HziwyrZjRB6GuT5GaeItgK31LYaCQW58pdCyEmSwZaRLwoJMxqdqmby0I09hwkGcUSshLSY0dI=
X-Received: by 2002:a17:906:cc0d:b0:9a2:86a:f9c0 with SMTP id
 ml13-20020a170906cc0d00b009a2086af9c0mr4449130ejb.1.1694619006526; Wed, 13
 Sep 2023 08:30:06 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 13 Sep 2023 17:29:40 +0200
Message-ID: <CAEt6Nwr7kzVktRnNM3TxfaNxNyrPzOC7URuTvsw7e2svH=GEFw@mail.gmail.com>
Subject: The YPS 2023.11 CFP is waiting for you!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org
Content-Type: multipart/alternative; boundary="000000000000e9faed06053f3bbf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Sep 2023 15:30:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60985

--000000000000e9faed06053f3bbf
Content-Type: text/plain; charset="UTF-8"

Summer vacation is over, so what is the next thing to focus on? Sharing
your The Yocto Project, A Linux Foundation Project Kung-Fu, war stories,
use cases...

And the best place to do so is the Yocto Project Summit 2023.11 - the CFP
is already open. We are eager to read your submissions!

https://summit.yoctoproject.org/yocto-project-summit-2023-11/cfp

Deadline is by Monday, October 2nd 2023

Josef
on behalf of the YPS organization committee

--000000000000e9faed06053f3bbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Summer vacation is over, so what is the next thing to focu=
s on? Sharing your The Yocto Project, A Linux Foundation Project Kung-Fu, w=
ar stories, use cases...<br><br>And the best place to do so is the Yocto Pr=
oject Summit 2023.11 - the CFP is already open. We are eager to read your s=
ubmissions!<br><br><a href=3D"https://summit.yoctoproject.org/yocto-project=
-summit-2023-11/cfp">https://summit.yoctoproject.org/yocto-project-summit-2=
023-11/cfp</a><br><br>Deadline is by Monday, October 2nd 2023 <br><br>Josef=
<div>on behalf of the YPS organization committee</div></div>

--000000000000e9faed06053f3bbf--

