Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-2.stofanet.dk (mx-aarh-2.stofanet.dk [212.10.10.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E54D8E016DB
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 08:29:29 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-2.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1VcGf9-00078l-1H; Fri, 01 Nov 2013 16:29:27 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 418227ED86;
	Fri,  1 Nov 2013 16:29:27 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Fri, 01 Nov 2013 16:29:26 +0100
Message-ID: <3504622.JF20vPhCR2@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-11-lowlatency; KDE/4.11.2; i686; ; )
In-Reply-To: <CADi-vsyk+mZ3qnYKVW13dQoFzQpGokSNBT5WitOvqBsGJMx+Dw@mail.gmail.com>
References: <CADi-vsyk+mZ3qnYKVW13dQoFzQpGokSNBT5WitOvqBsGJMx+Dw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: 2.6.39 kernel and poky
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
X-List-Received-Date: Fri, 01 Nov 2013 15:29:30 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"


You could try to copy the 3.10 recipe and just fixc the revision to poi=
nt to=20
the old version. the kernels buildsystem have not changes dramatically =
since=20
then I think/hope :)

Fredag den 1. november 2013 11:21:39 skrev Maxwell Bottiger:
> I have a custom kernel and drivers I built for an Atmel AT91SAM9x5ek =
system
> on a chip, and I'd like to use them with yocto to build a distributio=
n.
>=20
> The original documentation, support CD, etc are all based around an o=
pen
> embedded build from 2011, which doesn't seem to work any longer.  Yoc=
to
> looks like a great alternative, but wants to build the 3.10 kernel, w=
hich I
> don't think supports this SoC any longer.  So, is there a straight fo=
rward
> method of building a standard Poky root filesystem, but with a custom=

> recipe for the 2.6.39 kernel instead of the stock one?
>=20
> Thanks for your help.

--=20
S=F8ren Holm

