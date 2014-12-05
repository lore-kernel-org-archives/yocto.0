Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3314CE0090A; Thu,  4 Dec 2014 18:26:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B33EE008CA
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 18:26:19 -0800 (PST)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-8.us.mimecast.lan; Thu, 04 Dec 2014 21:26:17 -0500
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Thu, 4 Dec 2014 18:23:56 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 4 Dec 2014 18:23:55 -0800
Thread-Topic: How to force bitbake to install a package
Thread-Index: AdAQMoTI1/MEXCMoQMKow+QOnIMacQ==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDB5623B4@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: moqzEfdeTny0yVx_IOpyLg-1
Subject: How to force bitbake to install a package
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
X-List-Received-Date: Fri, 05 Dec 2014 02:26:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I'm going nuts on this, I can't figure what magic incantation is to ensure =
that my changes to a recipe getting applied to the image I'm building.=20

I'm working off the Dylan branch (IT amsdk 7.0)

Here is my current work flow,

Make some small edit to a file in a recipe in my layer, say a lighttpd.conf=
 file.
~/oe-build/build $ bitbake web-ui

I can see that it rebuilt and repackaged, so I go ahead and build the image=
.=20
~/oe-build/build & bitbake my-base-image

I can see that it performs do_rootfs, looks good, I can also go to my tmp/d=
eploy/image directory and see a new image.tar.gz file has been created.=20

I unpack the tar file to my NFS shared rootfs directory (or a new rootfs di=
r) and my change isn't there. I don't always see this problem but it defini=
tely crops up and once I see it I haven't figured out how to fix it.=20

I've tried all sorts of combinations of:
bitbake -c clean web-ui
bitbake -c cleansstate web-ui
bitbake -c clean my-base-image
bitbake -c cleansstate my-base-image
bitbake -c rootfs -f my-base-image

Invariably the only way I can reliably see my change take effect is to blow=
 away my entire tmp directory and start over which is painful.=20

So what am I missing?=20

Thanks,
Matt S.=20



