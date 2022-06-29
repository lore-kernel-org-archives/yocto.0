Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49ACCC43334
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 12:43:44 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web12.10959.1656506616329898360
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jun 2022 05:43:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HR6SfQ4K;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id v14so22278283wra.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jun 2022 05:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=3CKXSfh4MRgvA292Nqn2Pl8VRlHvYYiiLRCMHlh/Qxg=;
        b=HR6SfQ4KBHek+tdeKXS7dXquw2Il9Bpftkq+19bV1c5mz3/m/6/qpHZ//1LJbLduEq
         K9j3PULPL5HwwfpAs+5vffV+1R+VFDg1JDDlXH3O09uodX+mfE/8LDfG2lHYpSzIG8HQ
         rImqWycbzr+eyVV43HXC8JxLWVmkHN8Y/b8rQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=3CKXSfh4MRgvA292Nqn2Pl8VRlHvYYiiLRCMHlh/Qxg=;
        b=8JFepNkaoejnMC5/nKNduwNW5jB5OhFjTxKChCmrSv4blfrEzYy4axBsGyewMzV46k
         s/2QJnjb+eDuQ7IgYJP6hnhFV8HTrToWyQHncWW2K/y7fxCRq2+kbhEfuuk1tK3k781N
         CrvR9BpzIA0PIwFGe6w/aczkgV0BY2BG2S+uCBP6lGyRsaM6Sp4nWqNWKsPMl7fjzGux
         RCguN3f6eAH+WkOWKJUZeAU9UCh+gkVS21pJgIqtHTyfNljTRG5ZqI0i0pJdv5aalN6D
         twe1azP/RcGsexcMtliCKNZzl9P107AcR/YAubEFUumB/MNSOhmZ0NSYZNu9b5k2FooF
         TMBQ==
X-Gm-Message-State: AJIora+VLgh7dNbSSjmDBOmFBrz7JFlTKk1H7I9Wlc6c9+pI5tVuJcD1
	Xss98Zu40dtGlgrzB9GULf+Ezw==
X-Google-Smtp-Source: 
 AGRyM1uj+fyO7ooezVYkn9IpCGp5XDGfx21cL3n067faF5l6nimbBj3grKAj4CToI7NtEyJ71EU6YA==
X-Received: by 2002:a5d:4d8f:0:b0:21b:a038:ad7e with SMTP id
 b15-20020a5d4d8f000000b0021ba038ad7emr3047891wru.593.1656506614496;
        Wed, 29 Jun 2022 05:43:34 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7688:b75a:a909:895d?
 ([2001:8b0:aba:5f3c:7688:b75a:a909:895d])
        by smtp.gmail.com with ESMTPSA id
 h15-20020a1ccc0f000000b0039749b01ea7sm4287912wmb.32.2022.06.29.05.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 05:43:34 -0700 (PDT)
Message-ID: 
 <7afd34dca0455a0561ca80e30049f7fbde1a11b0.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.0.2.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Wed, 29 Jun 2022 13:43:30 +0100
In-Reply-To: 
 <01010181af49cc59-7fa1b027-722d-4360-9ca4-4894f160087e-000000@us-west-2.amazonses.com>
References: 
	<01010181af49cc59-7fa1b027-722d-4360-9ca4-4894f160087e-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 12:43:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57418

On Wed, 2022-06-29 at 11:47 +0000, Pokybuild User wrote:
> A build flagged for QA (yocto-4.0.2.rc1) was completed on the autobuilder=
 and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-4.0.2.rc1
>=20
>=20
> Build hash information:=20
>=20
> bitbake: b8fd6f5d9959d27176ea016c249cf6d35ac8ba03
> meta-agl: c4cc627f4d65da8c3b0860c791d9b9687ba8f5d6
> meta-arm: af928569b421431347c84f5941cee7aaa9f0ac74
> meta-aws: 8b8eec4bde3b1ff00783503bd77b3a5fb7d904ec
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: ef3aa3064b9bbfa19f600eafb1e7d3473f62af74
> meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
> meta-openembedded: fcc7d7eae82be4c180f2e8fa3db90a8ab3be07b7
> meta-virtualization: 320f44c6e9af463a85b58e0d87ca70273c6b87f6
> oecore: eea52e0c3d24c79464f4afdbc3c397e1cb982231
> poky: a5ea426b1da472fc8549459fff3c1b8c6e02f4b5
>=20

There were two failures in the build on the autobuilder, both are due
to known scp issues with fedora36. I thought we hadn't enabled
kirkstone on f36 but evidently we have :/.

I don't believe the two issues should block 4.0.2 testing or release.

Cheers,

Richard

