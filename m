Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB5D3E00C4C; Tue, 17 Jun 2014 09:47:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EFDEE00B78
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 09:47:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Jun 2014 09:42:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,495,1400050800"; d="scan'208";a="529921732"
Received: from garethcl-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.19])
	by orsmga001.jf.intel.com with ESMTP; 17 Jun 2014 09:46:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 17 Jun 2014 17:46:49 +0100
Message-ID: <1620545.PMXsL8JdT4@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.6-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CAF_dkJDCDGLsYFDWJgOaXZwkiRLFE8XSkLAT-Knx-eX_qbH7tA@mail.gmail.com>
References: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>
	<2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>
	<CAF_dkJDCDGLsYFDWJgOaXZwkiRLFE8XSkLAT-Knx-eX_qbH7tA@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [dora] x264: Update SRCREV to match commit in upstream git repo
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
X-List-Received-Date: Tue, 17 Jun 2014 16:47:59 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Tuesday 17 June 2014 11:31:52 Patrick Doyle wrote:
> Thanks Paul,
> I hope I didn't step on any toes with this. =20

No, not at all; I just wanted to let you know we are working on the iss=
ue.

> I'm still confused about what parts of the project are "Yocto" and=20=

> what parts are "OE".

Right, I know it's not as clear as it could be sometimes. At least for=20=

patches, FYI we did put some "where to send patches" information in the=
 README=20
file within the Poky repository. (We're certainly open to suggestions o=
n making=20
the process easier, be it from a documentation, tooling or process angl=
e.)
=20
> Do you have any guesses as to when this might show up in the official=

> dora branch?

So Robert is the dora branch maintainer and he's replied separately; it=
 should=20
be fairly quick now that he's aware of it.

> I am asking because we have a development flow here (I'm still not
> sure I'm 100% happy with it, but it's what we've got), where we mirro=
r
> the poky repository, check out from that mirror very occasionally, an=
d
> generate a complete-from-scratch even more occasionally.
> Unfortunately, we have a situation right now where, if somebody were
> to do that (say, hypothetically speaking, a new person joins the
> team), we can't generate a complete build from scratch.  I could appl=
y
> my patch to our local mirror, and thus break the mirror.  Or I could
> create a local clone of the mirror and reference our local clone.  Or=

> =E2=80=A6
>=20
> If this will show up in dora in a matter of hours to a day or so, I'm=

> going to stop thinking about this.  If it is anticipated that it will=

> take longer, then I'll come up with a solution.
>=20
> I'm not trying to complain nor advocate that this patch get applied
> faster than would be normal, I'm just trying to plan my day :-)

No problem - in this particular instance with x264 it was a bit of an=20=

unfortunate trifecta where the upstream project does not provide releas=
e=20
tarballs so we build directly from their git repository; they recently =
decided=20
to rewrite their git history without telling anyone, and we didn't noti=
ce=20
immediately because we don't build it on our autobuilder regularly (sin=
ce it=20
has LICENSE_FLAGS set). Even when we did know about it though, it's fai=
r to=20
say we have been a little slow to correct for it; hopefully we can get =
this=20
patch in soon and then it'll be taken care of, at least for the x264 re=
cipes=20
in master, daisy and dora.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

