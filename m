Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe001.messaging.microsoft.com [65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14065E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 09:08:06 -0700 (PDT)
Received: from mail111-tx2-R.bigfish.com (10.9.14.245) by
	TX2EHSOBE005.bigfish.com (10.9.40.25) with Microsoft SMTP Server id
	14.1.225.23; Fri, 4 May 2012 16:07:54 +0000
Received: from mail111-tx2 (localhost [127.0.0.1])	by
	mail111-tx2-R.bigfish.com (Postfix) with ESMTP id 72EE9260654	for
	<yocto@yoctoproject.org>; Fri,  4 May 2012 16:07:54 +0000 (UTC)
X-SpamScore: -9
X-BigFish: VS-9(zz9371I1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hbe9i)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail111-tx2 (localhost.localdomain [127.0.0.1]) by mail111-tx2
	(MessageSwitch) id 1336147673348584_20377;
	Fri,  4 May 2012 16:07:53 +0000 (UTC)
Received: from TX2EHSMHS025.bigfish.com (unknown [10.9.14.247])	by
	mail111-tx2.bigfish.com (Postfix) with ESMTP id 436C3A0211;
	Fri,  4 May 2012 16:07:53 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS025.bigfish.com
	(10.9.99.125) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 4 May 2012 16:07:52 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.151]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Fri, 4 May 2012 11:08:02 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Jim Rucker <jrucker@altera.com>
Thread-Topic: [yocto] error with bb.fetch2.get_srcrev(d)
Thread-Index: AQHNKhAUdsY+SAO8lkm6TyZ3WRIl4g==
Date: Fri, 4 May 2012 16:08:01 +0000
Message-ID: <CAEsOVNfDA9rcQ1dshyKBq=rCk4nmqsBTQ0QvNL9jxa5SO52VBg@mail.gmail.com>
References: <loom.20120504T174109-199@post.gmane.org>
In-Reply-To: <loom.20120504T174109-199@post.gmane.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: error with bb.fetch2.get_srcrev(d)
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
X-List-Received-Date: Fri, 04 May 2012 16:08:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <0B0A1380747B3A4FAC049FD2D93E1FA7@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, May 4, 2012 at 10:46 AM, Jim Rucker <jrucker@altera.com> wrote:
> In the project that I'm working on we have a recipes-bsp and recipes-kern=
el, and
> when I try to build virtual/kernel I'm getting the following error. It lo=
oks to
> me like it's trying to get the git from our u-boot server so it can find =
the
> version, but at this point I'm trying to build the kernel, not u-boot. So=
, is
> there a way to build it independently, and if so how do I isolate the iss=
ue?
> bitbake -DDD doesn't provide any additional info
>
>
>
> ERROR: Failure expanding variable SRCPV, expression was
> ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher
> failure for URL: 'None'. Fetch command export HOME=3D"/home/jrucker"; exp=
ort
> SSH_AGENT_PID=3D"1461"; export SSH_AUTH_SOCK=3D"/tmp/keyring-yphCY1/ssh";=
 export
> GIT_CONFIG=3D"/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i=
686-
> linux/usr/etc/gitconfig"; export PATH=3D"/home/jrucker/poky/6.0/poky-edis=
on-
> 6.0/build/tmp/sysroots/i686-linux/usr/bin/armv7a-vfp-neon-poky-linux-
> gnueabi:/home/jrucker/poky/6.0/poky-edison-
> 6.0/build/tmp/sysroots/socfpga5xs1/usr/bin/crossscripts:/home/jrucker/pok=
y/6.0/p
> oky-edison-6.0/build/tmp/sysroots/i686-
> linux/usr/sbin:/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/=
i686-
> linux/usr/bin:/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i=
686-
> linux/sbin:/home/jrucker/poky/6.0/poky-edison-6.0/build/tmp/sysroots/i686=
-
> linux//bin:/home/jrucker/poky/6.0/poky-edison-
> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
> 6.0/bitbake/bin/:/home/jrucker/poky/6.0/poky-edison-
> 6.0/scripts:/home/jrucker/poky/6.0/poky-edison-
> 6.0/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:=
/usr/sb
> in:/usr/bin:/sbin:/bin:/usr/games:/home/jrucker/poky/6.0/poky-edison-
> 6.0/scripts"; git ls-remote ssh://git@ec2-67-102-16-93.compute-
> 1.amazonaws.com/uboot.git socfpga5xs1_v2011.12 failed with signal 128, ou=
tput:
> Permission denied (publickey).
> fatal: The remote end hung up unexpectedly

Does your u-boot SRCREV =3D ${AUTOREV}? You could try picking a specific
SHA so it does not have to check for the latest each time.

-M=


