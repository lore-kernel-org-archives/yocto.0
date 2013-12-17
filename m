Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-3.stofanet.dk (mx-aarh-3.stofanet.dk [212.10.10.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7AFDE007F1
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 23:33:31 -0800 (PST)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-3.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1Vsp9h-0007E9-1D; Tue, 17 Dec 2013 08:33:25 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 11BF77EC6C;
	Tue, 17 Dec 2013 08:33:25 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Tue, 17 Dec 2013 08:33:25 +0100
Message-ID: <1491937.Jvio6PXcTZ@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-14-lowlatency; KDE/4.11.2; i686; ; )
In-Reply-To: <52AF395D.8020506@mlbassoc.com>
References: <52A9D0F7.7050501@mlbassoc.com>
	<CAPhnLPAEpU-B0b6zU_XSL7DgOmCnfwjjZcRq2xkffHmU0PMHyQ@mail.gmail.com>
	<52AF395D.8020506@mlbassoc.com>
MIME-Version: 1.0
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: Re: How to force the use of git-native?
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
X-List-Received-Date: Tue, 17 Dec 2013 07:33:35 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi

Should'nt it be enough to remove git-native from ASSUME_PROVIDED ?


Mandag den 16. december 2013 10:33:17 skrev Gary Thomas:
> On 2013-12-16 08:10, Flanagan, Elizabeth wrote:
> > Gary:
> >=20
> > This should help.
> > http://autobuilder.yoctoproject.org/pub/buildtools/20131216-2/build=
tools/p
> > oky-eglibc-i686-buildtools-tarball-i586-buildtools-nativesdk-standa=
lone-1.
> > 5.sh
> >=20
> > I haven't tested this out yet, but it is based off of the dora 10.0=
.0
> > release, so please, let me know if you have problems with it.
>=20
> Seems to work fine on my Fedora 13 box.
>=20

--=20
S=F8ren Holm

