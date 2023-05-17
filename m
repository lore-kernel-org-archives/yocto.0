Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33DA2C77B7F
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 10:16:09 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.45718.1684318565537718005
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 03:16:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=j9GcgPfg;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-4effb818c37so779443e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 03:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684318563; x=1686910563;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/e3NKy6K1rnMsHztvOUMlcgfnoWSUsdoAszUJtRZ/X0=;
        b=j9GcgPfg1KmTPaLqbK3DelpiHxcNEbFErBIIgoXgNrEZNRxmRCIrrfOJWf7FLKlpT6
         RFjMAM9SVgoK7ZrO++cTUMdWFW3s7S9XHeJ3MRfZy4c307VjWO3OnUo2UWIJrLW7tK/8
         2oYqbmNihvEc+KUM5dC14zJokVpJBQeR6FPUIGiHpF+9H+cQLs2325DvVaAJynDLcur3
         x9VPNxV7RVFL+hBn09x9r6ZdmuYclVqi4quWccYCHKhrqhyNGn/lywYtqQu/qirE6Pd9
         A0L4iZTV8bULY3HUA7r7YBxKY/JDK/WRJTZ43e+sm+CDoour/AAP91xZJ5fsp6JUTsJM
         kf1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684318563; x=1686910563;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/e3NKy6K1rnMsHztvOUMlcgfnoWSUsdoAszUJtRZ/X0=;
        b=ASGNKlc69lfIcDCThqI2TJ16g7sIPl/sC/GXqD1bd+WytBvDPrBwFUttgqcK894li5
         iwH6KDrLv1GrY2sW2TkBJYenHTgOMX4RGew1TqVQii9/m8SDbUi36/HLBnpVgEIqUPoN
         4TWVME8+CqMjR2Ui+AAdLYfLVFBf0pa0hlhWsUJR64T0YwRTYGcbRIjYv2zRS534sQzZ
         +296myFl4PeFANv30+AmtZ3WujLMfsY/HQ6Mjd6curAAM7CS+lx4WswfGcy+O4gA3l38
         mpfytYanELvZcjlZl3XTXgOAP+EfOffsSKN7dqsGHUns4Gy4EvOa5b8AHKyCsiwM67UU
         LRuA==
X-Gm-Message-State: AC+VfDymODleKTj67y1Cv8m97bny4QsSbTIsE3pX/4WU8isQR6K+GNWP
	d++m0U71C7KGPfOTWFVtIf8wzS/pvKXeJJmS0P3riV7mp4k=
X-Google-Smtp-Source: ACHHUZ4q9OC6VcbCeSKTeqHZ/taxYXZcaAcvnvek9CgVmPPFrUQ9B4iu2yeYY+DlY8fiR4bf892TUkqK89+Nl+oduW4=
X-Received: by 2002:ac2:5323:0:b0:4ed:bfcf:3109 with SMTP id
 f3-20020ac25323000000b004edbfcf3109mr52626lfh.56.1684318562724; Wed, 17 May
 2023 03:16:02 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 17 May 2023 12:15:51 +0200
Message-ID: <CAAfyv36xCLnJiwptErDyp0YYK98G-dRzvNiKg4-dW0Z37V+Dww@mail.gmail.com>
Subject: gitsm fetcher failure
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 10:16:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60041

Hi,

I'm trying add support for pytorch 2.0.1 release and hit an issue with
fetch phase:

ERROR: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: gitsm:
submodule download failed: FetchError Fetcher failure: Submodule
refers to the parent repository. This will cause deadlock situation in
current version of Bitbake.Consider using git fetcher instead.
WARNING: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: Failed to
fetch URL gitsm://github.com/facebookincubator/dynolog.git;protocol=https;name=libkineto/third_party/dynolog;subpath=libkineto/third_party/dynolog;bareclone=1;nobranch=1,
attempting MIRRORS if available
ERROR: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: Fetcher
failure: Submodule refers to the parent repository. This will cause
deadlock situation in current version of Bitbake.Consider using git
fetcher instead.
ERROR: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: gitsm:
submodule download failed: FetchError Fetcher failure for URL:
'gitsm://github.com/facebookincubator/dynolog.git;protocol=https;name=libkineto/third_party/dynolog;subpath=libkineto/third_party/dynolog;bareclone=1;nobranch=1'.
Unable to fetch URL from any source.
WARNING: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: Failed to
fetch URL gitsm://github.com/pytorch/kineto;protocol=https;name=third_party/kineto;subpath=third_party/kineto;bareclone=1;nobranch=1,
attempting MIRRORS if available
ERROR: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: Fetcher
failure for URL:
'gitsm://github.com/facebookincubator/dynolog.git;protocol=https;name=libkineto/third_party/dynolog;subpath=libkineto/third_party/dynolog;bareclone=1;nobranch=1'.
Unable to fetch URL from any source.
ERROR: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: gitsm:
submodule download failed: FetchError Fetcher failure for URL:
'gitsm://github.com/pytorch/kineto;protocol=https;name=third_party/kineto;subpath=third_party/kineto;bareclone=1;nobranch=1'.
Unable to fetch URL from any source.
WARNING: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: Failed to
fetch URL gitsm://github.com/pytorch/pytorch.git;protocol=https;branch=release/2.0;tag=v2.0.1,
attempting MIRRORS if available
ERROR: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: Fetcher
failure for URL:
'gitsm://github.com/pytorch/kineto;protocol=https;name=third_party/kineto;subpath=third_party/kineto;bareclone=1;nobranch=1'.
Unable to fetch URL from any source.
ERROR: pytorch-2.0.1+gitAUTOINC+e9ebda29d8-r0 do_fetch: Bitbake
Fetcher Error: FetchError('Unable to fetch URL from any source.',
'gitsm://github.com/pytorch/pytorch.git;protocol=https;branch=release/2.0;tag=v2.0.1')
ERROR: Logfile of failure stored in:
/data/projects/test/build/tmp/work/cortexa73-cortexa53-poky-linux/pytorch/2.0.1+gitAUTOINC+e9ebda29d8-r0/temp/log.do_fetch.107414
ERROR: Task (/data/projects/test/meta-test/recipes-support/pytorch/pytorch_git.bb:do_fetch)
failed with exit code '1'

So should I use only git fetcher and then do submodule update when it
is fetched?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

