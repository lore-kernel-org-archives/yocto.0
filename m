Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-2.stofanet.dk (mx-aarh-2.stofanet.dk [212.10.10.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 277E8E00C5B
	for <yocto@yoctoproject.org>; Mon, 21 Apr 2014 23:13:51 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-2.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1WcTxj-0004mL-2u; Tue, 22 Apr 2014 08:13:47 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 614167ECB5;
	Tue, 22 Apr 2014 08:13:47 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 22 Apr 2014 08:13:47 +0200
Message-ID: <2872826.V92YYLj4a2@koontz>
User-Agent: KMail/4.13 (Linux/3.13.0-24-lowlatency; KDE/4.13.0; i686; ; )
In-Reply-To: <53483D14.7020807@windriver.com>
References: <2489555.PeAzndN2bA@koontz> <7023738.t8MMlfpnim@koontz>
	<53483D14.7020807@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: defconfig on daisy
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
X-List-Received-Date: Tue, 22 Apr 2014 06:13:54 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Bruce

I've search the meta-data repos and kernel repo for a change matching t=
his. Is=20
it fixes or did you miss it?


Fredag den 11. april 2014 15:05:56 skrev Bruce Ashfield:
>=20
> I am. There's a missing patch that I typically carry, it actually
> links the fs/aufs directory into the build. Without it, the Kconfig
> and code isn't processed .. hence why everything is dropped.
>=20
> I have it merged now, but have to build aufs for all architectures to=

> make sure nothing broke.
>=20
--=20
S=F8ren Holm

