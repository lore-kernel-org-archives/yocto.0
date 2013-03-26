Return-Path: <eric@eukrea.com>
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D52AE00740
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 02:02:33 -0700 (PDT)
Received: from e6520eb (pac33-2-82-240-38-71.fbx.proxad.net [82.240.38.71])
	(Authenticated sender: eukrea)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id 812E34B005F;
	Tue, 26 Mar 2013 10:02:24 +0100 (CET)
Date: Tue, 26 Mar 2013 10:02:22 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Florin Cristian Dan <dan.florincristian@gmail.com>
Message-ID: <20130326100223.18d9eb82@e6520eb>
In-Reply-To: <CABzOdpRcL1L-7xrvuoZFkojQsStR1En1TKmekE_vPVvbYy7ZQQ@mail.gmail.com>
References: <CABzOdpRcL1L-7xrvuoZFkojQsStR1En1TKmekE_vPVvbYy7ZQQ@mail.gmail.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Qt!
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
X-List-Received-Date: Tue, 26 Mar 2013 09:02:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Le Tue, 26 Mar 2013 08:33:43 +0200,
Florin Cristian Dan <dan.florincristian@gmail.com> a =C3=A9crit :

> Hi...
> I've tried adding this
>=20
> CORE_IMAGE_EXTRA_INSTALL +=3D "qt4-tools"
>=20
>  in order to have the qt4 tools, and now, i made a simple qt4 form
> aplication with a label ana a test box, nothing special, just for
> test...i first tried to compile the program on my target machine
>=20
> when i enterd qmake "project" i get this : "QMAKESPEC has not been se.
> so configuration cannot be deduced.Error processint file..."
>=20
> Then i tried to compile the program on my PC, i succeded doing that,
> and then copied all the folder to a USB and tried to run the
> executable on my target, and got this "./project: error thile loading
> shared librarie: libQt5Widgets.so.5: cannot open shared object file:
> No such file or directory.
>=20
> What am I missing?

your PC's SDK seems to use Qt5, Yocto is using Qt4.

Eric

