Return-Path: <silvan.murer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C2FC433EF
	for <webhook@archiver.kernel.org>; Mon, 29 Nov 2021 12:58:32 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.60072.1638190712297467358
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Nov 2021 04:58:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=px//IbWW;
 spf=pass (domain: gmail.com, ip: 209.85.167.170,
 mailfrom: silvan.murer@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id bk14so34429797oib.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 29 Nov 2021 04:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Bv77yIfBUHGcFB8kaekcCXQWNCyvXArP+kfqWLXJfV8=;
        b=px//IbWWxy6sv0kWSpLlKoGSIFujCtBy/NnurnbPVQqIQLkA6MpKgJD+x9YKihK6rr
         /1AhqD3norvdjSMAzqyoWUw1v0SwdUuroOSvz0eh/UexU1bM6F5TDfYv/nrkAp44cppB
         DVw6JbX3GRg4dXWtPxX9VKLgvyFvPn4Bq2975ekHxd2iCK+bXZn+GWPrEAfRhDSfePHJ
         NvOllxx8wmjtxNQP7OjBCDoUOT/drYSvJgqxGGPYrO7B2OXxG/E7vgWQbP9VyTPhoULB
         PQXkPrt7mdy/ohsAERVBwQ1BROcakV8zP82ghyBLY26fOzN0/1GY6oeBdNOElfYHg4I0
         UVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Bv77yIfBUHGcFB8kaekcCXQWNCyvXArP+kfqWLXJfV8=;
        b=BT+ikYaHzxOSRhUmc8ZIGew83G8Aqr6ow8gA+ZizmmTkPatpn6YPAadcmCFWQJU+7n
         Nqna1ompWuql4oBKbccwbVc+xs1ScUwOyg/qDhCxio463US27UBoaa7mIBnMBo2ciiiT
         nJl6hsyf4i7HZtZsg74F7/2S6ddC9Ub7Cqf+lv0Eppp5uRmRYLdc4Bg0JDBOkPo4bzTn
         L6qshP3FfqKRiH7/ZGPaILu8ZbqNzns8wA3DsuRPPqMIO9aV7IG8K4fHvmUo+0Gc4rZk
         ToI+0Xg0sJamdV2padJ/xmX6fk+nSfmXOo1L59GrrNiT0zsD980JyJf+g2UfYNqMRLFg
         FK1w==
X-Gm-Message-State: AOAM5312mWSvj7smPWQUtq9oRUMQFoYFpHquvmu1Ug1haX18erAsnR0t
	nNp5hlVgcNYiEKth632v6RX0FwLxfXTecGNynsf9li1yFMY=
X-Google-Smtp-Source: 
 ABdhPJztfBcPo040SL3meya6pQ+MzQAPhwTolAH07fNUQDW8fyXkcDjHO9No74hR1V5xZ+NMVCGRdmoVNvAdcRZwA6k=
X-Received: by 2002:a05:6808:8d4:: with SMTP id
 k20mr41578421oij.106.1638190711381;
 Mon, 29 Nov 2021 04:58:31 -0800 (PST)
MIME-Version: 1.0
From: Silvan Murer <silvan.murer@gmail.com>
Date: Mon, 29 Nov 2021 13:58:20 +0100
Message-ID: 
 <CAAGspX_2G=D5nU3xtzSm0SFnPbLeTo6xyZ-0gg3PJbZL5Lep8Q@mail.gmail.com>
Subject: [yocto] define extended partition in wks file
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Nov 2021 12:58:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55439

Hi,
I'm using wic for creating a boot image in my yocto layer. An extended
partition is automatically created, when build an image with more than
four partitions.
The extended partition is added at the end and in my case, the last
two logic partitions are included there.

Does an option exist which allows the definition of the partitions
which are included in the extended partition? In may case, I'm looking
for an option to put the two rootfs partitions (rootfs1 and rootfs2)
into a common extended partition. And the data partition at the end
should be in its own logic partition. Does some option exist or is it
possible to handle them in another way? probably by creating an own
wic plugin?

The *.wks file contains the following entries:

part --source rawcopy --sourceparams="file=u-boot-splx4.sfp" --ondisk
mmcblk0 --system-id=a2 --align 1024 --fixed-size 10M
part /run/mount/bootloader --source bootimg-partition --ondisk mmcblk0
--fstype=vfat --label boot --active --align 1024 --size 500M
part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label rootfs1
--align 1024 --fixed-size 2G
part  --source rootfs --ondisk mmcblk0 --fstype=ext4 --label rootfs2
--align 1024 --fixed-size 2G
part /run/mount/data --ondisk mmcblk0 --fstype=ext4 --label data
--align 1024 --fixed-size 3G

Thanks,
Silvan

