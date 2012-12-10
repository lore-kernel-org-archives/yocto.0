Return-Path: <tim+yoctoproject.org@coote.org>
Received: from mercury.coote.org (mail.coote.org [46.65.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F776E00294
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 13:30:59 -0800 (PST)
Received: by mercury.coote.org (Postfix, from userid 500)
	id 9BBA34AC5; Mon, 10 Dec 2012 21:30:57 +0000 (GMT)
Received: from [127.0.0.1] (fw.coote.org [172.17.1.1])
	by mercury.coote.org (Postfix) with ESMTP id 772154A42;
	Mon, 10 Dec 2012 21:30:56 +0000 (GMT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Tim Coote <tim+yoctoproject.org@coote.org>
In-Reply-To: <alpine.DEB.2.02.1212101203550.10798@oneiric>
Date: Mon, 10 Dec 2012 21:30:56 +0000
Message-Id: <4CC85B88-E024-42A0-AC0A-5DEB60C56852@coote.org>
References: <alpine.DEB.2.02.1212101203550.10798@oneiric>
To: Robert P. J. Day <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.1499)
X-Spambayes-Classification: ham; 0.00
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: newest yocto release directories don't contain qemu kernel image
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
X-List-Received-Date: Mon, 10 Dec 2012 21:30:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

So I wasn't being totally stupid when I couldn't work out where the =
kernel images were.
On 10 Dec 2012, at 17:07, Robert P. J. Day <rpjday@crashcourse.ca> =
wrote:

>=20
>  in the section "Using Pre-Built Binaries and QEMU" in the QS guide
> that i contributed to, there's a link to the qemu download
> directories:
>=20
> =
http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines/qemu
>=20
> and a suggestion that one can go there and download the appropriate
> kernel for their QEMU session.
>=20
>  but starting with release 1.3, there is no pre-built kernel there
> anymore, so the quick start is therefore wrong.  have the pre-built
> kernels simply been dropped?  moved elsewhere?
>=20
> rday
>=20
> --=20
>=20
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, =
CANADA
>                        http://crashcourse.ca
>=20
> Twitter:                                       =
http://twitter.com/rpjday
> LinkedIn:                               =
http://ca.linkedin.com/in/rpjday
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


