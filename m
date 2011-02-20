Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 452E74C800B6
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 12:23:44 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:16920
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PrDwd-0000Oc-AJ
	for yocto@yoctoproject.org; Sun, 20 Feb 2011 18:23:43 +0000
Message-Id: <02231D24-6F1D-40B5-BD03-6DAA5A49E038@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4D6157A2.8050906@mlbassoc.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sun, 20 Feb 2011 18:23:40 +0000
References: <3776E9FA-795C-450E-83EF-FF154CF1B6FF@keylevel.com>
	<4D6157A2.8050906@mlbassoc.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Re: How do I use layers to replacing system configuration files?
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
X-List-Received-Date: Sun, 20 Feb 2011 18:23:44 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

On 20 Feb 2011, at 18:04, Gary Thomas wrote:

> You'll need a meta-new/packages/netbase/netbase_4.44.bbappend file =20
> which
> tells bitbake where to find your override files.  I do this all the =20=

> time,
> for example, I have a board with two targets:
>  $ tree meta-ppc/packages/netbase/
>  meta-ppc/packages/netbase/
>  =E2=94=9C=E2=94=80=E2=94=80 netbase-4.44
>  =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 cobra
>  =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 interfaces
>  =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ppc8379
>  =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 interfaces
>  =E2=94=94=E2=94=80=E2=94=80 netbase_4.44.bbappend
>  $ cat meta-ppc/packages/netbase/netbase_4.44.bbappend
>  THISDIR :=3D "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>  FILESPATH =3D. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}"], =
d)}:"

Thanks. I was just looking at .bbappend when your message arrived ;-)

Section 4.8 of the Poky Reference Manual shows an even easier way of =20
doing what I need. All the .bbappend has is:

FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"

Chris


