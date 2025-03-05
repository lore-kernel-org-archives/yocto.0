Return-Path: <arran.ireland@codethink.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70E8C19F32
	for <webhook@archiver.kernel.org>; Wed,  5 Mar 2025 17:11:25 +0000 (UTC)
Received: from imap4.hz.codethink.co.uk (imap4.hz.codethink.co.uk [188.40.203.114])
 by mx.groups.io with SMTP id smtpd.web11.18889.1741194676937885752
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 09:11:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codethink.co.uk header.s=imap4-20230908 header.b=q+BrDF/P;
 spf=pass (domain: codethink.co.uk, ip: 188.40.203.114, mailfrom: arran.ireland@codethink.co.uk)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=codethink.co.uk; s=imap4-20230908; h=Sender:Content-Transfer-Encoding:
	Content-Type:To:Subject:From:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pSLyoH7OVaAtyfY5f3rl/EW9RlwGXZUsYLyMxgk4NKk=; b=q+BrDF/P7Pg/mXZldeJGMQ+JhR
	RKMOo3HsEWSZS6pNx3gJfUDUdXmHKy7l9cHgwxjx2O2yQ503d/xAgyJXId6kVlW2nFJWPcE9nrPij
	YNkFGNmHBMa34UowmN1FZKA36dUlD59prGkpESLGv9s2jBgg/BIrqQg4AmD5Cz5VhVW8LcVkD4Xhd
	LfmsRIwieIH1gc/Vo3vtsIySAs3RYN+m87MAwc3i1X92wW2NVX6E/5+U0uaNnz9j/ackKDw/TYmjC
	OWpBqmRY6kXVqTMkJyfiwLojgVQob+baeQGzaSwJIXszBNu0VnVcoM0WwOYoj3yUKzKOoi5VrkTOA
	8pvlmYBA==;
Received: from [167.98.27.226] (helo=[10.35.6.66])
	by imap4.hz.codethink.co.uk with esmtpsa  (Exim 4.94.2 #2 (Debian))
	id 1tpsH3-00AqFt-Pg
	for <yocto@lists.yoctoproject.org> ; Wed, 05 Mar 2025 17:11:14 +0000
Message-ID: <5eb08635-7c04-4790-84b8-f5aed18e3ae2@codethink.co.uk>
Date: Wed, 5 Mar 2025 17:11:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Arran Ireland <arran.ireland@codethink.co.uk>
Subject: Compiling 32 and 64 binaries from one compiler
Organization: Codethink Ltd.
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Sender: arran.ireland@codethink.co.uk
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 17:11:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64923

Hi,

I need a toolchain that compile both 32 bit and 64 bit binaries, 
targeting a 64 bit system, but from only one toolchain. E.g. source only 
one environment-setup script and pass in my own -m flag.

So far I'm currently running:

bitbake meta-toolchain -c populate_sdk
tmp/deploy/sdk/poky-glibc-x86_64-meta-toolchain-core2-64-qemux86-64-toolchain-5.1.2.sh

With the following conf/local.conf:

require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE:virtclass-multilib-lib32 = "x86"
MACHINE_FEATURES += "multilib"
IMAGE_INSTALL:append = " lib32-glib lib32-libstdc++ lib32-libgcc"
FORTRAN:forcevariable = ",fortran"
TOOLCHAIN_TARGET_TASK:append = " libgfortran lib32-binutils glibc-dev 
lib32-glibc-dev"

This results in two separate toolchains which appear to work as 
expected, but require being ran in an isolated manner, which might not 
work for my use case.

Is there any way to get a single toolchain that is capable of compiling 
both 32 and 64 bit binaries?

Thanks


