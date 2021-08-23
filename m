Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web11.31649.1629758025193555142
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Aug 2021 15:33:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XFdLANwG;
 spf=pass (domain: gmail.com, ip: 209.85.219.176, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f176.google.com with SMTP id q70so20935659ybg.11
        for <yocto@lists.yoctoproject.org>; Mon, 23 Aug 2021 15:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=FJYv6LW6gKmj5w9bnMazQsN/Y7QEak9G3g5RHezr6w0=;
        b=XFdLANwGVSbXEiUCvu0lqWdbH53Y52FVRuNp46xMIW+UbfZNmOFTHf6Z6a7a6ZsI3k
         uts6K/sYnG1JBxp5u1wj85tPNdPuarELSXENoSff0MWk9/9qqyK+ChAjb10QWdINlYwD
         XfAP4KVG1KyAufMbCcCU2cCeEGtCRoE9O6uZxu0jiI/DFtlrbI+9lqj3TlBvuduSApHf
         uJOTtFGCIdqTJSTBMX4JanU50vv6psZkBjZctB/kKDeQnszYvjuXJwX1sMZ4J34hxDzJ
         4KYT9uqWbvYoqqT96V5JJcsteqLZzV2dsKWdZMZNPMNqg8p4hp19EALOMVOTFwJPFUyz
         TKtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=FJYv6LW6gKmj5w9bnMazQsN/Y7QEak9G3g5RHezr6w0=;
        b=qnE/jdWfs/o8z6AJrb1wOO9ivNSgIi5eAhNG2wvnR5zibGmqK2jfahe/0qGDOmyLyD
         zqcOhnh2Y2kWyEm1QZkBfsoL5kBMNmqec0e50SC9CYkbbqLhMNMpIpYGSxPiAN63Rb4J
         775F0/2SOvD85JVaCvoVIVEXg4ZmOI8xek8dqXbpccZsPyhqQMV67osqIyVfyM2Q7bhN
         4guKqXKHvIgj9JaQCjsw5GMa1BrLtn5PjieCTnRs43OB7gXWjXnzHtnYeJ4TuaZFA/XL
         Spf98yoPOz76T6591R1BcfIbVHkQQXfip+VXGwR0J9LmxDtv4tOHo0xK29BamvmT1606
         /Mqg==
X-Gm-Message-State: AOAM530IMVx2HUPEO3isORXmXYaMtrk939tTi611JlGXPt2mFk2stzHv
	DzuMY13YL5Uf2D2PIEfemgSGks1GPVeab7a/3w7gPHFQUKY=
X-Google-Smtp-Source: ABdhPJwBY0iDUZmT0IhGScqIpzbgk4eXDW63zwIAs86civKysGTdPITyKzjnQBM0FO6SvAyZoCoxCWtrsP0/YgGkE2g=
X-Received: by 2002:a25:9ac6:: with SMTP id t6mr46053563ybo.190.1629758024230;
 Mon, 23 Aug 2021 15:33:44 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 24 Aug 2021 08:33:08 +1000
Message-ID: <CAA=hcWTLNgEgKhsthziTyTShb6VFVKyy6JXzZBWr+nCLreGW-g@mail.gmail.com>
Subject: Update bitbake broken build
To: yocto <yocto@lists.yoctoproject.org>
Cc: oe-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I updated the bitbake to run git pull in master branch, now it is
broken, what does the following error message mean, how to fix it?

$ bitbake-layers show-layers

NOTE: Starting bitbake server...
ERROR: Variable PROVIDES_prepend contains an operation using the old
override syntax. Please convert this layer/metadata before attempting
to use with a newer bitbake.

Thank you.

Kind regards,

- jupiter
