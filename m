Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A5FCC021A0
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 11:58:11 +0000 (UTC)
Received: from imap5.colo.codethink.co.uk (imap5.colo.codethink.co.uk [78.40.148.171])
 by mx.groups.io with SMTP id smtpd.web10.7659.1739441007924145624
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 02:03:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codethink.co.uk header.s=imap5-20230908 header.b=rw7jSEoM;
 spf=pass (domain: codethink.co.uk, ip: 78.40.148.171, mailfrom: tomas.veiga@codethink.co.uk)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=codethink.co.uk; s=imap5-20230908; h=Sender:Content-Transfer-Encoding:
	Content-Type:Message-ID:References:In-Reply-To:Subject:To:From:Date:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Ex9fAJzIbz9aIDar0ROXaR2dNASDcuQldHTXsUvkyX4=; b=rw7jSEoMMnsKiObgMTe7SDNtYi
	X/NNHcntrF+Dnf8xiDuWB371jUIDDvQUz2TeAHX8oXK0jt8woAegAEN6vEikbW2ckbaRk4GT9ExZ/
	3hC6KoABpV/w6cbmvXXdA/HuulrwKaBzNxdqW+Wd94C3XA9sKWVW+lrnArCbGUJk+ERizsfyYt8Sh
	f0z3Vg+OAdms9PJkBWb8n/ivvbRALRWri952Yz30n+cOvcyqJcJ4evQViXfJ+96f/2XWMMe/nGfwG
	tO70pwAiSpfXJiAbxVwRUlz7ScyIXLzXDp2ccT2KxZNviy2wNoXw8Hsog+laJuVm9h+eqeJih6dd+
	2tM45sZg==;
Received: from ipa12.colo.codethink.co.uk ([78.40.148.178] helo=webmail.codethink.co.uk)
	by imap5.colo.codethink.co.uk with esmtpsa  (Exim 4.94.2 #2 (Debian))
	id 1tiW45-007hWw-D4
	for <yocto@lists.yoctoproject.org> ; Thu, 13 Feb 2025 10:03:25 +0000
MIME-Version: 1.0
Date: Thu, 13 Feb 2025 10:03:25 +0000
From: "Tomas Veiga" <tomas.veiga@codethink.co.uk>
To: yocto@lists.yoctoproject.org
Subject: libgfortran.spec not found
In-Reply-To: <a61584d0a85706d66ed9acad0c7b1c1c@codethink.co.uk>
References: <a61584d0a85706d66ed9acad0c7b1c1c@codethink.co.uk>
Message-ID: <247c3cd3a7efe93dfb3fcfa29944c175@codethink.co.uk>
X-Sender: tomas.veiga@codethink.co.uk
Sender: tomas.veiga@codethink.co.uk
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 11:58:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64799

Hello,

I'm trying to build the gcc toolchain with Yocto.

I'm currently building it with `bitbake meta-toolchain -c populate_sdk` 
and then running the installer 
`tmp/deploy/sdk/poky-glibc-x86_64-core-image-sato-core2-64-toolchain-ext-5.2.999.sh`.

gcc and g++ work fine, but gfortran doesn't, getting the error:
`x86_64-poky-linux-gfortran: fatal error: cannot read spec file 
‘libgfortran.spec’: No such file or directory
compilation terminated.`

I've tried copying the `libgfortran.spec` file from 
`./build/tmp/sysroots-components/core2-64/libgfortran/usr/lib/libgfortran.spec` 
to 
`sysroots/x86_64-pokysdk-linux/usr/lib/x86_64-poky-linux/gcc/x86_64-poky-linux/14.2.0/libgfortran.spec` 
but then I get several `no such file or directory` errors for Scrt1.o, 
crti.o, crtbegins.o, etc....

I've also tried these suggestions but made no difference. 
https://low-level.wiki/yocto/yocto-insectarium.html

Hoping anyone has got any insight?

