Return-Path: <btv1==217dfdbf641==Matt.Schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 885F6E009E7; Tue, 20 May 2014 09:47:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from barbvt10.planar.com (unknown [199.244.172.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6FAAE0070F
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 09:47:30 -0700 (PDT)
X-ASG-Debug-ID: 1400604448-04b02b0f2bd556b0001-yzSStA
Received: from msxbvt03.planar.net (msxbvt03.planar.net [172.16.0.147]) by
	barbvt10.planar.com with ESMTP id eWMDlLmCPujmMaIh;
	Tue, 20 May 2014 09:47:28 -0700 (PDT)
X-Barracuda-Envelope-From: Matt.Schuckmann@planar.com
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 20 May 2014 09:47:27 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 20 May 2014 09:47:27 -0700
Thread-Topic: [yocto] Can't boot poky-tiny in qemu
X-ASG-Orig-Subj: RE: [yocto] Can't boot poky-tiny in qemu
Thread-Index: Ac9z+luEnGEV8msZQRKkasZo5QhQgAAUFjHw
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD6CF75BB@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD6CF755F@MSXBEBVT12.planar.net>
	<537AFF76.5050106@windriver.com>
In-Reply-To: <537AFF76.5050106@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: msxbvt03.planar.net[172.16.0.147]
X-Barracuda-Start-Time: 1400604448
X-Barracuda-URL: http://10.10.111.112:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at planar.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
	SCORE=-2.02 using per-user scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_MISMATCH_TO
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.5964
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: Can't boot poky-tiny in qemu
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
X-List-Received-Date: Tue, 20 May 2014 16:47:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> I guess the problem is kernel related. Maybe the kernel configuration for=
 linux-yocto-tiny lacks something.

> Please open a bug in bugzilla, if convenient.
> https://bugzilla.yoctoproject.org

Thank you, I created a bug in bugzilla, https://bugzilla.yoctoproject.org/s=
how_bug.cgi?id=3D6353.=20

I also tested poky-tiny with Yocto 1.5 and it mostly works, there is a litt=
le problem with a missing setsid in busybox that is easily fixed, although =
there is some discussion on which is the proper way to fix it, I don't know=
 enough about bitbake to weight in.=20

Matt S.=20


