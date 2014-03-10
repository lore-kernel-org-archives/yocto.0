Return-Path: <jholzmayr@the-exact-steps.net>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F04E00AEC
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 09:15:07 -0700 (PDT)
Received: from oxbsltgw54.schlund.de (oxbsltgw54.schlund.de [172.19.249.201])
	by mrelayeu.kundenserver.de (node=mreue003) with ESMTP (Nemesis)
	id 0MZysF-1WbYXA0uQZ-00LkoC; Mon, 10 Mar 2014 17:15:03 +0100
Date: Mon, 10 Mar 2014 17:15:03 +0100 (CET)
From: Josef Holzmayr <jholzmayr@the-exact-steps.net>
To: ferlandm@sonatest.com
Message-ID: <727708959.176973.1394468103205.open-xchange@email.1und1.de>
In-Reply-To: <20140310155225.GZ15075@marc-desktop>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
	<20140310155225.GZ15075@marc-desktop>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.4.0-Rev29
X-Provags-ID: V02:K0:Dkl+hOLqXbfH0ytoO0cLi2yOMxS111pU7AKRZrDyuJq
	PQh2lyRslQtuM3T0pm8ngTVxWczcF7+uQj+QugQ1DXGZkA1RmA
	mqYgpCWYfwFABGa3wek395RYqTQ58hMacMYd9XGmImzDPu8Khj
	TkibKaKkQT9zdUmZ7DOdI+UW5HKvKXSIqTZs7Z+2vKKHnIHe2t
	I5xYt1OIh1o4UH2r0z/YrGnLfWggddt7BdFjtsQ0sm9SevBj3i
	8RroqOejNLkRBtdRc3oX7HlizRgEirLHWI19uhb7a4pXbbn9qa
	ZlEZzFhwDmg9srTyf1ApcgO3z03xdfx2d6646RzFGZ8oNWW+pA
	h9OrsvuYjdwE5oT0vcfx0DZ+i2Qe9VEaA2LB/4nYN/VXxvewiP
	UUzwiP0AbojQT2zPiBlSRHUJRXmxcpeOSg=
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 10 Mar 2014 16:15:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Marc,

> Marc Ferland <ferlandm@sonatest.com> hat am 10. M=C3=A4rz 2014 um 16:52
> geschrieben:
>
>
> On Mon, Mar 10, 2014 at 11:59:08AM +0100, Josef Holzmayr wrote:
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
> You should have a look at the 'repo' tool from the android
> community. I think it already does part of what you're trying to do
> here.
>
> The freescale yocto bsp already uses repo:
> https://github.com/Freescale/fsl-community-bsp-platform

Yes indeed, it is quite a nice tool for doing the first part of the job. Th=
anks
for pointing out, will look into it more really soon.

> Cheers!
>
> Marc

Greetz
Josef/Leto

