Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web11.3489.1577111902555855624
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 06:38:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pUuxDteL;
 spf=pass (domain: gmail.com, ip: 209.85.166.179, mailfrom: learning.yocto@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id v15so14202040iln.0
        for <yocto@lists.yoctoproject.org>; Mon, 23 Dec 2019 06:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Je/TAOR+nxBehOtFTGWXtMoFA7eBza2mBUmQOFf/eV8=;
        b=pUuxDteL8OJo7pxq7gFjUzgJqkhENeW8/VmZLDRTLF1a55sE1l1mvPRGGfPIHDNQ8B
         lUslMkAegdHsfD71KHnP9EwKeLGRMefXEE48G2Tcs+/ZyjjV6P9ijGEkpoq9Y8Y+DBzF
         NDa/JWQp9zWAA3YY9PfeE7y6uD6m2B/l9rjYqNSHX2JcmwhxVCePu/Nhga/uXfnvC9zZ
         NntEkuhYfQo7TYo/77hZc9FnQDT7HvGQ2c6up+ngGWxz+azdrr/Ho44ixE2UmNLAlXkL
         1b6DQTwKFVvx+yD4dLt9aTPieho4cytotnaca/RC8JwXxBOcZ+mv0cQnzfm8qUSgQnBP
         OTgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Je/TAOR+nxBehOtFTGWXtMoFA7eBza2mBUmQOFf/eV8=;
        b=L9nCdJjwbgK9JLKGrVwy52qYmx2WbwdhQJ9w3rVQFyrW2wDMFS5JMYDAE8nfPyE2I9
         zdSm3j/Pr4Gj7GfvcIyXSroVxccdw+yMLRzOMsYNBQksKb/BJwXeRCU0v8Gx+kXV4pNR
         FQCsgbsa8LHo1Nzd+qxH2hGqZWxgK3yeYNtB4uvthkogDzgytSf4e+27OSCmG7KaNhOl
         pFbLvPsIq+ODnsGh/y4VK0VltBJI6vG2vqlbvqDvdM+QYUG9Xefhn86M+uYdklDfBp9G
         7WPfELLReAQukqdj8URYnisrxsuqFSFazzodd3uyOGpm3ULS7xI5OQjk+Fu76miM6QIU
         DpCg==
X-Gm-Message-State: APjAAAWAs9GvQrXppYCm0lSJ6QippiWcXaWeleIeynOtx+KI7G1N2s9G
	d3lQibrWt4CPwjP5c52J3/huj1egVs7SDRYHPHhqk/q3
X-Google-Smtp-Source: APXvYqy/KYsJXgYQYpWPb8OQaT02vDoyrtUcsRT8WMcYjVLrCFH/iyGCENjO8YcU6/yB79CxWF8mDdB2Hsjzfsz3gzg=
X-Received: by 2002:a92:ba8d:: with SMTP id t13mr25193735ill.207.1577111901935;
 Mon, 23 Dec 2019 06:38:21 -0800 (PST)
MIME-Version: 1.0
From: "learning yocto" <learning.yocto@gmail.com>
Date: Mon, 23 Dec 2019 14:38:10 +0000
Message-ID: <CAGWAjas7jQtoQYX6wGz=Z3AXhq6RDFvFqCxHSGRDksV2QaTN2Q@mail.gmail.com>
Subject: installing and rolling back packages in yocto at runtime
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi List,

This must be a trivial thing, since am a newbie and couldnt find
googling the same in the archive, please pardon my ignorance.

I have created a thin rootfs using yocto which works well on my board.
Suppose now I have to add a package, I can add using
IMAGE_INSTALL_append but that would create a new image.
I dont want to upload a complete image, it seems like an overkill.

Is it possible to ftp the image to the board and then do something
like dpkg -i, this would help in deinstall as well?

thanks
