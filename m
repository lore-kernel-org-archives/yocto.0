Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579D7C433EF
	for <webhook@archiver.kernel.org>; Thu, 19 May 2022 19:30:57 +0000 (UTC)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web08.10.1652988647688288923
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 12:30:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from [::1] (port=60514 helo=cpanel8.indieserve.net)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.95)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1nrlrC-0000P5-Rs
	for yocto@lists.yoctoproject.org;
	Thu, 19 May 2022 15:30:46 -0400
Received: from [174.114.56.109] ([174.114.56.109]) by crashcourse.ca (Horde
 Framework) with HTTPS; Thu, 19 May 2022 15:30:45 -0400
Date: Thu, 19 May 2022 15:30:45 -0400
Message-ID: <20220519153045.Horde.57XFl8OYL9JwVcKGidyDPhs@crashcourse.ca>
From: rpjday@crashcourse.ca
To: yocto@lists.yoctoproject.org
Subject: what's the situation with yocto support for qualcomm qcs{410,610}
 eval boards?
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id:
 rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 May 2022 19:30:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57139


   colleague just asked if i had any useful advice (spoiler: no) on how
easy it would be to build a yocto-based image for *some* qcs410-based
eval board. i'm familiar with meta-qcom, and machine definitions for
dragonboards, but this is clearly(?) different, and i see nothing in
the meta-qcom layer for this.

   what i see is that qualcomm supplies a linux sdk, and i quote from
https://linuxgizmos.com/module-and-dev-kit-run-linux-on-qcs610-camera-soc/:

"A Linux SDK is built on Yocto Thud with Linux kernel 4.1.4. The SDK
integrates Qualcomm optimizations, GStreamer wth RTSP streaming support,
and AI support for TensorFlow Lite and Qualcomm SNPE. Android 10 support
is coming later."

   the more i read in the last half hour, the more it seems that one
needs to bury oneself in qualcomm SDK, and repo-based checkouts from
codeaurora and so on. is this the way to go? or have i missed something?

   colleague has some freedom in choice of qcs410-based eval board, if
that makes things easier.

rday


