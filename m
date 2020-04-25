Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
 by mx.groups.io with SMTP id smtpd.web10.3191.1587803446074741647
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Apr 2020 01:30:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OG2t7oYu;
 spf=pass (domain: gmail.com, ip: 209.85.208.193, mailfrom: qian.hao.developer@gmail.com)
Received: by mail-lj1-f193.google.com with SMTP id y4so12381617ljn.7
        for <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2020 01:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=CoEr5PdR+sYRp8MPvZSEAqTZLaZuOj2sL4q2zwRafa0=;
        b=OG2t7oYuBF5ZEqOcM0+ERA6Lf8lQGcwghF6Sf8vx5ZYx+tlgDqspIYZMZUPU0pq5KX
         YRiou21RfALLiZFbfe3HMggyXmKqGsu3O9EPQOnjEFUoOY4JhqqOzdkxjf84naRJXnCt
         NyUmdxv/boTlJbbM8NzjLOUIXG9qxKHIAkFUsdlGmA1XTl4CBU+U3xBHh1e4PT5JLRHI
         cxRUORLM9ZGNTZn+Ersj81j2mPduMRQZ29dKPaPy8Up/K+rxcG1vnok+gojALCHM8H5E
         0cOnJwbvx300SdMQgExfQYJyqDgJGDx4CnG4Z7FxS7w1ROLE6+bw+ivjjipcYb6cTkG9
         S2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CoEr5PdR+sYRp8MPvZSEAqTZLaZuOj2sL4q2zwRafa0=;
        b=YNMCls4BB3QHoES5yiisVEAMemNAuFgxWyFoAomZA/8sqQtHa/9urSLe13c4o0j4G1
         tVDnZD+OnhYjeiWDRELNdjaQBtpvKFlvhtInAF0Xzn0VCg2TqOLrARWNxvmLr11OfBNp
         9Qe3eJPlbOZtOH8R4gmwo/d8aN1oYm5fgKvDZNroN4T3dSOkfsMKAvgAg1ZHz46Z9ewf
         DABGPoSezrJkLm7MToLCv+QdEgiqgSl2U8VYGKCgWXO90P+/Up90ehQd8oBBP3OF2Dp0
         OH0xTQg2R9drj9WMZaftrq2J8wnKhpvc6q62VysbCa7zsr4cKuFL0G0wgyc/Qd0rpEB0
         w/VQ==
X-Gm-Message-State: AGi0PuY574a7mLOsauSp1aaBdJOYEBaJDH7HY86XLXJeGfEtQWS4mHBY
	myuLa4ydUmtiNsqH7siwM6CgM2jx5QaxZfbjTceZyFs0
X-Google-Smtp-Source: APiQypJWgWAYlwfhWrqJcJ3ASuqVtJ4VECxT9IqmNgEvPQr/ixlngGCLcWUfgaewK/mLx76q91HME73OzxcORcUFb8w=
X-Received: by 2002:a2e:9255:: with SMTP id v21mr8410564ljg.222.1587803443620;
 Sat, 25 Apr 2020 01:30:43 -0700 (PDT)
MIME-Version: 1.0
From: "Hao Qian" <qian.hao.developer@gmail.com>
Date: Sat, 25 Apr 2020 17:30:32 +0900
Message-ID: <CACxpVWfYGoGiivXCeMOtoPvBYuJBqC9zu+KS3OdnB5bZoyuYyQ@mail.gmail.com>
Subject: Can not use wildcard in SRC_URI to apply patches #yocto
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to apply patches to source code of linux kernel.

With devtool (modify and finish commands), I could apply patches
sucessfully by specified each single patch with its file name, like:
===========================================
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "\
        file://0001-xxx-xxx-xxx.patch \
        file://0002-xxx-xxx-xxx.patch \
"
===========================================

However, if I change files' name into wildcard in SRC_URI like:
===========================================
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://*"
===========================================
or
===========================================
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://*.patch"
===========================================
or even create a "patches" folder under ${PN} and modify bb file like
===========================================
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://patches"
===========================================
patch files will not be applied either do_patch task or "devtool
modify" command.

I tried in the latest version (zeus) and earlier version (sumo), and
got the same proble,

Could anyone tell me how to apply patches by wildcard?

Thank you

Qian
