Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8E77E007EA; Tue, 29 Jul 2014 03:57:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63754E007E4
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 03:57:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Jul 2014 03:57:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,756,1400050800"; d="scan'208";a="577043420"
Received: from cfitzsim-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.251])
	by fmsmga002.fm.intel.com with ESMTP; 29 Jul 2014 03:56:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	Tiemo =?ISO-8859-1?Q?Kr=FCger?= <tk@mycable.de>
Date: Tue, 29 Jul 2014 11:56:56 +0100
Message-ID: <2822765.ysjF7qWtfi@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FC7C6B@ORSMSX106.amr.corp.intel.com>
References: <2064433273.102074.1406627065552.JavaMail.zimbra@mycable.de>
	<1367058546.102085.1406627402694.JavaMail.zimbra@mycable.de>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FC7C6B@ORSMSX106.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 29 Jul 2014 10:57:11 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday 29 July 2014 10:27:23 Rifenbark, Scott M wrote:
> Thanks for noting this and contacting me.  I am reposting to the
> yocto@yoctoproject.org group for additional input.  I will get
> modifications into the manual.=20
>=20
> Best,=20
> Scott
>=20
>=20
> >-----Original Message-----
> >From: Tiemo Kr=FCger [mailto:tk@mycable.de]
> >Sent: Tuesday, July 29, 2014 2:50 AM
> >To: Rifenbark, Scott M
> >Subject: Yocto Project Manual
> >
> >Hello Scott,
> >
> >I just read a little bit in this doc:
> >
> >http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new-=
> >recipe-writing-a-new-recipe
> >
> >and since your eMail is mentioned on top I contact you regarding the=
 below
> >paragraph in chapter 5.3.5
> >
> >"To find these checksums, you can comment the statements out and the=
n
> >attempt to build the software. The build will produce an error for e=
ach
> >missing checksum and as part of the error message provide the correc=
t
> >checksum string. Once you have the correct checksums, simply copy th=
em
> >into your recipe for a subsequent build."
> >
> >We here really think this is the wrong way to create the checksums f=
or a
> >recipe since downloading them and then creating the checksum doesn't=

> >protect you against man in the middle attacks.=20

From that point onwards it does, but not on the initial build when crea=
ting=20
the recipe, you are correct. If the upstream website does provide check=
sums or=20
GPG signatures (and quite a lot don't) then you should use those to ver=
ify the=20
source that was fetched.

> >The text should be modified
> >that the checksums must at least be checked against the checksums pr=
ovided
> >by the original website even if this is still not completely safe. A=
nd
> >simple command line tools like md5sum and sha256sum shall be mention=
ed.

I think the simplest thing is to just add a note which says that you sh=
ould=20
verify what was fetched against whatever signatures are provided by the=
=20
upstream (if any). You can still use the build-fail method we currently=
=20
describe as well so that you get the exact lines you need to put in the=
 recipe=20
rather than having to type those out each time.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

