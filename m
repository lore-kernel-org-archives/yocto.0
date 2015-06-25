Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4172FE00A1E; Wed, 24 Jun 2015 23:31:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E864E009EF
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 23:31:02 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%16]) with
	mapi; Thu, 25 Jun 2015 16:30:59 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 25 Jun 2015 16:30:57 +1000
Thread-Topic: cryptsetup in initramfs causes ~4 MB image size increase
Thread-Index: AdCtW04k1TN1i222S3aCpTFrRGXDlwBtHDIA
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40227C1C146E2@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40227C1C14416@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40227C1C14416@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-8.000.1202-21634.004
x-tm-as-result: No--49.278100-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: cryptsetup in initramfs causes ~4 MB image size increase
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
X-List-Received-Date: Thu, 25 Jun 2015 06:31:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I earlier wrote:
>=20
> I'm interested to use an encrypted root filesystem, by using cryptsetup i=
n
> initramfs.
>=20
> I'm finding that adding cryptsetup to an initramfs image increases its si=
ze by
> about 4 MB. It seems that cryptsetup depends on openssl and lvm2, and
> lvm2 depends on bash, and the result of that is that a lot of extra files=
 get
> dragged in.
>=20
> Is this all strictly necessary? Perhaps cryptsetup really only needs libr=
aries,
> not all of openssl and lvm2.
>=20
> What would be a good way to go about reducing the dependencies that get
> pulled in for cryptsetup?
>=20
> I also noticed that libgcrypt could possibly be used instead of openssl (=
by
> putting in bbappend, PACKAGECONFIG =3D ""), saving about 0.5 MB. However
> libgcrypt isn't used, according to the cryptsetup bb file, because it dro=
ps root
> privileges if it is linked with libcap support. That gives the obscure cr=
yptsetup
> error "Cannot initialize device-mapper. Is dm_mod kernel module loaded?"
> when trying to use cryptsetup with libgcrypt. Is there any reasonable wor=
k-
> around for this?

I found that I can cut it down significantly, using the following lvm2_2.%.=
bbappend:

-----------------------------------------------------------
PACKAGES =3D+ "lvm2-libdevmapper"

# ${base_libdir}/udev ${sbindir}/dmsetup are to get device mapper udev rule=
s,
# to avoid cryptsetup luksOpen hanging.
FILES_lvm2-libdevmapper =3D "${libdir}/libdevmapper.so.* ${base_libdir}/ude=
v ${sbindir}/dmsetup"

RDEPENDS_lvm2-libdevmapper =3D "bash"

RDEPENDS_${PN} +=3D " lvm2-libdevmapper"

RPROVIDES_${PN}-dev =3D "lvm2-libdevmapper-dev"
-----------------------------------------------------------

That cuts out a bunch of unneeded lvm files.

I'm not sure why there needs to be a bash dependency, but it didn't work wi=
thout it. I'd like to get rid of bash if it's possible.

(After reading more about libgcrypt, I think I'll just stick with openssl. =
It seems questionable design for the library, to drop an application's capa=
bilities.)

--=20
Craig McQueen


