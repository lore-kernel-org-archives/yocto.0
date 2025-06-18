Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12C53C71157
	for <webhook@archiver.kernel.org>; Wed, 18 Jun 2025 14:01:27 +0000 (UTC)
Received: from slategray.cherry.relay.mailchannels.net (slategray.cherry.relay.mailchannels.net [23.83.223.169])
 by mx.groups.io with SMTP id smtpd.web10.8122.1750255284169910886
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Jun 2025 07:01:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rootcommit.com header.s=hostingermail-a header.b=qV9LuuDb;
 spf=pass (domain: rootcommit.com, ip: 23.83.223.169, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 76A53783B47;
	Wed, 18 Jun 2025 14:01:23 +0000 (UTC)
Received: from uk-fast-smtpout6.hostinger.io (100-127-188-7.trex-nlb.outbound.svc.cluster.local [100.127.188.7])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 6A8457839FC;
	Wed, 18 Jun 2025 14:01:21 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1750255281; a=rsa-sha256;
	cv=none;
	b=zPRlNQJPM61RaddFgI+YM8z0a7XtZvFYr7s8FffCnf3Waf6f2IpGr5eUKAfO8bFh8+Wk2o
	wbsD1QT0Nzn504UipPryoXBKHW7ES06V5l7R/13W35kuEBTQANQ2sEt0Ubccq/P3+0pPvi
	AwcH6CbOZi+uYw7abrrjeYPQl9c0E4+2K8yUWLARIxeT8ObeZRM1EukCwhdn4E9VBB+yGx
	I7QjgF29dqkf1W8PjhTN/s4WqAwyLKUq4Sk+PVrSt0wPhkYL5O3X6bsXblwnhHF9S5Xx7v
	buqjYDsJ9xBAy2A2IV0HKlG2WYAWTjMA0U0U6xzjaSULrPWy7qsC6LKE1IrE/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1750255281;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=BC5cJW5PviPF0ssb9u0ng4KeqeKdHhdQg4/7dIy1YPU=;
	b=mj74SZZKZ/jpuO11S3UVWJJBWdYwO7QD77UdlWykpb4wsTCc66tEBjlycFEmPX66insFLZ
	pk4e5oRSK9/NJShiGczzUYpUkSoMSAbGdRzj/To5UmPn1Toopc47hTX+wSn7S48JjEx3u5
	uGROvXYeB1eLziv2FRZIiEM/N6hV1JiKr4HPwvfahd5vW2LqXjNciuuZLa1ZXXny6QDxHy
	vwHgqET8vqPeiZDjJV3DUd90g8txgxLywYNzGl9X67q4FVc+O4OTiXLqceR7ixYQ3YQkyD
	eflexSVd5YT4++DFMbqVJ2TMXiEzllVN27wBGgFIfsNrwvaL9Zwm4R2MswgmXA==
ARC-Authentication-Results: i=1;
	rspamd-6c978647c4-rtdl4;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Eight-Eyes: 04440179219edee8_1750255282110_959238637
X-MC-Loop-Signature: 1750255282110:913255845
X-MC-Ingress-Time: 1750255282109
Received: from uk-fast-smtpout6.hostinger.io (uk-fast-smtpout6.hostinger.io
 [31.220.23.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.127.188.7 (trex/7.0.3);
	Wed, 18 Jun 2025 14:01:22 +0000
Received: from [IPV6:2001:861:4448:6b00:1909:d8f7:4f78:b7d2] (unknown [IPv6:2001:861:4448:6b00:1909:d8f7:4f78:b7d2])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4bMllM29WVzFJxJX;
	Wed, 18 Jun 2025 14:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1750255279;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BC5cJW5PviPF0ssb9u0ng4KeqeKdHhdQg4/7dIy1YPU=;
	b=qV9LuuDbL4p9xfwJoNKoPeQfuNtIv7O4eoLKbkH2kvvkurGBjqffNDYbHA1UIDABed/K9w
	zZOcVJtN0w2wgX+YOiScwDAjX7GL1tq8waNyXtgJnAQyCHYgsTbsBa8xEeMwbRxcnEUYpa
	WW5N2srR5e2NlA5z3QOpxPj6TjXn8hgwn18uPGu76WQ86PgVlcKIjd7QqqlEo6jdd2qRia
	EZNAVbVqb+VM4YmQ3ZrCOT/H1fnrgusbtd10w4ZLk8v2MoX5+aBlW1neXqs2Tlsuy3++EJ
	b00msXGutXedlPu9ODpKRQdkI/hSA/iMq656PZUTWG8FXQQjJ9+OK27baJvCPQ==
Message-ID: <9f233030-372d-4e44-a2fd-382c0c9b2f0e@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: yocto@lists.yoctoproject.org
Cc: michael.opdenacker@rootcommit.com
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: Developer Day in Amsterdam, Aug. 28 - CFP now open
Organization: Root Commit
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 18 Jun 2025 14:01:19 +0000 (UTC)
X-CM-Envelope: MS4xfN89R+qURP6dMIQZOcshewdc+Cl+XYxzdJkUYvDG1FWNw1y23SMBGbS1nanQNPFSo6/mkoWXQPZSTZX7BdXnbrioTBQDI+Z4gKZB9GMwMmzCPu2dQpDd RsXefoDFU46rhR2UWlaWjMLmJVbysznhxSAswmwYHh5wQmFVQua6sNHAQwMs9QNWO2kfX/WkYwdYbRmcQ+kj9s4XIfxXrkye5ls0PMC2d7n0+Kgsxi/OznQ4 q/95kvKLeun40JX6mP5QvlzvJT5eZgxnm7CsjZ66aqCgG9KSWnIdMXjnAfMX39k+05SSct5H0L2QdnM0XkqZgnd96c9oAGOwVjUA4a/VzunkgFDqPqyylSGD iP4CHmIHwJQMRkf7KNDYa8UBYNfAR5OjlQ7vSpVjKGJ0YuJub2o5YAWJAzIVF+3UPpzh2wz2lgVEMTFJjdQin7pIMPqFxA==
X-CM-Analysis: v=2.4 cv=bL5EI++Z c=1 sm=1 tr=0 ts=6852c6af a=5jimvneZrGpNVIrSWNjTYg==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=jU4qhlNgAAAA:8 a=kTakKMPAAAAA:8 a=d70CFdQeAAAA:8 a=4TSOqs8qF4ZAdGfolnwA:9 a=QEXdDO2ut3YA:10 a=uLSFYZeSjgb_eomtY0KL:22 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Jun 2025 14:01:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65518

Greetings

For your information as it seems the event wasn't announced here... At 
least it was announced on LinkedIn 
(https://www.linkedin.com/posts/yocto-project_the-yocto-project-developer-day-is-coming-activity-7339012540149960704-NcRC).

So, the Yocto Project is organizing a Yocto Project Developer Day in 
Amsterdam on Aug. 28, the day after ELCE / OSSEU.

The call for papers is open until the end of July. See 
https://pretalx.com/ypdd-amsterdam-2025/

Several of us have already confirmed their participation. Don't miss 
this opportunity to get together, share experience, get contribution 
ideas and get involved in shaping the future of the project!
Cheers
Michael.



-- 
Michael Opdenacker
Root Commit
Yocto Project and OpenEmbedded Training course - Learn by doing:
https://rootcommit.com/training/yocto/


