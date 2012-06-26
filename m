Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C103BE0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 08:48:46 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:39226 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjY0T-00014S-Uy; Tue, 26 Jun 2012 11:48:46 -0400
Date: Tue, 26 Jun 2012 11:48:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1soE6k2nn1TyTU_z_CZFiU2C-BFb3DQo6NacyHRwELpFtA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1206261147580.5602@oneiric>
References: <alpine.DEB.2.02.1206260410060.21539@oneiric>
	<CAMKF1soE6k2nn1TyTU_z_CZFiU2C-BFb3DQo6NacyHRwELpFtA@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how many meta-toolchain-* targets are there?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jun 2012 15:48:47 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1179255540-1340725724=:5602"

--8323329-1179255540-1340725724=:5602
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Tue, 26 Jun 2012, Khem Raj wrote:

> On Tue, Jun 26, 2012 at 1:15 AM, Robert P. J. Day <rpjday@crashcourse.ca>=
 wrote:
> >
> > =C2=A0something that could be cleared up a bit in the docs ... how many
> > toolchain-related targets are there?
> >
> > =C2=A0for instance, running bitbake suggests that common targets includ=
e
> > meta-toolchain and meta-toolchain-sdk. =C2=A0on the other hand, the ADT
> > manual makes no reference to meta-toolchain-sdk but *does* mention
> > meta-toolchain-gmae (without explaining to the reader what that
> > represents but nonetheless recommends to the reader that if he needs
> > GMAE, he should build that, whereupon the poor reader is left
> > wondering what the heck GMAE is and whether it's important).
> >
> > =C2=A0and a search of the source shows a meta-toolchain-qte, for which =
i
> > can see no mention whatever in *any* of the docs.
> >
> > =C2=A0thoughts?
>
> they should be documented I agree. meta-toolchain-gmae and
> meta-toolchain-sdk are synonymous.

  i was about to make that very point.  :-)

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--8323329-1179255540-1340725724=:5602--
