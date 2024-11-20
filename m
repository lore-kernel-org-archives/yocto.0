Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86DCD711BE
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 15:53:35 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web10.17033.1732118005772328947
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 07:53:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=W0KU8Sry;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5cfaeed515bso5400354a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 07:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732118004; x=1732722804; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Hwpdjv2PqW7NKxApEkNcO3I4QQ/WUo787BK6w9W7WOc=;
        b=W0KU8SrykGIxrmvZ8j6y1CFI6+WRkT8tx2FbCTTXOZs5sspjys8JQn0okFjwPOsDEw
         1kqKQCqpnGtq14Gb0z0n0UyRtC9zbua11Y40PRx6to1HsP6gDDXJvicnkm1EJmC/7f+h
         fqARmY5FLP2hc9x+U+H9i8tGBmyO7XMvD5pyAAZx4v6AkHwaJIWzgaj/1o8XoKDoxObD
         VZKZ9a/JHrDIpZDn3UInLu7BFZPM5JwjlYuyA8jMlkXNn+uUoSDYRwXjONAAb479DIEB
         VoQehtYoXPo5UUj7FhlJcl0Hgxqz/prC7vUdB3y9vfLZPMUSx5BTCR6Q7O0Ocib/cwwv
         vp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732118004; x=1732722804;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hwpdjv2PqW7NKxApEkNcO3I4QQ/WUo787BK6w9W7WOc=;
        b=BxFczixQrqMqdNnTDLWq2WV5LJWkFp5X4fFnjXIszQs2pf+UlK7rXJsgBtq9iMqYsl
         uOrNFd2jjOY/bWYBBIgPrs6EPAUbXvajhGFBz5RxUTcls3cT8sYxdvJODvMsM56nZSC+
         9lyfPvazNUSzHGz74WrgXhy7PxgIoGOeM5wUU3xeKZUFzIoSlT1OZyZwutu0OtU6Ef1A
         IcQPCvTOyF7ZowaCik4anYonD3Met+lVRr1O7X1S7Qwo47wLPgWYPw/315NqOq9OzB9G
         6THgnlmbWg9/AZ4JqKhE3d1Yy8EsaK/2fQfHKlRjx9rhrpfJUKM+/wQEGghlAj9ADvb2
         9YsQ==
X-Gm-Message-State: AOJu0YytGEpnGtSZoretgdoXc6glHeIaXBFEmZdjrzLDwEAKTsG9Y3vV
	xWZcoJx79idddHa+jqS+O/9P7Q5q/aQS6HC4Swec5z8YWxiemPmcYUt2ug==
X-Google-Smtp-Source: AGHT+IECfx/bOwkDYr/FC+j+8jEajKw4xe4f+S0moF96K0vqE29ROkBo0wqccI/gLXCivflZhds6/g==
X-Received: by 2002:a17:906:dc90:b0:a99:d6cf:a1df with SMTP id a640c23a62f3a-aa4dd731225mr296459666b.46.1732118003991;
        Wed, 20 Nov 2024 07:53:23 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20dffd7b4sm787445666b.132.2024.11.20.07.53.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 07:53:23 -0800 (PST)
Message-ID: <4521bb42-49ea-4fe6-9ef4-576d22eb66e5@gmail.com>
Date: Wed, 20 Nov 2024 16:53:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Having issue using gcc-sanitizer
To: yocto@lists.yoctoproject.org, ninad@linux.ibm.com
References: <YDQ9.1732114049670344547.UqVj@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <YDQ9.1732114049670344547.UqVj@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 15:53:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64313

Try adding "gcc-sanitizers" to the compile time dependencies of your 
application's recipe (DEPENDS variable)



