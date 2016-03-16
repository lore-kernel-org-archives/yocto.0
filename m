Return-Path: <ashish.shrivastava@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 265E0E00B37; Wed, 16 Mar 2016 08:04:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0004]
X-Greylist: delayed 591 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Mar 2016 08:04:21 PDT
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E44BE00872
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 08:04:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id 31F6F2E135
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 15:54:29 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id dH41mHkLPXQb for <yocto@yoctoproject.org>;
	Wed, 16 Mar 2016 15:54:27 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 813012E119
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 15:54:27 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 61DD716B5
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 15:54:27 +0100 (CET)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 56BD014B0
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 15:54:27 +0100 (CET)
Received: from XBOX04.axis.com (xbox04.axis.com [10.0.5.18])
	by thoth.se.axis.com (Postfix) with ESMTP id 546691061
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 15:54:27 +0100 (CET)
Received: from XBOX04.axis.com (10.0.5.18) by XBOX04.axis.com (10.0.5.18) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Wed, 16 Mar 2016 15:54:27 +0100
Received: from XBOX04.axis.com ([fe80::210a:724b:68cb:a917]) by
	XBOX04.axis.com ([fe80::210a:724b:68cb:a917%23]) with mapi id
	15.00.1156.000; Wed, 16 Mar 2016 15:54:27 +0100
From: Ashish Shrivastava <ashish.shrivastava@axis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Not able to disable introspection in gstreamer
Thread-Index: AQHRf5LFwELForL9LUyz5SVVn8hAlw==
Date: Wed, 16 Mar 2016 14:54:27 +0000
Message-ID: <1458140066928.8568@axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.55]
MIME-Version: 1.0
Subject: Not able to disable introspection in gstreamer
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
X-List-Received-Date: Wed, 16 Mar 2016 15:04:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

?Hi,


I am trying to build latest poky version from upstream but it was failing i=
n "gobject-introspection-data?".

I disabled it with comments mentioned in:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?id=3D8c14c74=
6da1784c4bdaa621dde6fccd99e72ef1b


by adding folloing line in config:

MACHINE_FEATURES_BACKFILL_CONSIDERED =3D "gobject-introspection-data"


Now gstreamer is throwing error for introspection.


I am trying to disable it but with no success.


Anyone who knows how to disable introspection in gstreamer would be of grea=
t help.


Regards

Ashish


