Return-Path: <jholzmayr@the-exact-steps.net>
Received: from moutng.kundenserver.de (moutng.kundenserver.de [212.227.17.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 155B5E00AA2
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 04:11:52 -0700 (PDT)
Received: from oxbsltgw54.schlund.de (oxbsltgw54.schlund.de [172.19.249.201])
	by mrelayeu.kundenserver.de (node=mreue105) with ESMTP (Nemesis)
	id 0Ls9Wx-1XJUcL2vXT-013s4S; Mon, 10 Mar 2014 12:11:50 +0100
Date: Mon, 10 Mar 2014 12:11:50 +0100 (CET)
From: Josef Holzmayr <jholzmayr@the-exact-steps.net>
To: yocto@yoctoproject.org, Vali Cobelea <valentin.cobelea@enea.com>
Message-ID: <58476941.152432.1394449910667.open-xchange@email.1und1.de>
In-Reply-To: <531D9C64.4010806@enea.com>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
	<531D9C64.4010806@enea.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.4.0-Rev29
X-Provags-ID: V02:K0:VB/VFTSb8IcVhyNgDhUgCF/8DISwcIM5UuZAnQ2nSii
	f5oTaMfYLKOHap/ZzU/Acjes22wat/F2moyarK2sNsue+pggSg
	FGnHFNQK/hH0BjkUJkgnPt+NpvzA8ZKe5S6l5FEev13mys2Ul9
	c7xFxQxBMGmTc/hwc+egiffeSPoUmYm1lJr89Xr5JWxNJcwh99
	NaV7AhuJBJ8OFdP46Qxfq/EFS24f/mAuAg3qbX/vri1RdoNYb9
	P1MYeMzH0jGu9yY4UBWPAXmfjdnFSogoJfI8hfdMc//CAMf2ZN
	zW6n+0oluhfLKrVV5WTVNy9s+wlqyZ+gyMUbMxelelRWoduURc
	qRxOp5+HyNIvPfe28eeHq0Z0ysNFiezsVqVsnplxkaeZLmEvmJ
	L0tNlWYMVAjZBVRCQyv/B0vY7Bsh7uvoPs=
Subject: Re: [RFC] Blubber, a tool to set up yocto/poky projects easily
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Josef Holzmayr <jholzmayr@the-exact-steps.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Mar 2014 11:11:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Vali,

> Vali Cobelea <valentin.cobelea@enea.com> hat am 10. M=C3=A4rz 2014 um 12:=
05
> geschrieben:
>
> Looks ok at a first look, but my first suggestion would be to start
> using the "is" operator instead of "=3D=3D" when it comes to comparing st=
rings.
> Otherwise using your way with "=3D=3D" will crash if any of the variables
> (those "sys.argv[]") are None (void).

Thanks for the quick input! However, this is one of the very rare points I
intently did that way, because of the difference in meaning from "=3D=3D" t=
o "is"
(see
http://stackoverflow.com/questions/1504717/why-does-comparing-strings-in-py=
thon-using-either-or-is-sometimes-produce).
But I'm curious, how would one then properly compare the content of two str=
ings?
Checking both types first?

>
> Best regards,
> Vali

Greetz
Josef/Leto

>
>
> On 03/10/2014 12:59 PM, Josef Holzmayr wrote:
> > Howdy!
> >
> > After looking more and more into yocto, one of the main issues for me i=
s the
> > process to set up a project properly, including all layers and conf opt=
ions.
> > Especially those which would be needed to set exactly the same way agai=
n and
> > again every time somebody needs to reproduce a build.
> >
> > So I've come up with an idea: a small tool that can handle these things=
 for
> > me.
> > And here it is for your enjoyment/use/abuse/comments:
> >
> > https://github.com/LetoThe2nd/blubber
> >
> > Short excerpt from the README:
> >
> > But be warned first. Blubber is still in pre-pre-pre-alpha stage (more =
like
> > a
> > proof of concept), and has the following defects/bugs/non-features:
> > - Horribly bad python code (Yes, its really that bad. Blame me, its my =
first
> > attempt to use that language)
> > - No error checking whatsoever
> > - Largely incomplete feature set
> > - Did I already mention the utterly bad code?
> > - Only supports git sources so far.
> >
> > Despite that, it can already do some magic:
> > - Getting poky and layers from git, and checking out branches/tags/comm=
its
> > if
> > needed
> > - Accordingly setting up build/conf/bblayers.conf
> > - Setting up build/conf/local.conf with a set of predefined options
> > - Running arbitrary commands with proper shell setup (source-ed
> > poky/oe-init-build-env) for the configured project.
> >
> > If anybody has feedback, just scream loudly. Or if anybody knows of a b=
etter
> > solution making it all obsolete, please also scream. Thanks!
> >
> > Leto
>

