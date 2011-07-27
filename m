Return-Path: <John_Cherry@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 920AA4C80AA7
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 09:33:56 -0500 (CDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1Qm5BK-0002Mw-CI from John_Cherry@mentor.com ;
	Wed, 27 Jul 2011 07:33:54 -0700
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 27 Jul 2011 07:31:05 -0700
Received: from NA-MBX-02.mgc.mentorg.com ([169.254.2.166]) by
	SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) with mapi id
	14.01.0289.001; Wed, 27 Jul 2011 07:33:54 -0700
From: "Cherry, John" <John_Cherry@mentor.com>
To: Tom Zanussi <tom.zanussi@intel.com>, Kumar Gala <galak@kernel.crashing.org>
Thread-Topic: [yocto] Additional / new BSP collection?
Thread-Index: AQHMTB0XWUDdVa3EM0GQg97mBURWQJUAUFEAgABBdwCAABOWAIAAAOaAgAADq4D//5HfcA==
Date: Wed, 27 Jul 2011 14:33:52 +0000
Message-ID: <43AE86686954984BA6E949465D98484003BE7A@NA-MBX-02.mgc.mentorg.com>
References: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>
	<1311756356.2344.332.camel@rex>
	<66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
	<1311774620.3739.49.camel@elmorro>
	<05457C84-88D1-4D72-99B2-A750AFD52895@kernel.crashing.org>
	<1311775601.3739.57.camel@elmorro>
In-Reply-To: <1311775601.3739.57.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.34.91.1]
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Jul 2011 14:31:05.0796 (UTC)
	FILETIME=[D18E9040:01CC4C69]
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Additional / new BSP collection?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Jul 2011 14:33:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Tom Zanussi
> Sent: Wednesday, July 27, 2011 7:07 AM
> To: Kumar Gala
> Cc: Yocto discussion list
> Subject: Re: [yocto] Additional / new BSP collection?
>=20
> On Wed, 2011-07-27 at 06:53 -0700, Kumar Gala wrote:
> > On Jul 27, 2011, at 8:50 AM, Tom Zanussi wrote:
> >
> > > Hi Kumar,
> > >
> > > For meta-intel, it's pretty simple and is summarized by this blurb
> from
> > > the meta-intel MAINTAINERS file:
> > >
> > > "Please submit any patches against meta-intel BSPs to the Yocto
> mailing
> > > list (yocto@yoctoproject.org)."
> > >
> > > Basically, new patches get submitted to the mailing list, go
> through the
> > > standard on-list comment and review process, and then get pulled
> into
> > > master by whoever maintains the BSP when everything looks good.
> > >
> > > Hope that helps,
> > >
> > > Tom
> >
> > Ok, same model would work for meta-fsl-ppc.  The one question I have
> is if it make sense to migrate such patches over to 'yocto-
> bsp@yoctoproject.org' list.
> >
>=20
> Hmm, I completely forgot about that list, and apparently everybody else
> has too (no messages in it).  It's also not linked to from anywhere on
> the Yocto site that I can see e.g. Community | Mailing Lists.

I think the yocto-bsp list was set up in anticipation of a BSP special inte=
rest group.  As far as I know, it is not being used yet.

>=20
> Personally I'd prefer less fragmentation of lists, and think it would
> get better review and exposure on the yocto list, but if it makes more
> sense to people to start using the yocto-bsp list, fine with me...
>=20
> Tom
>=20
> > - k
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

