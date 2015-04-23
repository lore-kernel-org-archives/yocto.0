Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B3B5E00998; Thu, 23 Apr 2015 02:26:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B034E00930
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 02:26:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 23 Apr 2015 02:26:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,629,1422950400"; d="scan'208";a="717977804"
Received: from kreynold-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.25.159])
	by orsmga002.jf.intel.com with ESMTP; 23 Apr 2015 02:26:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 23 Apr 2015 10:26:47 +0100
Message-ID: <6385599.IBx8fhKVvA@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <C4E8D5D0-DE13-4CA9-8B80-7291F39B3E29@gmail.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<3464582.nUN1vsFaMq@peggleto-mobl.ger.corp.intel.com>
	<C4E8D5D0-DE13-4CA9-8B80-7291F39B3E29@gmail.com>
MIME-Version: 1.0
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Thu, 23 Apr 2015 09:26:50 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Thursday 23 April 2015 02:05:49 Khem Raj wrote:
> > On Apr 23, 2015, at 1:45 AM, Paul Eggleton <paul.eggleton@linux.int=
el.com>
> > wrote:>=20
> > On Wednesday 22 April 2015 23:49:41 Khem Raj wrote:
> >>> On Apr 22, 2015, at 4:22 PM, Paul Eggleton
> >>> <paul.eggleton@linux.intel.com>
> >>> wrote:>
> >>>=20
> >>> On Wednesday 22 April 2015 20:51:08 Brian Karcz wrote:
> >>>> Thanks for pointing me to that. It sounds like exactly what I ne=
ed. I
> >>>> can't believe that I've not come across that in my searches. I s=
uppose
> >>>> its a matter of using the right search criteria.
> >>>=20
> >>> So I do want to mention one thing - we envisaged externalsrc more=
 for
> >>> situations where you temporarily want to build from an external s=
ource
> >>> tree (for example, when you're in the middle of development). The=

> >>> expectation is that when you reach production you switch over to =
a
> >>> standard repository
> >>> specified in SRC_URI. Having said that there aren't any actual ba=
rriers
> >>> to
> >>> using it on a more permanent basis as it sounds like you may  be
> >>> considering (although perhaps I've misunderstood.)
> >>=20
> >> Application development doesn=E2=80=99t end is what really happens=
, so developers
> >> will need to keep using something like this forever on a given
> >> application,
> >> and somehow externalsrc sounds temporary i.e. not included into re=
gular
> >> workflow.
> >=20
> > But does the source tree persist on one developer's machine? Or sho=
uld it
> > in fact be on a proper server in a repository of its own?
>=20
> its on a SCM as well. Developer checks it out himself or via a tool f=
or
> workspace management now you have two ways to build it. One w/o exter=
nalsrc
> which is common for system integrators but not much liked by develope=
rs.
> The other one is externalsrc which is well known method for developer=
s.

Right, yes - but is that a problem? In 1.8 with devtool making it easy =
to=20
switch in and out of "development" locally you ought to be able to get =
the=20
best of both worlds.

> >>>> 2) can the SRC_URI now be omitted in the recipe since there is n=
othing
> >>>> to fetch?
> >>>=20
> >>> You can leave it completely blank if you wish. In dizzy and earli=
er,
> >>> SRC_URI is effectively ignored with externalsrc. In master and th=
e
> >>> just-released fido release, any local file:// references will sti=
ll be
> >>> fetched if present, remote URIs will be ignored.
> >>=20
> >> Will they be just fetched or also applied to source tree like in
> >> non-externalsrc case. getting a  'prepared source tree' in an exte=
rnalsrc
> >> env is a big confusion point for developers where a given componen=
t is
> >> building totally fine and if one want to use externalsrc then deve=
loper
> >> needs to do =E2=80=98preparation of source tree=E2=80=99, so it se=
ems post 1.7 we have
> >> something inbetween solution ?
> >=20
> > They will be unpacked into the workdir as they would have been with=
out
> > externalsrc. They do not go into the source tree.
>=20
> hmm, it will then get my patches and put them in workdir, so then I s=
hould
> manually apply these patches I see that if i have any config files et=
c. (
> non-patch files) in SRC_URI ponting into local meta-data then they wi=
ll be
> available at WORKDIR location much like the case w/o externalsrc so t=
hats
> probably slight improvemnt

One thing I neglected to highlight was in 1.8, if you use devtool modif=
y -x,=20
it will apply the patches to for you when preparing the source tree.=20=

externalsrc doesn't do anything with them though so yes if you want to =
prepare=20
the source tree yourself you will need to apply any patches from the re=
cipe by=20
hand, but there is now an easier way to do that with devtool.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

