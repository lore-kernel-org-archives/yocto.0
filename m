Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19C8FE00A16; Thu, 25 Aug 2016 21:25:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1BB1E00A16;
	Thu, 25 Aug 2016 21:25:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 25 Aug 2016 21:25:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,579,1464678000"; d="scan'208";a="1041726450"
Received: from alee19-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.153.55])
	by orsmga002.jf.intel.com with ESMTP; 25 Aug 2016 21:25:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Halstead <michael@yoctoproject.org>
Date: Thu, 25 Aug 2016 21:25 -0700
Message-ID: <3949264.c7xyDP8xx9@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.6-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CALbNGRQCiSe317HT8es4NjWhjOFiyr-nB2AcMWBoUR3MxKU8aA@mail.gmail.com>
References: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
	<1719889.ALCIjRXcpG@peggleto-mobl.ger.corp.intel.com>
	<CALbNGRQCiSe317HT8es4NjWhjOFiyr-nB2AcMWBoUR3MxKU8aA@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded Metadata: Recipe update broken
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
X-List-Received-Date: Fri, 26 Aug 2016 04:25:10 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Thu, 25 Aug 2016 18:14:23 Andreas M=FCller wrote:
> On Wed, Jul 13, 2016 at 6:00 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Fri, 19 Feb 2016 08:05:09 Andreas M=FCller wrote:
> >> On Wed, Feb 3, 2016 at 9:06 PM, Andreas M=FCller
> >> <schnitzeltony@googlemail.com> wrote:
> >> > On Wed, Feb 3, 2016 at 8:10 PM, Paul Eggleton
> >> >=20
> >> > <paul.eggleton@linux.intel.com> wrote:
> >> >> On Wed, 03 Feb 2016 14:41:42 Andreas M=FCller wrote:
> >> >>> FAQ for layerindex says recipes are updated every 3 hours but =
I think
> >> >>> it does not work. E.g meta-oe geis/grail/frame are not mention=
ed but
> >> >>> were committed few days ago.
> >> >>=20
> >> >> I do know there's a problem, but I'm honestly not sure what's c=
ausing
> >> >> it.
> >> >> Unfortunately I don't have time to dig into it now but let me s=
ee if I
> >> >> can resync meta-oe at least.
> >> >=20
> >> > No need for manual update - it was just a heads up. I was not su=
re
> >> > that it is a known issue.
> >>=20
> >> I checked in history:
> >>=20
> >> meta-openwrt added 4 weeks ago is the last layer for that was
> >> analyzed. meta-cpan and all published after that were not analysed=

> >> anymore - they are reported having no recipes.
> >>=20
> >> As this is a strong tool I have at daily use: Is there something I=
 can
> >> do to get this working again?
> >=20
> > So, it was a long time coming, but I finally figured out what was g=
oing
> > wrong at least for some cases - basically, newer versions of GitPyt=
hon
> > actually recognise renamed files instead of treating them as an add=
 and a
> > delete, but since I didn't know about this change I didn't fix the =
layer
> > index code to accommodate this. With the recent layer index upgrade=
 to
> > support Python 3 for master, the fix for this issue was also applie=
d, and
> > each layer is also now parsed in a separate subprocess which should=

> > finally take care of memory leaks and any other rubbish being left =
behind
> > affecting parsing of subsequent layers. Hopefully we shouldn't see =
any
> > more of this type of problem again (aside from actually broken meta=
data)
> > but as always please do let me know if you see anything strange.
>=20
> seems layer list update is broken again e.g I am committing on
> meta-qt5-extra regularly but last commit reported is one month ago.

Michael, I'm still not receiving any layer index update script emails. =
Is=20
there a way we can fix that so I can see what might be going wrong?

Thanks,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

