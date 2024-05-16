Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BE4FC25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 08:47:26 +0000 (UTC)
Received: from www530.your-server.de (www530.your-server.de [188.40.30.78])
 by mx.groups.io with SMTP id smtpd.web11.8520.1715848324800760879
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 01:32:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@geanix.com header.s=default2211 header.b=V273fPUy;
 spf=pass (domain: geanix.com, ip: 188.40.30.78, mailfrom: esben@geanix.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=geanix.com;
	s=default2211; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=N/RLFz3NcGptax0G7A8uqwAE2SXJQmHI9ypbNsMFVTk=; b=V273fPUyV3/0mWeGnPIMYkAv2A
	CQWS28UNKJA46psSxHt/8GUs8+y5y4UorztrEG79Zv1Ba+4QNrXYqofDuaFZfdFzlOPtSVDe+Imqu
	tXgDGY6ZwkPkmyij/xK1AoSBiqU8W0Vm7WUU0VOE9RWAQeVvJFVPpy87xWgwk+z9W7PCxiG7Iunu4
	Hxxqag2b9xiY2XaR+j4zrgqU97NPvHlQX11InuMnH22x1NX33dBuhGYWgxR1ogfkfzgjKdeXPKQ5n
	A6NN/k8+4Ci1LGnbvNVrdtvRjRf8mRl6Zcsaan72RarewzJrLkqzwi8HVjEdeEzoUXG97E99JuaIs
	5LGRvMUw==;
Received: from sslproxy04.your-server.de ([78.46.152.42])
	by www530.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <esben@geanix.com>)
	id 1s7WWw-000NE0-NZ; Thu, 16 May 2024 10:32:02 +0200
Received: from [185.17.218.86] (helo=localhost)
	by sslproxy04.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <esben@geanix.com>)
	id 1s7WWw-000P9d-0O;
	Thu, 16 May 2024 10:32:02 +0200
From: "Esben Haabendal" <esben@geanix.com>
To: "Marta Rybczynska" <rybczynska@gmail.com>
Cc: Joshua Watt <jpewhacker@gmail.com>,  yocto@lists.yoctoproject.org,
  openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] SPDX delivery
In-Reply-To: <CAApg2=TJAxkN995fApsU15T1sywt6uM_6v-wjyJhYH_fRPx5dA@mail.gmail.com>
	(Marta Rybczynska's message of "Thu, 16 May 2024 09:26:46 +0200")
References: <CAApg2=T_sdGmAYKEzTCKS77YoEew2HM-PaoDWczoH8a=A6=nwg@mail.gmail.com>
	<CAJdd5Gax3CXHckaQuAQRwnx8V=u8X69CeJFqwb5v96B0fOpQjQ@mail.gmail.com>
	<CAApg2=TJAxkN995fApsU15T1sywt6uM_6v-wjyJhYH_fRPx5dA@mail.gmail.com>
Date: Thu, 16 May 2024 10:32:01 +0200
Message-ID: <87eda2qhry.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Authenticated-Sender: esben@geanix.com
X-Virus-Scanned: Clear (ClamAV 0.103.10/27276/Wed May 15 10:26:29 2024)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 08:47:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63106

"Marta Rybczynska" <rybczynska@gmail.com> writes:

> On Wed, May 15, 2024 at 8:09=E2=80=AFPM Joshua Watt <jpewhacker@gmail.com=
> wrote:
>
>  On Wed, May 15, 2024 at 11:11=E2=80=AFAM Marta Rybczynska <rybczynska@gm=
ail.com> wrote:
>  > So, the question is, what people plan to archive from the build? Do
>  > we need to archive the whole SPDX output too? This is an
>  > interesting question for example in case of "world" builds..
>
>  The algorithm for creating the final SBoM for SPDX is actually pretty
>  generic: Given a single starting document that has some references to
>  external SPDX objects, it finds the documents that provide those
>  objects and adds those documents to the final SBoM. It then
>  re-calculates all of the (missing) external SPDX objects from the new
>  SBoM and repeats the process of adding documents to the SBoM until
>  either all references are satisfied, or the references are known to
>  not exist in the current build (which generates a warning, since it's
>  not really expected).
>
>  The nice thing about this algorithm is that we can really generate a
>  SBoM for anything as long as you have the document (e.g. initial
>  objects) you want to start from. As such, we should be able to
>  generate SBoMs for world builds, individual packages, or just about
>  whatever we want.
>
> I'm wondering what makes sense to store: on one side, image is
> something that people flash on the device, so we definitely want to
> keep it. If there is a vulnerability in the compiler used to build, it
> does not necessarily affect the image (and you do not need to update
> it); except the case it affects the generated code. It makes then
> sense to store SDK and image status separately.
>
> I'd like to head opinions from people who use the SPDX generation, if
> there is a preference.

As SDK is something that is potentially delivered to customers, having
SBoM for it definitely makes sense, and I believe any output of security
scanning/analysis would also make sense.

As for the native recipes, I don't think I will ever want to see that in
any of this.

/Esben

