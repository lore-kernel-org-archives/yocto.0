Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFA5C41535
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 16:32:24 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.23220.1671640337431497641
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Dec 2022 08:32:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iYcvL2cz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id h10so15479433wrx.3
        for <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 08:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y7Y+3S+1YRiOYF3sm62mIF0PFowvBYwsTc4Y8F0Q5x8=;
        b=iYcvL2czhLOEjkgxQTYYFFi/tgv6B4ym+azw8H7JbHYofGYHQWLp5DEvfksGVAgoV0
         lZe4yp56a7g3PHN7I1LGig+BEjeL7SYeChTDqsr1povduojVWL7MIDd9xtnGS2mS+3ur
         zkd6J1SMlRZZc6VIOLYd4MGVhWCMJRUKBbzww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y7Y+3S+1YRiOYF3sm62mIF0PFowvBYwsTc4Y8F0Q5x8=;
        b=ban+jmQKfX69UpGrfWtSdG4q1mUkYo8aIm8fcIgeSTQwYvv4qQe9Z/hL9+LCNMHfVJ
         4RKa1qIRaK9ibdHDjPXvaOKzuednf2AZP5/wAJAtZDCYBMKbSVaPcuNV6/IYCFJWNimu
         ckB8pzQVYsZp0EZED+XzQE2rUZefvL2ureUVfGty0+TSeUeFDwhdo8Cmqbx95xehMHJ5
         0B3eY8LXBB10CFgygFj91bt/alAmjpkuVzFmM1arf9TxouidCY4jrQDSnoBiryT1dtf1
         6gFmTp2HzDol2Ro5rX/N5svNPX8R4/7bkHK1ouCiWbrI96PJlsw5cb6PYGj+3dhrC+xK
         ckrg==
X-Gm-Message-State: AFqh2kq05Tuh/r1oTsHSj5UgXlqxrYc4Mouaem0Yelaz/oqjpkTBtnG7
	2SfsPA1J28sF2AzvfUR0MGlIQQ==
X-Google-Smtp-Source: AMrXdXuDGcti6l7NL0yk9wAjASTMra2+O1z55cyPQVKUwIe0UhK18yQlWKQLS/Re7cmKZ5GSjWx6IQ==
X-Received: by 2002:adf:e311:0:b0:24f:11eb:1eca with SMTP id b17-20020adfe311000000b0024f11eb1ecamr1676516wrj.42.1671640335760;
        Wed, 21 Dec 2022 08:32:15 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:e749:b020:2cdb:af31? ([2001:8b0:aba:5f3c:e749:b020:2cdb:af31])
        by smtp.gmail.com with ESMTPSA id x13-20020a5d6b4d000000b00241ce5d605dsm15887992wrw.110.2022.12.21.08.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Dec 2022 08:32:15 -0800 (PST)
Message-ID: <0045c7284417c1b3ad40002c40e8b259d47ee582.camel@linuxfoundation.org>
Subject: Re: [yocto] FireFox
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: jovanbosic95@gmail.com, yocto@lists.yoctoproject.org
Date: Wed, 21 Dec 2022 16:32:14 +0000
In-Reply-To: <24265.1671632266311793752@lists.yoctoproject.org>
References: <540CFA75-EFC7-4143-B294-E50BECFB252A@arm.com>
	 <24265.1671632266311793752@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 16:32:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58855

On Wed, 2022-12-21 at 06:17 -0800, jovanbosic95@gmail.com wrote:
> Thank you for your help! Is there any other option instead of core-
> image-sato?

Perhaps you could mention the issue with core-image-sato which means
you can't use it?=C2=A0

There are other options but asking us to randomly guess which ones you
might be able to use without knowing your criteria isn't much fun!

Cheers,

Richard

