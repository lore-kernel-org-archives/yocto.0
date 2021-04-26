Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.1332.1619480395821618279
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 16:39:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=jDxGTQed;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.170, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f170.google.com with SMTP id i12so26818581qke.3
        for <yocto@lists.yoctoproject.org>; Mon, 26 Apr 2021 16:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MJHw7tPQCxEJ0ydLGpmN9U9cww0Qr9aT9FU1w1Mg0qM=;
        b=jDxGTQedcZTkZ41uf3f0wrNHKIHU9RoShW0prRjX0I3mAskxQ4+iXRrmAybE8LPMMF
         Sme5VxO0EP/ibiRDwuROOhokSgGsTZayhYqZWBCtVxjb9XF86VOF2HVDpav3A2nXy9uk
         gwFNKokMNwew34oPvvWDiuEAqVOVqmx4p7KRwzhP81Pt0DE9CyY3H2mDF+V5zqSYsyOI
         yiQCUQJOqy4fVU0RL8XwRRSvySYi1Xr5ckhNov5469KqzJia/D7rSnqtOJMc8NqioW/O
         mZlsixZyVaElHM54D1xAP9xynrds1dVOIHXuGdIeXx97HwRxkvJtNsbtQVVijpG9P9NX
         poVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MJHw7tPQCxEJ0ydLGpmN9U9cww0Qr9aT9FU1w1Mg0qM=;
        b=GF8trNpfEp4n0gr3hl4Bg4+F7xrkBUfZIFQrQT/kTFsVIXJD6lY2glg9MNV9dp/zly
         nc4/2qpyNH0pCwMNdnRsMMsnfavtU6YeaFmc+v6HV7xvXcOJPw334cWXHlvPQfimLxV0
         C1TyOyRon+VCzrjCu2ofDjbkICeS9c1gGYLN1vuyxZnHlKpAn75eFjT+3OlnvWEMa2DQ
         0QZccwSaCU9w+CEgn2MaVxcsdUAwMJKeCzBgZS+pKvU+ct/fOUwGaQIn4LPnP0aoyFrE
         JgPO1+6bZap5EOZ0NuVguJnWuQ49fhJ/4fgKOhK7qmV9ZFe2k9S8IZAojn3viPh+Dez2
         bNPg==
X-Gm-Message-State: AOAM532lQCsV5UXpq9O6dYv+DyOBxgW09UVBDR44ZO1rE/m8Hjw5Mhno
	mSKN2MRhJc5htjR4CDcZETtz1GYR9jQ3GQ==
X-Google-Smtp-Source: ABdhPJwAnuwA+VZRD3Il+ttRmku7OMSWTPgS3Af8csuCZt/NFGYZ25K3OF73gogQ8MT2NqnGruUmlw==
X-Received: by 2002:a37:558:: with SMTP id 85mr2431273qkf.257.1619480394825;
        Mon, 26 Apr 2021 16:39:54 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([2605:a601:a601:f800:15bd:5247:a67c:4a90])
        by smtp.gmail.com with ESMTPSA id v127sm1606396qkh.37.2021.04.26.16.39.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 16:39:54 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 0/1] Gitlab CI for meta-zephyr
Date: Mon, 26 Apr 2021 19:39:52 -0400
Message-Id: <20210426233953.11927-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

No one asked for it, but here it is, Gitlab CI for meta-zephyr.  Stolen and repurposed from meta-arm.  This building and testing should help discover regressions more quickly.  And if you include this patch, I'll do nightly builds via my gitlab account (https://gitlab.com/jonmason00/meta-zephyr/-/pipelines) for all to observe.  

NOTE:  I've been unable to get qemu-nios2 to build.  So, I've set the gitlab ci flag of "allow_failures".  If someone can tell me the magical incantations to get it working, I'll happily modify the gitlab ci to get it working.  

Thanks,
Jon 

---

Jon Mason (1):
  CI: add Gitlab CI support

 .gitlab-ci.yml            | 172 ++++++++++++++++++++++++++++++++++++++
 ci/96b-avenger96.yml      |   9 ++
 ci/96b-nitrogen.yml       |   6 ++
 ci/acrn.yml               |   6 ++
 ci/base.yml               |  35 ++++++++
 ci/check-machine-coverage |  26 ++++++
 ci/check-warnings         |  18 ++++
 ci/jobs-to-kas            |  19 +++++
 ci/logging.yml            |  13 +++
 ci/meta-oe.yml            |   8 ++
 ci/meta-python.yml        |  10 +++
 ci/qemu-cortex-m3.yml     |   6 ++
 ci/qemu-nios2.yml         |   6 ++
 ci/qemu-x86.yml           |   6 ++
 ci/testimage.yml          |   5 ++
 ci/update-repos           |  40 +++++++++
 16 files changed, 385 insertions(+)
 create mode 100644 .gitlab-ci.yml
 create mode 100644 ci/96b-avenger96.yml
 create mode 100644 ci/96b-nitrogen.yml
 create mode 100644 ci/acrn.yml
 create mode 100644 ci/base.yml
 create mode 100755 ci/check-machine-coverage
 create mode 100755 ci/check-warnings
 create mode 100755 ci/jobs-to-kas
 create mode 100644 ci/logging.yml
 create mode 100644 ci/meta-oe.yml
 create mode 100644 ci/meta-python.yml
 create mode 100644 ci/qemu-cortex-m3.yml
 create mode 100644 ci/qemu-nios2.yml
 create mode 100644 ci/qemu-x86.yml
 create mode 100644 ci/testimage.yml
 create mode 100755 ci/update-repos

-- 
2.20.1

