Return-Path: <sgh@sgh.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 922F6E00547; Mon, 23 Jun 2014 05:38:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.10.10.11 listed in list.dnswl.org]
Received: from mx-aarh-1.stofanet.dk (mx-aarh-1.stofanet.dk [212.10.10.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38B98E00283
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 05:38:25 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-1.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1Wz3Vw-0001wG-1H; Mon, 23 Jun 2014 14:38:24 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id E61317ECE2;
	Mon, 23 Jun 2014 14:38:16 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Mon, 23 Jun 2014 14:38:16 +0200
Message-ID: <1786383.3DlYgSqWZF@koontz>
User-Agent: KMail/4.13.1 (Linux/3.13.0-29-generic; KDE/4.13.1; i686; ; )
In-Reply-To: <CFCD80D1.95CB%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com>
MIME-Version: 1.0
Cc: "Bollinger, Seth" <Seth.Bollinger@digi.com>
Subject: Re: File system for alternate partition
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
X-List-Received-Date: Mon, 23 Jun 2014 12:38:27 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi

Make bitbake give you a tar.bz2 and then create the partitions etc. you=
rself=20
using an additional script. Wether it could be integrate I do not know.=


Mandag den 23. juni 2014 11:59:30 skrev Bollinger, Seth:
> Hello All,
>=20
> I need to generate a new file system for an alternate partition (not
> rootfs).  What=E2=80=99s the best way to go about this?  I may need t=
o create files
> with all different users/permission (perhaps root).  Do I need to use=

> pseudo?  Are there any examples of this out there?
>=20

--=20
S=C3=B8ren Holm

