Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D48CC4345F
	for <webhook@archiver.kernel.org>; Thu, 18 Apr 2024 15:45:29 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web10.1934.1713455119081443917
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Apr 2024 08:45:20 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 3E23540C6B;
	Thu, 18 Apr 2024 15:45:18 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EQJ716fhLfPO; Thu, 18 Apr 2024 15:45:18 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-87-159.washdc.fios.verizon.net [100.15.87.159])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id D22AE408CD;
	Thu, 18 Apr 2024 15:45:10 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 95CAD163F32; Thu, 18 Apr 2024 11:45:10 -0400 (EDT)
Date: Thu, 18 Apr 2024 11:45:10 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Ross Burton <Ross.Burton@arm.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"qa-build-notification@lists.yoctoproject.org" <qa-build-notification@lists.yoctoproject.org>,
	Yocto TSC <tsc@lists.yoctoproject.org>
Subject: Re: [tsc] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.rc2)
Message-ID: <20240418154510.GX28791@denix.org>
References: <0101018eeb341f1c-6cbd9227-adf8-4d80-b90e-d552b36e72cd-000000@us-west-2.amazonses.com>
 <7b21770c8dd6eae305575dc77bf968a35dba03b8.camel@linuxfoundation.org>
 <A363D55A-F4F9-4764-AB3F-A919A39B41CC@arm.com>
 <17C72E3BC41D08CD.20815@lists.yoctoproject.org>
 <5e22b4726f52a0a2868868eb4c7c615403f94783.camel@linuxfoundation.org>
 <908F7468-72EC-44F5-A083-6EC5716ACF64@arm.com>
 <262ae69fabd0c49302c6edcaf52d1a110d424772.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <262ae69fabd0c49302c6edcaf52d1a110d424772.camel@linuxfoundation.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Apr 2024 15:45:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62963

On Thu, Apr 18, 2024 at 11:49:26AM +0100, Richard Purdie wrote:
> On Thu, 2024-04-18 at 10:45 +0000, Ross Burton wrote:
> > On 18 Apr 2024, at 09:11, Richard Purdie <richard.purdie@linuxfoundat=
ion.org> wrote:
> > > For the purposes of history, the issue is in curl 8.7.0 and 8.7.1 w=
as
> > > just a single bug fix. There is a fix in git master branch for the =
curl
> > > issue and curl themselves also have a fix in master as yet unreleas=
ed.
> > > I've backported the patch to git for now, we can drop it when we
> > > upgrade things.
> >=20
> > As the underlying issue is in curl and has been fixed in master:
> >=20
> > https://github.com/curl/curl/commit/721941aadf4adf4f6aeb3f4c0ab489bb8=
9610c36
> >=20
> > I think we should apply this instead.=A0 The issue is a curl regressi=
on, we just saw it first in git.
> >=20
> > I lean towards this being a release blocker and think we should respi=
n.
>=20
> Much as I would prefer not to, I agree.=A0
>=20
> We should abandon rc2 and build an rc3. I'd like to keep the
> dunfell/kirkstone builds for after rc3 goes through QA though. We
> should be able to build rc3 quite quickly.

I believe 5.0 is still "within" the schedule, right?

What about dunfell and kirkstone minor releases? I know their builds are =
being=20
delayed by 5.0 taking up AB. But are they already behind the schedule? If=
 not,=20
then 5.0 rc3 should definitely get prioritized.

--=20
Denys

