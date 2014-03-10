Return-Path: <jholzmayr@the-exact-steps.net>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66B26E00AA3
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 05:02:21 -0700 (PDT)
Received: from oxbsltgw54.schlund.de (oxbsltgw54.schlund.de [172.19.249.201])
	by mrelayeu.kundenserver.de (node=mreue003) with ESMTP (Nemesis)
	id 0MGmEX-1WR5WT3Mav-00DZrR; Mon, 10 Mar 2014 13:02:16 +0100
Date: Mon, 10 Mar 2014 13:02:16 +0100 (CET)
From: Josef Holzmayr <jholzmayr@the-exact-steps.net>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, 
	Vali Cobelea <valentin.cobelea@enea.com>
Message-ID: <791845630.156378.1394452936701.open-xchange@email.1und1.de>
In-Reply-To: <531DA573.5000408@dynamicdevices.co.uk>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>	<531D9C64.4010806@enea.com>	<58476941.152432.1394449910667.open-xchange@email.1und1.de>	<531D9FFA.7060407@enea.com>
	<1342303316.154219.1394451169246.open-xchange@email.1und1.de>
	<531DA573.5000408@dynamicdevices.co.uk>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.4.0-Rev29
X-Provags-ID: V02:K0:Lgj5ylaUVUrVxGJY/0wL2yOssKSKjoYQDMie3LtwmC4
	g/z3/nJwQG/HGt074lHjEUqmBxFwRYyPt2PwKJvAdKh2ZYBl6/
	86Bty4UxrPu1K7zgAXbx0SKm6VhqGO60q51gh27ctBp2Ziwj7L
	z/6kuAXCJRL9+E88iyEnVgFIhwR33BcsPzgrtxVx87fKeeD4rM
	gxKZ0XkjXYcF8NIbcJ7ZQ3Sowgyf082hatxngXrrEY9u3WPiPJ
	wfLAteoL6M6aTbKJQiWgYEUBqltoEecwhMJtARSEGvH9/l88li
	QFdG2rdeTEBG9tvz33r9/FVKOYb5MzB3cKeoVXB2EQxN5G20Cj
	PuvG33/3wbpTIqvZy6bYuGYxofOmKuCcCs8/859vlo9gTh2s11
	hH1k/OUJWN2GEUilyaJ4STt6/TcLTzIm6A=
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
X-List-Received-Date: Mon, 10 Mar 2014 12:02:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Alex,

> Alex J Lennon <ajlennon@dynamicdevices.co.uk> hat am 10. M=C3=A4rz 2014 u=
m 12:43
> geschrieben:

> fwiw I'd have thought myself that string comparison should be string
> comparison (=3D=3D) as if you use an object identity comparison as a stri=
ng
> comparison (is), you potentially introduce opaque problems when the
> strings are the same - i.e. same bytes of data - but the objects are not
> the same for whatever reason.

I've interpreted it roughly the same so far, but they ValueError point seem=
s to
valid to me too (gah, I really know why I usually avoid dynamically typed
languages!). But the solution for me in this context seems to be then to us=
e
something like:

DUMMYSTRING =3D "foobar"
def safestringcompare(stra, strb):
=C2=A0 return type(DUMMYSTRING) =3D=3D type(stra) and type(stra) =3D=3D typ=
e(strb) and stra
=3D=3D strb

> Cheers,
>
> Alex

Greetz
Josef/Leto

>
> >> This discussion can go over and over, is more a flavor thing: being
> >> pythonian or not.
> > Agreed, with the exception of the above said. But you're right, I'll lo=
ok
> > into
> > the topic and see if it can bring improvements. Thanks again for your i=
nput.
> >
> >> Best regards,
> >> Vali
> > Greetz
> > Josef /Leto
> >
> >> On 03/10/2014 01:11 PM, Josef Holzmayr wrote:
> >>> Hello Vali,
> >>>
> >>>> Vali Cobelea <valentin.cobelea@enea.com> hat am 10. M=C3=A4rz 2014 u=
m 12:05
> >>>> geschrieben:
> >>>>
> >>>> Looks ok at a first look, but my first suggestion would be to start
> >>>> using the "is" operator instead of "=3D=3D" when it comes to compari=
ng
> >>>> strings.
> >>>> Otherwise using your way with "=3D=3D" will crash if any of the vari=
ables
> >>>> (those "sys.argv[]") are None (void).
> >>> Thanks for the quick input! However, this is one of the very rare poi=
nts I
> >>> intently did that way, because of the difference in meaning from "=3D=
=3D" to
> >>> "is"
> >>> (see
> >>> http://stackoverflow.com/questions/1504717/why-does-comparing-strings=
-in-python-using-either-or-is-sometimes-produce).
> >>> But I'm curious, how would one then properly compare the content of t=
wo
> >>> strings?
> >>> Checking both types first?
> >>>
> >>>> Best regards,
> >>>> Vali
> >>> Greetz
> >>> Josef/Leto
> >>>
> >>>> On 03/10/2014 12:59 PM, Josef Holzmayr wrote:
> >>>>> Howdy!
> >>>>>
> >>>>> After looking more and more into yocto, one of the main issues for =
me is
> >>>>> the
> >>>>> process to set up a project properly, including all layers and conf
> >>>>> options.
> >>>>> Especially those which would be needed to set exactly the same way =
again
> >>>>> and
> >>>>> again every time somebody needs to reproduce a build.
> >>>>>
> >>>>> So I've come up with an idea: a small tool that can handle these th=
ings
> >>>>> for
> >>>>> me.
> >>>>> And here it is for your enjoyment/use/abuse/comments:
> >>>>>
> >>>>> https://github.com/LetoThe2nd/blubber
> >>>>>
> >>>>> Short excerpt from the README:
> >>>>>
> >>>>> But be warned first. Blubber is still in pre-pre-pre-alpha stage (m=
ore
> >>>>> like
> >>>>> a
> >>>>> proof of concept), and has the following defects/bugs/non-features:
> >>>>> - Horribly bad python code (Yes, its really that bad. Blame me, its=
 my
> >>>>> first
> >>>>> attempt to use that language)
> >>>>> - No error checking whatsoever
> >>>>> - Largely incomplete feature set
> >>>>> - Did I already mention the utterly bad code?
> >>>>> - Only supports git sources so far.
> >>>>>
> >>>>> Despite that, it can already do some magic:
> >>>>> - Getting poky and layers from git, and checking out
> >>>>> branches/tags/commits
> >>>>> if
> >>>>> needed
> >>>>> - Accordingly setting up build/conf/bblayers.conf
> >>>>> - Setting up build/conf/local.conf with a set of predefined options
> >>>>> - Running arbitrary commands with proper shell setup (source-ed
> >>>>> poky/oe-init-build-env) for the configured project.
> >>>>>
> >>>>> If anybody has feedback, just scream loudly. Or if anybody knows of=
 a
> >>>>> better
> >>>>> solution making it all obsolete, please also scream. Thanks!
> >>>>>
> >>>>> Leto
>

