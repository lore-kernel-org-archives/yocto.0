Return-Path: <sean@geanix.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E147DC36013
	for <webhook@archiver.kernel.org>; Mon, 31 Mar 2025 07:52:39 +0000 (UTC)
Received: from mail-10625.protonmail.ch (mail-10625.protonmail.ch [79.135.106.25])
 by mx.groups.io with SMTP id smtpd.web11.46711.1743407555281333565
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Mar 2025 00:52:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@geanix.com header.s=protonmail header.b=XfBzX95u;
 spf=pass (domain: geanix.com, ip: 79.135.106.25, mailfrom: sean@geanix.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail; t=1743407552; x=1743666752;
	bh=9K4c5/+/vlaRBm5ZH1j5sa24uu6GYwCuxDFMZSAPz/o=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=XfBzX95uoSSfdIxaJPvRpQgPZUlgnOA+YzwDsOc2s/bW+IOF+quPWsAX6fLRKpoou
	 yt/GtJVJhGTTAD6AI/c4RfKvfiqRl08UfqQIpQX9y8HVZbWfHXfixboY22dvfjjr5P
	 F7Pk4WGa+tDwD0diltGv1TGnmMC4pTutwLi74wCIL/0l1btxx3BQ7KCmtYY8HtCjqr
	 loFPQIRNr971bL6l7DbMCwy9lWhoEhMDHJj3RMVKsVPo8wB1x7OzMfOLAigizLF9/B
	 oZmnBH64vtq8lQgt5SpugPTr3RrygTLb1kQi7C7cjXVkyfgMYymTJmVNZfZ+BCT5bS
	 PjVKuN4Xlq5nw==
Date: Mon, 31 Mar 2025 07:52:27 +0000
To: Scott Murray <scott.murray@konsulko.com>
From: Sean Nyekjaer <sean@geanix.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-lts-mixins][scarthgap/rust] rust 1.85.x
Message-ID: <hkltnol6e7kh7zhetcta65npojw7rvoekxja5yievokqwkqqsi@ktlfdrbwkcar>
In-Reply-To: <100191b0-a12c-8cee-6de3-469874928aa6@konsulko.com>
References: <5wpwzkdc7cmkaj2xqsflisupelwim4eyrvub5yqyom4agcowfw@ym4fodrxb43t> <100191b0-a12c-8cee-6de3-469874928aa6@konsulko.com>
Feedback-ID: 134068486:user:proton
X-Pm-Message-ID: 3878a7e2459e437390b1bb02ea350335d5f5d62f
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Mar 2025 07:52:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65036

On Sun, Mar 30, 2025 at 02:18:50PM +0100, Scott Murray wrote:
> On Sat, 29 Mar 2025, Sean Nyekjaer via lists.yoctoproject.org wrote:
>=20
> > Hi,
> >
> > I'm using scarthgap lts for a customer and they really want to get
> > started with Rust 2024 edition which is included in rust 1.85.
> > It looks like it's close to getting into oe-core.
> >
> > What is the procedure for getting this into meta-lts-mixins?
> >
> > Do I need to create a new branch called scarthgap/rust-1.85 ?
>=20
> If there are folks that intend to stick with 2024 edition for a
> significant period of time (i.e. years), there could be a benefit to
> doing so at some point, assuming there end up being 1.85.x patch
> releases that oe-core might end up skipping (since it will quickly
> move on from 1.85 to track latest).

I don't think they will begin to do 1.85.x releases. 2024 edition, is
"just" a feature set, that have gone stable in 1.85.

>=20
> > Do we have to wait for a oe-core release to be able include it in
> > meta-lts-mixins?
> > scarthgap/rust is rust 1.81 which is newer than the one in styhead :)
>=20
> The intent of the scarthgap/rust mixin is to backport what is in
> oe-core master branch.  I am slightly behind atm due to work travel
> and susbequent illness, but I should be updating the mixins this coming
> week.  I don't really have the time at present and probably not the
> patience to attempt to track upstream Rust releases in such a layer
> myself. If you desire 1.85 faster, I suggest discussing how you can
> help out with the Wind River folks who have been doing the Rust
> upgrades in oe-core.

Cool. If there is anything i can help with(testing, patches), feel
free to reach out.

Br,
/Sean


