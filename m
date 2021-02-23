Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3445.1614041548005529206
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 16:52:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GoXoKL1T;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: karthik.poduval@gmail.com)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 94C9D38C05F5
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 00:52:27 +0000 (UTC)
Received: by mail-vs1-f41.google.com with SMTP id u142so5160842vsu.7
        for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 16:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=KM0ZvEfmYTm4gqxuA2d0Zo06kdlDIkMXqLi0zzKiUXM=;
        b=GoXoKL1TkUqzmOYT41XFPWn9yvM8dQ48TpV/oZ3SG5b2pbYDPtGtgJthzTo8gsCDKQ
         J74rJJz+CS0lo5U4OfmahmA2WmJoNa6zrYgPsbeC+Bj6BsJeM/NQqawTKiE/orr5/1b8
         BzaHUCZJkkuwMLRp/9WD2KqmplHvtm8+Dm7m9AeieFC5W+Uv3MySxj6j8ReOGpxitm5Z
         JnvozeGfZGo0P6S9O95lurnNjsSZ/veU3VN3fwF24jWFPcCuiPuiMEf1MkQ+9KBtKYzQ
         oul8OJzx/QAlOqTg0zFmmKhitdDr73ZfAdo8D+4mWLWorwJqeq8uNzpHlzL83VKqkzpo
         fnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KM0ZvEfmYTm4gqxuA2d0Zo06kdlDIkMXqLi0zzKiUXM=;
        b=eX2fkBQ6Cpdb97wpk8YVQxxJN5AKIgVxAnh9V0wfa6KYd8aYc9wiyHtGNagI1MrwQr
         qnROVqfaH/8jiETkgikqZBBphTaqWXE1xzrZwa/nKSIr5Py4GXhOpinUfqIWI0V2gsMu
         SGzv1CZG5oVDM/n0+6/fHbyJ0eN0k2WfjFFrh2diRKTM0f+VghPvFteqXogUmu62gHJb
         DHXKP+DhCh4AQtwJkv1cQPMfOFk4mVXrLzxtFutklRg1h/LTeY3ESDGJaW9Q5Kp1RWBH
         OLSEUSyow0dq71GU4JG9ezUoQ1xfIPGR/WwyhXxAvXEJgOJ1JVYmmRAo2pUFU4cf5HJ2
         3g1w==
X-Gm-Message-State: AOAM530883zz1Do4mMtwQ5D7Zif+cvhHb8ryTNa7I9gcyvB9UQz6EZT4
	9v5F7lxVlDxNt63MHawWkhjWGHp+8xVM+4a7QLjU1lNTuLA=
X-Google-Smtp-Source: ABdhPJyl2nLE4Em0E3vmYUtp0B++FLXWYvbeANF7owcknClu9hoesMMEe6BCtd0coJnd0wamz4XcgLYsB/8K+1arKTs=
X-Received: by 2002:a67:15c1:: with SMTP id 184mr13451vsv.12.1614041546319;
 Mon, 22 Feb 2021 16:52:26 -0800 (PST)
MIME-Version: 1.0
From: "Karthik Poduval" <karthik.poduval@gmail.com>
Date: Mon, 22 Feb 2021 16:52:15 -0800
Message-ID: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
Subject: Kernel Header UAPI Issue
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I have a 5.4 kernel where I applied a patch (using a .scc file) from
kernel 5.6 which brings in dmabuf heaps.

The patch exports a uapi header
include/uapi/linux/dma-heap.h.
I am trying to write an application that uses dmabuf with a recipe (no
special DEPENDS).

It is able to find
#include<linux/dma-buf.h>
but not
#include<linux/dma-heap.h> (this file is introduced in the patch)

I looked at the recipe's sysroot
recipe-sysroot/usr/linux/include
and  dma-buf.h is there but not  dma-heap.h

Why is the header not being imported ?

-- 
Regards,
Karthik Poduval
