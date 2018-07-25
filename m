Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67C51E00BAF; Wed, 25 Jul 2018 06:01:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.33 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-01v.sys.comcast.net
	(resqmta-ch2-01v.sys.comcast.net [69.252.207.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3C31E009B9
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 06:01:25 -0700 (PDT)
Received: from resomta-ch2-15v.sys.comcast.net ([69.252.207.111])
	by resqmta-ch2-01v.sys.comcast.net with ESMTP
	id iHyefhHL0NCVoiJPwf2JjV; Wed, 25 Jul 2018 13:01:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1532523684;
	bh=XtiFjINzSBo29YcsKwB7rtc3zzALCTxVH/laec1ob5k=;
	h=Received:Received:Date:From:Reply-To:To:Message-ID:Subject:
	MIME-Version:Content-Type;
	b=ASK3ODYOwSAIrUX+V50NezE1VwVQK33uXyPDKs55He0Jp+q9C8pPwQQTntOk8PX7J
	l5Oe36Xnujsvili07+O2Z4JfTwK6j/8mLUvssF+ssGizhtzE9exsYpMuoMhIFHnAwd
	RBSSrAIXg5pW2U3tZKbsOL9fNJSdzl4A3yucoO+iHvurzII72SY6mxHZ0cDaJ7U4A7
	9luHIsKtM/AmU9joUylXd7w8LSdhurfYGRpSXzQ3eEnyYAb/rikqIMEDf/Bn9EMhNr
	i2KtREKS0rmcE0expyL4ZThq/qo1SYdObSwaRPD973VjEDjHVAS7Mw7yzfN8GuVAhh
	QVDKUJLTsJqPg==
Received: from oxapp-ch2h-08o.email.comcast.net ([96.118.144.91])
	by resomta-ch2-15v.sys.comcast.net with ESMTPS
	id iJPwfCQDeMxseiJPwfUg6J; Wed, 25 Jul 2018 13:01:24 +0000
Date: Wed, 25 Jul 2018 09:01:24 -0400 (EDT)
From: RUSSELL PETERSON <bluehills7@comcast.net>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <2104577883.536094.1532523684485@connect.xfinity.com>
In-Reply-To: <894173275.508644.1532435764564@connect.xfinity.com>
References: <16C5EFE1-1FE0-4E48-9797-EEC5E54033AB@comcast.net>
	<CAMKF1so968sUsO8bdbvndD=VyVO_rxriC3kssO_K4V875M-byg@mail.gmail.com>
	<48A03EA7-A9B1-4249-8AF8-91EC5BA1CD38@comcast.net>
	<894173275.508644.1532435764564@connect.xfinity.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev26
X-Originating-IP: ::ffff:216.156.69.42
X-Originating-Client: open-xchange-appsuite
X-CMAE-Envelope: MS4wfJMKN6e/dNwEQBxc8mBbf1PXS2NBeCz8viK5dDBxzGyzWN8jbpYl2h5o0TfxqBFM+ixjxfsIIHK5ZEUAFWlK5n7wEgmPOwm4fZLJFY4o65MjTPPsspEm
	+/JIm7Rf0Az4rOgUleqBtU2CwBqNr1M6/XgkywznCBGu+rAgJ1+gQynXu7AZDffsYF0QZOdMADfaKR2f9K6amgH1/DP4FdMjXD99OzgYtwq1rmnEfcbTa8Hb
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: SDK and out of tree modules
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: RUSSELL PETERSON <bluehills7@comcast.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Jul 2018 13:01:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

So, this seems broken to me.  I managed to get around this issue (sstate-co=
ntrol/manifest-allarch-kernel-devsrc.populate_sysroot not found?) by append=
ing PACKAGE_EXTRA_ARCHS with the MACHINE_ARCH for my bsp.  While PACKAGE_AR=
CHS now has a duplicate in it (it already includes MACHINE_ARCH as well as =
PACKAGE_EXTRA_ARCH), the python code in staging_populate_sysroot seems to r=
equire this or it looks for the wrong manifest file.

Also, when building the eSDK, dnf seems very confused about what packages a=
re compatible.  It's looking for my SoC arch packages... but then won't acc=
ept aarch64 as being compatible.  I needed to set:

ALL_MULTILIB_PACKAGE_ARCHS =3D+ " ${PACKAGE_EXTRA_ARCHS_tune-${DEFAULTTUNE}=
}"

to get /etc/dnf/vars/arch to update correctly.  This is a bit tedious.  I'm=
 now having a similar issue because dnf doesn't seem to like an arch of x86=
_64-nativesdk.  Do I update ALL_MULTILIB_PACKAGE_ARCHS again??  Ug.

--Russ
=20

> On July 24, 2018 at 8:36 AM RUSSELL PETERSON <bluehills7@comcast.net> wro=
te:
>=20
>=20
> I am running Poky Rocko at the HEAD (just updated yesterday) and see the =
following when I attempt to build the eSDK:
>=20
> sstate-control/manifest-allarch-kernel-devsrc.populate_sysroot not found?
>=20
> I see this has been an issue with others as well.  It looks like Paul had=
 a fix around April but then the trail went silent so I'm not sure if there=
 was a fix or if that fix went into Rocko.  Anyone?
>=20
> --Russ
>=20
> > On July 21, 2018 at 4:42 PM Russell Peterson <bluehills7@comcast.net> w=
rote:
> >=20
> >=20
> > No, just the standard SDK.  I was having issues building the eSDK back =
when we used pyro and never fully figured it out=E2=80=A6 but we have since=
 upgraded to rocko.  I should revisit the eSDK and see if it works for me n=
ow or find the root cause since it sounds useful.
> >=20
> > Thanks, Khem.
> >=20
> > =E2=80=94Russ
> >=20
> >=20
> > > On Jul 21, 2018, at 1:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
> > >=20
> > > On Sat, Jul 21, 2018 at 6:20 AM Russell Peterson <bluehills7@comcast.=
net> wrote:
> > >>=20
> > >> Hello,
> > >>=20
> > >> I have been building some modules using the SDK for a while now.  Th=
is is mostly for development flow purposes but we have had a few customers =
doing this as well.  To get this to work we always need to run =E2=80=9Cmak=
e silentoldconfig scripts=E2=80=9D inside the RFS of the SDK on the build h=
ost.  Many folks forget to do this this and thus many, many questions come =
my way about the SDK being broken and they can=E2=80=99t build their module=
s (not all users are kernel experts or even intermediates=E2=80=A6 they jus=
t want to apply a patch and quickly move on to their app).  Is there a way =
to do this auto-magically during the installation of the SDK by adding some=
 type of scripts etc=E2=80=A6 to the recipe?  I assume it needs to be done =
at install time since while the build host is x86=E2=80=A6 the exact linux =
distro is not known until then (or does that matter?).
> > >>=20
> > >=20
> > > are you using extensible SDK ? in that case I think do_make_scripts
> > > from module-base.bbclass should be helpful
> > >=20
> > >> =E2=80=94Russ
> > >>=20
> > >> --
> > >> _______________________________________________
> > >> yocto mailing list
> > >> yocto@yoctoproject.org
> > >> https://lists.yoctoproject.org/listinfo/yocto
> >=20
> > --=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

