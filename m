Return-Path: <rtillet@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77DFAE007F2; Wed, 28 Mar 2018 09:17:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rtillet[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F68AE005A9
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 09:17:13 -0700 (PDT)
Received: from zimbra50-e8.priv.proxad.net (unknown [172.20.243.200])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 1456913F8E7;
	Wed, 28 Mar 2018 18:17:12 +0200 (CEST)
Date: Wed, 28 Mar 2018 18:17:12 +0200 (CEST)
From: rtillet@free.fr
To: Ross Burton <ross.burton@intel.com>
Message-ID: <2116055660.170943542.1522253832836.JavaMail.root@zimbra50-e8.priv.proxad.net>
In-Reply-To: <CAJTo0LbTPSZLLv5pNRoA1J0q8w7Oo6FmVpGBA+D7oj=Fnbv8hg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [82.239.23.157]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - FF3.0 (Win)/7.2.0-GA2598)
X-Authenticated-User: rtillet@free.fr
Cc: yocto@yoctoproject.org
Subject: Re: RDEPENDS is ignored when building rootfs
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
X-List-Received-Date: Wed, 28 Mar 2018 16:17:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello Ross,

Thanks for your quick reply, but I have already tried your suggests:
Without "RDEPENDS", libncurses.is is not in the rootFs,
With "REDEPENDS=3Dncurses-libncurses", is not in the rootFs also.

I'm sure that the library is not called from a dlopen. The only way to make=
 to work is to add "ncurses-libform" to the "local.conf" file.
I've spent the whole day to try to understand this issue, and I'm stuck and=
 surprised that a so basic example does not work as it should.

As a reminder:
- I try to add a very basic recipe to a core-minimal-image
- For the beaglebone.=20

If you have any others suggestions, feel free.

Rapha=C3=ABl.

----- Mail original -----
De: "Ross Burton" <ross.burton@intel.com>
=C3=80: "Rapha=C3=ABl TILLET" <rtillet@free.fr>
Cc: yocto@yoctoproject.org
Envoy=C3=A9: Mercredi 28 Mars 2018 17:57:17
Objet: Re: [yocto] RDEPENDS is ignored when building rootfs

On 28 March 2018 at 16:00, Rapha=C3=ABl TILLET <rtillet@free.fr> wrote:
> I=E2=80=99m using =C2=AB Pyro =C2=BB, and have built a very simple recipe=
. The build program
> Inside the recipe needs =C2=AB libncurses.so =C2=BB at run time, so I hav=
e added to my
> recipe the following :
>
> DEPENDS_{PN} =3D =C2=AB ncurses =C2=BB
> RDEPENDS_${PN}=3D =C2=AB  ncurses-libform =C2=BB
>
>
>
> The build is ok, but my final RootFs does not contain the expected =C2=AB
> libncurses.so =C2=BB Library.
>
>
>
> The only way to force the build to include =C2=AB libncurses.so =C2=BB in=
 the rootfs
> is to add =C2=AB ncurses-libform =C2=BB to my =C2=AB IMAGE_INSTALL =C2=BB=
 in =C2=AB my local.conf =C2=BB
> file, and normally I should not have to do this=E2=80=A6..

If your application links to libncurses normally then you won't need
to do RDEPENDS at all, because the dependency will be added
automatically.

libncurses.so.5 is actually in ncurses-libncurses, so that is what you
should add to RDEPENDS if your application dlopen()s ncurses instead
of linking.

Ross

