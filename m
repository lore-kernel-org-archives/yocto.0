Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-3.stofanet.dk (mx-aarh-3.stofanet.dk [212.10.10.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA9CFE011B9
	for <yocto@yoctoproject.org>; Sun, 27 Oct 2013 23:26:18 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-3.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1VagHI-0003BW-1s
	for yocto@yoctoproject.org; Mon, 28 Oct 2013 07:26:16 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 62B7A7ED6D
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 07:26:16 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Mon, 28 Oct 2013 07:26:16 +0100
Message-ID: <1489979.YGJBfpbiDO@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-11-lowlatency; KDE/4.11.2; i686; ; )
MIME-Version: 1.0
Subject: Trouble packaging files containing space
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
X-List-Received-Date: Mon, 28 Oct 2013 06:26:18 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi

I have a package containing files that includes spaces in their same.

The files are located in the same directory without a space in their na=
me is=20
packages just find.

I specify FILES_$[PN} like this

FILES_${PN} =3D "${prefix}/local/Mikrofyn"

What might be wrong?

--=20
S=F8ren Holm

