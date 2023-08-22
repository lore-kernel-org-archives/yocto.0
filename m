Return-Path: <m.salvini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995BEEE49A5
	for <webhook@archiver.kernel.org>; Tue, 22 Aug 2023 06:58:26 +0000 (UTC)
Received: from mail.koansoftware.com (mail.koansoftware.com [172.104.12.216])
 by mx.groups.io with SMTP id smtpd.web11.2927.1692687504750866543
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Aug 2023 23:58:25 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: koansoftware.com, ip: 172.104.12.216, mailfrom: m.salvini@koansoftware.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.koansoftware.com (Postfix) with ESMTP id 3A9F23C48E;
	Tue, 22 Aug 2023 08:58:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.koansoftware.com ([127.0.0.1])
	by localhost (mail.koansoftware.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rVkeo42T7oa4; Tue, 22 Aug 2023 08:58:21 +0200 (CEST)
Message-ID: <b0b315a3-a549-6a86-58ae-417709a5344f@koansoftware.com>
Date: Tue, 22 Aug 2023 08:58:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] EXTRA_USERS_PARAMS doesn't work to generate password for
 root and add new users
To: yocto@lists.yoctoproject.org
References: <LrQL.1692669524450391340.bx32@lists.yoctoproject.org>
Content-Language: en-US, it
Cc: crane2018@gmail.com
From: Mauro Salvini <m.salvini@koansoftware.com>
In-Reply-To: <LrQL.1692669524450391340.bx32@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 06:58:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60847

On 22/08/23 03:58, Crane wrote:
> Hello,
> 
> I am trying to generate a password for root and add a new user. Here is 
> the code in the image recipe:
> 
> IMAGE_FEATURES:remove = "debug-tweaks"
> INHERIT += "extrausers"
> EXTRA_USERS_PARAMS += "usermod -P root root; useradd -P 2023 crane"
> 
> When using "inherit extrausers", there is an error of "usermod command 
> did not succeed."
> 
> When checking the parameter, the result is:
> EXTRA_USERS_PARAMS=" usermod -P root root; useradd -P 2023 crane; "
> 
> The image does requires a password for root, but doesn't generate 
> anything in /etc/shadow and doesn't add new user in /etc/shadow as well.
> 
> I am wondering what might be missing. Can anyone give me any clue?
> 
> Thanks!
> Crane
> 
> 

Hi,

the error could be related to the -P option in useradd command: the 
option, that allows to pass a cleartext password to the command, is not 
present anymore in recent useradd versions.

Instead you can use the -p option, that allows to pass an encrypted 
password.
Something like that:

EXTRA_USERS_PARAMS=" usermod -p `openssl passwd -6 root` root; useradd 
-P 2023 crane; "

Regards
-- 
Mauro Salvini | KOAN sas | Bergamo - Italia
embedded software engineering
http://KoanSoftware.com


