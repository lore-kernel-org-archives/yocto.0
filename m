Return-Path: <robert_joslyn@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 810FFE00C2E; Mon, 17 Jul 2017 11:13:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.117.214.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from valiant.selinc.com (valiant.selinc.com [74.117.214.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D013E00BC4
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 11:13:04 -0700 (PDT)
Received: from pps.filterd (valiant.selinc.com [127.0.0.1])
	by valiant.selinc.com (8.16.0.20/8.16.0.20) with SMTP id v6HIC35X018147;
	Mon, 17 Jul 2017 11:13:03 -0700
Received: from edison2.ad.selinc.com (mail.ad.selinc.com [10.100.0.115])
	by valiant.selinc.com with ESMTP id 2bqh56bbfg-1;
	Mon, 17 Jul 2017 11:13:03 -0700
Received: from robejoslpc.ad.selinc.com ([10.203.80.174])
	by edison2.ad.selinc.com (IBM Domino Release 9.0.1FP3 HF515)
	with ESMTP id 2017071711130298-248125 ;
	Mon, 17 Jul 2017 11:13:02 -0700 
Message-ID: <1500315183.18255.2.camel@selinc.com>
From: Robert Joslyn <robert_joslyn@selinc.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>,
	Jimi Damon	 <jdamon@gmail.com>
Date: Mon, 17 Jul 2017 11:13:03 -0700
In-Reply-To: <65a84bf6-0f68-033a-c197-74bc870ee5aa@gmail.com>
References: <a241bdb0-6ea7-8f0e-8411-02e9dbb1662c@gmail.com>
	<CAJTo0LZR0=_+WaUqQPx-UA75jOcjMa1OhaB13ztJE+oW4_4xBg@mail.gmail.com>
	<1500064345.5177.3.camel@selinc.com>
	<65a84bf6-0f68-033a-c197-74bc870ee5aa@gmail.com>
X-Mailer: Evolution 3.22.6 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Edison2/SEL(Release 9.0.1FP3
	HF515|April 25, 2015) at 07/17/2017 11:13:02 AM,
	Serialize by Router on Edison2/SEL(Release 9.0.1FP3 HF515|April 25,
	2015) at 07/17/2017 11:13:03 AM,
	Serialize complete at 07/17/2017 11:13:03 AM
X-TNEFEvaluated: 1
X-Proofpoint-Virus-Version: vendor=nai engine=5800 definitions=8594
	signatures=668516
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do you build 2 versions of the same recipe and a specific version from bitbake cmd line
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
X-List-Received-Date: Mon, 17 Jul 2017 18:13:06 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Sat, 2017-07-15 at 15:47 +0300, Robert Berger wrote:
> Hi,
>=20
> On 2017-07-14 23:32, Robert Joslyn wrote:
> >=20
> > Just to clarify, the typical way this is done is to put the major
> > version number as part of the package name. For example, the
> > recipes
> > could be called zeromq3_3.2.2.bb and zeromq4_4.1.5.bb. This assumes
> > zeromq can tolerate having multiple versions installed at the same
> > time.
> >=20
> > Robert
> >=20
>=20
> I did not try but I think in the meantime we can have the same
> package=C2=A0
> with different versions in the same image.
>=20
> The docu says about (run time dependencies) RDEPENDS:
>=20
> "BitBake, which the OpenEmbedded build system uses, supports
> specifying=C2=A0
> versioned dependencies. Although the syntax varies depending on the=C2=A0
> packaging format, BitBake hides these differences from you."[1]
>=20
> [1]=C2=A0
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__www.yoctoproject.
> org_docs_latest_mega-2Dmanual_mega-2Dmanual.html-23var-
> 2DRDEPENDS&d=3DDwICaQ&c=3DzVFQZQ67ypsA9mYKSCqWmQHiVkCCaN-
> Gb60_N6TVnLk&r=3DjKjb9x138uKtDnkEJ0l_Ks7NxaK4YpEWM1o0MkNOIx0&m=3DlB4lbBsS
> MGKatP7Qhwv-yEOj_8wqdO1udb-
> Fcowl95Y&s=3DlenIoSon3TiBnHTCoAxPZnfUoziIo_uEwECWpfj9qEA&e=3D=C2=A0
>=20
> What's unclear to me is how this works with build time dependencies=C2=A0
> DEPENDS? I guess somewhere you need to say that you want to link
> against=C2=A0
> version 3.2.2 for one package and against 4.1.5 in another package
> and=C2=A0
> since it looks like DEPENDS doesn't contain versioned dependencies I=C2=
=A0
> guess you need to work with names like zeromq3_3.2.2.bb and=C2=A0
> zeromq4_4.1.5.bb.
>=20
> Is this the case?

As far as I know, yes, you need to use recipes named like that, so
DEPENDS could contain "zeromq3" or "zeromq4". I don't think it's
possible to specify versions with DEPENDS the same way you can with
RDEPENDS.

> Which in turn makes me wonder what's the use case for RDEPENDS and=C2=A0
> versioned dependencies.

I'm not sure, I never actually needed them. The versioned RDEPENDS are
encoded in whatever packages you build (rpm, for example), so I assume
there are use cases when using package feeds.


Robert


