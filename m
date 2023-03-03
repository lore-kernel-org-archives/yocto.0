Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2D4C64EC4
	for <webhook@archiver.kernel.org>; Fri,  3 Mar 2023 10:20:45 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web11.19963.1677838837989925872
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Mar 2023 02:20:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=R4hCRNoM;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C5224C000A;
	Fri,  3 Mar 2023 10:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1677838836;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xxLwDWU94tdADBSHFogbKblzdT7T315aesNuzN4jgE8=;
	b=R4hCRNoMI97ckdQGnAyl9sqhLnk8RiApvdOfeHYmPat2OHpc+wWBei8aXI3+0pMPTqnYLk
	bw2hmVNLrMjEpN2afYuDTKFFoORGzVpT0ERhrkO66xq7vt/N3XHASpTTni9wF35ofaLJ0a
	Vs0Uqz9K5nAUqrqS6iM/SlXcxF0hFfWufhToBdCgxG2FmQPZBYF7aCKJb8wslr2FfXlVAG
	6/pDV4/BhxDDzBmOLHcDV9nSSS1Qnzow+UaqJonu7rlsOlVo8jMAOqXX/1eF0qRg5Ddwcr
	uUHMY6YBT++LhxClSbDw/SsLhm5gIaHw8EflteLTNIqFjUiOw9scl13ARKhK8w==
Message-ID: <5b2e0987-8bb2-1c2a-de72-b972e770432c@bootlin.com>
Date: Fri, 3 Mar 2023 11:20:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Reggarding POSIX
Content-Language: en-US
To: yudai.yamashita@soft-service.co.jp
References: <CANNYZj9aDXTeQaQyofAL5mtXRj0M4ZDVcEkChU4ea7cVhv_tWA@mail.gmail.com>
 <3840.1677836226674001704@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <3840.1677836226674001704@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Mar 2023 10:20:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59341

Hi Yudai,

On 03.03.23 at 10:37, yudai.yamashita@soft-service.co.jp wrote:
> On Fri, Mar 3, 2023 at 04:23 PM, Alexander Kanavin wrote:
>
>     Yocto first builds its own toolchain, then uses the toolchain to build
>     the actual software stack for the target. So the host environment can
>     be any Linux distribution.
>
>     If you can say what the other OS is, we can discuss specifically if
>     it's going to work.
>
>     Alex
>
>     On Fri, 3 Mar 2023 at 08:17, <yudai.yamashita@soft-service.co.jp>
>     wrote:
>
>
>         Hi All
>
>         I am trying to build an application using POSIX on Ubuntu
>         (Yocto 4.1.2).
>         Even if the development host environment required for the
>         build has been changed to an OS other than Ubuntu, is it
>         possible to build by only changing the Yocto configuration
>         file without changing the application source?
>
>         Thanks
>         Yudai
>
>
> Thanks for reply
> Will it work if I use Fedora, CentOS, AlmaLinux, Debian, OpenSUSE?


We support most of them, yes. See 
https://docs.yoctoproject.org/ref-manual/system-requirements.html
Cheers,
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


