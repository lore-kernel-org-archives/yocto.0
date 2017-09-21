Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD3ADE00C78; Wed, 20 Sep 2017 23:49:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 457 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Sep 2017 23:49:01 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 277A6E00A9B
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 23:49:01 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 638221807C;
	Thu, 21 Sep 2017 08:41:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id M2ZvzL3llesI; Thu, 21 Sep 2017 08:41:22 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 61E8218095;
	Thu, 21 Sep 2017 08:41:22 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 501671E090;
	Thu, 21 Sep 2017 08:41:22 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 44C101E08E;
	Thu, 21 Sep 2017 08:41:22 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Thu, 21 Sep 2017 08:41:22 +0200 (CEST)
Received: from XBOX04.axis.com (xbox04.axis.com [10.0.5.18])
	by seth.se.axis.com (Postfix) with ESMTP id 391941855;
	Thu, 21 Sep 2017 08:41:22 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX04.axis.com (10.0.5.18) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Thu, 21 Sep 2017 08:41:22 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Thu, 21 Sep 2017 08:41:22 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Khem Raj <raj.khem@gmail.com>, Takashi Matsuzawa <tmatsuzawa@xevo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] "(-)"??
Thread-Index: AQHTMohPs5aV5l+WLk27A7Bpi9W3W6K+qpcAgAA04sA=
Date: Thu, 21 Sep 2017 06:41:22 +0000
Message-ID: <eda389cc3fd34e08bd7f37c17fae4fcf@XBOX02.axis.com>
References: <MWHPR01MB32939418BEF2C9C72FE13D57B6660@MWHPR01MB3293.prod.exchangelabs.com>
	<386119ba-a8ca-ccc6-0dde-26c01edc1c35@gmail.com>
In-Reply-To: <386119ba-a8ca-ccc6-0dde-26c01edc1c35@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: "(-)"??
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
X-List-Received-Date: Thu, 21 Sep 2017 06:49:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Khem Raj
> Sent: den 21 september 2017 07:15
> To: Takashi Matsuzawa <tmatsuzawa@xevo.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] "(-)"??
>=20
> On 9/20/17 8:18 PM, Takashi Matsuzawa wrote:
> > Hello.
> > I am seeing some of the recipes contains lines like below.
> >
> >> COMPATIBLE_MACHINE =3D "(-)"
> >
> > Sorry being novice, but what is the intended effect of this line?
> > I can see submit comments that this is for blacklisting but I am not
> > sure how it works. =A0It simply means a '-' letter?
>=20
> COMAPTIBLE_MACHINE uses regexp syntax

Which actually makes that a pretty weird COMPATIBLE_MACHINE,=20
especially if it is intended for blacklisting. Given that it would=20
match any machine with a dash in it, it would match, e.g., qemux86-64
but not qemux86. It would also happen to match about half of our=20
machines which happen to have dashes in their names.

A more appropriate way to blacklist machines using COMPATIBLE_MACHINE=20
would be something like:

COMPATIBLE_MACHINE =3D "null"

or:

COMPATIBLE_MACHINE =3D "nothing"

I found two occurrences of "(-)" being used as COMPATIBLE_MACHINE in=20
meta-openembedded for Morty and Pyro, but they have been removed for=20
Rocko. If you see them anywhere else, consider changing them.

//Peter


