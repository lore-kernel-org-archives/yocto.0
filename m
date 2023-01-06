Return-Path: <crawford.benjamin15@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49F64C5479D
	for <webhook@archiver.kernel.org>; Fri,  6 Jan 2023 23:29:10 +0000 (UTC)
Received: from Benjamins-MBP.localdomain (Benjamins-MBP.localdomain [151.227.124.19])
 by mx.groups.io with SMTP id smtpd.web11.9009.1673047740138819006
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Jan 2023 15:29:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: doe.com, ip: 151.227.124.19, mailfrom: john@doe.com)
Received: by Benjamins-MBP.localdomain (Postfix, from userid 501)
	id 81E4939B502; Fri,  6 Jan 2023 23:28:57 +0000 (GMT)
From: crawford.benjamin15@gmail.com
To: yocto@lists.yoctoproject.org
Subject: roundup feature for Wic partitions?
Date: Fri, 06 Jan 2023 23:28:57 +0000
Message-ID: <m2bknbi6o6.fsf@doe.com>
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Jan 2023 23:29:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58932


Hi,

I am trying to configure an image to conform to the VHD size alignment
requirements of Azure. Azure requires that the filesize of a VHD be a
multiple of 1 MiB. The '--align' option works to align the _start_ of a
partition to a particular multiple, but I need the _end_ to be aligned.
As a workaround, I tried:

part /fake --fixed-size=0 --no-table --align=1024

I figured this would create a zero-sized partition which would be
appropriately aligned at the end of the image, but wic complains that
zero-sized partitions are not allowed.

Is there a way to achieve this, or extend the capabilities of wic to
handle this use case?

Best,
Ben

