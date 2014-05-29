Return-Path: <sgh@sgh.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A312DE00B68; Thu, 29 May 2014 12:38:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.10.10.12 listed in list.dnswl.org]
Received: from mx-aarh-2.stofanet.dk (mx-aarh-2.stofanet.dk [212.10.10.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62724E00A2F
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 12:38:04 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-2.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1Wq69I-0002RT-0T; Thu, 29 May 2014 21:38:00 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id D90C57ED56;
	Thu, 29 May 2014 21:37:59 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Thu, 29 May 2014 21:38:01 +0200
Message-ID: <2207252.t1leCgR7Kn@koontz>
User-Agent: KMail/4.13 (Linux/3.13.0-27-lowlatency; KDE/4.13.0; i686; ; )
In-Reply-To: <53876533.7080306@bsmucker.eu.org>
References: <537F9583.50407@bsmucker.eu.org> <2317978.pEesILAVCv@koontz>
	<53876533.7080306@bsmucker.eu.org>
MIME-Version: 1.0
Subject: Re: Yocto with Initial RamFS
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
X-List-Received-Date: Thu, 29 May 2014 19:38:10 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Torsdag den 29. maj 2014 09:49:55 skrev Brian Smucker:
> Thanks Soren,
>=20
> My followup question is: Can I mix toolchains in this situation?
>=20
> Can I compile the initramfs binaries with the uclibc toolchain based =
on
> the poky-tiny distro and the regular file system binaries with the
> glibc-based toolchain (based on a different distro)?
>=20
> If this is possible, how would I begin to do it?

I don't know, but I've got a simmilar need. Basically I was a very mini=
mal=20
busybox-static for the initramfs, but a "full-fledged" version for the =
main=20
rootfs. I guess that's somehow the same thing.

Maybe you have an idea on how to do that?

=20
--=20
S=F8ren Holm

