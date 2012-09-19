Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A63FE004AB
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 09:14:17 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 19 Sep 2012 09:14:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,450,1344236400"; d="scan'208";a="146784269"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Sep 2012 09:14:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.60]) with mapi id
	14.01.0355.002; Wed, 19 Sep 2012 09:14:16 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Brian Lloyd <blloyd@familyhonor.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] All incompassing documentation
Thread-Index: AQHNlc1weI4cLngko0+IsNbB//ff9ZeQ6pKAgACWPwCAAMYEAP//jydw
Date: Wed, 19 Sep 2012 16:14:16 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A68BC8@ORSMSX101.amr.corp.intel.com>
References: <1347992629.1943.38.camel@omclinuxballt.devnet.ordermatic.net>
	<CAHUNapR0dfujrEWTysBPcnsGNj0r=Lkp72NSTM5oArEbyYGV=g@mail.gmail.com>
	<CA+YB3rY7Uj+_F=y=p6TEo27yBiN52Lg2YdWf_6LFb5dndvR3Qw@mail.gmail.com>
	<1348069852.1829.20.camel@omclinuxballt.devnet.ordermatic.net>
In-Reply-To: <1348069852.1829.20.camel@omclinuxballt.devnet.ordermatic.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: All incompassing documentation
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
X-List-Received-Date: Wed, 19 Sep 2012 16:14:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

These are all great points and we can adjust the manual set to use proper f=
orms of the term.  We do have a "Terms" section and can add a clear definit=
ion of the term there.  Then, throughout the docs as the term is used it ca=
n be linked back to the definition.  Once we settle on the primary use I ca=
n go forward with that.  Regarding an index - Indices are great and the set=
 should have one. This needs to be a "to do" item for the set.  I have writ=
ten many indices and a good index takes a lot of effort.  Case in point - t=
here are documentation specialists that limit their work exclusively to cre=
ating indices.

Good feedback!

Thanks,
Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Brian Lloyd
Sent: Wednesday, September 19, 2012 8:51 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] All incompassing documentation

I would like to point out Yocto's own documentation uses it for two
separate items, which is the point I was making.  Neither of which are
source tarballs....


It is a product produced by Yocto.
It is the items to be installed from the host system.


That may be right, but if so, we can't say that for Yocto it only means
the first, as we use it for the second as well.  If we want it to only
be the first, then we must use a different term for the second, such as
host applications, and the user should be notified of the unusual word
choice and why early in the documentation.  I believe there are several
locations where terms are explained already in the documentation, even
if we later use the term in a way other than that identified as it's
meaning (3.4. Yocto Project Terms comes to mind).  Discussing Package
meaning there, perhaps we should identify the term that will be used for
host package, or how we will identify when the term is used with a
different meaning than the one just given.


Or if we concede that packages is what the user expects to see when
discussing what to install, we need to disambiguate in some way to
differentiate the two uses.  Indexes are good at this.  The biggest
advantage to an index over straight search is that author's can use
context to differentiate the different uses when a word has them.
Another option could be prepending to both the context at each location
used, so we use Yocto package and host package or where we always prefix
context to one of the two for every use.  However, doing only one with a
context makes for more manual searches, where we are making a document
with the goal of making searching for information more effective.


On Tue, 2012-09-18 at 21:02 -0700, Jeff Osier-Mixon wrote:
> <snipped>
>=20
> On Tue, Sep 18, 2012 at 12:04 PM, Trevor Woerner <twoerner@gmail.com> wro=
te:
> > On Tue, Sep 18, 2012 at 2:23 PM, Brian Lloyd <blloyd@familyhonor.net> w=
rote:
> >> Most of my hits for such an item
> >> discuss the packages I will need to install in my host distribution so=
 I
> >> can use the yocto project (not surprised, the danger of a term as vagu=
e
> >> as packages).
> >
> > In bitbake/yocto/OE/etc. the term "packages" is not vague and has a
> > very specific meaning: bitbake processes recipes to produce one or
> > more packages. Some of these packages are then assembled into an
>=20
> This is quite true - but the term itself is overloaded. I have often
> heard "package" referred to also as the collection of source code one
> would use to create a given piece of software, e.g. "the busybox
> package". This is no doubt the result of downloading numerous
> "packages" from the net in binary form rather than source. It doesn't
> help that there are "source packages" in the RPM world
> (http://www.rpm.org/max-rpm/s1-rpm-miscellania-srpms.html) and in the
> Debian world (http://www.debian.org/doc/manuals/apt-howto/ch-sourcehandli=
ng.en.html),
> so the confusion is natural.
>=20
> In OE-based systems like the Yocto Project, the term refers to the
> results of a build rather than the ingredients. I agree with you that
> we should continue to push the correct usage to unload the term.
> Anyone have a good term for "source packages"?
>=20


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

