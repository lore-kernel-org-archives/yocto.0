Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23E6CE00848; Wed,  8 Oct 2014 15:04:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADA02E0077F
	for <yocto@yoctoproject.org>; Wed,  8 Oct 2014 15:04:42 -0700 (PDT)
Received: from comp-006-thk.localnet (unknown [78.9.136.150])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id A19A02B70AF9;
	Thu,  9 Oct 2014 00:04:39 +0200 (CEST)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: Wy kevinthesun <kevinthesunwy@gmail.com>
Date: Thu, 09 Oct 2014 00:04:38 +0200
Message-ID: <1689030.f24RTAysQK@comp-006-thk>
User-Agent: KMail/4.14.1 (Linux/3.16.3-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
	<20141008204308.GM25997@denix.org>
	<CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Cannot run simple binary executable file
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
X-List-Received-Date: Wed, 08 Oct 2014 22:04:47 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Thursday 09 of October 2014 05:34:29 Wy kevinthesun wrote:
> Hi Denys, I have tried 1.5.1 and 1.3. All of them use ld-linux.so.3.
> Actually in the /lib directory of these toolchains I only find
> ld-linux.so.3.

Try running 'readelf -a <yourbinary> |grep FP' this should give a hint =
on the=20
setting of -mfloat-abi that was used during compilation. This post migh=
t=20
explain more: https://gcc.gnu.org/ml/gcc-help/2012-02/msg00082.html

readelf will also give you the interpreter name that the binary wants t=
o be=20
run with (in your case it should be ld-linux.so.3). However, I've also =
seen=20
ld-linux.so.3 being symlinked to proper armhf.so (and program binaries =
would=20
use ld-linux.so as interpreter) or the other way round, so whatever rea=
delf=20
prints as the requested interpreter might not necessarily be conclusive=
.

Long shot, but have you tried grabbing ld-linux.so* from 1.5 and callin=
g it on=20
1.6 like this?
=09./ld-linux.so.3 ./yourbinary


>=20
> Thank you.
>=20
> 2014-10-09 4:43 GMT+08:00 Denys Dmytriyenko <denis@denix.org>:
> > On Tue, Oct 07, 2014 at 07:05:42PM -0700, Wy kevinthesun wrote:
> > > However, a new problem occurs. Now when I tries run HelloWorld bi=
nary,
> > > after "Hello World" is printed, the terminal also prints "Segment=
ation
> > > fault". It seems that some memory problems occurs. I guess it com=
es from
> > > that the 1.5.1 yocto system on boards hopes ld-linux-armhf.so.3 a=
s
> >=20
> > dynamic
> >=20
> > > linker, instead of ld-linux.so.3, which is used by toolchain. The=
re may
> >=20
> > be
> >=20
> > > some memory address problem between them. How can I solve it?
> >=20
> > As Nicolas suggested earlier, it seems you are trying to mix ABIs h=
ere.
> > Because ld-linux-armhf.so.3 indicates the system uses hardfp ABI, b=
ut the
> > example app you built with your toolchain wants ld-linux.so.3, whic=
h is
> > usually the old softfp ABI. You'd need to match ABIs and the easies=
t
> > solution
> > is to use the same toolchain that was used to build the system (1.5=
.1?)
> >=20
> > --
> > Denys
> >=20
> > > 2014-10-07 18:17 GMT-07:00 Wy kevinthesun <kevinthesunwy@gmail.co=
m>:
> > > > Problem solved! It turns out it is the mismatch of ld-linux.so.=
 I
> >=20
> > referred
> >=20
> > > > to this post
> >=20
> > http://stackoverflow.com/questions/24543474/cross-compiled-gnu-arm-=
beagleb
> > oneblack-from-windows-runtime-error-on-elf ,
> >=20
> > > > and found my problem was exactly the same: the binary needs
> > > > /lib/ld-linux.so.3 to run, but that file is missing in the 1.5.=
1 yocto
> > > > system on board. Then I copied ld-linux.so.3 file from Yocto to=
olchain
> >=20
> > on
> >=20
> > > > my pc. Then it works!
> > > >=20
> > > > Thank you!
> > > >=20
> > > > 2014-10-07 8:21 GMT-07:00 Nicolas Dechesne <
> >=20
> > nicolas.dechesne@linaro.org>:
> > > > On Tue, Oct 7, 2014 at 1:07 PM, Wy kevinthesun <
> >=20
> > kevinthesunwy@gmail.com>
> >=20
> > > >> wrote:
> > > >> > Hi, I am new to Yocto Project and learning to develop softwa=
re on
> >=20
> > Atmel
> >=20
> > > >> > SAMA5D3 Xplained board, on which Yocto 1.5.1 is pre-built. I=

> >=20
> > followed
> >=20
> > > >> the
> > > >>=20
> > > >> > instructions and got the 1.6.1 toolchain
> > > >> >=20
> > > >> > poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1=
.6.1.sh
> >=20
> > .
> >=20
> > > >> > I can compile the simple HelloWorld program and binary file =
is
> > > >> > made.
> > > >>=20
> > > >> Then I
> > > >>=20
> > > >> > copied the binary file
> > > >> >=20
> > > >> > into board and tried to run it. However, when I changed to t=
he file
> > > >>=20
> > > >> located
> > > >>=20
> > > >> > directory and type
> > > >> >=20
> > > >> > "./Hello", it returned "sh: ./Hello: No such file or directo=
ry".
> >=20
> > Then I
> >=20
> > > >> > tried "sh Hello", it gave
> > > >> >=20
> > > >> > me  "Hello: Hello: cannot execute binary file ". If I type "=
file
> > > >>=20
> > > >> Hello", it
> > > >>=20
> > > >> > gives "Hello: ELF 32-bit
> > > >> >=20
> > > >> >  LSB  executable, ARM, EABI5 version 1 (SYSV), dynamically l=
inked
> >=20
> > (uses
> >=20
> > > >> > shared libs), for GNU/Linux 2.6.16,
> > > >> > BuildID[sha1]=3D9933a2d2ce212099c5f9902a8e612c1423e136da, no=
t
> >=20
> > stripped". I
> >=20
> > > >> > googled and someone
> > > >> >=20
> > > >> > said the problem may be the toolchain. Then I tried 1.3, 1.5=
.1
> > > >>=20
> > > >> toolchain for
> > > >>=20
> > > >> > arm, but still same
> > > >> >=20
> > > >> > error. Could you please help me about this problem?
> > > >>=20
> > > >> i suspect this is an armv7 soft-float vs hard-float mismatch. =
Either
> > > >> your prebuilt OE system is configured with soft-float and the
> > > >> toolchain you use compiled for hard-float by default, or the o=
ther
> > > >> way
> > > >> around. can you check how you've compile HelloWolrd and check =
the
> > > >> other ABI?
> > >=20
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto

--=20

Maciej Borz=C4=99cki=20
Senior Software Engineer Open-RnD Sp. z o.o.=20
www.open-rnd.pl, Facebook, Twitter=20
mobile: +48 telefon, fax: +48 42 657 9079=20

Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe z=
awiera=C4=87 chronione prawem lub=20
poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do wi=
adomo=C5=9Bci i u=C5=BCytku os=C3=B3b, do=20
kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 =
zosta=C5=82a otrzymana przypadkowo=20
zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=B3b trzec=
ich. W takim przypadku=20
uprasza si=C4=99 o natychmiastowe zniszczenie wiadomo=C5=9Bci oraz poin=
formowanie=20
nadawcy o zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwro=
tnej. Dzi=C4=99kujemy.=20

This message, including any attachments hereto, may contain privileged =
or=20
confidential information and is sent solely for the attention and use o=
f the=20
intended addressee(s). If you are not an intended addressee, you may ne=
ither=20
use this message nor copy or deliver it to anyone. In such case, you sh=
ould=20
immediately destroy this message and kindly notify the sender by reply =
email.=20
Thank you. 

