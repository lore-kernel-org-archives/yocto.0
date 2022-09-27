Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B9FC54EE9
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 18:40:45 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.14842.1664304036199391481
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 11:40:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Flpj00JB;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.218.46,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ej1-f46.google.com with SMTP id 13so22568997ejn.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 11:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date;
        bh=CsOqciC7u8TUo78LPVAiKj70Y3n86GsGx71k0+DN4aM=;
        b=Flpj00JB98J6Vq3jL2/8JsHRVmqn69AxM3HUzdIydUZT1wIBs9tSzxK1PqXoRHuqmS
         2LH4cJ2SDkedMVSLTzCQjMWDhiPR7FdiHcwjwonWLcNloFv/l1yxW3IiXTl6u5hxbAJ1
         Objnd+SXpxStcvoIpuKeBziH1+z2WJ30mIP6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date;
        bh=CsOqciC7u8TUo78LPVAiKj70Y3n86GsGx71k0+DN4aM=;
        b=oFhJPUm+cbIXMfp2jnocpHT2BfBOwTXU7PGPjtsO3jQfO1qYImmr/pbh2lEj/ASINJ
         TdhZf0mEby++4YlxrpCW6WCNLWnYSzUiK7UPF8uuILmqSeq8qmjMBYt9HGguplmygTsi
         YS3HRfTE8OvA7oTyVV9gFPiOxTrMHKg1P8fwgYFRRwuzMDUEGJEa5qJdeid43o7EUccM
         3MNE9FSPXoqcpnGUgoVLJjBOh5c4z18mW6Q2tpRf39/rPRnedKIq358dUu+EtfdBHe5W
         oJ/U08Lc7M4r+8azlCKOJFK5nkKXNZ61+Us1gWXlYjP89CeB0SwOj7Je8LdhcNW1lyVh
         wOTw==
X-Gm-Message-State: ACrzQf2ktXWGXSqoNU27IWWh+euk9fj3enIp35/g/ZmktoY8nLD5bPeI
	0C/tegDkjLRBI0BP4xWnesZX8Q==
X-Google-Smtp-Source: 
 AMsMyM5LYAkwpVLlZWkVFVTNUDy5+nmLS47zf/agxPDdKd9dd6ZH0aA85/hkmjnk8E+XhpEhkzZeKg==
X-Received: by 2002:a17:907:a0c7:b0:77c:a049:7d10 with SMTP id
 hw7-20020a170907a0c700b0077ca0497d10mr23272016ejc.467.1664304034588;
        Tue, 27 Sep 2022 11:40:34 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d4c9:c3bb:4c2d:18a5?
 ([2001:8b0:aba:5f3c:d4c9:c3bb:4c2d:18a5])
        by smtp.gmail.com with ESMTPSA id
 d8-20020a170906304800b0078167cb4536sm1150986ejd.118.2022.09.27.11.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 11:40:33 -0700 (PDT)
Message-ID: 
 <e7d7e080c94d78f6cf9711aa28ecdf484a9ee491.camel@linuxfoundation.org>
Subject: Re: [yocto] Builing Gcc fails Poky
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Edgar Mobile <heideggm@hotmail.com>, yocto@lists.yoctoproject.org
Date: Tue, 27 Sep 2022 19:40:31 +0100
In-Reply-To: 
 <PH0PR84MB1835B452A0D3EC6E973596CAC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
	<PH0PR84MB1835B452A0D3EC6E973596CAC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 18:40:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58185

On Tue, 2022-09-27 at 18:11 +0200, Edgar Mobile wrote:
> Greetings,
> Trying to build core-image-weston from current master fails for gcc
> 12.2.0-r0 with lots of linker errors.
>=20
> Names of missing functions are strange ala gen_cmulvnx16qi3.
> In insn-output.o
>=20
> System is an ubuntu 22.04.1 LTS Build Target is qemuarm64

We build that regularly on the autobuilder so something seems odd here.
Could your machine have memory issues? Do you get the same issue each
time you build?

Cheers,

Richard

