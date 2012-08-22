Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0BA4E013B7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 13:27:32 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:34979 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1T4HWO-0002yU-Ac; Wed, 22 Aug 2012 16:27:24 -0400
Date: Wed, 22 Aug 2012 16:27:25 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZAN=cCub4sgSW7am+TaA8bois9Q23_x1kRmWWBCh9=hCNXQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1208221623080.20631@oneiric>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
	<CA+YB3raTP8ROCvuidyH8zoupo4_qO1a+oWZ_Noakm3Kx5suRag@mail.gmail.com>
	<CAHUNapRLsCWvefm1+Sc0QT2OhVJ-e0fa3iF7zL2H2qFQLR+AUA@mail.gmail.com>
	<CABcZAN=Dktdoq00_uHAvG7Wy2UgQhZS0KbZOeCK-s=7B+RbwWA@mail.gmail.com>
	<CAHUNapRvcW+M2t-LUpDYGRYJBYhLu0Yy_z66gHqE67kb9yWXvA@mail.gmail.com>
	<CABcZAN=cCub4sgSW7am+TaA8bois9Q23_x1kRmWWBCh9=hCNXQ@mail.gmail.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: of recipes and packages
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
X-List-Received-Date: Wed, 22 Aug 2012 20:27:33 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-554297635-1345667246=:20631"

--8323329-554297635-1345667246=:20631
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Wed, 22 Aug 2012, Chris Larson wrote:

> On Wed, Aug 22, 2012 at 1:15 PM, Trevor Woerner <twoerner@gmail.com> wrot=
e:
> > On Wed, Aug 22, 2012 at 3:24 PM, Chris Larson <clarson@kergoth.com> wro=
te:
> >> On Wed, Aug 22, 2012 at 12:23 PM, Trevor Woerner <twoerner@gmail.com> =
wrote:
> >>> "bitbake -s" doesn't list "net-snmp-dbg net-snmp-doc net-snmp-dev..."
> >>> it lists "net-snmp". Therefore couldn't the wording of the bitbake
> >>> help be improved to say:
> >>>
> >>> -s, --show-versions   show current and preferred versions of all __re=
cipes__
> >>>
> >>> instead of:
> >>
> >>
> >> It could, and should, be changed in that way, yes.
> >
> > Do the OE people accept this wording too, or is this a
> > yocto-project-only thing? In other words, should a potential patch be
> > sent to OE or here?
>
> The change would be to a core component, which is part of OE and which
> yocto pulls in =E2=80=94 bitbake. So it would make no sense to send the p=
atch
> here. No changes to bitbake are going into poky without going into the
> main bitbake repository. The bitbake-devel mailing list is the correct
> place for it.

  there really should be an official glossary somewhere, and it should
be backed up with *actual* *examples* from the source as much as
possible.  that is, don't use "foo" if there's an existing recipe or
package whose use would be more informative.

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

--8323329-554297635-1345667246=:20631--
