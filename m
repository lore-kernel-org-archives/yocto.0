Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.2006.1583276257840916910
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 14:57:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ul5KRTlX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id v4so15781wrs.8
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 14:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=sKkLa1b7fha1Nxkm0cz4tILlfW4g0Z882KZHNmMtO0A=;
        b=Ul5KRTlXr3gFbs6tuzV+p/UbFGSfWaH3J5Z73wz9zvzIm4IMBrfF6m3I8aVNvDWUgf
         TbaiKUIPKr9K1ZgFHQTGN2iN3bpvC5LMVJDwJTZxwTEwUyP6+nNR4+dwjsnaWcIbD/90
         u/h/6G4GxOCZxQCZPTGRAIaAlSbIl2AKZd3ww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=sKkLa1b7fha1Nxkm0cz4tILlfW4g0Z882KZHNmMtO0A=;
        b=rLxi02tnF1yK1PmUosHafFc2SexlcS06OJw7Y/GPcFGKXYRub+Rqi9EswY5MHWyucF
         Z7TGoI091w/cGkF1UocwY/LTSBga9Cs4TbvHaGnxozM/I8IZ+oRVWVwNrcxOBHn6WbCp
         Qh2tpsWyGhr83iTyufDwBdprdAC2i2EIpQjS7qbl3Tr//O+T33vfiFt3g13M9cXvCkim
         LowXVhelfA6N0cGRu/RNvXGMg0AricSN1Q0Gnry0HF2bM8h4waVdzuzeFj4pxCzXEomC
         OwUmDbFK4WKA0T9paoth5qw98SWnTVDcyKHZ4Lc9IfOhTJDAtTv76e/Ds5noeDasTig4
         Um9Q==
X-Gm-Message-State: ANhLgQ2LVJwGn6DBXfgaSrY7N9KeteR/SmksKEiN0g1ZqwyudHgY4r1R
	LKnaLr87rkZSIOk4o2IRvN+PQdEKtIE=
X-Google-Smtp-Source: ADFU+vuGZuihiwetPkhjWJ/wBD+PPY4Frht0O42ceRaHWQlW8fJsUOfVx/7QKXXJgnT4ULh/qMHjOg==
X-Received: by 2002:adf:f343:: with SMTP id e3mr271192wrp.402.1583276255803;
        Tue, 03 Mar 2020 14:57:35 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id e22sm909300wme.45.2020.03.03.14.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2020 14:57:35 -0800 (PST)
Message-ID: <0587ded5e0871e7b92052cbe6e5d72fc31968669.camel@linuxfoundation.org>
Subject: Yocto Project Long Term Support (LTS) Announced
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
 openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>, Patches and discussions
 about the oe-core layer <openembedded-core@lists.openembedded.org>
Date: Tue, 03 Mar 2020 22:57:34 +0000
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Its posted at:
https://www.yoctoproject.org/yocto-project-long-term-support-announced/
but I'll copy it below since this is an important announcement

"""
To fulfill the evolving requirements of its members and users, the
Yocto Project announced a new plan to extend support for selected
releases. The new support plan covers an initial two-year period and
the first candidate to benefit from this change will be the Yocto
Project 3.1 release.

A very important criterion for evaluating and adopting a software
platform is support. This holds true when it comes to development tools
as well. Yocto Project releases are usually maintained for one year.
Beyond this period, releases move to community support, which means
they only receive occasional patches for critical defects and updates,
and no regular defect fixes and security updates. Although this follows
the open source culture, where development is particularly known for
speed and bleeding-edge innovation, there has been a rising interest
among project members and end users for extending this period. As a
result, the Yocto Project technical leadership put together a proposal
to address this need as well as arranging the tools and processes to
allow it to best benefit the project and its users.

The project aims to choose an LTS release every two years. The project
components covered under the new plan will match the core subset of
those included in the standard release process: Bitbake, OE-Core, meta-
yocto, and yocto-docs. These components will now receive the usual
defect fixes and updates for the extended period of two years.
Additional layers, such as meta-mingw, meta-gplv2 or general OSV vendor
layers will not be covered and will follow their usual standard support
models.

The LTS release will support the original kernel it has been shipped
with. Yocto Project technical leadership will continuously evaluate
other similar older LTS kernels on a case by case basis depending on
the status of upstream support. The version of linux-libc-headers would
not change to avoid user-space problems.

This change will also benefit other downstream projects relying on
Yocto Project releases that have longer life cycles such as AGL, RDK
etc. The decisions that the technical leadership makes will take into
account the community feedback, people committing resources and input
from the member organizations.

The LTS maintainer will be responsible for queuing and reviewing
suitable changes and starting and monitoring builds. The maintainer may
have assistance from the community in resolving new issues identified
during build or the QA run. Reviews will use the usual community review
mailing list processes. For example, where applicable, a merge request
will be sent to the appropriate repo owner once all issues found during
the review have been addressed.

The Yocto Project LTS maintainer role hasn’t been appointed yet. At the
moment, the project technical leadership is focused on finding the
dedicated resources. For more information, and to discuss the LTS
maintainer role, contact lts-maintainer@yoctoproject.org.
"""

I think there will be some questions and the TSC has been working on
documenting the processes around this which are on the wiki. I believe
Armin will follow up with some details about what this means for the
existing stable series.

Cheers,

Richard



