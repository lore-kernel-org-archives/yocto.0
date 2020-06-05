Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web12.13763.1591371029671526273
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jun 2020 08:30:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EWA6TJrg;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: lukasz.odw39@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id e12so7802035eds.2
        for <yocto@lists.yoctoproject.org>; Fri, 05 Jun 2020 08:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=yOOlxjIaWrwv5dy3dLD2ObENyz7QvkXGg0eJsyUD7Do=;
        b=EWA6TJrgaDz4/qpQTXqmCR7JuZIBF78UTBE3uSeiHSzrcO4V25ntkweqKJEeYHYOCp
         jUTvfs8IXEHD4k0EG2WAhqyLh9uWCL0ylLtDRYA5lCm6kvTqAssk2uTRCLTduitr+iac
         od0cvdcXFloGypQUAEMy59LLciGuSpSrrVMDSQC4HvU1WxfAEXEMiogT5QpkgIEeUTDA
         I5/JwHs358INK8L/rF82iFLOKwxMYh6nLNVteZoyTp6A2ICVvKuRuS2P+Co/y+k1LM6u
         n9XVkQrp/1OJzTq5bqIc5tytTDCTAQnY/L3ou1CnbjyDv7LYF32pwrvbed5qpqZudzTd
         UILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yOOlxjIaWrwv5dy3dLD2ObENyz7QvkXGg0eJsyUD7Do=;
        b=d8/i1P/HDsRbtD0/CEiDm1+x7kxiTS2iSU9Tjw8ipPJCYSmEkgGLKZfcRHdQD7pO/Y
         nV1iR2g+xB7cm+izUZds3VcZi4HTI4Z03R6WrKoLpiGSaqWSKiqdCz6VFS9QI7NXBPnL
         sN8cY30XBQHt1sJQhXWiPeHLvXg7NUmGCmXARUexOEm6UpZKWZ4pI7oWLGmK3Cb0jpOF
         EZ4DR6p4iVD4trbEU3tZpcMgyxUGe1/5pR8n3DA5E8SLK/1RMUOLQ/4rERVDQ5KPRSfG
         Xt4bfNBNCL/qAENeJ68RWQ/uGi4n+zsAoyQsuSHvg8+FCUWMGKsDnatM20hQJIJqN7Vt
         gS7g==
X-Gm-Message-State: AOAM532TniXBO4lIgA6SHatGu36ZFT3GLSsbMev5efxTJj0j1+m8qCNI
	Bh79pMOeQyxYXHc7Y4/obx7H2O6zasUv5D5YAmpzK5+aiir3Cg==
X-Google-Smtp-Source: ABdhPJwGFYYzxj5kD/uc4c7b9ScVyZ6BZv1FIJ2uNwnOvFxU+1wgv/RWcxIAeBf2k8S/7/vY5hjZjoiFr7jqqZTKDWE=
X-Received: by 2002:aa7:cb53:: with SMTP id w19mr9396690edt.328.1591371027751;
 Fri, 05 Jun 2020 08:30:27 -0700 (PDT)
MIME-Version: 1.0
From: "Lukasz Domowy" <lukasz.odw39@gmail.com>
Date: Fri, 5 Jun 2020 17:30:16 +0200
Message-ID: <CAGK+5gXnnJHamKChn8oaR6Oay_9NvP4CRuyBijrF8FVacDOYZw@mail.gmail.com>
Subject: SDK using meta-mingw: missing. rm.exe
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello,

I am building SDK for Windows host using meta-mingw (bitbake image -c
populate_sdk). That SDK will be given to customer and it should be
self-contained - contain all binaries required to perform make-style
builds.

I was able to add make.exe by adding following to local.conf file:
TOOLCHAIN_HOST_TASK_append = "${SDK_EXTRA_TOOLS}"
SDK_EXTRA_TOOLS += " nativesdk-make  "

What should I do to build and add rm.exe to SDK?

Best regards,
Lukasz
