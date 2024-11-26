Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ECAD6555B
	for <webhook@archiver.kernel.org>; Tue, 26 Nov 2024 21:31:45 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.57886.1732656697356046170
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2024 13:31:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OPgCJVRg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3824a8a5c56so4188146f8f.3
        for <yocto@lists.yoctoproject.org>; Tue, 26 Nov 2024 13:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1732656695; x=1733261495; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bDJ2qWS4Kql09wiYGD8e5MQzRIMrXfvLchfZeERvIao=;
        b=OPgCJVRgPQVyz1+vXRAWf5lR6iilysTR8C34IwD0MYH4rFj/UixQCcdIeulrf3REzy
         GqEHIFJId18SmjKIiaSsi3SN0prBNe4jJb0emDj3OKZW3EGHchtY2d7J5AS+3kVjMCWT
         JxM08XkgBATxG08zoKBvxnMSsMKYZQk1WyS68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732656695; x=1733261495;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bDJ2qWS4Kql09wiYGD8e5MQzRIMrXfvLchfZeERvIao=;
        b=h24CPJMceIKC38D1emLiE2fqZt2viYiHM/4uxaA6Wco7stg/Xg0lt7SQj+HPcXLl1Z
         Fhi3ZFRTI7nRQae7FnPHbycbNW+S3f3LjiMR8TdgvwXuvAC6rSyTpW6VLc3+VoALhuJ2
         SWJU8WIXghCLYMCreV1VPSUM1IPhgauz7KOL4pu4oJTwwL8U4mSm9Bc3Z71mYPV+6Omr
         cEx+pQiUVQFe5fsEKx2AAZJYo2SKyFDZ1APccDDLXsFKtN+nHikW11hebcGb2vQSSOy4
         fBMEo/sykGsJrIcP559TgJHKCa6Sd1DnXc1Lyi7d5ks9F1I6x+1NLxvu4HptUrVsfPu4
         er7w==
X-Gm-Message-State: AOJu0YyfLND3jOUe2mF8fFR4+OZ4arw0h0yV89vzRoQrFmLutIm+/xOI
	Yxp3MA+PWsqoaprT7KW9AuSo6SMrCF6CLxT7+El6yr/smlSB+aEkM4mhaLAgKDiLJbKbHbAdScZ
	o
X-Gm-Gg: ASbGncu/DvNXWV1M9SYxJGhuhY2FtoVZ7Dfb3MRamLhPvGx1FeHFwuB2w2LVO29Zjdk
	xoYl1DY3NUdTUDMMF8jCEtrhSX4OoG1b55zCMi+vmhRFAik74HjfSwTP+L0XgXLOeyNV2jnD+iN
	hBFJTVoR8PrFXx0bxlJSEDp+3cmypkw3QHBw5hYHFRPDkeD2r83BpR2p+1wih72vZW6QN2kCA5G
	ITLKTk7rXxhw3o3khtlbn7/EbTlB9oAnwnL0ccC47HbgtPUUCw1LhNLAMQTadkIhPpsphxrRG3R
	zOE0PtAm7Abb1GqpIK0f+Xkb48Zw5WumByuZg8Y=
X-Google-Smtp-Source: AGHT+IFqf3wULmYTvEE3618bGQEOzN+7yxS4A9kEGUNRkoGJo5IFV4ZfVwSjW06p/eo3a4h2KiNF4g==
X-Received: by 2002:a05:6000:18a3:b0:382:4faa:767 with SMTP id ffacd0b85a97d-385c6ed7583mr343317f8f.38.1732656695358;
        Tue, 26 Nov 2024 13:31:35 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:ec0a:112c:3d2c:2eb5? ([2001:8b0:aba:5f3c:ec0a:112c:3d2c:2eb5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3defsm14855083f8f.70.2024.11.26.13.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 13:31:34 -0800 (PST)
Message-ID: <096700bfc7f523d73c84362c225c4b0edb0f8fa7.camel@linuxfoundation.org>
Subject: Re: [yocto] Periodic cleanup of the downloads directory
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com
Date: Tue, 26 Nov 2024 21:31:33 +0000
In-Reply-To: <l3M2.1732654335906500283.Pq1Y@lists.yoctoproject.org>
References: <l3M2.1732654335906500283.Pq1Y@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Nov 2024 21:31:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64351

On Tue, 2024-11-26 at 12:52 -0800, Aleksandar Nikolic via lists.yoctoprojec=
t.org wrote:
> Greetings,
> =C2=A0
> With every recipe update, the new code revision gets downloaded and
> if I am not wrong the already downloaded old one does not get
> deleted. Is there a good rule of thumb how the downloads directory
> should be cleaned up periodically? In other words, how can one know
> which recipes have been updated, so the previously downloaded source
> code revision can be safely deleted, as it's not needed anymore.

I believe the fetcher touches some files in DL_DIR (maybe the .done
files?) when they are used if it has write access so that you can get
an idea of activity.

You may want to keep DL_DIR around in case you need to reference older
sources or build older versions. Personally, I've kept mine around for
may years and we don't prune the one on the project infrastructure
either.

DL_DIR is usually not a huge space problem, the much more significant
one is sstate which is much larger.

Cheers,

Richard

