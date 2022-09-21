Return-Path: <yocto@emagii.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D68EC6FA82
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 20:52:54 +0000 (UTC)
Received: from emagii.se (emagii.se [185.133.207.17])
 by mx.groups.io with SMTP id smtpd.web08.11617.1663793571705697656
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 13:52:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@emagii.com header.s=default header.b=VHjAoHUo;
 spf=pass (domain: emagii.com, ip: 185.133.207.17, mailfrom: yocto@emagii.com)
Received: from [10.175.196.136] (84-55-68-216.customers.ownit.se
 [84.55.68.216])
	by emagii.se (Postfix) with ESMTPSA id 2ABEC12000A;
	Wed, 21 Sep 2022 22:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emagii.com;
	s=default; t=1663793567;
	bh=hmy8L8ejS+Mk/0UM9h4FGfAzZXFen++BGAcByWuBnN4=; h=To:From:Subject;
	b=VHjAoHUoU1be0LScOWwupQosL0A4rqEA+OCO1DWc7daspfPMFBNv2mM5PPlulzRxC
	 EnYfXyomVHRiINGyv1Eh08OQLQb1Fnk6NuC1J4WAjdrKiLaaJmKi0VMKVnXHCKTMAS
	 dR/DcayJ78gipioEsaxqnaF2uW9hMEguPhfG1bgg=
Authentication-Results: emagii.beebytevps.io;
        spf=pass (sender IP is 84.55.68.216) smtp.mailfrom=yocto@emagii.com
 smtp.helo=[10.175.196.136]
Received-SPF: pass (emagii.beebytevps.io: connection is authenticated)
Message-ID: <adf302fb-fbe0-c89b-3691-98f214ba1ae8@emagii.com>
Date: Wed, 21 Sep 2022 22:52:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: yocto@lists.yoctoproject.org
Content-Language: sv-FI
Cc: "ulf@emagii.com" <ulf@emagii.com>
From: Ulf Samuelsson <yocto@emagii.com>
Subject: Building an out-of-tree module kernel including an out-of-tree header
 file
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-PPP-Message-ID: 
 <166379356744.950122.10248444740385335797@localhost.localdomain>
X-PPP-Vhost: emagii.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 20:52:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58125

I am tasked with updating an out of tree kernel module.

Currently this is built outside Yocto using a Yocto SDK
and the kernel module is added to the filesystem after the image has 
been programmed into the target.

The kernel module source code is part of a monorepo.
It depends on a header file in another part of the monorepo
using relative addressing (#include "../../header.h")

In the future, the header will be in its own repo.

My idea was a recipe handling the header file, and the kernel module 
recipe should DEPEND on this recipe.

The header recipe installs the header in ${D}/${includedir}.
When building the kernel module, the header file ends up in
<kernel-module>/recipes-sysroot/usr/include.


PROBLEM:
The kernel module recipe ignores recipes-sysroot during the build
so the header file is not found. It will look in kernel include directory.

There are other packages which will also DEPEND on the header.
They are normal applications, so there the DEPEND should work.

For various reasons, I do not want to patch the kernel source.

* Is there a way to specify that the kernel module recipe should look in 
its sysroot for header files?
* Is there another place where I can install the header file so
   that it is found when the kernel module DEPENDS on the header recipe?
* Is there a better/preferred way to let a kernel module depend on 
another recipe?
* How is the situation handled when there are two out-of-tree modules
   where one is DEPENDing on the other?

Best Regards
Ulf Samuelsson

