Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE339E00F18; Sun, 20 Sep 2015 17:19:55 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CD45E00AAB
	for <yocto@yoctoproject.org>; Sun, 20 Sep 2015 17:19:53 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Mon, 21 Sep 2015 10:19:47 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 21 Sep 2015 10:19:44 +1000
Thread-Topic: [yocto] Busybox hwclock.sh initscript issues
Thread-Index: AdDyBZswl3kRnKI6QbO5YMPpVXLQFgB/E+ag
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40227C5AD1A8C@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40227C5AD19F4@IR-CENTRAL.corp.innerrange.com>
	<55FBF5DF.6000801@mlbassoc.com>
In-Reply-To: <55FBF5DF.6000801@mlbassoc.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-8.000.1202-21826.007
x-tm-as-result: No--47.224400-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: Busybox hwclock.sh initscript issues
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
X-List-Received-Date: Mon, 21 Sep 2015 00:19:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 2015-09-18 21:31, Gary Thomas wrote:
>=20
> On 2015-09-17 23:28, Craig McQueen wrote:
> > I'm using Yocto dizzy. I've found a couple of issues with the Busybox
> hwclock.sh initscript.
> >
> > 1) The script checks that /sbin/hwclock exists at the start. But after =
that it
> runs hwclock without an explicit /sbin/hwclock path. So it only works if =
/sbin/
> is in the PATH. Thus it doesn't run properly when called from e.g. cronie
> which doesn't run with /sbin/ in the PATH.
> >
> > 2) The bootmisc.sh initscript uses the time from /etc/timestamp if the
> hwclock time is older. That's good. But then by default, hwclock.sh runs =
after
> bootmisc.sh, and unconditionally overwrites the system time from the
> hwclock. So on a system without a functional hwclock, the /etc/timestamp
> feature basically doesn't work. One solution is modify
> INITSCRIPT_PARAMS_${PN}-hwclock so it doesn't run at start-up (I am doing
> that in a busybox bbappend).
>=20
> Why do you think it doesn't work?  On a system without a functioning
> hardware clock, at least the time stamp moves forward on every
> boot/shutdown.

It doesn't work because after the bootmisc.sh runs, which sets the time acc=
ording to /etc/timestamp, then hwclock.sh runs and sets the time to that of=
 the non-functional hwclock (2000-01-01 00:00 in my case).

To fix it, I've made a busybox bbappend file with the following:

INITSCRIPT_PARAMS_${PN}-hwclock =3D "stop 20 0 1 6 ."

That means hwclock.sh isn't run at start-up (but actually bootmisc.sh runs =
it as part of its handling of /etc/timestamp). That makes it work the way I=
 want, and how I suspect the bootmisc.sh author intended it.

--=20
Craig McQueen


