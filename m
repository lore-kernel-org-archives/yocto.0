Return-Path: <btv1==3669040a9bc==Matt.Schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFCCAE00799; Wed, 15 Oct 2014 17:39:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_40 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2957]
X-Greylist: delayed 1063 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Oct 2014 17:39:42 PDT
Received: from barbvt11.planar.com (mail.planar.com [199.244.172.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95904E006EF
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 17:39:42 -0700 (PDT)
X-ASG-Debug-ID: 1413418915-04afd24212122590001-yzSStA
Received: from msxbvt03.planar.net (msxbvt03.planar.net [172.16.0.147]) by
	barbvt11.planar.com with ESMTP id qUjxUeABXx7do55c for
	<yocto@yoctoproject.org>; Wed, 15 Oct 2014 17:21:55 -0700 (PDT)
X-Barracuda-Envelope-From: Matt.Schuckmann@planar.com
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Wed, 15 Oct 2014 17:21:55 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 15 Oct 2014 17:21:54 -0700
Thread-Topic: Creating new u-boot board
X-ASG-Orig-Subj: Creating new u-boot board
Thread-Index: Ac/o1zBiSi9w17JoQKyDEZDIEZ0fhw==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD87999CB@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: msxbvt03.planar.net[172.16.0.147]
X-Barracuda-Start-Time: 1413418915
X-Barracuda-URL: http://10.10.111.113:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at planar.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.4960 1.0000 0.0000
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No,
	SCORE=0.00 using per-user scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.10615
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Creating new u-boot board
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
X-List-Received-Date: Thu, 16 Oct 2014 00:39:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm pretty confused about what is the best way to go on this.=20
I realize that there are several paths that I could take but I really don't=
 know which is the best way to go.=20

We are creating a new board largely based off the beaglebone design but cus=
tomized to our needs.
I'm basing my software work off the TI SDK 7.0 (yes I know that is almost a=
 year but it is the TI blessed version)

I feel like I need to create a new u-boot board configuration which I have =
done in my own sandbox.=20

Now I don't know if I should be creating a patch for my changes and adding =
them to a bbappends for the ti u-boot recipe or if I should create a new cl=
one of ti's u-boot repo to check my changes into and create a new recipe th=
at references my repo? Or is there another option that I should be explorin=
g.=20

Which path is preferred?
What are the short/long term pro's and con's of each approach?=20

Matt S.=20


