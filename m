Return-Path: <btv1==9320d3c0336==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 359ADE00C6E; Wed,  4 May 2016 07:41:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 753 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 May 2016 07:41:20 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C35EE00C4B
	for <yocto@yoctoproject.org>; Wed,  4 May 2016 07:41:20 -0700 (PDT)
X-ASG-Debug-ID: 1462372126-0b39aa668924b7f0001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id IoWoCKRSJzCJv91f (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 04 May 2016 07:28:46 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Wed, 4 May 2016 07:28:45 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Wed, 4 May 2016 07:28:45 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Ronald Oakes <ronaldo@brc2.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Problems building core-minimal-rt on Jethro (2.0.1) and
	Krogoth (2.1)
X-ASG-Orig-Subj: Re: [yocto] Problems building core-minimal-rt on Jethro
	(2.0.1) and Krogoth (2.1)
Thread-Index: AQHRpg22wx1ZNgPfp0yOeOnQpGjTPJ+o1kfA
Date: Wed, 4 May 2016 14:28:44 +0000
Message-ID: <1462372115521.39756@seescan.com>
References: <CALRMKQrH5LpDC5pGK_ef_r2rxPC1t7vTqb=nB=1Go=xx7m3VtA@mail.gmail.com>
In-Reply-To: <CALRMKQrH5LpDC5pGK_ef_r2rxPC1t7vTqb=nB=1Go=xx7m3VtA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1462372126
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 2314
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.2237 1.0000 -0.7055
X-Barracuda-Spam-Score: -0.71
X-Barracuda-Spam-Status: No,
	SCORE=-0.71 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.29289
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: Problems building core-minimal-rt on Jethro (2.0.1) and	Krogoth (2.1)
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
X-List-Received-Date: Wed, 04 May 2016 14:41:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Perhaps you could cd to the source directory and do:=0A=
=0A=
 $ git pull=0A=
=0A=
Then try to rebuild.=0A=
=0A=
Frederick=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Ronald Oakes <ronaldo@brc2.com>=0A=
Sent: Wednesday, May 4, 2016 7:02 AM=0A=
To: Yocto discussion list=0A=
Subject: [yocto] Problems building core-minimal-rt on Jethro (2.0.1) and   =
     Krogoth (2.1)=0A=
=0A=
My project will need to be real-time (we're probably putting a crystal=0A=
controlled clock in), so I'd like to have the real-time kernel.  So,=0A=
I've been attempting to build core-minimal-rt on both 2.0.1 and 2.1.=0A=
I get errors on both, albeit different errors.=0A=
=0A=
Jethro:=0A=
=0A=
On 2.0.1, the do-patch for linux-yocto-rt-* fails, ultimately with the=0A=
message: "Your branch is behind 'origin/standard/preempt-rt/base' by=0A=
691 commits, and can be fast-forwarded." followed by "(use "git pull"=0A=
to update your local branch)"=0A=
=0A=
I get this error on all distros, including poky-bleeding.  I've not=0A=
been successful in disabling the mirrors just for linux-yocto-rt.  I=0A=
am now trying a build, albeit on my slow machine (two cores, where if=0A=
I don't force bitbake into running one task at a time, it hangs),=0A=
after deleting everything except the conf directory to see if that=0A=
makes any difference=0A=
=0A=
Krogoth:=0A=
=0A=
On 2.1, the error message occurs very quickly:=0A=
=0A=
ERROR: Nothing PROVIDES 'linux-yocto-rt' (but=0A=
/home/ron/yocto_2.1/poky/meta/recipes-rt/images/core-image-rt.bb=0A=
DEPENDS on or otherwise requires it)=0A=
ERROR: linux-yocto-rt was skipped: PREFERRED_PROVIDER_virtual/kernel=0A=
set to linux-yocto, not linux-yocto-rt=0A=
ERROR: linux-yocto-rt was skipped: PREFERRED_PROVIDER_virtual/kernel=0A=
set to linux-yocto, not linux-yocto-rt=0A=
NOTE: Target 'linux-yocto-rt' is unbuildable, removing...=0A=
Missing or unbuildable dependency chain was: ['linux-yocto-rt']=0A=
NOTE: Target 'core-image-rt' is unbuildable, removing...=0A=
Missing or unbuildable dependency chain was: ['core-image-rt', 'linux-yocto=
-rt']=0A=
ERROR: Required build target 'core-image-rt' has no buildable providers.=0A=
Missing or unbuildable dependency chain was: ['core-image-rt', 'linux-yocto=
-rt']=0A=
=0A=
---=0A=
=0A=
Any clues as how to work around either?=0A=
=0A=
Ron Oakes=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

