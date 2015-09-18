Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58097E00D74; Thu, 17 Sep 2015 22:29:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Sep 2015 22:29:40 PDT
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 858A9E00C81
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 22:29:40 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Fri, 18 Sep 2015 15:28:26 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 18 Sep 2015 15:28:24 +1000
Thread-Topic: Busybox hwclock.sh initscript issues
Thread-Index: AdDx0hGlc/P0UeoZTYGCTolsUwzOpQ==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40227C5AD19F4@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-8.000.1202-21822.004
x-tm-as-result: No--40.398900-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Busybox hwclock.sh initscript issues
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
X-List-Received-Date: Fri, 18 Sep 2015 05:29:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm using Yocto dizzy. I've found a couple of issues with the Busybox hwclo=
ck.sh initscript.

1) The script checks that /sbin/hwclock exists at the start. But after that=
 it runs hwclock without an explicit /sbin/hwclock path. So it only works i=
f /sbin/ is in the PATH. Thus it doesn't run properly when called from e.g.=
 cronie which doesn't run with /sbin/ in the PATH.

2) The bootmisc.sh initscript uses the time from /etc/timestamp if the hwcl=
ock time is older. That's good. But then by default, hwclock.sh runs after =
bootmisc.sh, and unconditionally overwrites the system time from the hwcloc=
k. So on a system without a functional hwclock, the /etc/timestamp feature =
basically doesn't work. One solution is modify INITSCRIPT_PARAMS_${PN}-hwcl=
ock so it doesn't run at start-up (I am doing that in a busybox bbappend).

--=20
Craig McQueen


