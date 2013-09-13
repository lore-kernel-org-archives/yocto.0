Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50C70E0155F
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 03:51:54 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Sep 2013 03:51:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,897,1371106800"; d="scan'208";a="359980385"
Received: from unknown (HELO helios.localnet) ([10.252.123.177])
	by azsmga001.ch.intel.com with ESMTP; 13 Sep 2013 03:51:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Fri, 13 Sep 2013 11:51:51 +0100
Message-ID: <2174378.xcOqzV6t6C@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFyqS9qE1HRBkjDfnzMaz=pac4B1yUon-9QpJdmEqkznVn3kkQ@mail.gmail.com>
References: <E51394554A503C4E852F9BEE46B03E8DEFDB66@TI-ODIN.tasernet.com>
	<22610256.9HCK7tef9Y@helios>
	<CAFyqS9qE1HRBkjDfnzMaz=pac4B1yUon-9QpJdmEqkznVn3kkQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Chris Larson <clarson@kergoth.com>
Subject: Re: Bitbake on live (uncommitted) code
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
X-List-Received-Date: Fri, 13 Sep 2013 10:51:55 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Hans,

On Friday 13 September 2013 12:04:48 Hans Beck=E9rus wrote:
> On Fri, Sep 13, 2013 at 11:55 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Thursday 12 September 2013 17:23:53 Chris Larson wrote:
> >> On Thu, Sep 12, 2013 at 4:53 PM, Brad Litterell <brad@evidence.com=
>=20
wrote:
> >> > I've grown to really appreciate bitbake for compiling code from =
a
> >> > myriad
> >> > of sources, however, what is the recommended course for source I=
 am
> >> > currently doing live development on?  My code base lives in a co=
uple of
> >> > git
> >> > repos that do NOT map one-to-one with recipes and I don't really=
 want
> >> > to
> >> > store the source mixed in with the recipe meta data anyway, nor =
do I
> >> > want
> >> > to be forced to commit it to git just to do a build.
> >> >=20
> >> >  Currently I run a pre-bitbake script that creates a tarball out=
 of the
> >> >=20
> >> > source, but that is easy to forget and makes building a new imag=
e a two
> >> > step proces.  Since it is a build step I'd like it to be done by=

> >> > bitbake.
> >> >=20
> >> >  Is there a recommended way to go about this?
> >>=20
> >> See externalsrc.bbclass.
> >=20
> > Also the manual section that talks about using it:
> >=20
> > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html=
#buildi
> > ng-software-from-an-external-source
>
> Does this in any way replace the use of the SDK toolchain? Since that=

> is what I would be using (and am using) for external development. We
> only use bitbake for the integration stages (pkg upgrades/rootfs/SDK
> builds etc.).
> After a package works and is in some sort of ready state we add it to=

> a git repo and write a recipe for it. Maybe that is an alternative
> too?

It's just another tool you can use for development if you already have =
a=20
recipe for the software you're developing, or are going to write one. A=
s I=20
mentioned in another thread, the SDK is mostly there to help developers=
 who=20
want to do their application development without the need to interact w=
ith the=20
tool that builds the entire OS (possibly instead from within an IDE).

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

