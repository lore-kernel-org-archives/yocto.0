Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10E5AE009D2; Sat, 27 Dec 2014 07:40:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.94.94.40 listed in list.dnswl.org]
Received: from arroyo.ext.ti.com (arroyo.ext.ti.com [192.94.94.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D099E0092E
	for <yocto@yoctoproject.org>; Sat, 27 Dec 2014 07:40:22 -0800 (PST)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id sBRFeLEb018037
	for <yocto@yoctoproject.org>; Sat, 27 Dec 2014 09:40:21 -0600
Received: from DLEE70.ent.ti.com (dlee70.ent.ti.com [157.170.170.113])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id sBRFeLWt026841
	for <yocto@yoctoproject.org>; Sat, 27 Dec 2014 09:40:21 -0600
Received: from DLEE11.ent.ti.com ([fe80::40fa:b936:da7c:d113]) by
	DLEE70.ent.ti.com ([fe80::c4c6:f618:54e7:ad11%28]) with mapi id
	14.03.0174.001; Sat, 27 Dec 2014 09:40:21 -0600
From: "Mills, William" <wmills@ti.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: My config got stuck in the toaster
Thread-Index: AdAh6BWfveuS1418RV+l1w0fXpPW/A==
Date: Sat, 27 Dec 2014 15:40:19 +0000
Message-ID: <EC0CC42105A97F4A81EA36CDF61DDAD45CA40387@DLEE11.ent.ti.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.91.86.186]
MIME-Version: 1.0
Subject: My config got stuck in the toaster
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
X-List-Received-Date: Sat, 27 Dec 2014 15:40:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OK, you are not going to believe me but I swear this really happened ...=0A=
=0A=
I have been playing with YP 1.7 over the break.=0A=
I thought I would give toaster a try so I had it running in the background =
as I tried various builds.=0A=
Somehow I got into a state where changes to my conf/local.conf file were be=
ing ignored.=0A=
I fixed it by stopping toaster.=0A=
=0A=
Here is the sequence as I remember:=0A=
=0A=
I was doing builds for qemuarm.=0A=
At some point I started toaster "source toaster start"=0A=
It could have been from a clean build dir but probably I had done a couple =
of test builds first.=0A=
For qemuarm I built:=0A=
    core-image-minimal, meta-toolchain, core-image-sato, core-image-sato-sd=
k, world=0A=
I definitely poked around the toaster UI at some of those builds.=0A=
Next in the same build dir (and the same screen session) I edited conf/loca=
l.conf to=0A=
MACHINE =3D qemux86=0A=
I then did core-image-sato again=0A=
It built for qemuarm=0A=
I double check conf/* and ENV settings.=0A=
I rm -rf cache =0A=
still builds for qemuarm=0A=
I stopped toaster with "source toaster stop"=0A=
I rm -rf cache again for safe keeping=0A=
I tried core-image-sato again and it started building for qemux86.=0A=
=0A=
I tried to reproduce this with a clean build dir and a trivial target "bitb=
ake -c clean ed"=0A=
With or without toaster running it always detects the config change and reb=
uilds the cache.=0A=
In the process I have now learned that removing the cache dir does not caus=
e a reparse as I expected.=0A=
However a config change does.=0A=
=0A=
I thought I had a theory w/ persistent bitbake process and files being kept=
 open =0A=
but I can't connect the dots and I can't reproduce it.=0A=
=0A=
Any Ideas?=0A=
=0A=
BTW: Building "world" does not look nice in toaster.  It list 100s of build=
 targets instead of just "world".=0A=
=0A=
Thanks,=0A=
Bill=0A=
=0A=

