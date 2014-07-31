Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8ED1E006EE; Thu, 31 Jul 2014 06:45:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDBDDE0056A
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 06:45:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Jul 2014 06:39:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,772,1400050800"; d="scan'208";a="581705466"
Received: from sawijeko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.98])
	by orsmga002.jf.intel.com with ESMTP; 31 Jul 2014 06:45:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Thu, 31 Jul 2014 14:45:32 +0100
Message-ID: <2166637.xUVl78k0O1@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD17F0@ORSMSX101.amr.corp.intel.com>
References: <2064433273.102074.1406627065552.JavaMail.zimbra@mycable.de>
	<1637186.T396EKSNeg@peggleto-mobl5.ger.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD17F0@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Thu, 31 Jul 2014 13:45:43 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On reflection, it could be that the manual verification step is after y=
ou get=20
the error to make things flow a bit more easily; the critical thing is =
it=20
should be before you paste the values into the recipe and continue on w=
ith the=20
build.

Cheers,
Paul

On Thursday 31 July 2014 13:36:28 Rifenbark, Scott M wrote:
> Ahh... okay.  I will adjust.
>=20
> Thanks,
> Scott
>=20
> >-----Original Message-----
> >From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >Sent: Thursday, July 31, 2014 2:32 AM
> >To: Rifenbark, Scott M
> >Cc: Tiemo Kr=FCger; yocto@yoctoproject.org
> >Subject: Re: [yocto] Yocto Project Manual
> >
> >This isn't quite what I was thinking of. Yes you should probably use=
 the
> >upstream signatures if they provide them, but it's going to be rare =
that
> >both md5sum and sha256sum will be provided in my experience. That's =
why I
> >was
> >suggesting:
> >
> >1) Recommend if *any* signatures are provided upstream (e.g. md5, sh=
a1,
> >sha256, GPG, etc.) then you should verify these, by hand if necessar=
y
> >(since we only deal with sha256sum and md5sum). This probably should=
 be a
> >note box so that the importance is highlighted.
> >
> >2) Once that step has been performed if applicable, use the build-fa=
il
> >mechanism to get what you need added to the recipe.
> >
> >Cheers,
> >Paul
> >
> >On Thursday 31 July 2014 06:39:38 Rifenbark, Scott M wrote:
> >> Hi,
> >>=20
> >> I have modified this paragraph a bit to deal with the best way to =
get
> >> these checksums.  See
> >> http://www.yoctoproject.org/docs/1.7/dev-manual/dev-manual.html#ne=
w-re
> >> cipe-> fetching-code.  If there are further concerns just let me k=
now and
> >> I can>
> >address them.
> >
> >> Scott
> >>=20
> >> >-----Original Message-----
> >> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >> >bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
> >> >Sent: Tuesday, July 29, 2014 4:25 AM
> >> >To: Paul Eggleton; Tiemo Kr=FCger
> >> >Cc: yocto@yoctoproject.org
> >> >Subject: Re: [yocto] Yocto Project Manual
> >> >
> >> >Paul,
> >> >
> >> >This sounds reasonable.  I will modify based on that practice.
> >> >
> >> >Thanks,
> >> >Scott
> >> >
> >> >>-----Original Message-----
> >> >>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >> >>Sent: Tuesday, July 29, 2014 3:57 AM
> >> >>To: Rifenbark, Scott M; Tiemo Kr=FCger
> >> >>Cc: yocto@yoctoproject.org
> >> >>Subject: Re: [yocto] Yocto Project Manual
> >> >>
> >> >>On Tuesday 29 July 2014 10:27:23 Rifenbark, Scott M wrote:
> >> >>> Thanks for noting this and contacting me.  I am reposting to t=
he
> >> >>> yocto@yoctoproject.org group for additional input.  I will get=

> >> >>> modifications into the manual.
> >> >>>=20
> >> >>> Best,
> >> >>> Scott
> >> >>>=20
> >> >>> >-----Original Message-----
> >> >>> >From: Tiemo Kr=FCger [mailto:tk@mycable.de]
> >> >>> >Sent: Tuesday, July 29, 2014 2:50 AM
> >> >>> >To: Rifenbark, Scott M
> >> >>> >Subject: Yocto Project Manual
> >> >>> >
> >> >>> >Hello Scott,
> >> >>> >
> >> >>> >I just read a little bit in this doc:
> >> >>> >
> >> >>> >http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.ht=
ml#n
> >> >>> >ew-> >>> >
> >> >>> >
> >> >>> >>recipe-writing-a-new-recipe
> >> >>> >
> >> >>> >and since your eMail is mentioned on top I contact you regard=
ing
> >> >>> >the below paragraph in chapter 5.3.5
> >> >>> >
> >> >>> >"To find these checksums, you can comment the statements out =
and
> >> >>> >then attempt to build the software. The build will produce an=

> >> >>> >error for each missing checksum and as part of the error mess=
age
> >> >>> >provide the correct checksum string. Once you have the correc=
t
> >> >>> >checksums, simply copy them into your recipe for a subsequent=

> >> >>> >build."
> >> >>> >
> >> >>> >We here really think this is the wrong way to create the
> >> >>> >checksums for a recipe since downloading them and then creati=
ng
> >> >>> >the checksum doesn't protect you against man in the middle at=
tacks.
> >> >>
> >> >>From that point onwards it does, but not on the initial build wh=
en
> >> >>creating the recipe, you are correct. If the upstream website do=
es
> >> >>provide checksums or GPG signatures (and quite a lot don't) then=
 you
> >> >>should use those to verify the source that was fetched.
> >> >>
> >> >>> >The text should be modified
> >> >>> >that the checksums must at least be checked against the check=
sums
> >> >>> >provided by the original website even if this is still not
> >> >>> >completely safe. And simple command line tools like md5sum an=
d
> >> >>> >sha256sum shall be
> >> >>
> >> >>mentioned.
> >> >>
> >> >>I think the simplest thing is to just add a note which says that=
 you
> >> >>should verify what was fetched against whatever signatures are
> >> >>provided by the upstream (if any). You can still use the build-f=
ail
> >> >>method we currently describe as well so that you get the exact l=
ines
> >> >>you need to put in the recipe rather than having to type those o=
ut each
> >> >>time.
> >> >>
> >> >>Cheers,
> >> >>Paul
> >> >>
> >> >>--
> >> >>
> >> >>Paul Eggleton
> >> >>Intel Open Source Technology Centre
> >> >
> >> >--
> >> >_______________________________________________
> >> >yocto mailing list
> >> >yocto@yoctoproject.org
> >> >https://lists.yoctoproject.org/listinfo/yocto
> >
> >--
> >
> >Paul Eggleton
> >Intel Open Source Technology Centre

--=20

Paul Eggleton
Intel Open Source Technology Centre

