Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-1.stofanet.dk (mx-aarh-1.stofanet.dk [212.10.10.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43E41E005B7
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 15:34:17 -0800 (PST)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-1.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1VjdlG-0007Hq-3B
	for yocto@yoctoproject.org; Fri, 22 Nov 2013 00:34:15 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 98D7B7EDD0
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 00:34:14 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Fri, 22 Nov 2013 00:34:14 +0100
Message-ID: <5578039.kilbyNirgt@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-13-lowlatency; KDE/4.11.2; i686; ; )
MIME-Version: 1.0
Subject: Console charset
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
X-List-Received-Date: Thu, 21 Nov 2013 23:34:19 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi

Im trying to set the console charset to utf8, but I can figure our whic=
h=20
packages are needed.

Can you provide some hint of where to look.

I have this in my local.conf, but it's not al all enough.

GLIBC_GENERATE_LOCALES =3D "en_GB.UTF-8 en_US.UTF-8 da_DK.UTF-8"
IMAGE_LINGUAS =3D "da-dk en-us"

--=20
S=F8ren Holm

