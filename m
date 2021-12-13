Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E600C433F5
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 17:18:48 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web08.13988.1639415926822689663
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 09:18:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.199,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 3AD26FF805;
	Mon, 13 Dec 2021 17:18:43 +0000 (UTC)
Date: Mon, 13 Dec 2021 18:18:40 +0100
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
CC: Trevor Woerner <twoerner@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: =?US-ASCII?Q?Re=3A_=5Byocto=5D_=5Bmeta-rockchip=5D=5BPATC?=
 =?US-ASCII?Q?H=5D_kernel=3A_linux-yocto=3A_fix_broke?=
 =?US-ASCII?Q?n_Ethernet_MAC_controller_on_RK3?=
 =?US-ASCII?Q?399_on_5=2E14_=3E=3D_version_=3C=3D_5=2E14=2E11?=
In-Reply-To: 
 <CAMKF1srokMzJfW8ZU=djZVaaXUTdXd9giCz6GgbhqX+X7RU8kQ@mail.gmail.com>
References: <20211116153256.3639663-1-quentin.schulz@theobroma-systems.com>
 <CAMKF1sq+cj8e31L1ExHSKckEVab-ZdeUCF3_CTSr0VPtZ=_sVQ@mail.gmail.com>
 <20211116170406.abau3j6liwsdonbp@fedora>
 <CAMKF1srfKKzNYBJPMKo_V13QKXuq1+mz-ULDd7hk3UEH_QwCNQ@mail.gmail.com>
 <20211116171242.7dyycd3d2qwb4ske@fedora>
 <CAMKF1soUeJES6ZG-wvng3VDfW_unw_7Fo4KSPWr3Cr8uR9T=eA@mail.gmail.com>
 <69C8168A-27F2-4B12-9592-264E80EFBC2D@0leil.net>
 <CAMKF1sq2vE9NuXpLYG6upqxBfa7XZ9yO0G2qNe-+yRBMcaTxVg@mail.gmail.com>
 <20211213090032.dy47s56sykoikbfc@fedora>
 <CAMKF1srokMzJfW8ZU=djZVaaXUTdXd9giCz6GgbhqX+X7RU8kQ@mail.gmail.com>
Message-ID: <C99AA08F-5ECC-4989-8B8B-F4C6EF182ABD@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 17:18:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55560

Hi Khem,

On December 13, 2021 4:04:03 PM GMT+01:00, Khem Raj <raj=2Ekhem@gmail=2Eco=
m> wrote:
>On Mon, Dec 13, 2021 at 1:00 AM Quentin Schulz <
>quentin=2Eschulz@theobroma-systems=2Ecom> wrote:
>
>> Hi Trevor,
>>
>> Gentle ping :)
>>
>> Honister 3=2E4=2E1 being out it's less of an issue but the question rem=
ains
>> at least for settling on a policy :)
>
>
>Do we still need this patch ? I think now that dot release is out it=E2=
=80=99s less
>of a problem=2E Version specific patching will set a different preset for=
 the
>layer to carry unexcercised patches
>

We need this patch for honister 3=2E4 but what I meant is that even though=
 it's not needed for honister >=3D 3=2E4=2E1, I'm still interested in what =
the policy should be=2E Especially what we should have done between 3=2E4 a=
nd 3=2E4=2E1, before the latter was released=2E

I understand the precedent it creates but also, it's a bit sad for a "BSP"=
 layer to have some support broken between Yocto releases=2E

Cheers,
Quentin

>
>>
>> Cheers,
>> Quentin
>>
>> On Tue, Nov 16, 2021 at 10:50:13AM -0800, Khem Raj wrote:
>> > On Tue, Nov 16, 2021 at 10:03 AM Quentin Schulz <foss@0leil=2Enet> wr=
ote:
>> > >
>> > >
>> > >
>> > > On November 16, 2021 6:45:05 PM GMT+01:00, Khem Raj <
>> raj=2Ekhem@gmail=2Ecom> wrote:
>> > > >On Tue, Nov 16, 2021 at 9:12 AM Quentin Schulz <
>> > > >quentin=2Eschulz@theobroma-systems=2Ecom> wrote:
>> > > >
>> > > >> On Tue, Nov 16, 2021 at 09:08:41AM -0800, Khem Raj wrote:
>> > > >> > On Tue, Nov 16, 2021 at 9:04 AM Quentin Schulz
>> > > >> > <quentin=2Eschulz@theobroma-systems=2Ecom> wrote:
>> > > >> > >
>> > > >> > > On Tue, Nov 16, 2021 at 09:00:42AM -0800, Khem Raj wrote:
>> > > >> > > > On Tue, Nov 16, 2021 at 7:52 AM Quentin Schulz
>> > > >> > > > <quentin=2Eschulz@theobroma-systems=2Ecom> wrote:
>> > > >> > > > >
>> > > >> > > > > From Linux kernel v5=2E14 to v5=2E14=2E11 (both included=
), the
>> Ethernet
>> > > >> MAC
>> > > >> > > > > controller found on RK3399 is not working=2E
>> > > >> > > > >
>> > > >> > > > > A fix is available in v5=2E14=2E12 and later (available =
also in
>> v5=2E15)
>> > > >> > > > > which is provided here and applied to linux-yocto source
>> tree if
>> > > >> > > > > linux-yocto version is of the impacted ones=2E
>> > > >> > > > >
>> > > >> > > > > The conditional patching is unfortunately required becau=
se
>> > > >> Honister 3=2E4
>> > > >> > > > > has linux-yocto v5=2E14=2E9 and Honister 3=2E4=2E1 will =
have at
>> least
>> > > >> > > > > linux-yocto v5=2E14=2E14=2E
>> > > >> > > >
>> > > >> > > > Patching piece below looks quite a bit=2E
>> > > >> > > > lets just fix v5=2E14=2E14 and dont worry about 3=2E4
>> > > >> > > >
>> > > >> > >
>> > > >> > > v5=2E14=2E14 is already fixed=2E The only release currently =
is 3=2E4
>> and I hit
>> > > >> > > that issue, hence the patch=2E
>> > > >> > > I assume not everybody is updating to 3=2E4=2E1 when it's ou=
t, I've
>> seen
>> > > >> > > people running behind dot releases=2E
>> > > >> > > What's bothering you?
>> > > >> >
>> > > >> > once dot release is out then thats whats maintained not the
>> original
>> > > >> > release since they are incremental=2E
>> > > >> > the anon python to apply a patch=2E Can you explain why we wan=
t to
>> patch
>> > > >> > applied this way ?
>> > > >> >
>> > > >>
>> > > >> I could define a python function and use it like this:
>> > > >> SRC_URI:append:rk3399 =3D "${@rk3399_fix_mac(d)}"
>> > > >>
>> > > >> Would that work better for you?
>> > > >
>> > > >
>> > > >I am not yet convinced why should we have such version specific pa=
tch
>> > > >
>> > >
>> > > If you could explain what's *really* bothering you, I could try to
>> find a proper explanation or agree with you but it's a bit too vague to=
 me
>> right now=2E Anyway, I'll do some guesses in the next paragraphs=2E
>> > >
>> > > Because Ethernet does not work for all RK3399-based boards in the
>> latest and only release of Honister?
>> >
>> > meta-rockchip does not have honister branch for now=2E So it expects
>> > master to keep working with honister for now=2E kernel upgrades are
>> > already committed into honister branch on meta-yocto-bsps so fix it
>> > already available in latest honister
>> > branch and will be in imminent point release soon as well=2E
>> >
>> > >
>> > > meta-rockchip is the BSP layer for Rockchip based devices, if not
>> there, where should I put this patch?
>> > >
>> > > Or are we just going to say "Ethernet does not work, we know" to
>> people asking instead of having this patch in? Obviously you could tell
>> them to upgrade their oe-core/poky git repo to rolling honister or 3=2E=
4=2E1
>> once it's out but having this patch in avoid those questions=2E
>> > >
>> >
>> > I would say yes, document it as that of a known issue and possible fi=
x
>> > if someone is using exact point release=2E They might have snapshotte=
d
>> > meta-rockpi too and in that case it will be easy for them to carry a
>> > local patch if needed=2E
>> > vesion specific patching would also be setting a not so desired
>> > patching practice, so I am trying to avoid it if we can=2E
>> >
>> > > I understand we're talking about policy here=2E I am not fond of th=
is
>> patch either but Ethernet is quite critical on boards which don't have =
WiFi
>> for example=2E I don't have anything better to suggest to fix this in t=
he
>> *latest* release=2E
>> >
>> > Update to latest honister branch or wait for 3=2E4=2E1, would be my
>> suggestion=2E
>> >
>> > >
>> > > Cheers
>> > > Quentin
>> > > >>
>> > > >>
>> > > >> Cheers,
>> > > >> Quentin
>> > > >>
>>

