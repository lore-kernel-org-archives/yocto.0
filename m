Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-1.stofanet.dk (mx-aarh-1.stofanet.dk [212.10.10.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0BC9E01728
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 09:06:01 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-1.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1VapKF-0000Ff-0Q; Mon, 28 Oct 2013 17:05:55 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id CE87F7ED6D;
	Mon, 28 Oct 2013 17:05:54 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Mon, 28 Oct 2013 17:05:54 +0100
Message-ID: <2101270.njZzpmM3TP@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-11-lowlatency; KDE/4.11.2; i686; ; )
In-Reply-To: <1560118.YdaQdLeFSB@helios>
References: <1489979.YGJBfpbiDO@koontz> <526E7ACD.4030907@mlbassoc.com>
	<1560118.YdaQdLeFSB@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Trouble packaging files containing space
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
X-List-Received-Date: Mon, 28 Oct 2013 16:06:03 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Mandag den 28. oktober 2013 16:01:24 skrev Paul Eggleton:
>=20
> S=F8ren, are you getting unpackaged file warnings? Are the files list=
ed if you
> look under image/ in the work directory for the recipe? FWIW, I just =
tested
> here and installing files whose filenames contain spaces worked just =
fine.

I get erro regarding files installed but not shipped - but that's a dif=
feren=20
issue I think. That particular issue is strange sine the un-shupped fil=
es are=20
source-files that I do not install. They end up in image/ during do_pac=
kage.

The image-dir contains all the files including the files containing spa=
ces.

--=20
S=F8ren Holm

