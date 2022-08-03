Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1865FC19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 08:06:52 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.5980.1659514009702755571
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 01:06:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gcBLgb2e;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id p10so16363077wru.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 01:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc;
        bh=YogmJZzIA0C5SRJJcyruQlrkXWaCvrwqIfukJ2obfow=;
        b=gcBLgb2ekl//ugpKtq8FZkqa1kRKXjX+FgiUslKi0/6IN8UV49bsnFQSXIvg7AzoEc
         QA1aoS5LDbYU4Qdbo21EwIEmIfm/pkdFbgMxmukQNTeGdexcJObk8L/TXAowN4UPVY0w
         Dtu/01EInQZkaLBkzdijtipeSXLcMCRNSg8CU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc;
        bh=YogmJZzIA0C5SRJJcyruQlrkXWaCvrwqIfukJ2obfow=;
        b=aYyUE2FfS4O83wNU84iAT7JNtH98BOR7inSCpKpEUt8F8g29ugyQXylMCDpbfzdRiH
         rLQahU+ncPxx2LuX4eVWjObdiFzwH/nagbSgcPeaD+ld+ewRcWnlnFJynQxCM5yTSNke
         cmz/fHgVs4/HErRT8HnM66lqH4KNiwNgWqn7D35yEpMn1hi34eGIiO/ky0X2/OPLNM+2
         QjMtbxsQc3MX54p2wTnQpyLI4rNh+DQOT1+YpWPtdChXOjArUjQTzBlJthvRjtrzd1Aw
         GuQpHzgQajIJpLaUw7DSjTiG4UbxKU6I/tnpnM4CM1gqD/kdTgmEwNEyL3hCH3XQbG6U
         KAPg==
X-Gm-Message-State: ACgBeo1L+lV9XuKp8cldhBfhq3j1oA2Mq+5PiCZUpo6X93pYQudZw6ql
	ZC4o5qXlFmXSyGg6ndjHl2SVGQ==
X-Google-Smtp-Source: 
 AA6agR5UJegY0NMid7yKvBjqUp32AHfrt9ZkQSQMg12KX4An+8ZVeQLaezfVSUTPQjRkrAssugNDVQ==
X-Received: by 2002:a05:6000:1867:b0:21f:f2cf:74a8 with SMTP id
 d7-20020a056000186700b0021ff2cf74a8mr11963548wri.344.1659514007547;
        Wed, 03 Aug 2022 01:06:47 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:ac96:e386:102:36cd?
 ([2001:8b0:aba:5f3c:ac96:e386:102:36cd])
        by smtp.gmail.com with ESMTPSA id
 m25-20020a7bce19000000b003a2c67aa6c0sm1819683wmc.23.2022.08.03.01.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 01:06:46 -0700 (PDT)
Message-ID: 
 <d3651acc6de8a335b662ffa03d5e5898f3568501.camel@linuxfoundation.org>
Subject: Re: [yocto] RDEPENDS of something provided by ALTERNATIVE
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <Martin.Jansa@gmail.com>, Craig McQueen
	 <craig.mcqueen@innerrange.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Wed, 03 Aug 2022 09:06:46 +0100
In-Reply-To: 
 <CA+chaQfcqnjBAtSTfwGWTY8SdD3cPiJ8GW4Y7xKONFcT5DuTUw@mail.gmail.com>
References: 
	<80bf30b6-c5f8-4dbd-96fd-1bd52e1c129b.03082a28-859c-4ed7-bdd3-b360c084ba83.200c086d-1ebc-447c-bcf7-1ae3360185ee@emailsignatures365.codetwo.com>
	 <ME3PR01MB661227E878D8E6B5B3254050809C9@ME3PR01MB6612.ausprd01.prod.outlook.com>
	 <CA+chaQfcqnjBAtSTfwGWTY8SdD3cPiJ8GW4Y7xKONFcT5DuTUw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 08:06:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57759

On Wed, 2022-08-03 at 09:25 +0200, Martin Jansa wrote:
> You can use VIRTUAL-RUNTIME_sed variable instead of 'sed'
> _everywhere_ and then change the preferred runtime provider in your
> DISTRO config.
>=20
> Similar case for "stat" from busybox in webOS OSE:
> https://github.com/webosose/meta-webosose/search?q=3DVIRTUAL-RUNTIME_stat
>=20
> and much worse case (because too many places add runtime dependency
> on bash) to replace bash:
> https://github.com/webosose/meta-webosose/search?q=3DVIRTUAL-RUNTIME_bash
> see
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9217#c5

This is where we should perhaps think about the filter variable option
Joshua and I have talked about periodically as that could handle this
in a much neater and generic way, at the unfortunate cost of
complexity.

The multilib code already tries to do this kind of remapping.

Cheers,

Richard

