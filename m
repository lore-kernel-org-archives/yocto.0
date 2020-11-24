Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web09.49142.1606204036160416922
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 23:47:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=vpyg3HZa;
 spf=pass (domain: linaro.org, ip: 209.85.219.173, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f173.google.com with SMTP id e81so16854497ybc.1
        for <yocto@lists.yoctoproject.org>; Mon, 23 Nov 2020 23:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=dLXiKkz04aFKM0ojLPfF5DFYnf8iXf2EKDZFriXIDvI=;
        b=vpyg3HZaAMSvyu5QwLIA0Ea3SsdiHYpa+zFxC1s/aa2l5QFhlh76JkMNuVBhINO64T
         uSxoLmk8qgRV4cECMrrF+Z2vTTfjhYw0d/n6JhJ0+SwLDJaW6g/SDLm154L80AsYfA0I
         XWGcHG97K6QjQNsffrXWnZoocO5+3DLUE4HiJf8OhreReVUHZYvaB1Z9xqbsWRlZB9VQ
         Ny/THQdHsDMqeddyd00flAlmHOdR+HZkLhOC1SUvX3K6pPC9IEl2Xn8uARX2D21EeBgz
         BCi3klv4uva/NbEp1X4+ODCe5BQClcskT9CNLudhVBNAMmQpBTL2/LF878DuIoi5SXzw
         C1UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=dLXiKkz04aFKM0ojLPfF5DFYnf8iXf2EKDZFriXIDvI=;
        b=SIsISMyF8G8cTiihBM3Q2W58nrfdZ8pXkVjDFp8bcdeEkYpA3HJ3giTYsoi0J/qqcA
         nsvt2f3q+XItEXRVJFneMGM8zjN9iTQsssY1U9L1avW6oSMFdtHci3V5srrVqW/z1gWY
         kNgmESXo7t4qxgbVJAxXsgYsmB0ZNU+MTx/0R/YZrj5pT93e5DLWMkunqXg2yCqhT7U+
         dPVM2euYA/qvqNXK+kZYuy2N0f2OIRuAKHXmmhVeQSoLmcKd8vSCWckKfNPlHM1VQqaX
         DZTfn6mOd9fihSmLiSTGHtYfN1YEu/Olu2haxun/2tyxlb/leSiCJLjK6r9G2Gce3QC1
         peCA==
X-Gm-Message-State: AOAM533/H0Lk7SRSP0xgXij9fsThzEwJdd8L+aDwW4FLIvoTORfbH7Az
	htEJIput9wkLGJhtVEsDhq9+rbhCz7wp37hWrITJMw==
X-Google-Smtp-Source: ABdhPJx12gryWgbn1vyLbu6fL4PyzkiKZxMDQasBZhUy15SRlJFRIegg6De18w6dg/Q8G0HLqKamX0tQpYjrVrfzPDE=
X-Received: by 2002:a25:ab2c:: with SMTP id u41mr5857678ybi.133.1606204035220;
 Mon, 23 Nov 2020 23:47:15 -0800 (PST)
MIME-Version: 1.0
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Tue, 24 Nov 2020 08:47:04 +0100
Message-ID: <CAP71WjwDVBRCKu8MUxYtTWCvt0XFyqwfvUyoSECmQ8nm2Ydz9Q@mail.gmail.com>
Subject: Yocto Project Outreachy interns
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>, dorindabassey@gmail.com
Cc: Paul Eggleton <bluelightning@bluelightning.org>, Ross Burton <ross@burtonini.com>, 
	Tim Orling <timothy.t.orling@linux.intel.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Dear all,

We are very excited to be part of the Outreachy program again for the
December round this year, let me congratulate Ida and Dorinda for
being accepted as interns for the next three months.

I want to give a warm thank you to our mentors as well, Paul, Ross,
Tim. Without mentors there isn't much we can do, so this is very much
appreciated. A big thank you to Microsoft and Arm who are sponsoring
the internships.

Ida and Dorinda will engage on the following topics:

== Enhance Yocto Project License Tracing
The Yocto Project build system is typically used to build customised
Linux images from source for embedded applications. Along with the
image, a manifest of packages and their corresponding licenses is
prepared, however the accuracy of the license information in the
manifest is dependent on the accuracy of the metadata we have for each
package (i.e. what is in the recipe file). As part of the build, we
have an internal mapping from output files to source files which is
currently used to prepare source packages to aid in debugging, however
with the increasing presence of SPDX headers in source files it could
also be used to allow tracing the license of sources used in building
a package/image to help improve our metadata and future license
manifests.

== Add support for elfutils debug info server"
The Yocto Project build system is typically used to build customised
Linux images from source for embedded applications. debuginfod (part
of elfutils 0.178 onwards) is a way to share debuginfo files, which
provide debugging symbols for gdb to enable it to debug a running
program on a target device. Users of the Yocto Project would benefit
from integrating support for debuginfod such that binaries in an image
produced by the Yocto Project build system could be debugged more
easily.

Ida and Dorinda, welcome into our open source community, you can count
on everyone's support during your internship!

cheers
nico
