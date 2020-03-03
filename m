Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
 by mx.groups.io with SMTP id smtpd.web12.4601.1583245976973814179
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 06:32:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lwMkbSlh;
 spf=pass (domain: gmail.com, ip: 209.85.217.52, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-vs1-f52.google.com with SMTP id y204so2496850vsy.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 06:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=FmKe+tL8IFptn7UmFljFH3cqeF/TG9K7/n06SsC2WG8=;
        b=lwMkbSlh9f6s/ZUBbcU7byzC+URR/50I6Mk6Ch7hH7OQGrNCDB6Euz9g+4Kj2lErFH
         mAnlvs4nV2g1TTI6JOlxzE9MRvImr2nkq6ezBo6ps/H8WwDSWtovJMoeqbl8twRKaG70
         MrB01WPaxUKKvfdKYiyoRJWAdXCG19udxufn0SMP0fhrCSTUXFpWKjcq6sOcR7/JkHhX
         8xL62m2ULBGHwMv2RCursMOWJdxkvsoSZT5Y6B/M/bnzUy0UQLHcg6JLqvSsJiWjD2W5
         7Xj8ymqu993gTvUWx4ObnUTbNiZ/mlVF8JE1aXwCjPgUNMWC++oIucVhqYC8v+qVMn1w
         IFcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FmKe+tL8IFptn7UmFljFH3cqeF/TG9K7/n06SsC2WG8=;
        b=bUQGo1Fkcsa1bz0jc7nmKKW+0/QNJ3lZkL9DyERSnmuwzPuZyoOmo5+EVOdTbOhuzq
         KBkB/1WXVL/hujjOmRLrtgQJDVUm4c4Q80lWYnn3j7EIZXhlQssdpk+k65edh8sLMv2l
         JP6hkJzCmCYIVKzPDTAXgj/HS4Zww1IfU+1rdKt7cjv2yDo6BQzXBg5jJ7wuzKbDf9vR
         HbP3oq34DACmNfwLDMO014/7ntpNwd9ahmA6Wfd4Plu3BvZlaNwMF1IQyobtsgPTzAh2
         uhZLZU8Y+o1iz2REg4k4KuXtFCpRy926HApxdKlryX98kZfSZmKzirsyhYiApUBLK+af
         9ubg==
X-Gm-Message-State: ANhLgQ1vmBe6fiSP/f+CWnnPBPZEoxvGQk34Bl/lSq18YG8suGZvOeHi
	cLKSx7hTnqLuix3iObWAaYdbrXZJV6IIO2l+1ystY5MN
X-Google-Smtp-Source: ADFU+vvpwMLiuOyGglAn34gt/Rpo+3X5EjSPnnP2kuy2SBh16nlFb/P+wQlNsxM3XVLlzZtaq/NhtxvjfT/KZKqh1C0=
X-Received: by 2002:a67:fe4e:: with SMTP id m14mr2556885vsr.225.1583245975630;
 Tue, 03 Mar 2020 06:32:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:7455:0:0:0:0:0 with HTTP; Tue, 3 Mar 2020 06:32:55 -0800 (PST)
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Tue, 3 Mar 2020 09:32:55 -0500
Message-ID: <CAK4PFCXGx7zHT31_bMT4GXzWnvWZ2O_9tOwAC5hOPOqPMznTUA@mail.gmail.com>
Subject: proper way to create an out-of-tree kernel modules
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

What is the proper way to create a recipe to build a kernel module
outside of the normal kernel tree?

The kernel sources need to be expanded and configured for the typical
kernel makefile line

make -C $(KERNEL_SRC) M=$(PWD) V=1 ARCH=$(ARCH) \
CROSS_COMPILE=$(CROSS_COMPILE) modules

to work.

Are there any sample/stubs available that demonstrate building and
deploying a simple kernel module?

TIA
