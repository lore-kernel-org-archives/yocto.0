Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A781FC433EF
	for <webhook@archiver.kernel.org>; Thu,  3 Mar 2022 20:36:10 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.16022.1646339769311411756
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 12:36:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=EOX6AiVz;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.218.49, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f49.google.com with SMTP id qa43so13107777ejc.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 12:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=IxzHgE2vFKuK5i1bYthGSB6IVu6V0L5cA1zC85htufI=;
        b=EOX6AiVzEcFyr1ojd4IlUhXQosP4FpEKO2Uow9NvxC71sWkX1sBE23aJwRT6GTxH6L
         /zD87BB88efeeNxZ9v5NYS+VSFSOuSAy6NXb/B/DYdltngLP09t2unhn1ku/VJ+nu0cS
         iWt68YsH562psZG7KiokRSTdgJsEBV3jtqG4S+RBQT21GlDxjizpjnsp2UTmOaWovWqM
         N1RJXdZGc+QbY+1YlANSvjOqglXM5XoqnMgNX8qiyKmgaf1lU8i8+gV7Hj9Ci7/qKbAt
         h2D2pkmvuKMS+PCM5gkTlFofVHn+cyfvNwVtEH1VCe5vzhrP3rZlUTVDUpIi6pNKBTES
         nPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=IxzHgE2vFKuK5i1bYthGSB6IVu6V0L5cA1zC85htufI=;
        b=VlT7Wj+b6t4TpTZ7oaJ30QnAyC6H8kcXG76BP6/g4JM/eJuBKjHmetBv9/T/Fy/wb3
         gNvY9uw9fJ6WXQZoAlHR7TmRbLM1zzngE0Nzbk1OzLJJbQuweR/sn4yoE/fP8fljvwoV
         7OO3e2Udb0xI4ERQCoGE2BhdqscIqYlWrNhEElu0NBD5XFEch7542Pu7diWhANk1/TJn
         Gb6YkXZemJopuI5905OEjekUsJaC48P898LZygDmhP+AkqszffVBqxLJFoKZY3oQERpT
         I+J/D2fT0SzcFEgJoMQ4tjbrvrcdQ/yYfL61HrYtUeYfiTYhHbuA9M6vTxYXDYJq8RMa
         7ZiA==
X-Gm-Message-State: AOAM532IO4399Y5w5LSYx5QDUeoXHjSWeRN+fEgFzzckSQZd537Kyb1g
	vukL+Ml7vn6lGBiEQmi2OWr7ZA==
X-Google-Smtp-Source: 
 ABdhPJzkPYQ/UR2lxPNwRAQP4TnDTqGiK3iy/FT4a/plnXLaadEAb7RLg8kw2+CeAaNMN8D2keMR4A==
X-Received: by 2002:a17:907:a40c:b0:6da:b4bd:c38a with SMTP id
 sg12-20020a170907a40c00b006dab4bdc38amr384351ejc.385.1646339767687;
        Thu, 03 Mar 2022 12:36:07 -0800 (PST)
Received: from smtpclient.apple (ipb21b4375.dynamic.kabel-deutschland.de.
 [178.27.67.117])
        by smtp.gmail.com with ESMTPSA id
 g11-20020a056402424b00b00415c69b46b2sm1248051edb.24.2022.03.03.12.36.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2022 12:36:07 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: [yocto] Honister on Ubuntu 14.04
From: Josef Holzmayr <jester@theyoctojester.info>
In-Reply-To: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
Date: Thu, 3 Mar 2022 21:36:06 +0100
Cc: yocto@lists.yoctoproject.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <A205AC83-C151-4EAD-A7C8-DF733E4828A0@theyoctojester.info>
References: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
To: Daniel Ammann <daniel.ammann@bytesatwork.ch>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Mar 2022 20:36:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56359

Howdy!

Just pack a more recent Ubuntu into the container engine of your least =
dislike - docker usually does the trick well enough if you can go with =
its license situation, otherwise podman is an interesting option.

Greetz,
Josef

> On 3. Mar 2022, at 19:06, Daniel Ammann <daniel.ammann@bytesatwork.ch> =
wrote:
>=20
> Hi,
>=20
> I'm trying to build honister on Ubuntu 14.04. This is meant as a =
temporary
> solution until the build server can be upgraded to something recent.
> For now, I got it running with extended buildtools from poky, but the =
build of
> libnsl2-native fails. It appears that the pkgconfig step is not =
executed
> properly since do_compile fails with a header not found error.
>=20
> Has anybody done a successful build of honister on Ubuntu 14.04? Is it =
even
> possible?
>=20
> Kind regards
>=20
> Daniel
>=20
> --=20
> bytes at work
> Technoparkstrasse 7
> CH-8406 Winterthur
> Switzerland
>=20
> phone: +41 52 550 50 67
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56358): =
https://lists.yoctoproject.org/g/yocto/message/56358
> Mute This Topic: https://lists.yoctoproject.org/mt/89531212/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


