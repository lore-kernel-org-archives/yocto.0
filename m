Return-Path: <enguerrand.de-ribaucourt@savoirfairelinux.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE45E7719E
	for <webhook@archiver.kernel.org>; Mon, 13 Jan 2025 08:37:45 +0000 (UTC)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.12506.1736757457751061581
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jan 2025 00:37:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=j7CTG2oR;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: enguerrand.de-ribaucourt@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 8F4619C6448;
	Mon, 13 Jan 2025 03:37:36 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id ikkJwrLXLdPv; Mon, 13 Jan 2025 03:37:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id AB6829C8649;
	Mon, 13 Jan 2025 03:37:35 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com AB6829C8649
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1736757455; bh=CDNYZN3IGh1Ka76PTJ4PMOPbwdcqOT/d9SrFVI++wtk=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=j7CTG2oR5o8Loj3sahi5BMm2C0lzyomPAB3uJ0KLTVYHtLwTT+IR20u4Lrj2V90mB
	 4a93m1+NhopLJb+kK6odVz78iqBR3f9jkK0kyKngN88RyJGYqFQ5huskU6jskcrDII
	 ELcGZGb9i+nqwFy+cyx3g4CbyfgbhMB+j5f3rY1/ndo1yEnZzhOzOvFDuTMvsg1Ab4
	 IX2B1lIAXEVRqjtOudqH57CstWESrUovwZxuwj1cMX2pSO8ETst/oaS2LC0z40fN5V
	 0T32cT8m2BqkKBIf/BVh3NprqBml3Jy0bK7ePnCP3sXbDEXbRwWZzmsuk+J4NvG+VZ
	 g63CGi40VImBw==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id uWUbH7KM5jrI; Mon, 13 Jan 2025 03:37:35 -0500 (EST)
Received: from [192.168.216.123] (80-15-101-118.ftth.fr.orangecustomers.net [80.15.101.118])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 025ED9C6448;
	Mon, 13 Jan 2025 03:37:34 -0500 (EST)
Message-ID: <8b896dd0-cc32-49cb-846e-5b5667f45384@savoirfairelinux.com>
Date: Mon, 13 Jan 2025 09:37:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [ANNOUNCEMENT] VS Code Yocto Project extension v2.8.0 is
 released
To: Marco Cavallini <koansoftware@gmail.com>, yocto@lists.yoctoproject.org
References: <b3100b96-b96a-4e00-b1d9-c6ce692d7f9f@savoirfairelinux.com>
 <4715.1736592180949118299@lists.yoctoproject.org>
Content-Language: en-US
From: Enguerrand de Ribaucourt <enguerrand.de-ribaucourt@savoirfairelinux.com>
Cc: adrian freihofer <adrian.freihofer@gmail.com>
In-Reply-To: <4715.1736592180949118299@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Jan 2025 08:37:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64534

Hello Marco,

The main configuration guide is the README that you will find on the 
extension's marketplace page and github repository [1]. It lists the 
settings which also have their documentation brought up when you write 
your .vscode/settings.json. You'll also find an example for a basic 
oe-init-build-env configuration in the first few lines.

There is also poky/scripts/oe-setup-vscode which will generate a simple 
.vscode/settings.json automatically through oe-init-build-env. You need 
a recent version of poky, and no existing .vscode for it to activate.

We have identified that setting up the extension is currently a bit 
un-intuitive for beginners. This is why we are planning to add a 
"walkthrough" view [2].

Let me know if you need any additional help. You can also submit an 
issue on our github.

Best Regards,

  - [1] github README: https://github.com/yoctoproject/vscode-bitbake
  - [2] walkthrough issue: 
https://github.com/yoctoproject/vscode-bitbake/issues/360

On 11/01/2025 11:43, Marco Cavallini via lists.yoctoproject.org wrote:
> Hi Enguerrand,
> thank you for updating the extension.
> However the most struggling part of this VScode extension is to learn 
> how to setup it with an existing project.
> Most of the videos and presentations are showing features like syntax 
> highlighting and so on.
> I haven't been able to find any valid document nor video showing how to 
> setup it using a recent VScode YP extension.
> Let's suppose one starts from the beginning cloning poky and setting the 
> default 'oe-init-build-env'.
> Is the VScode YP extension able to detect the default setting like a 
> build directory and local.conf and bblayers.conf.
> Would you mind to point me out to any resource showing that?
> Just my two cents ;-)
> --
> Marco

-- 
Savoir-faire Linux
Enguerrand de Ribaucourt

