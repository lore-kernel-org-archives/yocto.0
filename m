Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ED41C54E67
	for <webhook@archiver.kernel.org>; Sun, 24 Mar 2024 01:06:52 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.21461.1711242402086453000
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Mar 2024 18:06:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M16y3qG0;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-60a5a11b59dso36381857b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 23 Mar 2024 18:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711242401; x=1711847201; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7NJx3dCe5jWCBVwpk+i83zvYajJNUbQDm85D1MYHqeM=;
        b=M16y3qG0Z6FYdajSnzvsjdLlh9lPhDT8E2iF0e61qSkB3fsZIYI6fXJcT+sl9HhfpS
         8q9PL2tfrVJcn5PCmCKEkcSilkRrNZmVn+56QDQf4T6ZQWsVNn52beOGCv+sYo5Y1j/7
         ViEBUhvV/fgQ5DA11XcLDURkbJSee2FwcOHJAfZl2d54LOKOhUWwpC8yEB0+EhxoYkYj
         Vvqv3yllprL9Nia2JJdSdrHHAl+yrQZHNGwG8XtrnsqUpU+EwEIQQjze6FDTrWbqdgbZ
         lCi0etJXzI7NZ7xurzhDJrGS9a5LEhvG3UKL4gQI7sTVA+nLix3RZ7qKqzLf79j7Rn+X
         /yyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711242401; x=1711847201;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7NJx3dCe5jWCBVwpk+i83zvYajJNUbQDm85D1MYHqeM=;
        b=P/lQJwQU0bwiMjJS3PBR6YdFEn7FDqrkAwesARsgohE/OQe1jYtP3uoudYRiUx2qtI
         VTejW6EgC1qR01lqiwfZtySE9wrjszPbK/FlQo9lbRd/uMEW/tB+wvNUeogvY6XafzQw
         b/yelRFlkKh9Kx47oHr2idZVH0ThJ/oxdQLMNPyAbsj6UV4H6IwM+Pisj7JHezw7/g3V
         rFPqO+Txln6lkufv8c+dGRRBfk2AB3Ylr9R4z8pGCy2FnRIbChFPKGzABuvws4ZLMOPj
         MZFQG+xThJmuQx/7Yr4xgDWiFmZ6yJb+94Rp4wNsTwuF9xOk3pMDkXdYoz4n+aUTrIQI
         xaJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXg9Ir5hTxhlTF6t37YLRaBmf7l718Vh9DWhLhmM5WF/Hig4tbnUhuWhv/rSzuHuQoB79KU/R5OXKCmAWzu7CUju2fHnXEu3zHcfz9C
X-Gm-Message-State: AOJu0Yw8m/P9PyBkc7pPSb/u6fCnPC9f7xBgIieXlzdQ5UJS1PFP8xRu
	d9nzQX6uzuLJE3Bw3cKyLTd/YWXwhfzxNmKFRGswCUDLoHrohkeNRow+CiBPbOWmerrXLmWVtZz
	eH8QVnEDh910iLrh47qbdAuKz26nKCezy9y8=
X-Google-Smtp-Source: AGHT+IEYcTdhNMVJNEFM4XQOgVphwECBSq29ABkCWe4bLa6TRzZAm8bM20k2q5nllrrZbuvDbwScFY7UGwa57Pt8vp8=
X-Received: by 2002:a0d:cc06:0:b0:611:1861:1f7 with SMTP id
 o6-20020a0dcc06000000b00611186101f7mr3330483ywd.18.1711242401197; Sat, 23 Mar
 2024 18:06:41 -0700 (PDT)
MIME-Version: 1.0
From: Tim Orling <ticotimo@gmail.com>
Date: Sat, 23 Mar 2024 18:06:30 -0700
Message-ID: <CANx9H-Czy0x0vFPQTJE0crAZu8zEJqdM97fgYQJCf-usxFzTJg@mail.gmail.com>
Subject: [meta-java] Call for Action: Unpatched CVEs
To: "openembedded-devel@lists.openembedded.org" <Openembedded-devel@lists.openembedded.org>, 
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000072b9a906145dabdc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Mar 2024 01:06:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62830

--00000000000072b9a906145dabdc
Content-Type: text/plain; charset="UTF-8"

There are a number of unpatched CVEs for meta-java for which we need help
from the community.

https://github.com/meta-java/meta-java/issues/36

Please take a look and submit patches to the mailing list or pull-requests
on GitHub. Merge requests on GitLab are also ok, but likely to be noticed
later than the other two methods of communication.

Please help this layer be healthier and safer.

--Tim

--00000000000072b9a906145dabdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There are a number of unpatched CVEs for meta-java for whi=
ch we need help from the community.<div><br></div><div><a href=3D"https://g=
ithub.com/meta-java/meta-java/issues/36">https://github.com/meta-java/meta-=
java/issues/36</a><br></div><div><br></div><div>Please take a look and subm=
it patches to the mailing list or pull-requests on GitHub. Merge requests o=
n GitLab are also ok, but likely to be noticed later than the other two met=
hods of communication.</div><div><br></div><div>Please help this layer be h=
ealthier and safer.</div><div><br></div><div>--Tim</div></div>

--00000000000072b9a906145dabdc--

