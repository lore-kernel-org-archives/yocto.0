Return-Path: <btv1==3713d867686==Matt.Schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDB90E007C1; Tue, 21 Oct 2014 15:21:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 730 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Oct 2014 15:21:20 PDT
Received: from barbvt10.planar.com (mail.planar.com [199.244.172.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDDAFE007C1
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 15:21:20 -0700 (PDT)
X-ASG-Debug-ID: 1413929342-04b02b6fa62040e0002-yzSStA
Received: from msxbvt03.planar.net (msxbvt03.planar.net [172.16.0.147]) by
	barbvt10.planar.com with ESMTP id z0D58UtvayBY2FsL;
	Tue, 21 Oct 2014 15:09:04 -0700 (PDT)
X-Barracuda-Envelope-From: Matt.Schuckmann@planar.com
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 21 Oct 2014 15:09:03 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Chris Tapp <opensource@keylevel.com>, Yocto Project
	<yocto@yoctoproject.org>
Date: Tue, 21 Oct 2014 15:09:02 -0700
Thread-Topic: [yocto] Ubuntu 14.04 as a build host for "danny"
X-ASG-Orig-Subj: RE: [yocto] Ubuntu 14.04 as a build host for "danny"
Thread-Index: Ac/tcVBwpwXHzQ1UQ7etmfky9FynqQACTA6Q
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD87F921C@MSXBEBVT12.planar.net>
References: <4C4AA6E5-5FDF-4761-B245-30247B82EEF0@keylevel.com>
In-Reply-To: <4C4AA6E5-5FDF-4761-B245-30247B82EEF0@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: msxbvt03.planar.net[172.16.0.147]
X-Barracuda-Start-Time: 1413929343
X-Barracuda-URL: http://10.10.111.112:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at planar.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.2561 1.0000 -0.5460
X-Barracuda-Spam-Score: -0.55
X-Barracuda-Spam-Status: No,
	SCORE=-0.55 using per-user scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.10811
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: Ubuntu 14.04 as a build host for "danny"
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
X-List-Received-Date: Tue, 21 Oct 2014 22:21:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Chris Tapp
> Sent: Tuesday, October 21, 2014 1:54 PM
> To: Yocto Project
> Subject: [yocto] Ubuntu 14.04 as a build host for "danny"
>=20
> I'm currently building with "danny" under Ubuntu 12.04 (which shows as
> a "supported platform" in the documentation).
>=20
> However, I need to be able to use GStreamer 1.4, which means a need a
> later version of glib. This is easy for "danny", but I also develop and
> test my application on my development machine and that's not so easy!
>=20
> The easiest way to go would be to upgrade to 14.04. Does anyone have
> any experience of using "danny" under 14.04?
>=20

I am currently developing for the TI AM335x using Ubuntu 14.04 and working =
with Yocto and the Arago layer and the versions for their SDK 7.0 which is =
on the Danny branch.=20
I am not using the GStreamer stuff so I cannot comment on that specifically=
.=20

I did run into one problem with the latest version of makeinfo(texinfo) ins=
talled with Ubuntu 14.04. I can't remember the details but some documentati=
on wouldn't build or something like that. I think this was Arago specific b=
ut I can't remember for sure.=20
Basically I downgraded texinfo to version 4.13.=20

Matt S.

