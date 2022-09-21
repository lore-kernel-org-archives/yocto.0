Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DC10C6FA82
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 16:29:53 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web12.8622.1663777775045707034
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 09:29:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jqWeA2+F;
 spf=pass (domain: gmail.com, ip: 209.85.167.51,
 mailfrom: rustyhowell@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id i26so10071199lfp.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 09:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=UbPXoFXxLYw2ysW0eqxRpWOi95Cgw87DEZlbli6xnBA=;
        b=jqWeA2+FimsP3yxRj0WR/3tsaLr8ZclbScKVAKi1g0j0tQgmbFZx1arEGuoDudqGfG
         DLToMvSh8PVFNhzS6cFkpMrWTRG6z68M6VNG4fRc0Yg2boYtNZeDpRFBgNOPqQvA9cci
         bUUHF4BQnU5gRrNFvLv44AAmSoLA26MXHf+h0iwrtStVnSYDj0vyS5S2CG7gw6JCaiSs
         cVGYBLK0XFhwN3tsM4W1qyr5BVF4FfX9dQ97Ope3KLd+SmCxzZ/6G+MteJIcRXUTd4xl
         Se+IXq3XZtgT9maFs8eDEY9ROktckb6GwV+KqYd2dF/8FMayNxochX6JP/RHw7J1sUbH
         lWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=UbPXoFXxLYw2ysW0eqxRpWOi95Cgw87DEZlbli6xnBA=;
        b=SN/DP+ggIivvdfSXAs/3Om4hfTGfUJDDGAAn8XE00kO6UXQQjB3cx/W6nkEbNPMHYM
         9XNUNHG9YHBLhxV+pFrXiRtCbP9Mbrx+Im6nTbD0O/PIuj5Ls+mKTFppevI2jg2ZGy3+
         CrGZwTAthTR5vT/9b9RXaPME2H4NXytUcdmyLRYjgTvyqSmi2BorPCJQybzsRQgXsArK
         iS7CDvtoB/pZxfL80yWawblTkurba5jpzRfL+Y+PuKavpi1TEfeE1lXSBbXJkz/QgxK+
         yA64bF6lmFy8apEWLCuXC9MmchECkw4UFFemqzylZ29IiW6R0E8+svHU2MIGrh7JxnBt
         qfrA==
X-Gm-Message-State: ACrzQf0ycywcwOXU7T4wwIPpYC90CO/rRBBEE8bM4KJcJxM2i86AtQ4k
	rkjXXpBPsWp/9ZXMJKGUSP2Z7H/vegWhDm8cnqofDbWJfzU=
X-Google-Smtp-Source: 
 AMsMyM5ItvBYPkKBGGbWt+RN8RmTW3pjRn7lrpHhFQQCIci60XKhf703Y71/VdqJ8EAiE0qjM9fg4rYPQM6o7cUBljs=
X-Received: by 2002:a05:6512:3b8e:b0:49a:d2f4:6b7d with SMTP id
 g14-20020a0565123b8e00b0049ad2f46b7dmr9785721lfv.627.1663777772632; Wed, 21
 Sep 2022 09:29:32 -0700 (PDT)
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Wed, 21 Sep 2022 10:29:16 -0600
Message-ID: 
 <CAE+BM3mhV6QN6o-BxMFyeqehZjgyz3z7xECHfhwdHFPCocqKYA@mail.gmail.com>
Subject: Handling different release versions in PRserver
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001f7df305e932730e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 16:29:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58124

--0000000000001f7df305e932730e
Content-Type: text/plain; charset="UTF-8"

We are currently working on two different simultaneous releases of our
product OS. One release is a new major.minor release and the other is a
"dot" release from the previous major.minor.

 We are dealing with some preserver issues. The newer release is getting
some PR values that are less than the corresponding PR values on dot
release that we are also working on.  Both builds are using the same sstate
and prserver.  Is there a recommended way to deal with syncing a PR server
for multiple OS releases?

I have a couple of ideas to do this but it basically involves hacking the
prserver to our specific needs.  I wanted to check with the community if
there is a solution already in place.

Thanks.
Rusty Howell

--0000000000001f7df305e932730e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We are currently working on two different simultaneou=
s releases of our product OS. One release is a new major.minor release and =
the other is a &quot;dot&quot; release from the previous major.minor.=C2=A0=
 <br></div><div><br></div><div>=C2=A0We are dealing with some preserver iss=
ues. The newer release is getting some PR values that are less than the cor=
responding PR values on dot release that we are also working on.=C2=A0 Both=
 builds are using the same sstate and prserver.=C2=A0 Is there a recommende=
d way to deal with syncing a PR server for multiple OS releases?</div><div>=
<br></div><div>I have a couple of ideas to do this but it basically involve=
s hacking the prserver to our specific needs.=C2=A0 I wanted to check with =
the community if there is a solution already in place.<br></div><div><br></=
div><div>Thanks.</div><div>Rusty Howell<br></div></div>

--0000000000001f7df305e932730e--

