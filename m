Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC04D111BC
	for <webhook@archiver.kernel.org>; Wed, 26 Nov 2025 23:23:52 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7000.1764199424834290395
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Nov 2025 15:23:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ARJOwQsb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42b47f662a0so721171f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 26 Nov 2025 15:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1764199423; x=1764804223; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DoITTN62IhUP9+GV/wb0+hzrkBmKX7iIEYkpupY2hO4=;
        b=ARJOwQsbMLPnixloRUNuQbwD4JRKEdUHEpVuW9+uK2N5ZZ68ekFoLGn11AxTzxDU+K
         XQ5svBQP9vCnlwF4aqMrgh0vAV/lw4P1I6LJWOJTsFqDcoKB1jZfh1+UoUnK2iQklzw4
         6ZKwgKJMsm/zW9TTjJXfR6kJr4eOSaIFEdXnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764199423; x=1764804223;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DoITTN62IhUP9+GV/wb0+hzrkBmKX7iIEYkpupY2hO4=;
        b=uz//GK6IusRuQvzteE4oubKwt91AUMS5cy12UnrRoeL1oflOP1jnbyW5oc8ntKms+3
         FVvzS0XjQE0gjH5P81poX+WUjnFNZD2bQNdhTTdw/DLFnHOP/hmAbrusTEoUBaX2g9w8
         x2md7iGn5blGAQHBWfnCaDHaS3TuonOW6JksVCutSewItJ03yh0BPsHF6Y6ORqLeQ3+S
         QXw2afKsSy1z326mrkUaMytk+ZWY6s9InZDswOnC7qebvBHo+r6Q26fNOFLMn9zTZ3us
         UzypzRK10ZnHaEGFdhpM02UJRrDn4/m/e/0pMwtv0otRCZRRi4+Z091WUzP1WntQMrhr
         accQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRhZysp/qz8ya/OX9g4ylXNVDrm+YqJrFCdxPhqGsDoDcdVLLv/ADgM6LghAKrTMup8VHOcQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw2z54hoRoDrH8CjOQaMnimrG2uDtRzx5KdPTxmHgUvQXE8rbKD
	AfB0U//JTpv6ZmOWw8hXbSVsSOsKpyTA25OsWkC9y38kXrA+gLUoCTwNxkXEpN4cM9M=
X-Gm-Gg: ASbGncu2BEGBGqPcjp+3ItWhRR9JeWuwts9DyjjI3vZjj4OQ3Cei9E8jPGDMgtfog3a
	gUY/nH7qf/8c+UHrEXASJfvxMRupBsSInrM8LL8G/sxlnyHpGqmNDHzVDJcIzjUCrRR4kgwhCmd
	0PhqrO7xNC/PWLmU7rP/ogvUQyu6AzaTc9bsiMOAwDD1r6O7BPwOXx7kkCpyWaPG/gSKVRLRCKA
	KfRA2yqsvCfNPFs8u6lKEfGXA8Zkf+eBozwCYnQIDU4cLCq9eBYnOJlKt0txZCI2aqs8prN+JME
	AVExUG5MuF/bwQNUATNFGKg+ujcti/9Is0OM333myh2x4cMu1KrMVaiVkN1v8zklZ8QFvDkBSkR
	wLq9JyaI0dd7cAl0t0PUjmVYzRGsTtQUDbKUleEE9zbloD0UY8EEyC2gUTUTx5OudpPcEbiKQt+
	jfr7s+iw6Q/q6qZ7LIx1b4rclHi4uAliYkr6Z3E/yhnKno8rw3OvN5fOTbr+Lq3Urhj9HDUg/4
X-Google-Smtp-Source: AGHT+IGYR9PAFCVNwl4rTRFNFuUOz3jKlREmsZeZr22lEEG0fgvM996pSTyxs8/X2mpSIW7ewxQWqg==
X-Received: by 2002:a05:6000:1a87:b0:429:b8c7:1848 with SMTP id ffacd0b85a97d-42cc137b729mr25346588f8f.19.1764199423234;
        Wed, 26 Nov 2025 15:23:43 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:34ed:bfd5:b6b:46ae? ([2001:8b0:aba:5f3c:34ed:bfd5:b6b:46ae])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3041sm110899f8f.6.2025.11.26.15.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 15:23:42 -0800 (PST)
Message-ID: <0af73562c6fe57d3b7b630d24f3863a76b732150.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.3.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Marko, Peter" <Peter.Marko@siemens.com>, 
 "qa-build-notification@lists.yoctoproject.org"
	 <qa-build-notification@lists.yoctoproject.org>, 
 "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 26 Nov 2025 23:23:41 +0000
In-Reply-To: <AS1PR10MB5697978355462EEDB28E6A9FFDDEA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
	<0101019ac205ffad-5a7861eb-0d81-4881-aab8-28e6382b6a7e-000000@us-west-2.amazonses.com>
	 <AS1PR10MB5697978355462EEDB28E6A9FFDDEA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Nov 2025 23:23:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66074

On Wed, 2025-11-26 at 21:34 +0000, Marko, Peter wrote:
> > =C2=A0=C2=A0=C2=A0 Build hash information:
> >=20
> > =C2=A0=C2=A0=C2=A0 bitbake: 6ee4df8ab58e0175b43106d8a6cbac1f6ab8d022
>=20
> This bitbake commit is on branch 2.16, however Whinlatter should be
> on branch 2.14.
> So these two are in conflict:
> * https://wiki.yoctoproject.org/wiki/Releases
> *
> https://git.openembedded.org/openembedded-core/commit/?h=3Dwhinlatter&id=
=3D8519978592483bb096ed5192fff7af6c887b799e

There was a mix up with the versions and master has been depending on
bitbake 2.15 for a while so the release needs to be 2.16. The wiki is
therefore incorrect.

Cheers,

Richard

