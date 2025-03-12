Return-Path: <peter@berginkonsult.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38113C28B28
	for <webhook@archiver.kernel.org>; Wed, 12 Mar 2025 21:00:58 +0000 (UTC)
Received: from mailrelay6-2.pub.mailoutpod3-cph3.one.com (mailrelay6-2.pub.mailoutpod3-cph3.one.com [46.30.211.251])
 by mx.groups.io with SMTP id smtpd.web11.6327.1741813253764881745
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Mar 2025 14:00:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=rsa2 header.b=oLjsqLnC;
 dkim=pass header.i=@berginkonsult.se header.s=ed2 header.b=/CluPB8h;
 spf=none, err=SPF record not found (domain: berginkonsult.se, ip: 46.30.211.251, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1741813251; x=1742418051;
	d=berginkonsult.se; s=rsa2;
	h=content-transfer-encoding:content-type:subject:from:to:mime-version:date:
	 message-id:from;
	bh=N+YJgK6qodiwyqpZxmSotf7ISh3ORsTCcMEFrQChFwQ=;
	b=oLjsqLnCGRkm9CwQWka7GY0kP/XIWRKsuOuHCyGGOS8UPSC8uUw90NE0jmBqt+/qm5x85m70/d3WQ
	 80LZmzn4zKIeb7vbpsHb5FRcH91C2tBisgiJ2Ct9H894kSZNN18lVwK2GgHbcY4JzRy3enqc6ilhn6
	 o1b7ZK0EX9EQaYQkU4Nz2gE+EuAvPrk6xD4GNsZEnZ69QRoJYTuN0jKnlGwR6VZAFdq+Pld88qLekQ
	 mE7cP3FHiIZePNKwugacIDxi75SCzbcp8h6QBmLIciEIb1FjcgPQVnAnKPQehBRIeefx2Hi2hOxKMY
	 MsaG/BIyhzqHt1OFV2uN8rfZliDHrJg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1741813251; x=1742418051;
	d=berginkonsult.se; s=ed2;
	h=content-transfer-encoding:content-type:subject:from:to:mime-version:date:
	 message-id:from;
	bh=N+YJgK6qodiwyqpZxmSotf7ISh3ORsTCcMEFrQChFwQ=;
	b=/CluPB8hSzc/dUsXJppgimzcXvporsdgKQ2iswa3KyN3KuYSLX9Adqg/grmYkkLmvgMehp2Gc3BEi
	 PyospWBAA==
X-HalOne-ID: 13d8592f-ff85-11ef-9dde-417246ffdc90
Received: from [192.168.100.34] (c83-191-168-223.bredband.tele2.se [83.191.168.223])
	by mailrelay6.pub.mailoutpod3-cph3.one.com (Halon) with ESMTPSA
	id 13d8592f-ff85-11ef-9dde-417246ffdc90;
	Wed, 12 Mar 2025 21:00:51 +0000 (UTC)
Message-ID: <093b7c87-b979-4f89-981f-cbc4e49e27db@berginkonsult.se>
Date: Wed, 12 Mar 2025 22:00:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Language: en-US
From: Peter Bergin <peter@berginkonsult.se>
Subject: Workflow with Extensible SDK and rust project
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Mar 2025 21:00:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64946

Hi,

when working with a rust project in a recipe there is a task 
'upgrade_crates' to use for autogeneration of the dependent crates in to 
a .inc-file. Any suggestion about how to update the crates when working 
with eSDK and devtool?

$ devtool modify hello-rs
<make changes to hello-rs that adds a new crate or new version of a crate>

If I here run 'devtool build' it will not work as the new crate is not 
vendored. I can run 'cargo build --target aarch64-poky-linux-gnu' and 
new crate(s) will be downloaded and built.

But how do I proceed to upgrade my recipe and the '<name>-crates.inc' 
file? Is there any tooling or way of working around this yet or is it to 
be developed?

Best regards,
/Peter


