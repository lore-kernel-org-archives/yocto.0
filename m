Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web09.3976.1578112587746624712
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jan 2020 20:36:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KabRPuiH;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: drawat.floss@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id a33so24280495pgm.5
        for <yocto@lists.yoctoproject.org>; Fri, 03 Jan 2020 20:36:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=P/l9GPsWpNK6RI8NkGXZK54wOo6Y/AaHGvG886HBNXo=;
        b=KabRPuiHhuqB6JRN3jsz2wpLs5RiVpg0arZPEXBgGo3tqc49yKnOUco3GW6MePT/UF
         kuzO/o3i606YoQMooQGd3KMIgL2qs/c3prf2jzBMdsBYXiAjMwuev/XK5l4h4aKH/R7D
         0uVVJ33lJXCSGQHKCyEgYmGwKv7UfPMyDuLxN3HywP001TWuFItCrdXvxlqhO0hMadgS
         ewXec9wZtWIbRwwoZRTjdTO01PKYqA4QI1FxcFDBTp5huay8oFfu+3+iOyLHAtvkibmr
         a2DyPLw79Oks3KxGYnIWanoH+gOIoyJZ3324e1LfI/00uhl+e4jrFOazzEW6f/jO4zii
         icPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=P/l9GPsWpNK6RI8NkGXZK54wOo6Y/AaHGvG886HBNXo=;
        b=QiE3Xzg60tHbfg47QWZo1KbbRcXZgZ1SlLvGgXxeYD2I4sKQCnBf2KsEwunThVBF5P
         VGNJRFm/OQZCkJr4rTkIH9lf1k9gojuSNoohceZB8aqNCz+PI8EGEFXKUlFa6NrT2esM
         zniWmsC5aH4QkRH5UF/eCr9or1K1ceR0GkM04etk7r9ZTFT7QCnG4jMi6K/X+zTcFTTG
         5qgp0jIXUp2dLPZx9U6tPpO1F7ybyTim6ASSrQx0D8Odp5tUVJyLdWFkQbqewEq6GFs5
         +4BkViAWW8iJvagMqI5P6hl85daHvPDjHweKqqKAp/huVyIwd96O2U0z2FhmQsACDiZK
         D40Q==
X-Gm-Message-State: APjAAAU6FsCrrX7d07Pbvzju9OcPnlS4pWJr+mt+41qUetDokKw7qjS6
	2EzaDKwwQdB6tKioA3BKVUPv2kQ4VKM=
X-Google-Smtp-Source: APXvYqyP9neu/9fNEKziHymMFSLU8c+FjOof2grtw+8XPMQPuG9kTxwFyJb4vdGEEK48ArdMyGs3SA==
X-Received: by 2002:aa7:9816:: with SMTP id e22mr100062249pfl.229.1578112586982;
        Fri, 03 Jan 2020 20:36:26 -0800 (PST)
Return-Path: <drawat.floss@gmail.com>
Received: from arch ([2601:600:9500:c820::861c])
        by smtp.gmail.com with ESMTPSA id r1sm64439547pgp.15.2020.01.03.20.36.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2020 20:36:26 -0800 (PST)
Message-ID: <73686e24523680289a7b5612b5951a17d2a34043.camel@gmail.com>
Subject: Necessary build host packages
From: drawat.floss@gmail.com
To: yocto@lists.yoctoproject.org
Date: Fri, 03 Jan 2020 20:36:00 -0800
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi All,

I am getting started with Yocto project and I am curious regarding the
need for packages libegl1-mesa, libsdl1.2-dev and xterm are mentioned
as
part of "Build Host Packages" in yocto overview doc 
https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctoprojectqs.html#brief-build-system-packages
. I am doing yocto development on a headless Ubuntu 18.04 and in from
my limited knowledge think these packages should not really be needed
for build.

I would appreciate if anyone can point the necessity of these packages
or how to go ahead find out if these packages are actually needed or
not. Also I am willing to update doc in case these are optional
packages.

Thanks,
Deepak

