Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 698FAE009C2; Tue, 17 Jan 2017 14:21:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96773E009C2;
	Tue, 17 Jan 2017 14:21:34 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 17 Jan 2017 14:21:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,246,1477983600"; d="scan'208";a="810086875"
Received: from jayyinch-mobl6.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.188.18])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Jan 2017 14:21:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andreas =?ISO-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Date: Wed, 18 Jan 2017 11:21:30 +1300
Message-ID: <70703025.YBBEieGfxA@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CALbNGRRq8iODPF=vFXZk6wrtKr-szExdL2wazEZGHMZUbXYbCQ@mail.gmail.com>
References: <CALbNGRTer2zeMMwEfjUVsBtw7X2Xxc4STGvA3YmO1CniWsvEqA@mail.gmail.com>
	<2102802.MZXjXepLX7@peggleto-mobl.ger.corp.intel.com>
	<CALbNGRRq8iODPF=vFXZk6wrtKr-szExdL2wazEZGHMZUbXYbCQ@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Openembedded layer index stopped updating
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
X-List-Received-Date: Tue, 17 Jan 2017 22:21:45 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Fri, 13 Jan 2017 11:02:20 Andreas M=FCller wrote:
> On Fri, Jan 13, 2017 at 9:55 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Fri, 13 Jan 2017 08:56:47 Andreas M=FCller wrote:
> >> again me... sorry but I use index regularly to check if somebody e=
lse
> >> already created a recipe I am interested in.
> >>=20
> >> I think it was caused by maintenance changes.
> >=20
> > You're right, we have just done an upgrade and as a result we are
> > currently dealing with an issue updating the index, as yet I don't =
know
> > what has caused it exactly because we aren't actually seeing any er=
rors -
> > the update process only manages to update some of the layers before=
 it
> > stalls and then eventually gets killed. We're working on it, apolog=
ies for
> > the inconvenience.
>
> Thanks and there is no inconvenience - was just a ping

FYI everything should be back to a working state now. I'll send a separ=
ate=20
email describing recent enhancements.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

