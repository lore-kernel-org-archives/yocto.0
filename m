Return-Path: <m.salvini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 858C7EE49AB
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 07:45:25 +0000 (UTC)
Received: from mail.koansoftware.com (mail.koansoftware.com [172.104.12.216])
 by mx.groups.io with SMTP id smtpd.web10.6646.1692776723025370097
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 00:45:23 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: koansoftware.com, ip: 172.104.12.216, mailfrom: m.salvini@koansoftware.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.koansoftware.com (Postfix) with ESMTP id BBD9F3CB44;
	Wed, 23 Aug 2023 09:45:21 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.koansoftware.com ([127.0.0.1])
	by localhost (mail.koansoftware.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQzm_-hLQwG9; Wed, 23 Aug 2023 09:45:20 +0200 (CEST)
Message-ID: <0e3b4324-7a93-3643-84d9-a1d47afbbefb@koansoftware.com>
Date: Wed, 23 Aug 2023 09:45:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] EXTRA_USERS_PARAMS doesn't work to generate password for
 root and add new users
Content-Language: en-US, it
To: yocto@lists.yoctoproject.org
References: <5b90942a-3d7d-d3db-42e6-5779d2fb2839@koansoftware.com>
 <25389.1692720054983292974@lists.yoctoproject.org>
Cc: crane2018@gmail.com
From: Mauro Salvini <m.salvini@koansoftware.com>
In-Reply-To: <25389.1692720054983292974@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 07:45:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60854

On 22/08/23 18:00, Crane wrote:
> On Tue, Aug 22, 2023 at 11:36 AM, Mauro wrote:
> 
>     Try with this:
> 
>     EXTRA_USERS_PARAMS=" usermod -p '$(openssl passwd -6 root)' root;
>     useradd -p '$(openssl passwd -6 2023)' crane; "
> 

Uh, I'm using this one successfully, on a Yocto Warrior.

> Not working.
> Here is the value of the variable becoming:
> EXTRA_USERS_PARAMS=" usermod -p '\$(openssl passwd -6 root)' root; 
> useradd -p '\$(openssl passwd -6 2023)' crane; "
> One \ is added before $ symbol.
> 
> 

Then the \ is added automatically by Yocto? Maybe something has changed 
in variables parsing...or could be a bug? Don't know, help needed from 
the experts!

You can put the encrypted password (the result of the "openssl passwd -6 
root" command) directly in the variable, taking care to put a "\" before 
the three "$" contained in the string. Something like this:

EXTRA_USERS_PARAMS=" usermod -p 
'\$6\$CEM0hANiVS9VXN8N\$Q9XK1KTpq2faq2fNbSRLNeeA4mmQsl8g1Gwl3QnTPlRPb5ljCAa./bbhffcthXxUen4jSFL6HKGQPlHZNQkfA/' 
root; useradd -p 
'\$6\$5wVybJkbuowR0iMi\$tnEJEEbXbcRfksKRSt7rjlY1hRERrjqFOlCaa0s1ivISxAHT7MFdcnZvVbRHgkqRSYzA1oLUxtR0LuvDTMPR5/' 
crane; "

By the way, this approach has the advantage to mask the password.


-- 
Mauro Salvini | KOAN sas | Bergamo - Italia
embedded software engineering
http://KoanSoftware.com


