Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BED20E00D0D; Tue, 17 Oct 2017 23:22:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-132.dsl.connexus.net.au
	[203.122.143.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DAA6E00CBE
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 23:22:27 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Wed, 18 Oct 2017 17:22:25 +1100
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "ajlennon@dynamicdevices.co.uk"
	<ajlennon@dynamicdevices.co.uk>
Date: Wed, 18 Oct 2017 17:22:23 +1100
Thread-Topic: meta-mono 5.2.x recipe and pdb files
Thread-Index: AdNHsdUeOcc7gILrTEKAqdp8+/6QlQAJ2mBg
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F094B742@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F094B710@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F094B710@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23402.004
x-tm-as-result: No--11.865400-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: meta-mono 5.2.x recipe and pdb files
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
X-List-Received-Date: Wed, 18 Oct 2017 06:22:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I wrote:
>=20
> I'm trying to upgrade from mono 4.6.x to 5.2.x. I see resulting image siz=
e
> increases by about 10 MB in my usage. It appears that a significant
> contributing factor is the presence of *.pdb files in 5.2.x which weren't=
 in
> 4.6.x.
>=20
> * Are the *.pdb files necessary?
> * What can  be done to exclude them?

Seeing how the recipe handles *.mdb files, I made a bbappend file containin=
g:

FILES_${PN}-dbg	+=3D "${libdir}/mono/*/*.pdb ${libdir}/mono/*/*/*.pdb ${lib=
dir}/mono/gac/*/*/*.pdb"

That seems to do it. This should probably be added to the mono recipe files=
 for mono >=3D 5.0.x.

--=20
Craig McQueen


