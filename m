Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1CEC352A8
	for <webhook@archiver.kernel.org>; Wed,  6 Apr 2022 16:33:19 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web12.6282.1649235582004764164
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 01:59:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VQZmLQB+;
 spf=pass (domain: gmail.com, ip: 209.85.215.172,
 mailfrom: mans.zigher@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id z128so1691565pgz.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 01:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=yBWOqDsS+l50TFp8i5RCKRS8Ea0nPN9o7++e4iMdlts=;
        b=VQZmLQB+cA0HNDcRkNqjgZvSwd3Z8bGmt/gIRoq/1DFdy93eHiUCeaVx01TtRBv4FR
         p/ptipfMKN2qakNV9nl5tMWfMJnq6L/jUCSDo6AT1w31Tyv5AbwnE441FMN6veEYejEx
         0FvmB7ZR0zpydhBT0mbvd2fVmhH1VDwkqkU41tFw5ZqqdrlbMRaeMxWDi3PBeNuBRdl7
         TNkP8hFXB/rFhkY7cNB+zi3NG5JL2g4IHNNHVtAlJqP5m45gmfoL3pl/pdjsm4u6sHda
         hYA4+PcEif84m54ST3n6dXLA0iTYwf0tPTqYz2MsHD2ejfAG52P+ltZF+7haS77zXjQ5
         AWaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yBWOqDsS+l50TFp8i5RCKRS8Ea0nPN9o7++e4iMdlts=;
        b=6splCyB8NGF2E0q0FSYghwbLfQcMeLeDCj71916WwJC+IKENABSoFiWJPGUAmJJ0Qq
         3cZO3VqtEm5N6U1Fc1SdSWZCrLJsmSQ0Ajm1up0hHXUlDVtL9LZgachKeEt/VHDMuQEJ
         wKxLA97si0TYnQXTGLodOJA9Z3pU1+nKn1D+HkcFpVnz6yptK7bW3lmJ+0/9qc/dX/Qi
         R/JbUABQ9HZ9DpFiG+hzUBY5A3fCQ488PREnlRmfN5OXWoxW9QgwJNOlBBEQpDIgWO4k
         YOmjZCFOlndXzvhpNdtQtIGhEdkrwX8mEW7hZhrrsqcKgAI19wwhWUjKFZYc18TkIWDz
         OAGA==
X-Gm-Message-State: AOAM532PM5Q1x06o874MDL3df7OOzDvHxCrWuxHLbHU2f8c7C9er3O6m
	dQim/DCfVn+myBwrdmm8ZkgRjUgrWyETvZ+dudzpjfUi0zA=
X-Google-Smtp-Source: 
 ABdhPJyGVcxUjkN1xShn5x2jgtrfZR4uOjld8U8hh0L5xM6CknKosPUH934KYyOh9cL3B0tYc0E8x2yNCulC2o16VRY=
X-Received: by 2002:a65:6b91:0:b0:399:12d5:808 with SMTP id
 d17-20020a656b91000000b0039912d50808mr6202717pgw.440.1649235581279; Wed, 06
 Apr 2022 01:59:41 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Wed, 6 Apr 2022 10:59:30 +0200
Message-ID: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
Subject: [Question] How to handle GPLv3 packages?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Apr 2022 16:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56672

Hi,

I cannot use GPLv3 packages in our image build. I am no legal expert
but from what I can understand most companies will not be able to
comply with this license without allowing the customer to compile and
deploy a new version of any GPLv3 package to the target. I know it is
possible to comply with this but we are using secure boot and have not
the time and probably no interest in setting up a solution for
allowing customers to be able to deploy GPLv3 packages on the target.
We are trying to make use of INCOMPATIBLE_LICENSE but that results in
several issues. We have made sure that we don't include GPLv3 in the
image build using a manual process but would like to use
INCOMPATIBLE_LICENSE to alert any developer about the issue. It seems
like INCOMPATIBLE_LICENSE is a bit harsh since it will catch any
packages even if it is only part of the SDK and also for native
packages that are not part of the image build.

I cannot be the only one with this problem so how are other companies
solving this issue? Are they just not using the INCOMPATIBLE_LICENSE?
Are you setting up a parallel process for checking for any
incompatible licenses issues?

A more specific issue is that there are so many packages with bash
dependencies which are pulling in bash which is GPLv3 so how have you
solved that? Currently we have done some pretty uggly hacks which I am
not that happy with but we needed to keep it out of the image.

Thanks

