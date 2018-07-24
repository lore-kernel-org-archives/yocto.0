Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE2ABE009AA; Tue, 24 Jul 2018 05:36:06 -0700 (PDT)
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
	*      [69.252.207.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-10v.sys.comcast.net
	(resqmta-ch2-10v.sys.comcast.net [69.252.207.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F46CE0080A
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2018 05:36:05 -0700 (PDT)
Received: from resomta-ch2-19v.sys.comcast.net ([69.252.207.115])
	by resqmta-ch2-10v.sys.comcast.net with ESMTP
	id hvkffD1l3OLBahwXsfwH4e; Tue, 24 Jul 2018 12:36:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1532435764;
	bh=9qiqCeIE7m6EFGB5RlKMeGoYSaZTHDai6rO5Vgsn0rY=;
	h=Received:Received:Date:From:Reply-To:To:Message-ID:Subject:
	MIME-Version:Content-Type;
	b=OWi1BYOGN+a8LtK7Mpqvywd/ihXpJUseZ42o7g7433fs4I2F2nQ77TQnYoWXNIxAQ
	AD0ofbSY895l9UVCUeVdjpO8AB9qkBCEyul8B/tlctU+0M0A7GMtjnaeNOaeCgcFcW
	GE902HyquQVwsluiK6jBYnJJidarnwZrPsYiLHTggjQDbiE02xph4p6mJvuoEPin87
	QhQTjWR9dHnZaKBVHs3Ht4G7AM6tvb5X2sr6hQVHc0ZNgzCPVPeoZkN3Eb3mDLWTP5
	C7gy9wv1/riF3AdhH/6h82whaw6ZBCZSgH7uG+XYpX+Yyceegqhg3LhNNiYMNuGbOk
	dg7JOaVi011JA==
Received: from oxapp-ch2h-08o.email.comcast.net ([96.118.144.91])
	by resomta-ch2-19v.sys.comcast.net with ESMTPS
	id hwXsfbCJSUQxBhwXsfcoVu; Tue, 24 Jul 2018 12:36:04 +0000
Date: Tue, 24 Jul 2018 08:36:04 -0400 (EDT)
From: RUSSELL PETERSON <bluehills7@comcast.net>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <894173275.508644.1532435764564@connect.xfinity.com>
In-Reply-To: <48A03EA7-A9B1-4249-8AF8-91EC5BA1CD38@comcast.net>
References: <16C5EFE1-1FE0-4E48-9797-EEC5E54033AB@comcast.net>
	<CAMKF1so968sUsO8bdbvndD=VyVO_rxriC3kssO_K4V875M-byg@mail.gmail.com>
	<48A03EA7-A9B1-4249-8AF8-91EC5BA1CD38@comcast.net>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev26
X-Originating-IP: ::ffff:216.156.69.42
X-Originating-Client: open-xchange-appsuite
X-CMAE-Envelope: MS4wfDniFOtO5t1gQ6qVNXu3kn8to9u/+GZ+7Mu4cNCzNiNpdcnzDU5NklyF/hNehoPhksHN0y175f9Pdp415/jE00kTG6FZh5YDuoy4gpp+lZrffnbDHyfG
	zcNE2mjwcqN4jW707AfwCgD6x2GbW7QqxOQ/Ggvrz1px0A6bNf1z/2+ggGyTxYFqal+oZccI4RkK9/W4WpBGJT1aqj1p6/Yt83T1pB4wxGFLdqx32SMazZw/
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
X-List-Received-Date: Tue, 24 Jul 2018 12:36:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am running Poky Rocko at the HEAD (just updated yesterday) and see the fo=
llowing when I attempt to build the eSDK:

sstate-control/manifest-allarch-kernel-devsrc.populate_sysroot not found?

I see this has been an issue with others as well.  It looks like Paul had a=
 fix around April but then the trail went silent so I'm not sure if there w=
as a fix or if that fix went into Rocko.  Anyone?

--Russ

> On July 21, 2018 at 4:42 PM Russell Peterson <bluehills7@comcast.net> wro=
te:
>=20
>=20
> No, just the standard SDK.  I was having issues building the eSDK back wh=
en we used pyro and never fully figured it out=E2=80=A6 but we have since u=
pgraded to rocko.  I should revisit the eSDK and see if it works for me now=
 or find the root cause since it sounds useful.
>=20
> Thanks, Khem.
>=20
> =E2=80=94Russ
>=20
>=20
> > On Jul 21, 2018, at 1:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >=20
> > On Sat, Jul 21, 2018 at 6:20 AM Russell Peterson <bluehills7@comcast.ne=
t> wrote:
> >>=20
> >> Hello,
> >>=20
> >> I have been building some modules using the SDK for a while now.  This=
 is mostly for development flow purposes but we have had a few customers do=
ing this as well.  To get this to work we always need to run =E2=80=9Cmake =
silentoldconfig scripts=E2=80=9D inside the RFS of the SDK on the build hos=
t.  Many folks forget to do this this and thus many, many questions come my=
 way about the SDK being broken and they can=E2=80=99t build their modules =
(not all users are kernel experts or even intermediates=E2=80=A6 they just =
want to apply a patch and quickly move on to their app).  Is there a way to=
 do this auto-magically during the installation of the SDK by adding some t=
ype of scripts etc=E2=80=A6 to the recipe?  I assume it needs to be done at=
 install time since while the build host is x86=E2=80=A6 the exact linux di=
stro is not known until then (or does that matter?).
> >>=20
> >=20
> > are you using extensible SDK ? in that case I think do_make_scripts
> > from module-base.bbclass should be helpful
> >=20
> >> =E2=80=94Russ
> >>=20
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

