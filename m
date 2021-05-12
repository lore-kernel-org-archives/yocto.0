Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.1999.1620844386165795982
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 11:33:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=kO3GUt5V;
 spf=temperror, err=parse error for token &{10 18 spf.infomaniak.ch}: parse error for token &{10 18 relay.mail.infomaniak.ch}: temporary DNS error (domain: spinetix.com, ip: 198.145.29.25, mailfrom: diego.santacruz@spinetix.com)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2043.outbound.protection.outlook.com [40.107.21.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 09D6138C086E
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 18:33:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fU4kaaF7Ik7ugymkhg2cQyolsvNT72HIVlWLyrpQTBcL7obNacQ3Dix+dQkhrfg7W7mkDm5ba1/C/3dBGnaYGxCkSJmIOVeVnm8Cc9EPJMiFlz7f2U56EPZORifS/+NAn3eeaMPnnjtDjrzcey96eQZ1Xx100q4r7uKF7RhpLTcWjTKc36iSvYNbqj9zrj7Hn8ldh6NHECILAu/Dt51fmGrsXeXhXswBsWe0hq4bdj9evPtMQvBsPDRw+uLP2jzlMPwgnZsooVLtiZyhhCKMc8IcU9R1i567FYyx5h82yCdiPqFyP+jJ+zAd/qJTjD79Din2bNJVHreQ4QxWiJuUOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yitXNhNdizTJOhk9KT8mNX9qdlX8e+E86CPUvZvbDgc=;
 b=FgaWPOU4u7cFsgI6hH3r/gjpp91UPR0fTjuR62QwTN2scOTGAKpPaPqFG1wKPLt0dAq/21MJpq7mPhAb7FIDxBTE7VY6GKyJyCL/V61groo2Sz34caoxP6HGC/fHJeGdIx6v1KWWUt9RR8gjve0tvlCgITpu039Smgfzsd6zAv5GX4xj6690Qax60wzG51mxStt+2n7LfAvUOxVoN8To8vEj4/FfzdyzGyADu2FTmEgcml34F5fmItfW2fuPZBiPrCEtRPyvR+BUttSfRt/VJ0QW2s8m6aPobGW3sIVxci225wAf8juyrtkC5jV5W/F/cvbwEu8cSmSpR3O2ByLMyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yitXNhNdizTJOhk9KT8mNX9qdlX8e+E86CPUvZvbDgc=;
 b=kO3GUt5VNoaLgabQfD9nMv1URCkEpQ2Dl/vRrGNS+FcvGvY62xszFxnX/3ou/3on7zcCOWBiq6Pvwq0UoMtOQLWpxD2srK/Xx00JZpxN7pdCUD6bqqqyusjkWf2v6DL41LW8LfltDQaL//c9xk8zeVXJSo6gYXjXFRO1n5fMKpU=
Received: from DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 (2603:10a6:6:e::19) by DB7PR01MB5195.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:88::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Wed, 12 May
 2021 18:33:00 +0000
Received: from DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 ([fe80::d4be:af2c:d43:bcc9]) by
 DB6PR0102MB2630.eurprd01.prod.exchangelabs.com ([fe80::d4be:af2c:d43:bcc9%7])
 with mapi id 15.20.4129.026; Wed, 12 May 2021 18:33:00 +0000
From: "Diego Santa Cruz" <diego.santacruz@spinetix.com>
To: "bruce.ashfield@gmail.com" <bruce.ashfield@gmail.com>, Yann Dirson
	<yann.dirson@blade-group.com>
CC: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] Understanding kernel patching in linux-yocto
Thread-Topic: [yocto] Understanding kernel patching in linux-yocto
Thread-Index: AQHXRx/6aWXKaeS9MkenZW9ZMoFHSqrf1J2AgAANaACAAAUIAIAAQmew
Date: Wed, 12 May 2021 18:33:00 +0000
Message-ID: 
 <DB6PR0102MB26307B2F14821701E2C5160988529@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
References: 
 <CA+4=imafR6ncjuC9UOgR3PBPS7MR7H5fo42vn0M9tk7=GSFUoA@mail.gmail.com>
 <CADkTA4Ob2nEOxf12YDzkoxZkKQjuKDnOC=OVimpsZY3HWOCLyQ@mail.gmail.com>
 <CA+4=imZ61MKKSnGS6skanZCdDLHM6fD7FJdCxbKq9ghhb5tS1w@mail.gmail.com>
 <CADkTA4OHsJgTr+-0FNWr3OvAFpHZL=NWDZie5yjAm7rt0seTDQ@mail.gmail.com>
In-Reply-To: 
 <CADkTA4OHsJgTr+-0FNWr3OvAFpHZL=NWDZie5yjAm7rt0seTDQ@mail.gmail.com>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=spinetix.com;
x-originating-ip: [178.198.240.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c59148b-ca98-4322-165f-08d915745f14
x-ms-traffictypediagnostic: DB7PR01MB5195:
x-microsoft-antispam-prvs: 
 <DB7PR01MB51957295952D10A404C97D6788529@DB7PR01MB5195.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ckmyn0fXVF8uGY6+mY3YKzgmybAUVSkl+siCbM464/g6BcEgOo2cZ0vlP8IlV4V8NexRMfxInoaP5eNwB4spUbgfM/dXOShbIblvsmBjJHpuFQikBShGmiPoJZYDIUf6/wn2IaWEHGp9HTGjcMbX4V1mFxJfbdkY3AYhyIO2MuuBxG9Lnq1gMBPiK6Xn26E88Eu8zcwNO7uKSQ/BcGCtYnfJxDP8+UshKAXz0v4XhhMppXiU/mXP4fJEQH1WvWvmrgADQU4V8998uTKlHl8wLl2/H8kMs7Z7PossBFsZdTgyDWILd0ePc7zcfYM7acv8CP4fue+3/J+ltYWH5wAxFms6BB++iotJvcWxhV5YRQLk1K/KLaRcMY3fIkcrJqob0LaUpDEMFcM6bS/zztxfJfoSmABiBOWgJHz8otUWNInpd9RzarhLWBg+DhSNISginPVGTpL/bUiXOJuynRxmPkvpSZrrOsE29bisW691sdHLsGww/lj/48i1EoS21fODXoSx7KxD2A8P2xIvQiKVMNiwfaOfcwQquiDtMTEoNra3NERE8iw9GJeW4CjXDvuFL/yIJjm8gVa5Ha3sNBWHnOoBaifBXmzEwNw4difu+hE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0102MB2630.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(396003)(376002)(366004)(39830400003)(76116006)(478600001)(26005)(6506007)(66556008)(83380400001)(64756008)(33656002)(66446008)(7696005)(66476007)(53546011)(66946007)(71200400001)(8936002)(30864003)(52536014)(110136005)(5660300002)(122000001)(2906002)(9686003)(186003)(86362001)(4326008)(316002)(38100700002)(8676002)(55016002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?zfnT3fbvyCCm7FE67LUL/zddsrPQ1tOcS7Ay+J5vOVjmA4It8whtwmnFU1?=
 =?iso-8859-1?Q?A3ZNDkK9ziCoB0A0DdawOr5+lydSXTn7IbVjsJnoFqvjmhly77fQS8MzFp?=
 =?iso-8859-1?Q?R1tUj3AheikZk1fOykpUIzCJh+o6PmYdo2EXBfZE1hNkWexcw8mVErpkLe?=
 =?iso-8859-1?Q?kGtTa11WBdzZlXg43iygSwtB5bssvzJmw2ugDjMGrGwC3sCuciy9QMEMvv?=
 =?iso-8859-1?Q?/AdeQ1h5uV/uAPLsE3FTzJqFvW4DEZ87KU4GQdRh6rt20Pu58HWEacw21h?=
 =?iso-8859-1?Q?PzL7txcY7JjPBJ3Diw4A60yBZsZy2WBBxdAHbNlJrDrq36ucyYH3wBAjja?=
 =?iso-8859-1?Q?AhzgDOsOaZGvB6YWvWUJJTfzc8WIDu3Tn2rP4wHnwfotN6bLHS8Y1kN0I6?=
 =?iso-8859-1?Q?IBMRl3PeXveaFfLsXIkEkkujKa/jyFZTlv0KHZ87XDJ+8INZad3zSDasQR?=
 =?iso-8859-1?Q?FRQ4Fxpc/8m6J+D0Dc1hKxc/giZkiTWIKAA0WUQfTzaoAuB8wEseZaW8I5?=
 =?iso-8859-1?Q?iK2r3yrMVE/Zoo+7DJ5pMHpP22A1TMW3AjoFuZsA8RGgNU4FNcYTUicOR7?=
 =?iso-8859-1?Q?NwzQk8NWhmi5nb1nkUM0svPtO2iHmEsv8uEiLfR6yuzltcHu9BgEasDnT2?=
 =?iso-8859-1?Q?r/6DIq5GtZd4Bfoy2+vZXyQ89wfFxAKDmoQAGK9IML/eRlJou6wp7xw77w?=
 =?iso-8859-1?Q?Zv8XgNrufxbN0gBqCngnshGle9Q0N3SFY6oylbBmBpqx5fADtVraAWAaim?=
 =?iso-8859-1?Q?Wd0GeQyaF3KIuYK7RJ4o1HMkvq1+Mq6TU+iJuh8uDJCJnazS7ip+gLBF9/?=
 =?iso-8859-1?Q?k/8aUpa1eKaTAOWIN++mOHv3Q+6sKY5me1ZtQPzJe1Yl2Bv0Zy/iysf/2E?=
 =?iso-8859-1?Q?gNMcv5s8RFlfwVJuP/o4iv2d7BJ9K85xrEp4bGeSxxIm7fPp8dwCekVdfm?=
 =?iso-8859-1?Q?8qAklPh68YX52FjzOK9M0i2QVnLB8qMclJXulYzD/tZRY8o8f1dRFWtwut?=
 =?iso-8859-1?Q?Vn/vZG1GmDbmCTbVtQ10yfRV+KT0dZ2CiA0qalW6uQZHEteXbZTontJbV1?=
 =?iso-8859-1?Q?5C9qsqxZ25r3ExYBf0tMsEZcZrdmKFc67NvsRcVmjRX5PAhDdPX0jixTpd?=
 =?iso-8859-1?Q?uq5T920EWZdnGxaeG9P1t9IbkCYniswQ/KP33Resw71+mIALfadojttIeT?=
 =?iso-8859-1?Q?Y059qgz7YAKGyHkZ0O0Fu2e3aUi5Pb+fBQ3+5TXWLlJQ81z62mF93gsbMN?=
 =?iso-8859-1?Q?sVti7y6zUAwcIf+vWZEuqMsm9cnePG6RG1XItvpkoMo2+03r8gVWSArxWt?=
 =?iso-8859-1?Q?sD+EnDzjMrbe+qxCv518uwYTYl6DDKYefRTc/zuJkFg9VPel0PsBlxNLN8?=
 =?iso-8859-1?Q?gSeJblEnmX?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c59148b-ca98-4322-165f-08d915745f14
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 18:33:00.3708
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jB8bnc2YontSjM6nY6WqIKf74SjiZB2lCRSTRgBSX0kf+7YSwNrec9oqcm2zEC4omunQzqkfWRaZ7Yrh+QmKt5nxsv7Q3nuKdHbsPVrgVE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR01MB5195
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Bruce Ashfield via lists.yoctoproject.org
> Sent: 12 May 2021 16:25
> To: Yann Dirson <yann.dirson@blade-group.com>
> Cc: Yocto discussion list <yocto@yoctoproject.org>
> Subject: Re: [yocto] Understanding kernel patching in linux-yocto
>=20
> On Wed, May 12, 2021 at 10:07 AM Yann Dirson
> <yann.dirson@blade-group.com> wrote:
> >
> > Thanks for those clarifications!
> >
> > Some additional questions below
> >
> > Le mer. 12 mai 2021 =E0 15:19, Bruce Ashfield <bruce.ashfield@gmail.com=
> a
> =E9crit :
> > >
> > > On Wed, May 12, 2021 at 7:14 AM Yann Dirson <yann.dirson@blade-
> group.com> wrote:
> > > >
> > > > I am currently working on a kmeta BSP for the rockchip-based NanoPI
> M4
> > > > [1], and I'm wondering how I should be providing kernel patches, as
> > > > just add ing "patch" directives in the .scc does not get them appli=
ed
> > > > unless the particular .scc gets included in KERNEL_FEATURES (see [2=
]).
> > > >
> > > > From an old thread [3] I understand that the patches from the stand=
ard
> > > > kmeta snippets are already applied to the tree, and that to get the
> > > > patches from my BSP I'd need to reference it explicitly in SRC_URI
> > > > (along with using "nopatch" in the right places to avoid the
> > > > already-applied patches to get applied twice).
> > > >
> > > > I have the feeling that I'm lacking the rationale behind this, and
> > > > would need to understand this better to make things right in this B=
SP.
> > > > Especially:
> > > > - at first sight, having the patches both applied to linux-yocto an=
d
> > > > referenced in yocto-kernel-cache just to be skipped on parsing look=
s
> > > > like both information duplication and parsing of unused lines
> > >
> > > At least some of this is mentioned in the advanced section of the
> > > kernel-dev manual, but I can summarize/reword things here, and
> > > I'm also doing a presentation related to this in the Yocto summit at
> > > the end of this month.
> > >
> > > The big thing to remember, is that the configuration and changes
> > > you see in that repository, are not only for yocto purposes. The
> > > concepts and structure pre-date when they were first brought in
> > > to generate reference kernels over 10 years ago (the implementation
> > > has changed, but the concepts are still the same). To this day,
> > > there still are cases that they are used with just a kernel tree and
> > > cross toolchain.
> > >
> > > With that in mind, the meta-data is used for many different things
> > >
> > >  - It organizes patches / features and their configuration into
> > >    reusable blocks. At the same time documenting the changes
> > >    that we have applied to a tree
> > >  - It makes those patches and configuration blocks available to
> > >    other kernel trees (for whatever reason).
> > >  - It configures the tree during the build process, reusing both
> > >    configuration only and patch + configuration blocks
> >
> > >  - It is used to generate a history clean tree from scratch for
> > >    each new supported kernel. Which is what I do when creating
> > >    new linux-yocto-dev references, and the new <version>/standard/*
> > >    branches in linux-yocto.
> >
> > I'd think (and I take your further remarks about workflow as confirming
> > this), that when upgrading the kernel the best tool would be git-rebase=
.
> > Then, regenerating the linux-yocto branches would only be a akin to a
> > check that the metadata is in sync with the new tree you rebased ?
>=20
> The best of anything is a matter of opinion. I heavily use git-rebase and
> sure, you could use it to do something similar here. But the result is
> the same. There's still heavy use of quilt in kernel circles. Workflows
> don't change easily, and as long as they work for the maintainer, they
> tend to stay put. Asking someone to change their workflow, rarely goes
> over well.
>=20
> >
> > If that conclusion is correct, wouldn't it be possible to avoid using t=
he
> > linux-yocto branches directly, and let all the patches be applied at
> > do_patch time ?  That would be much more similar to the standard
> > package workflow (and thus lower the barrier for approaching the
> > kernel packages).
>=20
> That's something we did in the past, and sure, you can do anything.
> But patching hundreds of changes at build time means constant
> failures .. again, I've been there and done that. We use similar patches
> in many different contexts and optional stackings. You simply cannot
> maintain them and stay sane by whacking patches onto the SRC_URI.
> The last impression you want when someone builds your kernel is that
> they can't even get past the patch phase.  So that's a hard no, to how
> the reference kernels are maintained (and that hard no has been around
> for 11 years now).
>=20
> Also, we maintain contributed reference BSPs in that same tree, that
> are yanking in SDKs from vendors, etc, they are in the thousands of
> patches. So you need the tree and the BSP branches to support that.
>=20
> >
> >
> > > So why not just drop all the patches in the SRC_URI ? Been there,
> > > done that. It fails spectacularly when you are managing queues of
> > > hundreds of potentially conflicting patches (rt, yaffs, aufs, ... etc=
, etc)
> > > and then attempting to constantly merge -stable and other kernel
> > > trees into the repository. git is the tool for managing that, not sta=
cks
> > > of patches. You spend your entire life fixing patch errors and refres=
hing
> > > fuzz (again, been there, done that).
> > >
> > > So why not just keep a history and constantly merge new versions
> > > into it ? Been there, done that. You end up with an absolute garbage
> > > history of octopus merges and changes that are completely hidden,
> > > non-obvious and useless for collaborating with other kernel projects.
> > > Try merging a new kernel version into those same big features, it's
> > > nearly impossible and you have a franken-kernel that you end up tryin=
g
> > > to support and fix yourself. All the bugs are yours and yours alone.
> > >
> > > So that's why there's a repository that tracks the patches and the
> > > configuration and is used for multiple purposes. Keeping the patches
> > > and config blocks separate would just lead to even more errors as
> > > I update one and forget the other, etc, etc. There have been various
> > > incarnations of the tools that also did different things with the pat=
ches,
> > > and they weren't skipped, but detected as applied or not on-the-fly,
> > > so there are other historical reasons for the structure as well.
> > >
> > > > - kernel-yocto.bbclass does its own generic job of locating a prope=
r
> > > > BSP using the KMACHINE/KTYPE/KARCH tags in BSP, it looks like
> > > > specifying a specific BSP file would just defeat of this: how shoul=
d I
> > > > deal with this case where I'm providing both "standard" and "tiny"
> > > > KTYPE's ?
> > >
> > > I'm not quite following the question here, so I can try to answer bad=
ly
> > > and you can clarify based on my terrible answer.
> >
> > The answer is indeed quite useful for a question that may not be that c=
lear
> :)
> >
> > > The tools can locate your "bsp entry point" / "bsp definition" in
> > > your layer. Either provided by something on the SRC_URI or something
> > > in a kmeta repository (also specified on the SRC_URI).  Since
> > > both of those are added to the search paths they check. Those
> > > are just .scc files with a specified KMACHINE/KTYPE that match, and
> > > as you could guess from my first term I used, they are the entry
> > > point into building the configuration queue.
> > >
> > > That's where you start inheriting the base configuration(s) and inclu=
ding
> > > feature blocks, etc. Those definitions are exactly the same as the
> > > internal ones in the kernel-cache repository. By default, that locate=
d
> > > BSP definition is excluded from inheriting patches .. because as you
> > > noted, it would start trying to re-apply changes to the tree. It is t=
here
> > > to get the configuration blocks, patches come in via other feature
> > > blocks or directly on the SRC_URI.
> > >
> > > So in your case, just provide the two .scc file with the proper
> > > defines so they can be located, and you'll get the proper branch
> > > located in the tree, and the base configurations picked up for those
> > > kernel types.  You'd supply your BSP specific config by making
> > > a common file and including it in both definitions, and patches by
> > > a KERNEL_FEATURE variable or by specifying them directly on
> > > the SRC_URI (via .patch or via a different .scc file).
> >
> > That's what I was experimenting with at the same time, and something li=
ke
> > this does indeed produce the expected output:
> >
> > KERNEL_FEATURES_append =3D " bsp/rockchip/nanopi-m4-
> ${LINUX_KERNEL_TYPE}.scc"
> >
> > However, it seems confusing, as that .scc is precisely the one that's
> > already selected
> > and used for the .cfg: it really looks like we're overriding the
> > default "bsp entry point"
> > with a value that's already the default, but with a different result.
>=20
> Yes, that's one way that we've structured things as the tools evolved
> to balance external BSP definitions being able to pull in the base
> configuration but not patches. There are two runs of the tools, one looks
> for patches (and excludes that bsp entry point) and one that builds the
> config.queue (and uses the entry point). That's the balance of the multi
> use nature of the configuration blocks. I could bury something deeper
> in the tools to hide a bit of that, but it will break uses cases and time
> has shown that it is brittle.
>=20
> >
> > So my gut feeling ATM is that everything should be much more clear if
> > specifying the default entry point would have the same effect as leavin=
g
> > the default be used, ie. having patches be applied in both cases.
> >
>=20
> The variable KMETA_EXTERNAL_BSPS was created as a knob to
> allow an external definition to both be used for patches AND configuratio=
n.
> But that is for fully exernal BSPs that do not include the base kernel
> meta-data, since once you turn that on, you are getting all the patches
> and all the configuration .. and will have the patches applied twice.
>=20

For what its worth I am using KMETA_EXTERNAL_BSPS in a BSP definition file =
in an in-recipe kernel metadata tree (but I guess it could be off recipe to=
o), and that metadata tree includes scc files from yocto-kernel-cache, the =
trick is to add the nopatch tag when including scc files from yocto-kernel-=
cache for which do not want or need the patches.

With KMETA_EXTERNAL_BSPS was added I switched to that and removed the equiv=
alent of your
KERNEL_FEATURES_append =3D " bsp/rockchip/nanopi-m4-${LINUX_KERNEL_TYPE}.sc=
c"
that is kind of confusing and includes things twice.

--=20
Diego Santa Cruz, PhD
Technology Architect
spinetix.com


