Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0DDC433F5
	for <webhook@archiver.kernel.org>; Wed, 23 Feb 2022 01:02:10 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.1959.1645578129110798794
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 17:02:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JBcIMlTO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.42,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f42.google.com with SMTP id i11so28225048lfu.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 17:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=1hjN6PKFGSHgbTq/m8zJSg/BhkWgQOuwRUqZ+Z+iUXw=;
        b=JBcIMlTO0+CbyL5d0+WW3NuooW+tT7Z4ZFIPoboJ3LVc5pSEqUS1zlh4hXsbKXkTF7
         lTl4xZZUkjzAQIswbHq36o8neQlkb/ZrdqNB4rK5auMx1Z+ChhMw7rlrPym/LsIgaGyj
         kgNVy47VlsEX3ufsSbxobh4AYTrAT1LNSnIFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1hjN6PKFGSHgbTq/m8zJSg/BhkWgQOuwRUqZ+Z+iUXw=;
        b=guX1tCNUNF0xw0ghRSXpXAikGP3uaDpcnkVS9u4liN63xL/E4cdsjE7HrIvKEgzqyB
         AiNe4f5hiF9tO+LuZkeV6D0FbhmDRHc3X30TNHWRuovY0mhkIs98voCN/ETXape8JojJ
         33Gox3/VHN9Hbe9JL6Ua10LRdvo8wzeyNFp+88AHL0BfCIjbC7lN5Ut9RbwYsFSIV2Ug
         8188JCyB2ChVCYkb60LarOyibTuljtBKsT078xIxHLONniYdfbLZPfWu07yU6G5/dmiY
         31i40DdD+UWx7CrwOfpqEWKXIIxFPGO/r7x+GhiUv2i3HtvF0dHqt2kDqmdQpjl/h4ya
         N9Dg==
X-Gm-Message-State: AOAM531ra0vnW2m/e5QJNp4rySoPQf8R/L9enL6HoOZSrHslPedBOKsa
	C6s8MraFwIZZ5ho/B4qaVaCU5Cd8YySljAs9latIzek3AosrOg==
X-Google-Smtp-Source: 
 ABdhPJwQ1aK4hrKC+XgnKhZ8ceQF+gNg4khHAbAgsGLtJvpghvwkjARKjpyZVFK2+KTm85F3ERCPh3+8mrzEZk4WmpI=
X-Received: by 2002:a05:6512:b21:b0:443:db77:375e with SMTP id
 w33-20020a0565120b2100b00443db77375emr10234442lfu.1.1645578126677; Tue, 22
 Feb 2022 17:02:06 -0800 (PST)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Tue, 22 Feb 2022 17:01:55 -0800
Message-ID: 
 <CADfgfoYAXA5c+3+wUBr8DYFtAF6pUoert7upO9Hvkjknkj1Z7g@mail.gmail.com>
Subject: Service outage beginning Saturday Feb. 26th 1700 UTC
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	yocto-infrastructure@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b0f48405d8a503c5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 01:02:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56256

--000000000000b0f48405d8a503c5
Content-Type: text/plain; charset="UTF-8"

We are moving several racks of servers to a new data center in order to
save on costs and reduce maintenance overhead.

Beginning Sat Feb 26 17:00 UTC 2022 / (9am PST)
Ending before Sun Feb 27 06:00 UTC 2022 / (10pm PST)

The following services will experience downtime during much of the outage
window:

Yocto Project Autobuilder (workers only)
downloads.yoctoproject.org
sstate.yoctoproject.org
sources.openembedded.org

These services will also be offline for a shorter period of time during the
window:

bugzilla.yoctoproject.org
IRC Logging
openembedded.org
wiki.yoctoproject.org

Because many of our services are interdependent there may be unexpected
issues with other services during the move.


-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--000000000000b0f48405d8a503c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We are moving several racks of servers to a new data cente=
r in order to save on costs and reduce maintenance overhead.<div><br></div>=
<div>Beginning=C2=A0Sat Feb 26 17:00 UTC 2022 / (9am PST)</div><div>Ending =
before Sun Feb 27 06:00 UTC 2022 / (10pm PST)</div><div><br></div><div>The =
following services will experience downtime during much of the outage windo=
w:</div><div><br></div><div>Yocto Project Autobuilder (workers only)</div><=
div><a href=3D"http://downloads.yoctoproject.org">downloads.yoctoproject.or=
g</a></div><div><a href=3D"http://sstate.yoctoproject.org">sstate.yoctoproj=
ect.org</a></div><div><a href=3D"http://sources.openembedded.org">sources.o=
penembedded.org</a></div><div><br></div><div>These services will also be of=
fline for a shorter period of time during the window:</div><div><br></div><=
div><a href=3D"http://bugzilla.yoctoproject.org">bugzilla.yoctoproject.org<=
/a><br></div><div>IRC Logging</div><div><a href=3D"http://openembedded.org"=
>openembedded.org</a><br></div><div><a href=3D"http://wiki.yoctoproject.org=
">wiki.yoctoproject.org</a><br></div><div><br></div><div>Because many of ou=
r services are interdependent=C2=A0there may be unexpected issues with othe=
r services during the move.</div><div><br clear=3D"all"><div><br></div>-- <=
br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Projec=
t</div><div>Systems Operations Engineer</div></div></div></div></div>

--000000000000b0f48405d8a503c5--

