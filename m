Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5156AE009A5; Wed, 29 Apr 2015 00:18:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30939E00932
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 00:18:11 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4%14]) with
	mapi; Wed, 29 Apr 2015 17:18:09 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 29 Apr 2015 17:18:07 +1000
Thread-Topic: initramfs-framework ERROR: There's no '/dev' on rootfs.
Thread-Index: AdCCTB5KPm5LpD9FRqKUBkxZjd0yYw==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A402227F4FA9F6@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-7.500.1018-21510.005
x-tm-as-result: No--31.507900-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: initramfs-framework ERROR: There's no '/dev' on rootfs.
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
X-List-Received-Date: Wed, 29 Apr 2015 07:18:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm trying to use initramfs-framework to mount an overlayfs, and I've got i=
t working mostly. However, I found that when it boots, I get an error:

ERROR: There's no '/dev' on rootfs.

That comes from initramfs-framework's 'finish' script. I got around it by c=
reating the /dev directory on my writable partition. I also created /proc a=
nd /sys since it looks as though those would be needed too.

Would it be better to change the 'finish' script to just create the require=
d directory(s)? E.g.:

-               if [ ! -d $ROOTFS_DIR/dev ]; then
-                       fatal "ERROR: There's no '/dev' on rootfs."
-               fi
+               mkdir -p $ROOTFS_DIR/dev
+               mkdir -p $ROOTFS_DIR/proc
+               mkdir -p $ROOTFS_DIR/sys

--=20
Craig McQueen


