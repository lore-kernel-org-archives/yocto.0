Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C3DFC618B
	for <webhook@archiver.kernel.org>; Sat, 14 Sep 2024 02:17:14 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.88632.1726280224567076401
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Sep 2024 19:17:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ai3bu0Ui;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.174, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f75b13c2a8so32656401fa.3
        for <yocto@lists.yoctoproject.org>; Fri, 13 Sep 2024 19:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1726280222; x=1726885022; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3Nk5yCiHeim3ys9RQ7ZTEvDzMRNqaDI8pmHAHha82TQ=;
        b=ai3bu0UifOv1ufg4iKBh4RMZjzGVGnkx7P6rFYrQf0yj2DkLlqlUztoj00YRASyb53
         0w+uRFPLGwgT0Ljwfmx6JVzAAOHzTbdWYSEdOMGiwH4fZjekVlJGC4wQ6euerMAQ43Wb
         tCltBF/uPZasX2q6/oYcUVuv3xCeZ0xuw863w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726280222; x=1726885022;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Nk5yCiHeim3ys9RQ7ZTEvDzMRNqaDI8pmHAHha82TQ=;
        b=fYV0WRSOmyCbZqfehIpgxy2nqgtfYvOWKw4hst2caFg+Cu2aaSh/7p7Axz3IlqV1Ck
         TEfZ2EUAtbukH6QlZLZSwd3zbqSnOvw6f6kFz+BpPzzvyPyPftkr+fgdGjyw7qH9+XFf
         MLjM3fImStj0D0YSSGjRTdZn9rRlMyjcIhVZEGkGstBWHTQ10MCABDArev/cZt5erVvC
         j0BVs67yvzhhe3aeX0XyurF3Gn81qZzFEWXkjULbjFWtfx28QJONvyey45AK7H1Vs36d
         Lr1LYn4+PrWMpoCRTX5XU1PifQqr/pWdeO5WT2qpChuJTfBhZUbdLGahcsnftnSx4hq4
         sN7Q==
X-Gm-Message-State: AOJu0Yw2eSalDVIQT78An2ZhrG7wJd8CbuylY7eyqoExRQejlbc47Z50
	ifKVV7hx9+baa75nyYD7a3FQmTlhraL3k3viqqiqcltbNdkluNmkkJh0tYiTsKIo62h3ZcErlNp
	smWDKfYx6uMKjcaKdcdqgqTTgIiYVzRzvhV3R9wUAyOv9POkNxUY=
X-Google-Smtp-Source: AGHT+IGdNv+T1H9p4cMI+RJ2nOZlyjh4BsXo+E8+Sz8InJ7MlF7JiuXQZRikNH1aQTU77EjxlTsYsRAmbK8zXeZQCGo=
X-Received: by 2002:a05:6512:350f:b0:533:c9d:a01b with SMTP id
 2adb3069b0e04-53678fc9a5dmr4362689e87.29.1726280220972; Fri, 13 Sep 2024
 19:17:00 -0700 (PDT)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Fri, 13 Sep 2024 19:16:49 -0700
Message-ID: <CADfgfoZxy=abmDitj4r7QX537DJmXR9bpDj1St4Fr9f=44sN6g@mail.gmail.com>
Subject: Temporary bad tags in the yocto-4.0.21 release
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="0000000000005ab84206220aef72"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Sep 2024 02:17:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63834

--0000000000005ab84206220aef72
Content-Type: text/plain; charset="UTF-8"

Due to a mistake in git configuration 4 repos received tags signed with my
GPG key instead of the Yocto Project's release key. The tags were present
for about an hour and have already been replaced with corrected tags.

If you or an automated system fetched the incorrect tags before they were
removed those repos will need to be cleaned up to ensure smooth operation
going forward.

The repos that may need attention are:

https://git.openembedded.org/bitbake/
https://git.openembedded.org/openembedded-core/
https://git.yoctoproject.org/meta-gplv2/
https://git.yoctoproject.org/yocto-docs/

-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000005ab84206220aef72
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Due to a mistake in git configuration 4 repos received tag=
s signed with my GPG key instead of the Yocto Project&#39;s release key. Th=
e tags were present for about an hour and have already been replaced with c=
orrected tags.<div><br></div><div>If you or an automated system fetched the=
 incorrect tags before they were removed those repos will need to be cleane=
d up to ensure smooth operation going forward.</div><div><br></div><div>The=
 repos that may need attention are:</div><div><br></div><div><a href=3D"htt=
ps://git.openembedded.org/bitbake/">https://git.openembedded.org/bitbake/</=
a><br></div><div><a href=3D"https://git.openembedded.org/openembedded-core/=
">https://git.openembedded.org/openembedded-core/</a><br></div><div><a href=
=3D"https://git.yoctoproject.org/meta-gplv2/">https://git.yoctoproject.org/=
meta-gplv2/</a><br clear=3D"all"><div><a href=3D"https://git.yoctoproject.o=
rg/yocto-docs/">https://git.yoctoproject.org/yocto-docs/</a><br></div><div>=
<br></div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</div><div>Sy=
stems Operations Engineer</div></div></div></div></div>

--0000000000005ab84206220aef72--

