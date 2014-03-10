Return-Path: <jholzmayr@the-exact-steps.net>
Received: from moutng.kundenserver.de (moutng.kundenserver.de [212.227.17.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BC6CE00AA3
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 04:32:50 -0700 (PDT)
Received: from oxbsltgw54.schlund.de (oxbsltgw54.schlund.de [172.19.249.201])
	by mrelayeu.kundenserver.de (node=mreue101) with ESMTP (Nemesis)
	id 0MarfO-1Wczvv18Xq-00KNwl; Mon, 10 Mar 2014 12:32:49 +0100
Date: Mon, 10 Mar 2014 12:32:49 +0100 (CET)
From: Josef Holzmayr <jholzmayr@the-exact-steps.net>
To: yocto@yoctoproject.org, Vali Cobelea <valentin.cobelea@enea.com>
Message-ID: <1342303316.154219.1394451169246.open-xchange@email.1und1.de>
In-Reply-To: <531D9FFA.7060407@enea.com>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
	<531D9C64.4010806@enea.com>
	<58476941.152432.1394449910667.open-xchange@email.1und1.de>
	<531D9FFA.7060407@enea.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.4.0-Rev29
X-Provags-ID: V02:K0:PQZSwk0M7MIvsPuJUCm4aT5P7o+eUtVrKOct71XUnBo
	UqwFqrXr8cxRUN7wWS6TvjYzCSEOeXXMKnK0jY8F7cYb5Elvhy
	RvAdo7qdtnS7CCwBI54GxczKw5MwbLs5z6B1H/fmUuShbqaeYK
	SGz85p1Cmwf6EWbuonq9L5FoOoOMBRg9uP6grVEmvPrkj1dCds
	jKeGbmAv3Bsl4UzYdRPSFtTXeuSTyiggCyCO8XMR3qkWCiAC5U
	F0m9nURWdYEBte4mUby2yrVNioRbVPtpFb0WvRkN8EMo+9iqVX
	TVsWxEdCmIrYENpa/rc0bUIbJDx81JjEi90UEXUitYJDxHeoh/
	wr+Bc2OMvd6TeTrlHTWGCuzhn08nHWx5Dr7scu9U6KKVRbg0OG
	XCfy4NyBIW1khYN3fVdhqMj/m+qT4oUq/E=
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
X-List-Received-Date: Mon, 10 Mar 2014 11:32:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Vali,

> Vali Cobelea <valentin.cobelea@enea.com> hat am 10. M=C3=A4rz 2014 um 12:=
20
> geschrieben:
>
> The idea behind 'is' would be to have more safety and less crashes when
> one of the arguments, in your case, is empty (eg None).

Well there are cases where I needed to compare strings that have been read =
in
and then modified from two different sources (e.g., files). Hence in my
understanding, they have the same content, but not the same id. So if I wan=
t to
match their content only, I'd have to use "=3D=3D" because "is" would give =
me false
even if the content matches.

> This discussion can go over and over, is more a flavor thing: being
> pythonian or not.

Agreed, with the exception of the above said. But you're right, I'll look i=
nto
the topic and see if it can bring improvements. Thanks again for your input=
.

>
> Best regards,
> Vali

Greetz
Josef /Leto

>
> On 03/10/2014 01:11 PM, Josef Holzmayr wrote:
> > Hello Vali,
> >
> >> Vali Cobelea <valentin.cobelea@enea.com> hat am 10. M=C3=A4rz 2014 um =
12:05
> >> geschrieben:
> >>
> >> Looks ok at a first look, but my first suggestion would be to start
> >> using the "is" operator instead of "=3D=3D" when it comes to comparing=
 strings.
> >> Otherwise using your way with "=3D=3D" will crash if any of the variab=
les
> >> (those "sys.argv[]") are None (void).
> > Thanks for the quick input! However, this is one of the very rare point=
s I
> > intently did that way, because of the difference in meaning from "=3D=
=3D" to
> > "is"
> > (see
> > http://stackoverflow.com/questions/1504717/why-does-comparing-strings-i=
n-python-using-either-or-is-sometimes-produce).
> > But I'm curious, how would one then properly compare the content of two
> > strings?
> > Checking both types first?
> >
> >> Best regards,
> >> Vali
> > Greetz
> > Josef/Leto
> >
> >>
> >> On 03/10/2014 12:59 PM, Josef Holzmayr wrote:
> >>> Howdy!
> >>>
> >>> After looking more and more into yocto, one of the main issues for me=
 is
> >>> the
> >>> process to set up a project properly, including all layers and conf
> >>> options.
> >>> Especially those which would be needed to set exactly the same way ag=
ain
> >>> and
> >>> again every time somebody needs to reproduce a build.
> >>>
> >>> So I've come up with an idea: a small tool that can handle these thin=
gs
> >>> for
> >>> me.
> >>> And here it is for your enjoyment/use/abuse/comments:
> >>>
> >>> https://github.com/LetoThe2nd/blubber
> >>>
> >>> Short excerpt from the README:
> >>>
> >>> But be warned first. Blubber is still in pre-pre-pre-alpha stage (mor=
e
> >>> like
> >>> a
> >>> proof of concept), and has the following defects/bugs/non-features:
> >>> - Horribly bad python code (Yes, its really that bad. Blame me, its m=
y
> >>> first
> >>> attempt to use that language)
> >>> - No error checking whatsoever
> >>> - Largely incomplete feature set
> >>> - Did I already mention the utterly bad code?
> >>> - Only supports git sources so far.
> >>>
> >>> Despite that, it can already do some magic:
> >>> - Getting poky and layers from git, and checking out branches/tags/co=
mmits
> >>> if
> >>> needed
> >>> - Accordingly setting up build/conf/bblayers.conf
> >>> - Setting up build/conf/local.conf with a set of predefined options
> >>> - Running arbitrary commands with proper shell setup (source-ed
> >>> poky/oe-init-build-env) for the configured project.
> >>>
> >>> If anybody has feedback, just scream loudly. Or if anybody knows of a
> >>> better
> >>> solution making it all obsolete, please also scream. Thanks!
> >>>
> >>> Leto
>

