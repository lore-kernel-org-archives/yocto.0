Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72BA1C433FE
	for <webhook@archiver.kernel.org>; Thu, 13 Oct 2022 14:05:23 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web12.7855.1665669917058790944
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Oct 2022 07:05:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=cMdUBu45;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 35A7D40129;
	Thu, 13 Oct 2022 16:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1665669913;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KkY+QCZdhu4JGg0oDZJueB536DuVG0cIVSv5b5qNtdo=;
	b=cMdUBu45gXGbrY0oAw2X2YEOaEznpJ89m+EtE1xUJJzZwpK/pZ52SEm71cyz4a+/qXE008
	9mvkT3ZzXrBMWSDgUCSY7qATNfUPNx4K4DZUFBEhP2kpFLPjqOUImB3esZx1FjNelncXQC
	m46SfdjSybSIBlUjnRwcu+Qn/P7LQ4c=
Date: Thu, 13 Oct 2022 16:05:11 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Dealing with go dependencies in recipes - native
 docker-compose
Message-ID: <Y0gbF+3+kU0Z3UW8@aglaia.inside-m2m.de>
References: <Y0WtLKYWtdcM9wIp@Hephaistos.local>
 <CADkTA4PEob-LJpM_oEkxO-hbyLq5DnENFOaYzvkhnKvu8hziqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <CADkTA4PEob-LJpM_oEkxO-hbyLq5DnENFOaYzvkhnKvu8hziqQ@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Oct 2022 14:05:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58332

On Tue, Oct 11, 2022 at 11:23:31PM -0300, Bruce Ashfield wrote:

> Adding the missing setuptools does get things working.

Oh my, I was still looking for python3-distutils (deprecated, not
available) and did not realize I now need setuptools. Thanks for
clarifying, however, I investigated the gao approach then...


> I actually have a prototype recipe for this that I was working on befor=
e
> ELCe, but I didn't get it into meta-virtualization yet, as it had a few
> rough edges.

I suppose, those go recipes look extremly difficult to do.

> If you give me a few days, I can post it to the meta-virtualization lis=
t,
> but I'm on the road right now and don't have access to all my build
> machines.

Of course I have patience and I am very curious to test this out!
Currently I have no urge but in future it will be extremely handy to
have the native docker compose approach available. It is a bit smaller
then the python approach (if python is only used by this docker-compose,
a third disk space is used by native approach).

> I also did a presentation at the yocto summit about "modern languages".

Opps, interesting. No need to summarize here, I agree. I will dig this
up in the internet. Interesting...

> You can see the approach that I take for this in the k3s and nerdctl re=
cipes
> in meta-virtualization. My new docker-compose recipe is of similar form=
at.

As I vaguely mentioned above, those recipes look far more complex than I
would have imagined when starting to dig into the go world...
astonishing!

> If we just bypass the fetcher, offline builds, some of licensing and SB=
OM
> and reproducible builds .. you can have a simple recipe like that as we=
ll :)

Yea, and I already learned to lovae this reproducibility approach.

--=20
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, De=
rek Uhlig
HRB: 111204, AG Hannover


