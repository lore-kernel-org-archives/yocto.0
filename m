Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2985BC44536
	for <webhook@archiver.kernel.org>; Wed, 21 Jan 2026 16:37:13 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15996.1769013426417979544
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jan 2026 08:37:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OgLkqpv2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so270405e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 08:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1769013424; x=1769618224; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wdkPHg+NsUjsoQ6vzu+jSGTLplVc7GqJ3OK7R0m6cTg=;
        b=OgLkqpv2p+HeJH8/AP20+Is7k8x6NACS+4+45C/Scu9UeCGNOoNxKC6ZwefOy5zpQy
         +W6I4I5sSipcRPvbuZwvJb5qCztsN3WuDAt1nb14+CjNoQaGC/XrAi2yAV1790OdW1Vz
         V4Efa60RpXe4I5JjqNo1NUG0i2xHUopb++ugk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769013424; x=1769618224;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wdkPHg+NsUjsoQ6vzu+jSGTLplVc7GqJ3OK7R0m6cTg=;
        b=cB3l9oJZX8FmfBxEU4RFu4xxv4PjNA1ujz9Wml91N7WArGOV+m5AX5f5U8pt//4Bv4
         HEZ2LdywyQuGO2mCAAV/ZviP7li241FDvnP/ciyJ4Bh6rumJEb4ZtNQSeM0hHqQo03ST
         6poqFI49rTWru/jnMcHTtHFyO7mUXp0fDVPK4ToxFj1eP034GZtkFbgK1N1vZn8shq3R
         9/6y3OGnhp3J5IfbUb1C1fv2iS3S0BQ03j07yUgMO+5JQQHmZ0OYbZquWrxVfggQiHD/
         cliUtKo+n0P1iwewYYdtApgKKqeqqtsxEH9sqiC46BeymlcrXJgt1SpcR11V9wIwLpup
         Z2Vw==
X-Gm-Message-State: AOJu0YzyHLcfAHcBZTU2KaLpGymhzWU3ebWNKNJLMuTgRlMXYYJGq/It
	+Z/W9lyIUYjB5Jmm+kRqPUsExt0y2H4BA+19vl31U0jbdzE3F/OxDLJqSqemXpYjpMehcECWwy1
	d71r6RgE=
X-Gm-Gg: AZuq6aI8Ehgy5vK+dU6/SYOmHtWveQRCn6R0aFrfIIUW2t85G4zRUrNK5+Mr4jcIRDM
	/iV3E13eiy0FgJ1xXzQN3mDelwDxyrrhbD2ZNM/hrYRGYiliqPTg7ah7sAfkwDQL9FIVDaLdill
	dEgRgfjQHICLH89uEpKhHsW78YGqQDBV8DyRsObKFIfp6FbaUViEFaUsBWUN+QJN7/TFUGC3qeZ
	b3dV6KgH3G1bsSPHq9Ue/GtGtO2LDGG2zrUwTyrZgl0G4An6Bo2Z5wlu9w/voDRolbAld3q1mVH
	uDnEKFUTd1Rk+hvhH+bNi3d/Unpq6SOBkAgunGBDK5MiTnpY5efamfGSs0Fn+qNs0RzpI1reP4B
	I3hG5E38r0PG/o1oja7I1pZdxAPN4Qg6y7s0Kx1EIc3tY/Ax/C058zM641MlVolf3S5POsPxsj5
	oVfSapfUOqrZYiIEACWIZod8x6q9nib+5KS4yYAKhqXI15cni9pa/iGqj0vlt4XdL4rxhTuepeJ
	Zo=
X-Received: by 2002:a05:600c:a11c:b0:480:1aae:676c with SMTP id 5b1f17b1804b1-4801eb0928bmr191919885e9.18.1769013423600;
        Wed, 21 Jan 2026 08:37:03 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:b41a:7081:80dc:66f5? ([2001:8b0:aba:5f3c:b41a:7081:80dc:66f5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470472f1sm478875e9.7.2026.01.21.08.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 08:37:02 -0800 (PST)
Message-ID: <fe5405de8dfa9bc1a2ef3bfe2e425e3be63b254c.camel@linuxfoundation.org>
Subject: Re: [yocto] Yocto Project Status 20 January 2026 (WW03)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, peter.marko@siemens.com, 
 "sjolley.yp.pm@gmail.com"
	 <sjolley.yp.pm@gmail.com>, ",openembedded-core@lists.openembedded.org"
	 <openembedded-core@lists.openembedded.org>
Date: Wed, 21 Jan 2026 16:37:02 +0000
In-Reply-To: <AS1PR10MB56974C5DBF70E373FD7B7901FD96A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
	<CAK5yBb-P30Rk4rc9maME3=y69MTrF0NeviEY5FAQOTj-1MQ_1Q@mail.gmail.com>
	 <AS1PR10MB56974C5DBF70E373FD7B7901FD96A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 16:37:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66174

On Wed, 2026-01-21 at 13:15 +0000, Peter Marko via lists.yoctoproject.org w=
rote:
> > Tracking Metrics:
> >=20
> > *	WDD 3041 (last week 3026)
> > (https://wiki.yoctoproject.org/charts/combo.html
> > <https://wiki.yoctoproject.org/charts/combo.html> )
> >=20
> > *	OE-Core/Poky Patch Metrics
> >=20
> > 	*	Total patches found: 1099 (last week 1089)
> >=20
> > 	*	Patches in the Pending State: 152 (14%) [last week 151 (14%)]
> >=20
> > 	*	https://autobuilder.yocto.io/pub/non-release/patchmetrics/
> > <https://autobuilder.yocto.io/pub/non-release/patchmetrics/>
>=20
> Would be nice to update this link which points to abandoned infrastructur=
e with last update from 2024-10.
> New URL is https://valkyrie.yocto.io/pub/non-release/patchmetrics/

Well spotted, we should fix that, yes.

> But that one is also a bit outdated, so someone could be so nice and merg=
e these two series to add whinlatter...
> * https://lists.yoctoproject.org/g/yocto-patches/message/2935=C2=A0(2 pat=
ches)
> * https://lists.yoctoproject.org/g/yocto-patches/message/2937=C2=A0(3 pat=
ches)

I keep looking at these, realising you also dropped styhead as well and
that then means me not finding the time to reply about that.

Adding whinlatter is an easy add. Dropping styhead is more contentious
as we've been trying to continue to collect metrics beyond the release.
I've not wanted to get into a discussion about why we might do that,
for how long and so on.

No, we don't have a policy, it isn't documented, we should have one, we
should document it, someone needs to do it, I haven't had time. As
anyone who's attended the weekly status calls knows, I'm drowning.

So if we want to move forward, I'm fine adding whinlatter if you want
to resend with that bit first.

Cheers,

Richard
>=20



