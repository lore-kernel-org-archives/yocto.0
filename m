Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53F22E007B5; Wed, 24 Feb 2016 10:09:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7366E00720
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 10:09:54 -0800 (PST)
Received: from poczta.nazwa.pl (unknown [10.252.0.18])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 0BEF6382FDD;
	Wed, 24 Feb 2016 19:09:52 +0100 (CET)
Date: Wed, 24 Feb 2016 19:09:51 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org, GUEYTAT Julien <j.gueytat@cdssoft.studiel.fr>
Message-ID: <842448969.279694.ea828785-f98d-49f8-b462-023ff7545478.open-xchange@poczta.nazwa.pl>
In-Reply-To: <56CDD400.8090805@linux.intel.com>
References: <EC7BC1CD2E085743BB2AE634252C39C171A8EE@server.exchange.local>
	<CAMKF1srvkpRBAQHfuPPTLdFtZEaRHNDeL39kWP-RqEWqJFcHbg@mail.gmail.com>
	<56CDD400.8090805@linux.intel.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.0-Rev20
X-Originating-Client: com.openexchange.ox.gui.dhtml
Subject: Re: : git tag and PV variable
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
X-List-Received-Date: Wed, 24 Feb 2016 18:09:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


> Dnia 24 luty 2016 o 17:02 Alexander Kanavin
> <alexander.kanavin@linux.intel.com> napisa=C5=82(a):
>
>
> On 02/24/2016 05:35 PM, Khem Raj wrote:
> >
> > I have this command in my qmake pro files:____
> >
> > VERSION =3D $$system(git describe --abbrev=3D0 --tags)____
> >
> > __ __
> >
> > I would like to have the package manager follow the tag versioning.____
> >
> > __ __
> >
> > Which means I would like to have something like:____
> >
> > PV =3D "git describe --abbrev=3D0 --tags"____
> >
> > SRC_URI =3D "${STUDIEL_GIT}/core.git;protocol=3Dfile;tag=3D${PV}"____
> >
> > __ __
> >
> > It does not work for sure. What is the correct way to do this ?
> >
> >
> > =E2=80=8BSRC_URI is required by fetcher and there is nothing to git des=
cribe
> > before it is fetched.=E2=80=8B
> > so thats your problem.
>
> It's possible however to write an external script that updates the PV
> version in the recipe, but it needs to be run outside of bitbake.
>

I actually wrote a class for this that works with externalsrc git
packages. The idea was to replicate the functionality of gitpkgv but for
external sources. The code is here:
https://github.com/open-rnd/meta-openrnd/blob/master/classes/externalgitsrc=
.bbclass

You just `inherit externalgitsrc` and it will set EXTERNALSRC_GIT_SRCREV
and EXTERNALSRC_GITPKGV.

--
Maciej Borz=C4=99cki
Senior Software Engineer at Open-RnD Sp. z o.o.
www.open-rnd.pl, Facebook, Twitter

