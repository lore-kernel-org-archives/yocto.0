Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6960FE009D9; Mon, 22 Jun 2015 19:23:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Jun 2015 19:23:06 PDT
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C82E009C6
	for <yocto@yoctoproject.org>; Mon, 22 Jun 2015 19:23:06 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%16]) with
	mapi; Tue, 23 Jun 2015 12:22:00 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 23 Jun 2015 12:21:58 +1000
Thread-Topic: cryptsetup in initramfs causes ~4 MB image size increase
Thread-Index: AdCtW04k1TN1i222S3aCpTFrRGXDlw==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40227C1C14416@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-8.000.1202-21628.007
x-tm-as-result: No--42.277000-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: cryptsetup in initramfs causes ~4 MB image size increase
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
X-List-Received-Date: Tue, 23 Jun 2015 02:23:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm interested to use an encrypted root filesystem, by using cryptsetup in =
initramfs.

I'm finding that adding cryptsetup to an initramfs image increases its size=
 by about 4 MB. It seems that cryptsetup depends on openssl and lvm2, and l=
vm2 depends on bash, and the result of that is that a lot of extra files ge=
t dragged in.

Is this all strictly necessary? Perhaps cryptsetup really only needs librar=
ies, not all of openssl and lvm2.

What would be a good way to go about reducing the dependencies that get pul=
led in for cryptsetup?

I also noticed that libgcrypt could possibly be used instead of openssl (by=
 putting in bbappend, PACKAGECONFIG =3D ""), saving about 0.5 MB. However l=
ibgcrypt isn't used, according to the cryptsetup bb file, because it drops =
root privileges if it is linked with libcap support. That gives the obscure=
 cryptsetup error "Cannot initialize device-mapper. Is dm_mod kernel module=
 loaded?" when trying to use cryptsetup with libgcrypt. Is there any reason=
able work-around for this?

--=20
Craig McQueen


