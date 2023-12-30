Return-Path: <flix.yocto@benfm.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D903C46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 09:31:44 +0000 (UTC)
Received: from mail.benfm.de (mail.benfm.de [81.169.156.113])
 by mx.groups.io with SMTP id smtpd.web10.181339.1703928697972052905
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Dec 2023 01:31:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@benfm.de header.s=2020 header.b=P9UHYeml;
 spf=pass (domain: benfm.de, ip: 81.169.156.113, mailfrom: flix.yocto@benfm.de)
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=benfm.de; s=2020;
	t=1703928691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xEJjF931Ty5sEKky3csx87/JFS6mMhw8C4kq5hFXTN8=;
	b=P9UHYeml9n/dOwG/LH56ba/Y5p3mIe0xRN9LNbqIjYOYvY0rCFlTB0OVr8tLU5+9jMI2o6
	dxPwYWE6BV/IPZcUEPwlg1+oxzypA3meG5YNGOlr+q7/H+5wu4fZ7rayQNlUFOioOI3Ibg
	5VIU9ji69vu4RzMC9bPbG2QPdyry1gpCL2M+/3wW/1MTdNqLy5xv5AFCY9i2uSkaXOI9zb
	X2uS/YNGTyZacq9hTCSr9KfczpcYO9ENWNcKXAokq0Hi18wK4ZylOrKHX2kFSRnYZmkvKA
	uOmCbwaIid2LzoNQ0SqV0XKBCYfjV7V0H/pRrqg8zuw3tMxn8btgKn9jfXtFlg==
Date: Sat, 30 Dec 2023 10:31:29 +0100
From: Felix Mellmann <flix.yocto@benfm.de>
To: yocto@lists.yoctoproject.org
Subject: icecc support broken?
Message-ID: <d7fa009c81cdef2d821fd879c44619a4@benfm.de>
X-Sender: flix.yocto@benfm.de
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 09:31:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62059

Hi,

to speed up the build process I would like to use icecc as described in 
the manual (https://docs.yoctoproject.org/singleindex.html#icecc). When 
using Yocto 4.3.1 this leads to an error while parsing the recipes:

ERROR: /Yocto/poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb: 
no-pn NULL prefix
WARNING: 
/Yocto/poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb: 
Exception during build_dependencies for set_icecc_env
WARNING: 
/Yocto/poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb: Error 
during finalise of 
/Yocto/poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb

I bisected this problem down to poky commit 3be00a (bitbake.conf: Add 
BB_HASH_CODEPARSER_VALS). Since then the problem seem to exist.
And voila when I remove "PN=no-pn" from BB_HASH_CODEPARSER_VALS in 
bitbake.conf or add

BB_HASH_CODEPARSER_VALS:remove = "PN=no-pn"

to my local.conf the recipes get parsed again and the build starts. 
Currently I'm building a vanilla yocto-4.3.1 core-image-full-cmdline for 
qemu using icecc and see if other problems are arising.

Actually I'm not able to tell what BB_HASH_CODEPARSER_VALS does and 
what's the outcome of removing this entry. But this issue shall be 
either fixed or documented within the manual.

Is icecc and the support within oe/yocto still actively maintained or is 
there any superior mechanism I'm not yet aware of?

Best regards,
Felix

