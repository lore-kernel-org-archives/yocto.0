Return-Path: <steve@weaverpad.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF2BC77B60
	for <webhook@archiver.kernel.org>; Wed, 26 Apr 2023 13:14:08 +0000 (UTC)
Received: from mail-sf1.weaver.network (mail-sf1.weaver.network [198.199.101.98])
 by mx.groups.io with SMTP id smtpd.web11.7510.1682514844406960870
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Apr 2023 06:14:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@weaverpad.com header.s=mail-sf1 header.b=jHySl0/P;
 spf=pass (domain: weaverpad.com, ip: 198.199.101.98, mailfrom: steve@weaverpad.com)
Received: from EngineeringPC.chicago.weaver.network (c-73-208-210-141.hsd1.il.comcast.net [73.208.210.141])
	by mail-sf1.weaver.network (Postfix) with ESMTPSA id B749B2469E
	for <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 06:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=weaverpad.com;
	s=mail-sf1; t=1682514843;
	bh=QqjKcqD7Ye2nTwzJxst4KDdNZTN+wnQ9E0Y4Pfapdzk=;
	h=Subject:From:To:Date:In-Reply-To:References:From;
	b=jHySl0/PFWfM0uan1zu9qVdjUpSQ5wxurryOYMT+Zefnt5iqv3042tL+QMzxyyH2M
	 nl385RP1peHAn60yVDr4Kw2GN1ZmODyU0b4XFxzbCl4Me4A1AlmsMGHsh7sIcYAdN6
	 fFZPWiM4SZKHoLwJY8WHdL7sMvQvAEYW68b34j7HztPtfkGPENkDvalBmhP9C8Aj6z
	 q+WlHVp3k7BQnYrys3mPsPWN0mv6ZYdVKlEQs2Aj7BGQwxcrfB6q+/VD8eJAcIGssq
	 iY1gvgqXhrm+Nb5UCOcwLR5cNhk0Mb4ineo5KXFsVGirnlBFqFcDsy7l6PLmWpvXz+
	 RrxyYN8i8qUcw==
Message-ID: <9db36262e38184dceddb37bddfb15681c5988c84.camel@weaverpad.com>
Subject: Re: [yocto] Error building m4-native while trying to build
 Beaglebone Black branch
From: Steven Weaver <steve@weaverpad.com>
To: yocto@lists.yoctoproject.org
Date: Wed, 26 Apr 2023 08:14:02 -0500
In-Reply-To: <0E75AB98-AA7A-4CF5-B883-076A2CF0CDF0@arm.com>
References: <b2b1f3c5c42d5eded06ae5b3a6cfa754b1eeb99e.camel@weaverpad.com>
	 <0E75AB98-AA7A-4CF5-B883-076A2CF0CDF0@arm.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Apr 2023 13:14:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59783

On Tue, 2023-04-25 at 21:06 +0000, Ross Burton wrote:
> On 25 Apr 2023, at 15:33, Steven Weaver via lists.yoctoproject.org 
> What release of Yocto are you using? I ask because this was fixed in 2018...

Well I feel stupid. I was still on the jethro branch from reading old instructions.

Thanks everyone!

Steve


