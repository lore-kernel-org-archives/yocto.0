Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE005.bigfish.com (am1ehsobe005.messaging.microsoft.com
	[213.199.154.208])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F7A2E004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 15:37:12 -0700 (PDT)
Received: from mail54-am1-R.bigfish.com (10.3.201.251) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.22; Tue, 27 Sep 2011 22:37:10 +0000
Received: from mail54-am1 (localhost.localdomain [127.0.0.1])	by
	mail54-am1-R.bigfish.com (Postfix) with ESMTP id CC78C1AE8496	for
	<yocto@yoctoproject.org>; Tue, 27 Sep 2011 22:37:10 +0000 (UTC)
X-SpamScore: 0
X-BigFish: VS0(zzzz1202hzzz2dh2a8h668h839h8e2h8e3h62h)
X-Spam-TCS-SCL: 1:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail54-am1 (localhost.localdomain [127.0.0.1]) by mail54-am1
	(MessageSwitch) id 131716299689570_29274;
	Tue, 27 Sep 2011 22:36:36 +0000 (UTC)
Received: from AM1EHSMHS006.bigfish.com (unknown [10.3.201.243])	by
	mail54-am1.bigfish.com (Postfix) with ESMTP id 11710BD0054	for
	<yocto@yoctoproject.org>; Tue, 27 Sep 2011 22:36:36 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS006.bigfish.com
	(10.3.207.106) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Tue, 27 Sep 2011 22:36:35 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0323.007; Tue, 27 Sep 2011 17:36:33 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: multilib issue when setting DEFAULTTUNE
Thread-Index: AQHMfWXotaNYxB3+l0KTk/lIIVTwBA==
Date: Tue, 27 Sep 2011 22:36:33 +0000
Message-ID: <CAEsOVNcU7Rw4C7EkBCb6uw0dz_3U+9B=L+OW4or1t08bv_pBCg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: multilib issue when setting DEFAULTTUNE
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Sep 2011 22:37:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <AF3188534A8688499F3866675D6CC433@freescale.net>
Content-Transfer-Encoding: quoted-printable

All,

I'm having a problem building multilib for ppc64e5500. My local.conf
looks like this following:

require conf/multilib.conf
MULTILIBS =3D "multilib:lib64"
DEFAULTTUNE_virtclass-multilib-lib64 =3D "ppc64e5500"

If I change the last time to:

DEFAULTTUNE_virtclass-multilib-lib64 =3D "powerpc64"

Everything works just fine. We get images built, sysroot created, etc

Obviously we want the first one to work as it has additional compiler
flags for that target. I've tried tweaking tune-ppce5500-64b.inc to
look like arch-powerpc64.inc almost exactly but I'm really just
guessing here...

What happens is bitbake essentially locks up if I enable -DDD the
output will usually look something like this:

DEBUG: LOAD /local/home/mattsm/git/poky/meta-yocto/recipes-core/netbase/net=
base_4.45.bbappend
DEBUG: BB :0: inheriting classes/multilib.bbclass

And freeze, the last class it freezes on could be one of several but
the multilib.bbclass is always close to being the last one loaded.

Does anyone have any pointers about where to start looking?

-Matthew=


