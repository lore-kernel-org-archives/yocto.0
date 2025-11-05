Return-Path: <yoctoproject.org@herrie.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81887CCFA0D
	for <webhook@archiver.kernel.org>; Wed,  5 Nov 2025 16:13:27 +0000 (UTC)
Received: from outbound0.mail.transip.nl (outbound0.mail.transip.nl [149.210.149.69])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.13436.1762359197148220982
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Nov 2025 08:13:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@herrie.org header.s=transip-a header.b=crQO9PY+;
 spf=pass (domain: herrie.org, ip: 149.210.149.69, mailfrom: me@herrie.org)
Received: from submission7.mail.transip.nl (unknown [10.103.8.158])
	by outbound0.mail.transip.nl (Postfix) with ESMTP id 4d1r2y082JzxNnP;
	Wed,  5 Nov 2025 17:13:14 +0100 (CET)
Received: from smtp.transip.email (unknown [10.103.8.118])
	by submission7.mail.transip.nl (Postfix) with ESMTPA id 4d1r2w2hDHz3cyj8m;
	Wed,  5 Nov 2025 17:13:12 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 05 Nov 2025 17:13:12 +0100
From: me@herrie.org
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
Subject: Re: [yocto] looking for YP-supported Rockchip RK3588-based eval board
Reply-To: yoctoproject.org@herrie.org
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <14356bf6-7285-5b69-2a2c-92bb42f1c22b@crashcourse.ca>
References: <14356bf6-7285-5b69-2a2c-92bb42f1c22b@crashcourse.ca>
User-Agent: Webmail
Message-ID: <4e26e2178d656afb2a20204ac744572c@herrie.org>
X-Sender: me@herrie.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: ClueGetter at submission7.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1762359192; h=from:reply-to:subject:to:
 references:in-reply-to:date:mime-version:content-type;
 bh=Wtp82gbkjpaBqfmi2fWAAVPpzBB7e2IXHUeUwoJjID0=;
 b=crQO9PY+CHmAJNozUnrg8IJmAfaR+pQYg2Ayn8T78sSKKHZmw3cBVj10SsHvlYPCqBVmkH
 Uv4Av6bTw9MLFV2bOOH6JVDHIMRqc8pcdhs8X7srHkst8yt7SSbDThfID6//IpOgyu35q6
 frqYUtoQX4Ytc4iaI0uDdUebQ8K5RyhdVrliupyWiu7bNgpUZlqnfol9x6i3QyLn1V7Vkq
 Dhi9ZiuXgcjPrB13abBU6IhdEB5REfA4qBmBjnUkyxqwR8+Ak2uIc22Cc/xdPlSv0WzDCC
 jwOhZxBNHfwyjXiNBAVhBEh/bh6N/mzUQ5sza0IkF3WbxuCcfXS96LsDBUpyUg==
X-Report-Abuse-To: abuse@transip.nl
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Nov 2025 16:13:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66008

Hi Rday,

This one seems supported? 
https://embedded.cherry.de/jaguar-sbc-rk3588-amr-user-manual/60-software-yocto.html

Note: I have no personal experience with this one.

We have the Pine64 PineTab2 running with Yocto on LuneOS. This uses a 
bit older rk3566.

Best regards,
Herman

On 2025-11-05 16:42, Robert P. J. Day wrote:
> (caveat: i have *no* experience with rockchip processors so i am
> entirely at the mercy of people who want to make recommendations.)
> 
>   a friend wants me to advise on a good choice for a RK3588-based
> evaluation board, and has already purchased a banana pi bpi-w3:
> 
>   https://www.aliexpress.com/item/1005009156110477.html
> 
>   that looks like a decent and fairly powerful baord, but i notice
> that the banana pi is not a supported MACHINE in meta-rockchip:
> 
>   https://git.yoctoproject.org/meta-rockchip/tree/conf/machine
> 
> so can anyone suggest something equivalent in terms of pure horsepower
> that would be equivalent and has solid YP support? i am totally open
> to good advice.
> 
> rday
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66007): 
> https://lists.yoctoproject.org/g/yocto/message/66007
> Mute This Topic: https://lists.yoctoproject.org/mt/116136290/3618673
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub 
> [yoctoproject.org@herrie.org]
> -=-=-=-=-=-=-=-=-=-=-=-

