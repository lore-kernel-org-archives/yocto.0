Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB7D8E00A5C; Thu, 15 Jun 2017 15:50:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.61 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E01CDE009A5
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 15:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1497567022; bh=MQvt9MAvnsSUKGdRtx8txmhcq7j/SdsKE0jO
	uG0Sspw=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=D
	MJd4ivUN/SmToiG0ek1HQasONk0i+ejbMvQ20YUS0Oxn6uqE4FaNtdokGCgaSDe8wj2
	TDWt8E0MW7zFy8gtYEmgZaVFvm4koYZ+eD3k4MnKQD3sWp8Z6QvJ3L4I1LrKhAORwQ/
	Qy6ACSbakzWrRd0iaJ6co8qNhO5tzjNyAZe5lyJ+KVAZFc2ebu/ykNDzSzfXMcOQle8
	bGMwC5WRljjp6V20Q4DEwNNITiRir2zi65udfg/coAKQVn80Vyw5zupyn92PQsKbuWu
	hJ0lJb7PC7ZSn45WmXz+UVDMMsSaz8KcTHvsu/DP/xZ0cpy4HcksM+LpJlBX2pZ2t+L
	4u4s1Q==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=es6nZP1FDb0d6yxWspx35miwK9nqQNWgltQUx6oM0I7QCqC8zSBfiBLnoa9mBrLpIyCUiWi8aTqVLFx5Kl1/Xt4Zop0nXRynlemJAQNosorZYfmWjaF8fIbsYmAbLdtI0BbX9ce7c3lFx4i9xZM3Im4JI6THtBblSrWDq8rRW4J5tJzGboYtLoEksLf+G6vxMnc8lV7j+HHrDj/JbK7ADcLrqpEWjyWjjpjlaWI9Jnf2h2BtpHbwWwp2zKqP+jmn++tl8Fq7KrTfOaja8Q4SSVr+3pTVsY2rzqrFETgHFAcPFApk2Y1NO6LT842dXeDUoGdaCz5pT55WrcjiTaSeSw==;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dLdan-0000zs-ID; Thu, 15 Jun 2017 18:50:21 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Andre McCurdy'" <armccurdy@gmail.com>,
	"'Bruce Ashfield'" <bruce.ashfield@gmail.com>, <yocto@yoctoproject.org>
References: <674A5206CFD34D99AF67A279C9F5E3C1@PAULD>
	<CADkTA4PAG8co3P=4KkJD8f+xwi77bnz4Puq3gqk9srf5nW2nFA@mail.gmail.com>
	<CAJ86T=Viis1KzQJztYbHxg5gP5enORxvJSaj4yHeFW3kbx1+XA@mail.gmail.com>
In-Reply-To: <CAJ86T=Viis1KzQJztYbHxg5gP5enORxvJSaj4yHeFW3kbx1+XA@mail.gmail.com>
Date: Thu, 15 Jun 2017 15:50:20 -0700
Message-ID: <9072A99484544467B1F323F462868215@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLmA/65drM7W+yBRFGvyjrk0dUhCQAIn+4g
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688a65430436d316f101854d552eb01e39d350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: Is linux-yocto-rt kernel compatible with x32 tune?
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
X-List-Received-Date: Thu, 15 Jun 2017 22:50:23 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> From: Andre McCurdy [mailto:armccurdy@gmail.com]=20
>=20
> Isn't the point of x32 that the kernel should be full 64bit (and so
> able to directly address all memory) and only user space should be
> restricted to 32bit pointers?
>=20
> If so, then the kernel ELF architecture x86-64 seems correct. If that
> kernel can't run x32 user space binaries then maybe the kernel config
> option to enable support for x32 user space is somehow missing?

You're probably right, although I never saw any docs that spelled that =
out. That would explain why there are libx32 directories. I was hoping =
that x32 just meant that everything was compiled with a single =
architecture, just like a 32-bit processor, just using 64-bit mode for =
the larger register set, and 32-bit pointers everywhere. No need for any =
multi-arch logic. That would seem to be desirable for a modest sized =
embedded system. But if it still produces a 64-bit kernel, I can live =
with that, as long as I can get it to work.

> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]=20
>=20
> I can't think of a reason off the top of my head that would=20
> prevent this from working at the kernel level.
>=20
> But can you confirm that a non-rt build for the same board works with
> x32 ? It could just be a kernel configuration issue if it=20
> does work with
> non-rt, since the -rt variant may not have a BSP entry point defined.

I did more thorough testing, doing six core-image-minimal builds: 32, =
32rt, 64, 64rt, 64x32, and 64x32rt. All the non-rt ones and the 64rt one =
work. The 32rt and 64x32rt both panic loading init.

I'm not sure if I'm specifying the rt kernel properly. My 32-bit =
local.conf includes

  MACHINE =3D "genericx86"
  PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto-rt"
  PREFERRED_VERSION_linux-yocto-rt ?=3D "4.8%"

and my 64-bit x32 local.conf includes

  MACHINE =3D "genericx86-64"
  DEFAULTTUNE =3D "core2-64-x32"
  baselib =3D "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', =
True) \
         or 'INVALID'), True) or 'lib'}"
  PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto-rt"
  PREFERRED_VERSION_linux-yocto-rt ?=3D "4.8%"

I have a tiny layer that just includes a linux-yocto-rt_4.8.bbappend:

  COMPATIBLE_MACHINE =3D "genericx86|genericx86-64"
  KERNEL_FEATURES_append =3D " ${@bb.utils.contains("TUNE_FEATURES", \
          "mx32", " cfg/x32.scc", "" ,d)}"

and a non-rt one just specifying COMPATIBLE_MACHINE. I copied that last =
line from the linux-yocto_4.8.bb file, because it's not in the rt =
recipe. The .scc file pulls in a .cfg file which turns on CONFIG_X86_X32 =
and CONFIG_COMPAT.=20

Yet the problem isn't with x32, it's that it can't run 32-bit binaries, =
even in a plain 32-bit kernel. So what am I leaving out, in my effort to =
specify the rt kernel?

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


