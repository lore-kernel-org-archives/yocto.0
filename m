Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D26EAC433F5
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 13:23:52 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
 [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web11.30895.1632749031412544030
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 06:23:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=kblhmXRB;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.166.53,
 mailfrom: jdmason@kudzu.us)
Received: by mail-io1-f53.google.com with SMTP id y197so22665713iof.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 06:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=OZkqG5s6qxBqUdNmS3DEtFsBOw8nmSNNez3M7Z+KE6M=;
        b=kblhmXRBe+G8rWbvTRoxE2sN7U8eJqUSqjylc4BWm8GXxgZ/ytRDcqrR8TyXd0jpz/
         jl9xTYTvDH1svzT5OuI2OgqImqdcHiLRfNPdklAnkyTHFTtz92jvXhq4BmQexwd1ITAo
         lNfcYLvMrLwJgYVnJhWVkkHOcwCV/Ve4GViylDruVUNwvFh6D+HbZNQYb18uSDIpoDpl
         mcj/cvoYnJyir/2coCFbH+lnvUSeDQN8Fu1bX9PkmcoUWInSVdA+pyAxK1xzDDT9G8oj
         h6ZcvIF67n+idsObXtKkJ1g69xIYojGV6XaVioyna9W6+kq96/Q36WzBBKQfas2o9R85
         QTjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=OZkqG5s6qxBqUdNmS3DEtFsBOw8nmSNNez3M7Z+KE6M=;
        b=OhQQUCW1HwpCpGbIAeDESlSR/m+dPEtLqfGBb1UIPMb9wdWqF6cCozW14tQ3ssO23f
         Mzx8xl4L6EfRWqVSID0/IGe0zEle/m6OqFzv/boLpwbcz8gXqkZnNZn6JKD2iBlY3Npp
         MyAiqGa9hbpUzJPAqQ43aGbbnEp1rqjBB/Rv43yLdyt9Ez0FmOQRne1U9G64mZXrS4J2
         HaVasiISYABREWA/VxxIWDAnvM3EYOeLdDBFRGczzkiw68eJ8ib2MLghDqHAzZ+mV+Zl
         BZEm5CY3fuponMJXI/CDbjoaX2Emi5y04SqpUU8A24xGAX6gZykpWpvIvXLFWmbZzGBe
         Ji/w==
X-Gm-Message-State: AOAM5337iYbnjI8axWzIX2i9q8dluBN6IuTuEvsZswRVDRiSMrBFVCsL
	mG3ihR0I2YTjYIdAeuiw5V9YE2Zw4oXeLQQR80zhCQ==
X-Google-Smtp-Source: 
 ABdhPJz86kn7IpB58gegF3UUPkrOVF11cwIPvAIVPkB9Au09P3VaIBNikZOjREOc2PF4MG8nRj3WlXjvTJrGecXaAG0=
X-Received: by 2002:a05:6602:3149:: with SMTP id
 m9mr5722524ioy.81.1632749030619;
 Mon, 27 Sep 2021 06:23:50 -0700 (PDT)
MIME-Version: 1.0
From: Jon Mason <jdmason@kudzu.us>
Date: Mon, 27 Sep 2021 09:23:38 -0400
Message-ID: 
 <CAPoiz9zKb5L9k1wsHQjr7AfUCSFC_2=SkCr-dZ=iH71R0VgVBg@mail.gmail.com>
Subject: [meta-zephyr][hardknott] backport tmpfsdir from master
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 13:23:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54877

Hey Naveen,
The hardknott branch in meta-zephyr needs the tmpfsdir patch
(678600bee6092e58110a826a9cbefc2f5c52916c) from the master branch
cherry-picked back to hardknott.  It has the same issue master had
with breaking when trying to run qemu.  Can you please pull it in?

Thanks,
Jon

