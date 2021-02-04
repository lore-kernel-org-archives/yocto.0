Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9222.1612451043035373597
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 07:04:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=G3HKqDe6;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2E1CE38C06B5
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2021 15:04:02 +0000 (UTC)
Received: by mail-yb1-f172.google.com with SMTP id i71so3473948ybg.7
        for <yocto@yoctoproject.org>; Thu, 04 Feb 2021 07:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=0bNZ0FD69Zjw9Ej9xoiLCoXRuyNhdeP64OVfC9F4Jgk=;
        b=G3HKqDe6M79P0fu31DkAKH8Z4QqGo9WULaRO7yTcSXqM+FE+iUMOwMJ8v2KziDxPIY
         JdXoGCiVpBFUx54bha9mDk6MeqDTl2u8ZvQ3uUJUt7vjue45cs1CuA0CGXvljwg+U4Eq
         hyiCTxHJHvgYr06psvWlaKTBHNgxL6N4bApUV+3D+skVQiboUZ6Kuxu4G6v2Q3IYHeGs
         59W5x43u36mZS0J6uYlyhSVIQvHRafxXk40tDN+61Ly6Q5sc7255H2AokzJSywTYRGSG
         42VpPJ6bBGi9ZNRuD6YXaDjZVBvh275fXgrlgMNxjEGSEotxib4dtswaQKGeEEObzYUA
         odFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=0bNZ0FD69Zjw9Ej9xoiLCoXRuyNhdeP64OVfC9F4Jgk=;
        b=pE8IPXq4ZNliYf+STlxAREOATPHGYP4TU/YajyC4BlnBlmMw3VxjlqMgcEYnsky03/
         OyWTA6/Z5sX0HbBUWbg8pSNyjPZUYYNKVKLJ9vxWyaUIQeFiNmVRhNpiFk2MNDrMtjWH
         6m0Wmk2jt9B1jziM/T1BHPbRo6clZqtLubigYelZM/C/ou8jirg7vO0ML8Fb32wXF7or
         0AkP1/A+F8UuTrWtKS3PF+c3ZsfSQf6DYqS3LQJoAjz1Z8f8KTjQ8sr+hwLj0LoK5Xqs
         w9E8aLa67ARo02FVja/XrNk2F+w1at1IjacYkXzINa9zlyOz0M3N0ZuWllLUcQPV3IK0
         SfGA==
X-Gm-Message-State: AOAM532hlnpiVmN1pzYuiImkyRc1RkVWsj4in3U0iLw3nQ71vJojsvT9
	KzhuHsWpqEC8GWfmmRkZd9f1UdSAcG6OkMIPc611bR/21JdpzuDU
X-Google-Smtp-Source: ABdhPJz6yUdXYb7Qmc1o8YOFp6e8fw/2Ia/k/bFcujGULt235ljMxYJF8bnNQswz7rfdOggqmq4yZ8yRRqsXsIECPDU=
X-Received: by 2002:a25:d6c2:: with SMTP id n185mr12708036ybg.71.1612451040904;
 Thu, 04 Feb 2021 07:04:00 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 4 Feb 2021 16:03:49 +0100
Message-ID: <CAAfyv35in+eJF2k_vf+6=ZwDby8DPx-bindvqWA-VqKE7kVWBg@mail.gmail.com>
Subject: [meta-virtualization]: dunfell docker run issues
To: yocto <yocto@yoctoproject.org>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to run docker containers on orangepi and use
meta-virtualization layer to add docker. I've installed the docker-ce
package and everything seems to be fine.

But docker service seems fails to start with:
Feb 04 15:00:01 orange-pi-zero dockerd[495]: failed to start daemon:
Devices cgroup isn't mounted

I was trying to add various options to kernel command line like
described here: https://github.com/docker/cli/issues/2104

but it doesn't work. My command-line looks like:
...systemd.unified_cgroup_hierarchy=0 cgroup_enable=memory
cgroup_memory=1 swapaccount=1 cgroup_no_v1=all

Any other ideas what to check? Thanks a lot.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
