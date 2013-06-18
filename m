Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA2F4E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 12:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=UZZiVpB74Bu3gn6Rk3yWu0kCMzENKOpxGrZCJfdKOYE=; 
	b=M3OqBMadX2uwBgmpdBjZlxk2bAuvGuqBsHbH2e6wqhNUS9VKgSjohBzGfSxqtnrba2jLLlhRAkWR4V0LXJHr2fqIkeqEU59hGPP+fMh6qJRqkZzbrsbHzzv7Jdnj0bvRNTtuztqxzaD85jRPUaXWWvLaIrqm1LdUiKMQPT8ZaZ4=;
Received: from [109.224.129.17] (port=48430
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1Up1v0-002088-4F; Tue, 18 Jun 2013 20:50:18 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <1371564241.1569.26.camel@empanada>
Date: Tue, 18 Jun 2013 20:50:15 +0100
Message-Id: <8C2CFCE0-38EE-40E0-8AAF-490DC3B6837E@keylevel.com>
References: <394F6C8A37E5424BB91439BABFA30180@PAULD>
	<1371564241.1569.26.camel@empanada>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: yocto@yoctoproject.org, "Paul D. DeRocco" <pderocco@ix.netcom.com>,
	foo.chien.haw@intel.com
Subject: Re: Cedartrail and Dylan?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 18 Jun 2013 19:50:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 18 Jun 2013, at 15:04, Tom Zanussi wrote:

> On Mon, 2013-06-17 at 16:56 -0700, Paul D. DeRocco wrote:
>> I've been using the Intel meta-cedartrail layer with Danny 8.0.1. Is =
this
>> layer likely to be unusable with Dylan 9.0? Or unusable without lots =
of
>> tinkering that's probably beyond my abilities?
>>=20
>> And if I were to try Dylan, is it best to start from scratch, in a
>> completely new directory?
>>=20
>=20
> Hi,
>=20
> I believe the main problem would be the graphics driver - it would =
need
> porting to the 3.8 kernel - the rest would probably be =
straightforward.
>=20
> The cedartrail BSP was discontinued following danny, but I'm cc:ing =
the
> maintainers in case they might have any further input.
>=20
> I was thinking of creating a meta-intel/staging area for things like
> this i.e. discontinued BSPs that people are still using, which would
> contain best-effort updates but completely without promise of any kind
> of support.  If there's enough interest, and there seems to be judging
> from the number of questions about cedartrail we continue to keep
> getting, I'll try to find some free time to take a stab at moving it =
to
> dylan...

I'm certainly interested and happy to help out if I can.

I also see that ASRock are now making a board =
(http://www.asrock.com/IPC/overview.asp?Model=3DDN2800MT) that looks =
exactly the same as the Intel one with the same name aimed at signage =
and thin-client applications, so hardware will be about for a good few =
years yet,

> Thanks,
>=20
> Tom
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




