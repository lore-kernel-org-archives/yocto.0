Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5122.1602812475324085072
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Oct 2020 18:41:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PWpoCmTn;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jupiter.hce@gmail.com)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4DBD338C1194
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2020 18:41:14 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id h9so610293ybm.4
        for <yocto@yoctoproject.org>; Thu, 15 Oct 2020 18:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=VUoKIIlzLMEz+GeLNEcnLyQIUsxR2cMc4zFNCdDjTfk=;
        b=PWpoCmTnp5enYst0NwEoeuafXyOF51YMXLoQD6UgGPtXGxidaaOKDmmmVvKe1NrUWj
         dnWEofip177Md0E6Bal6HqFjPV9EEMwaP/22nAn1ZGIRP6js9gLp2gJ5ijEfw9hsVDhd
         39S7x/RndYd4TUc+Dg5t6Cm8TbHPqU8A9aBF0yS9Czcx+ka40CTGaUdXErlcwcewa/iD
         4kxn84hbZcX1v2MCMZfY6mg+KY+xkx5qF71QWg2i758tdHz+FAwIC5W1Eg4tOdaLL7KB
         pZqs2nUDmT7R3PD9PLh7OVceDjy53bOmiA+xZZYljW4hVPwxwrrKsDbE/Qn6Mhz7UOtg
         /2OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VUoKIIlzLMEz+GeLNEcnLyQIUsxR2cMc4zFNCdDjTfk=;
        b=juYTsoLi0J+e4ZdxmyodERXNOARY5QW8WagEcJFqauRIegJR0J18fa+nw3sEr9u7DW
         sOpuUi2QA0wN8XVfJUFSZRSxxbNgOHy3VaduBnSn64uq0gkZ/V7cU7VfT11hE30bJ6Ry
         nY9ShXwtahWtWqKr3LT8ROtadhjjB+amxNDJ3DRl3ca3RdBvvZ8kddBiU2h+j6stQxSH
         5sdYnHE8uELDdGUnYPUEmt5lWC17O+bqXuSaPJOVQfWnNN+NYRgCoJW/gu15pvuTqLes
         C+WAQCCqA/U03F5jhhln+P9976uJkQNgWGhF9XUa9kmnPtGBa6tj8vRLJVFd9gD6fHRT
         +w4g==
X-Gm-Message-State: AOAM533KgyW8kQ7IfoefWQ3WOhuS6mtfzeR2iUXKzyjChHJDEM9kwj/X
	tLcpIx1+XHzwEUcc7sqXGL7qALCw3qUkrOML/THCYd+1Rd8=
X-Google-Smtp-Source: ABdhPJwR3PhLwZO4NVOH77qTqOKZWxwHUKKDauEwd4YzAVTn2cHYic+Y5SvC3yqDRZekZdmntNkes7VMulPRb4tpZ6Q=
X-Received: by 2002:a25:5f52:: with SMTP id h18mr1550630ybm.289.1602812473028;
 Thu, 15 Oct 2020 18:41:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:1882:0:0:0:0:0 with HTTP; Thu, 15 Oct 2020 18:41:12
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Fri, 16 Oct 2020 12:41:12 +1100
Message-ID: <CAA=hcWS+VYh+hsddCUfi+5o7K5XJEHds4VnBA_-gZg+6n-aT5g@mail.gmail.com>
Subject: Where to download zeus 0011-linux-user-remove-host-stime-syscall.patch?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I failed qemu-native/4.1.0-r0/qemu-4.1.0/linux-user/syscall.c:7657:
undefined reference to `stime' running zeus on Ubuntu 20.04, googling
to find a patch is needed to fix the bug, where can I download that
patch file for zeus?

recipes-devtools/qemu/qemu/0011-linux-user-remove-host-stime-syscall.patch

I understand new version fixed that issue, but I am not in position to
update the new version right now.

Thank you.

Kind regards,

jupiter
