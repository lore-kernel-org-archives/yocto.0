Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-2.stofanet.dk (mx-aarh-2.stofanet.dk [212.10.10.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 803F4E00C89
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 14:41:31 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-2.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1WYMiv-0003bY-2N
	for yocto@yoctoproject.org; Thu, 10 Apr 2014 23:41:29 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 35E977EC32
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 23:41:29 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Thu, 10 Apr 2014 23:41:28 +0200
Message-ID: <2489555.PeAzndN2bA@koontz>
User-Agent: KMail/4.13 rc (Linux/3.13.0-23-lowlatency; KDE/4.12.97; i686; ; )
MIME-Version: 1.0
Subject: defconfig on daisy
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
X-List-Received-Date: Thu, 10 Apr 2014 21:41:37 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi

I have a linux-yocto_3.14.bbappend file in my local layer. Basically it=
 just=20
specifies the defconfig for the kernel.

The problem now is just that defconfig is not used for the specific ker=
nel.=20
It's copied into ${WORKDIR} but never used.

Have procedures on how to do this changed since dora - or is somthing b=
roken?
=20
--=20
S=F8ren Holm

