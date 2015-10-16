Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98383E00BC4; Fri, 16 Oct 2015 01:32:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 294D4E00B57
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 01:32:58 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 16 Oct 2015 01:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,688,1437462000"; d="scan'208";a="828352667"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.9.47])
	by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2015 01:32:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Carlos =?ISO-8859-1?Q?S=E1nchez?= de La Lama <csanchezdll@gmail.com>
Date: Fri, 16 Oct 2015 09:32:34 +0100
Message-ID: <1454654.gobRdKJqMp@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <7t4mhrw9db.fsf@gmail.com>
References: <7tvba8jf0e.fsf@gmail.com>
	<3362826.ZZ4Dx4hM6A@peggleto-mobl.ger.corp.intel.com>
	<7t4mhrw9db.fsf@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Package inclusion
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
X-List-Received-Date: Fri, 16 Oct 2015 08:32:59 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Friday 16 October 2015 09:38:56 Carlos S=E1nchez de La Lama wrote:
> Hi Paul,
>=20
> >> I have some doubts on how package inclusion in images is determine=
d. For
> >> example, when building core-image-base, I would say that both
> >>=20
> >> kernel-module-uvesafb
> >> kernel-module-input
> >>=20
> >> are recommended (through RRECOMENDS in packagegroup-base).
> >=20
> > I don't see a reference to kernel-module-uvesafb in packagegroup-ba=
se.
>=20
> You are right, my bad. I was examining several cases and I used the
> wrong one when writing the mail. I should have said
>=20
> kernel-module-nls-utf8 (which goes into the image)
> kernel-module-input (which does not make it to the image)
>=20
> and both appear in RRECOMENDS_packagegroup-base.
>=20
> > If you would like to analyse the package dependency tree for an ima=
ge one
> > way
> > that works is to use buildhistory:
> I checked the buildhistory (nice report, BTW), and I see
>=20
> "packagegroup-base" -> "kernel-module-nls-utf8" [style=3Ddotted];
>=20
> but not a trace of kernel-module-input. I do not understand why -inpu=
t
> gets a differnt handling than -nls-utf8. My guess is it gets excluded=

> somehow, but I have not found why/where.

You definitely have the kernel-module-input package created - right? Be=
cause=20
it's an RRECOMMENDS, that package can actually not be produced by the k=
ernel=20
(i.e. because the corresponding config option is 'y' or 'n' instead of =
'm').

Another much less likely possibility is that you have BAD_RECOMMENDATIO=
NS set=20
to include kernel-module-input. bitbake -e | grep ^BAD_RECOMMENDATIONS =
will=20
tell you if that is the case.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

