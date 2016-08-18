Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF80CE00FDC; Wed, 17 Aug 2016 18:20:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AECEE00C4D
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 18:19:58 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Thu, 18 Aug 2016 11:19:52 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"ajlennon@dynamicdevices.co.uk" <ajlennon@dynamicdevices.co.uk>
Date: Thu, 18 Aug 2016 11:19:50 +1000
Thread-Topic: Package mono-libs-4.5 size increase in Mono version 4.4.x
Thread-Index: AdH4T24IZo0Q1CXGRzeCiDO2PFVFdQAnhGuQ
Message-ID: <5500469A22567C4BAF673A6E86AFA3A4022D2BE1F2C2@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A4022D2BE1F204@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A4022D2BE1F204@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.000.1202-22518.006
x-tm-as-result: No--44.210500-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: Package mono-libs-4.5 size increase in Mono version 4.4.x
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
X-List-Received-Date: Thu, 18 Aug 2016 01:20:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I wrote:
> I've just had to upgrade from Mono 4.2.x to Mono 4.4.x, to get a fix for =
SMTP
> SSL/TLS.
>=20
> I'm using the mono-libs-4.5 package. I see that the size of it has increa=
sed
> quite a lot (several MB) due to the upgrade. It looks as though it's now
> putting a bunch of files in /usr/lib/mono/4.5-api in addition to the old
> /usr/lib/mono/4.5.
>=20
> I can see this mentioned in the Mono 4.4.0 release notes:
> http://www.mono-project.com/docs/about-mono/releases/4.4.0/
>=20
> But the rationale is not entirely clear to me. Is it possible to cut down=
 the
> Yocto image size by removing one of /usr/lib/mono/4.5-api and
> /usr/lib/mono/4.5, or some other refactoring?

It looks as though, in my image for the device, I only need /usr/lib/mono/4=
.5.

In my custom layer, I've made a mono_4.4.%.bbappend file which contains:

    # Split /usr/lib/mono/4.5-api off into a separate package.
    PACKAGES +=3D "${PN}-libs-4.5-api"
   =20
    FILES_${PN}-libs-4.5-api                =3D "${libdir}/mono/4.5-api/*"
    FILES_${PN}-libs-4.5                    =3D "${libdir}/mono/4.5/*"

My image includes the package mono-libs-4.5 (as it did before when I was us=
ing Mono 4.2.x). Now the image size is back to near what it was for Mono 4.=
2.x, and everything on the target device seems to be running fine.

--=20
Craig McQueen


