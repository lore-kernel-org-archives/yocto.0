Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF0CCE0054C; Thu, 31 Jul 2014 02:32:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC8DE004D1
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 02:32:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Jul 2014 02:32:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,771,1400050800"; d="scan'208";a="463507731"
Received: from sawijeko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.98])
	by azsmga001.ch.intel.com with ESMTP; 31 Jul 2014 02:32:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Thu, 31 Jul 2014 10:32:06 +0100
Message-ID: <1637186.T396EKSNeg@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15E2@ORSMSX101.amr.corp.intel.com>
References: <2064433273.102074.1406627065552.JavaMail.zimbra@mycable.de>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FC8CA6@ORSMSX106.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15E2@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Tiemo =?ISO-8859-1?Q?Kr=FCger?= <tk@mycable.de>
Subject: Re: Yocto Project Manual
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
X-List-Received-Date: Thu, 31 Jul 2014 09:32:14 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

This isn't quite what I was thinking of. Yes you should probably use th=
e=20
upstream signatures if they provide them, but it's going to be rare tha=
t both=20
md5sum and sha256sum will be provided in my experience. That's why I wa=
s=20
suggesting:

1) Recommend if *any* signatures are provided upstream (e.g. md5, sha1,=
=20
sha256, GPG, etc.) then you should verify these, by hand if necessary (=
since=20
we only deal with sha256sum and md5sum). This probably should be a note=
 box so=20
that the importance is highlighted.

2) Once that step has been performed if applicable, use the build-fail=20=

mechanism to get what you need added to the recipe.

Cheers,
Paul

On Thursday 31 July 2014 06:39:38 Rifenbark, Scott M wrote:
> Hi,
>=20
> I have modified this paragraph a bit to deal with the best way to get=
 these
> checksums.  See
> http://www.yoctoproject.org/docs/1.7/dev-manual/dev-manual.html#new-r=
ecipe-> fetching-code.  If there are further concerns just let me know =
and I can
> address them.
>=20
> Scott
>=20
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
> >Sent: Tuesday, July 29, 2014 4:25 AM
> >To: Paul Eggleton; Tiemo Kr=FCger
> >Cc: yocto@yoctoproject.org
> >Subject: Re: [yocto] Yocto Project Manual
> >
> >Paul,
> >
> >This sounds reasonable.  I will modify based on that practice.
> >
> >Thanks,
> >Scott
> >
> >>-----Original Message-----
> >>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >>Sent: Tuesday, July 29, 2014 3:57 AM
> >>To: Rifenbark, Scott M; Tiemo Kr=FCger
> >>Cc: yocto@yoctoproject.org
> >>Subject: Re: [yocto] Yocto Project Manual
> >>
> >>On Tuesday 29 July 2014 10:27:23 Rifenbark, Scott M wrote:
> >>> Thanks for noting this and contacting me.  I am reposting to the
> >>> yocto@yoctoproject.org group for additional input.  I will get
> >>> modifications into the manual.
> >>>=20
> >>> Best,
> >>> Scott
> >>>=20
> >>> >-----Original Message-----
> >>> >From: Tiemo Kr=FCger [mailto:tk@mycable.de]
> >>> >Sent: Tuesday, July 29, 2014 2:50 AM
> >>> >To: Rifenbark, Scott M
> >>> >Subject: Yocto Project Manual
> >>> >
> >>> >Hello Scott,
> >>> >
> >>> >I just read a little bit in this doc:
> >>> >
> >>> >http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#=
new-> >>> >
> >>> >>recipe-writing-a-new-recipe
> >>> >
> >>> >and since your eMail is mentioned on top I contact you regarding=
 the
> >>> >below paragraph in chapter 5.3.5
> >>> >
> >>> >"To find these checksums, you can comment the statements out and=

> >>> >then attempt to build the software. The build will produce an er=
ror
> >>> >for each missing checksum and as part of the error message provi=
de
> >>> >the correct checksum string. Once you have the correct checksums=
,
> >>> >simply copy them into your recipe for a subsequent build."
> >>> >
> >>> >We here really think this is the wrong way to create the checksu=
ms
> >>> >for a recipe since downloading them and then creating the checks=
um
> >>> >doesn't protect you against man in the middle attacks.
> >>
> >>From that point onwards it does, but not on the initial build when
> >>creating the recipe, you are correct. If the upstream website does
> >>provide checksums or GPG signatures (and quite a lot don't) then yo=
u
> >>should use those to verify the source that was fetched.
> >>
> >>> >The text should be modified
> >>> >that the checksums must at least be checked against the checksum=
s
> >>> >provided by the original website even if this is still not
> >>> >completely safe. And simple command line tools like md5sum and
> >>> >sha256sum shall be
> >>
> >>mentioned.
> >>
> >>I think the simplest thing is to just add a note which says that yo=
u
> >>should verify what was fetched against whatever signatures are prov=
ided
> >>by the upstream (if any). You can still use the build-fail method w=
e
> >>currently describe as well so that you get the exact lines you need=
 to
> >>put in the recipe rather than having to type those out each time.
> >>
> >>Cheers,
> >>Paul
> >>
> >>--
> >>
> >>Paul Eggleton
> >>Intel Open Source Technology Centre
> >
> >--
> >_______________________________________________
> >yocto mailing list
> >yocto@yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/yocto

--=20

Paul Eggleton
Intel Open Source Technology Centre

