Return-Path: <stephen.arnold42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F4017E00B01; Wed, 31 May 2017 16:29:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stephen.arnold42[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BF5EE00992
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 16:29:13 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id l18so34893194oig.2
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 16:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZeZtzLDWcLgyilV8BxcEYnSy96ga5KnLY1RVHElgKIk=;
	b=uEtxsbkX5cZyE5N09EALw2nujplwN7rC8pFGiWokddTEAp4yFkadpSJQFKwN3PCCJl
	dyjLP7kbD2O8T170ziWb2M6O9FwgBkzykUvpu4X49SYStj+XwZ+DwmNp6sNAZ6a/dfjN
	knfRJEwW8SSQNABWEN8PuyemNtsJAIbMdNN7F5cdK8P27pL6z1ZCXUAF9j//mzKo0rRR
	n+ktm1kzJwWHwXKOh/JSTY4PCATSvlK7jvNnyLKrqqwgkIYxP33RD8oGTzObk/GI1PID
	+SMtwEnSf7EnUa0yHEOyxanWNWAEhOySfoLfKJL2J5SinLs2D3Y6QVO+Cnhh6q/sG3sh
	pVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZeZtzLDWcLgyilV8BxcEYnSy96ga5KnLY1RVHElgKIk=;
	b=GlwOeBuDWbbF0siVUI0kQ8m+6ZTCerDgrk5w+++uKXxlIcX5tL/Pev/IYW5XFoCj1o
	fTP+h1jL4mHCm8tjGH2d0QrNKBoXdyn4p/3wA+VwPvvAN0Vtk8Ycj2gMztZ8H0ak2qwe
	dgHvbG79OfSBQVLFr1YqFEzWxUOySqHKrHTp3XDvdfeZVsAj4pTAuLO1b0p5LZYDoFAn
	E1ZGc39oIoujNNRFe1rmlwlGSJ3JiLEa9Mm+akKCx7/eFoR9uDl4G6NyQR9OG8gct3fT
	fcs01ETaMx2Iy2ZRhd8Lz978XP+GFCIS8pxaRFQczisiXwErR9qdPt6cRWsPrQ1x2+OC
	I2uw==
X-Gm-Message-State: AODbwcAtOCRGLZbQLcecgUOKwiLkTynZ/jCnpUje/KLEpT7SsRhNom5u
	XMVJrxL8/ln4L/bZWuRChiMnLVtv6A==
X-Received: by 10.202.52.214 with SMTP id b205mr15129069oia.133.1496273353157; 
	Wed, 31 May 2017 16:29:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.139.106 with HTTP; Wed, 31 May 2017 16:29:12 -0700 (PDT)
In-Reply-To: <CAHUNapQnCjZRDtZX4O3T0nHn2YNibX-6+aNQLT3frOQHnAtS0g@mail.gmail.com>
References: <CAHUNapSYmEfVLLdLE4_Nr8XEJt830R5cvHMrcnsohYF5sXSaVw@mail.gmail.com>
	<CAHUNapRGHVwA5agFkp26Vv46qQbyDXYdhvR=wxdU-bAYifS0Eg@mail.gmail.com>
	<CAHUNapR=ucND-LTtiGgPGMCpXc_WRJwWOSFPeJ6LMwC40_zhHQ@mail.gmail.com>
	<CALbNGRTyPU74ipKJwuZpVP+btn7vcca-QJQxUNun8JLSQ0yMgA@mail.gmail.com>
	<CAOLEWZU7Jj+gSoh-gdTSDd9fvYC5Kb2VpTKkeDv7h5PccLsTgQ@mail.gmail.com>
	<CAHUNapQnCjZRDtZX4O3T0nHn2YNibX-6+aNQLT3frOQHnAtS0g@mail.gmail.com>
From: Stephen Arnold <stephen.arnold42@gmail.com>
Date: Wed, 31 May 2017 16:29:12 -0700
Message-ID: <CAOLEWZWP6zx6Kp=Pox6LHwtzcjk6BWsCckKEqrofMU3A2RnsFA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] etnaviv image
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
X-List-Received-Date: Wed, 31 May 2017 23:29:17 -0000
X-Groupsio-MsgNum: 36305
Content-Type: multipart/mixed; boundary="001a113cbd3ab3d7910550da4971"

--001a113cbd3ab3d7910550da4971
Content-Type: multipart/alternative; boundary="001a113cbd3ab3d78b0550da496f"

--001a113cbd3ab3d78b0550da496f
Content-Type: text/plain; charset="UTF-8"

Hmm, I built the same commits from your recipes, and I'm still getting the
glx error in my logs :/

Other than that, things seem to work okay...

Steve

On Sat, May 27, 2017 at 9:20 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> Hey Stephen,
>
> On Fri, May 26, 2017 at 7:23 PM, Stephen Arnold
> <stephen.arnold42@gmail.com> wrote:
> > @Trevor what's your config/setup?  Did you wind up using the
> > "use-mainline-bsp" thing?
>
> Yes.
>
> As I mentioned, I was working with a wandboard, on master, therefore
> my layers are:
> - openembedded-core
> - meta-freescale-3rdparty
> - meta-freescale
>
> If I was working on some other board that didn't require
> meta-freescale-3rdparty I wouldn't have needed that layer.
> Additionally, I had started by using meta-etnaviv as well. That layer
> hasn't seen any commits in roughly 10 months. Back then my guess is
> that "upstream" didn't include very many of the bits required to get
> this to work, therefore meta-etnaviv had to include recipes/bbappends
> for mesa, libdrm, xorg-xserver, etc... in addition to the etnaviv drm
> pieces themselves.
>
> I created my own clone of meta-etnaviv
> [https://github.com/twoerner/meta-etnaviv] and pushed all my
> commits/updates there with the intention of, eventually, sending a
> pull request to its author. But by the time I was done removing all
> the things that are no longer needed (i.e. all the bbappends, since
> upstream mesa, libdrm, etc... all include the necessary bits) and
> updating the remaining stuff, I was left with very little. So little,
> in fact, that I decided to simply fold what was left back into
> meta-freescale itself, conditional on the "use-mainline-bsp"
> MACHINEOVERRIDES, and sent those patches to the meta-fsl mailing list.
>
> If the maintainers of meta-freescale accept the assumption that
> use-mainline-bsp could be the flag that indicates interest between the
> binary vivante drivers and etnaviv, then I hope they like the patches
> and accept them into meta-freescale itself. Otherwise I could just
> send that pull request to meta-etanviv's author (or re-work the
> patches with whatever feedback I get). In any case, for wandboard
> use-mainline-bsp is needed since the default kernel for wandboard is
> linux-wandboard which is still stuck at 4.1.15 and is too old for this
> etnaviv stuff. However using use-mainline-bsp with the wandboard is
> broken, so I had to send some patches for that (u-boot and kernel) as
> well (hopefully those patches are accepted as well).
>
> Due to the fact so much of etnaviv is already upstream, getting
> etanviv working doesn't take very much. It just took me a while to
> reach that point, however :-)
>
> > I pretty much had to hack up some of the meta-fsl/meta-boundary stuff and
> > put everything else in local.conf.  It would be a little easier/cleaner
> if
> > the former had some ?= in a few places...
> >
> > Anyway, I masked the browser stuff so I haven't tested that far yet, but
> all
> > you really need for 3D under X is new kernel/libdrm/mesa for ~110 fps
> with
> > glxgears.
>
> I like to use mesa-demos and (especially) glmark2 as my programs of
> choice for testing GL stuff.
>
> > I added recipes for the x11-armada stuff, which seems to work for
> > 2D but coughs an error in the xorg log.
>
> I'm curious to know which x11-armada stuff you're using. I couldn't
> get the stuff that came with meta-etnaviv to compile so I looked
> around and found Russell King's code which seemed more up-to-date, and
> compiled. Plus my xorg log doesn't have any errors (see attachment).
>
> > I probably tested more with oe-core
> > than poky but both should work.
>
> I just tend to stick with oe-core.
>
> I'm hoping to make a couple blog posts with my findings.
>

--001a113cbd3ab3d78b0550da496f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hmm, I built the same commits from your recipes,=
 and I&#39;m still getting the glx error in my logs :/<br><br></div>Other t=
han that, things seem to work okay...<br><br></div>Steve<br></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, May 27, 2017 at 9:=
20 PM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmai=
l.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">Hey Stephen,<br>
<span class=3D""><br>
On Fri, May 26, 2017 at 7:23 PM, Stephen Arnold<br>
&lt;<a href=3D"mailto:stephen.arnold42@gmail.com">stephen.arnold42@gmail.co=
m</a>&gt; wrote:<br>
&gt; @Trevor what&#39;s your config/setup?=C2=A0 Did you wind up using the<=
br>
&gt; &quot;use-mainline-bsp&quot; thing?<br>
<br>
</span>Yes.<br>
<br>
As I mentioned, I was working with a wandboard, on master, therefore<br>
my layers are:<br>
- openembedded-core<br>
- meta-freescale-3rdparty<br>
- meta-freescale<br>
<br>
If I was working on some other board that didn&#39;t require<br>
meta-freescale-3rdparty I wouldn&#39;t have needed that layer.<br>
Additionally, I had started by using meta-etnaviv as well. That layer<br>
hasn&#39;t seen any commits in roughly 10 months. Back then my guess is<br>
that &quot;upstream&quot; didn&#39;t include very many of the bits required=
 to get<br>
this to work, therefore meta-etnaviv had to include recipes/bbappends<br>
for mesa, libdrm, xorg-xserver, etc... in addition to the etnaviv drm<br>
pieces themselves.<br>
<br>
I created my own clone of meta-etnaviv<br>
[<a href=3D"https://github.com/twoerner/meta-etnaviv" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/twoerner/<wbr>meta-etnaviv</a>] and push=
ed all my<br>
commits/updates there with the intention of, eventually, sending a<br>
pull request to its author. But by the time I was done removing all<br>
the things that are no longer needed (i.e. all the bbappends, since<br>
upstream mesa, libdrm, etc... all include the necessary bits) and<br>
updating the remaining stuff, I was left with very little. So little,<br>
in fact, that I decided to simply fold what was left back into<br>
meta-freescale itself, conditional on the &quot;use-mainline-bsp&quot;<br>
MACHINEOVERRIDES, and sent those patches to the meta-fsl mailing list.<br>
<br>
If the maintainers of meta-freescale accept the assumption that<br>
use-mainline-bsp could be the flag that indicates interest between the<br>
binary vivante drivers and etnaviv, then I hope they like the patches<br>
and accept them into meta-freescale itself. Otherwise I could just<br>
send that pull request to meta-etanviv&#39;s author (or re-work the<br>
patches with whatever feedback I get). In any case, for wandboard<br>
use-mainline-bsp is needed since the default kernel for wandboard is<br>
linux-wandboard which is still stuck at 4.1.15 and is too old for this<br>
etnaviv stuff. However using use-mainline-bsp with the wandboard is<br>
broken, so I had to send some patches for that (u-boot and kernel) as<br>
well (hopefully those patches are accepted as well).<br>
<br>
Due to the fact so much of etnaviv is already upstream, getting<br>
etanviv working doesn&#39;t take very much. It just took me a while to<br>
reach that point, however :-)<br>
<span class=3D""><br>
&gt; I pretty much had to hack up some of the meta-fsl/meta-boundary stuff =
and<br>
&gt; put everything else in local.conf.=C2=A0 It would be a little easier/c=
leaner if<br>
&gt; the former had some ?=3D in a few places...<br>
&gt;<br>
&gt; Anyway, I masked the browser stuff so I haven&#39;t tested that far ye=
t, but all<br>
&gt; you really need for 3D under X is new kernel/libdrm/mesa for ~110 fps =
with<br>
&gt; glxgears.<br>
<br>
</span>I like to use mesa-demos and (especially) glmark2 as my programs of<=
br>
choice for testing GL stuff.<br>
<span class=3D""><br>
&gt; I added recipes for the x11-armada stuff, which seems to work for<br>
&gt; 2D but coughs an error in the xorg log.<br>
<br>
</span>I&#39;m curious to know which x11-armada stuff you&#39;re using. I c=
ouldn&#39;t<br>
get the stuff that came with meta-etnaviv to compile so I looked<br>
around and found Russell King&#39;s code which seemed more up-to-date, and<=
br>
compiled. Plus my xorg log doesn&#39;t have any errors (see attachment).<br=
>
<span class=3D""><br>
&gt; I probably tested more with oe-core<br>
&gt; than poky but both should work.<br>
<br>
</span>I just tend to stick with oe-core.<br>
<br>
I&#39;m hoping to make a couple blog posts with my findings.<br>
</blockquote></div><br></div>

--001a113cbd3ab3d78b0550da496f--

--001a113cbd3ab3d7910550da4971
Content-Type: text/x-log; charset="US-ASCII"; name="Xorg.0.log"
Content-Disposition: attachment; filename="Xorg.0.log"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j3dminpy1

WyAgIDU1OC42NzldIApYLk9yZyBYIFNlcnZlciAxLjE5LjMKUmVsZWFzZSBEYXRlOiAyMDE3LTAz
LTE1ClsgICA1NTguNjc5XSBYIFByb3RvY29sIFZlcnNpb24gMTEsIFJldmlzaW9uIDAKWyAgIDU1
OC42NzldIEJ1aWxkIE9wZXJhdGluZyBTeXN0ZW06IExpbnV4IDQuMTAuMTAtZ2VudG9vIGFybXY3
bCBHZW50b28KWyAgIDU1OC42NzldIEN1cnJlbnQgT3BlcmF0aW5nIFN5c3RlbTogTGludXggZ2Vu
Y3ViZSA0LjEwLjEwLWdlbnRvbyAjMSBTTVAgUFJFRU1QVCBTdW4gQXByIDIzIDA1OjQ0OjA0IFBE
VCAyMDE3IGFybXY3bApbICAgNTU4LjY3OV0gS2VybmVsIGNvbW1hbmQgbGluZTogY29uc29sZT10
dHlteGMwIHJvb3Q9UEFSVFVVSUQ9N2QyYzUxNTktMDEgcm8gcm9vdGZzdHlwZT1leHQ0IHJvb3R3
YWl0IHZpZGVvPUhETUktQS0xOjEwMjR4NzY4IG5ldC5pZm5hbWVzPTAgY21hPTM4NE0gY29uc29s
ZT10dHkxIGFoY2lfaW14LmhvdHBsdWc9MQpbICAgNTU4LjY4MF0gQnVpbGQgRGF0ZTogMzEgTWF5
IDIwMTcgIDAzOjAwOjQwUE0KWyAgIDU1OC42ODBdICAKWyAgIDU1OC42ODBdIEN1cnJlbnQgdmVy
c2lvbiBvZiBwaXhtYW46IDAuMzQuMApbICAgNTU4LjY4MF0gCUJlZm9yZSByZXBvcnRpbmcgcHJv
YmxlbXMsIGNoZWNrIGh0dHA6Ly93aWtpLngub3JnCgl0byBtYWtlIHN1cmUgdGhhdCB5b3UgaGF2
ZSB0aGUgbGF0ZXN0IHZlcnNpb24uClsgICA1NTguNjgwXSBNYXJrZXJzOiAoLS0pIHByb2JlZCwg
KCoqKSBmcm9tIGNvbmZpZyBmaWxlLCAoPT0pIGRlZmF1bHQgc2V0dGluZywKCSgrKykgZnJvbSBj
b21tYW5kIGxpbmUsICghISkgbm90aWNlLCAoSUkpIGluZm9ybWF0aW9uYWwsCgkoV1cpIHdhcm5p
bmcsIChFRSkgZXJyb3IsIChOSSkgbm90IGltcGxlbWVudGVkLCAoPz8pIHVua25vd24uClsgICA1
NTguNjgwXSAoPT0pIExvZyBmaWxlOiAiL3Zhci9sb2cvWG9yZy4wLmxvZyIsIFRpbWU6IFdlZCBN
YXkgMzEgMTY6MTk6NTEgMjAxNwpbICAgNTU4LjY4MV0gKD09KSBVc2luZyBjb25maWcgZGlyZWN0
b3J5OiAiL2V0Yy9YMTEveG9yZy5jb25mLmQiClsgICA1NTguNjgxXSAoPT0pIFVzaW5nIHN5c3Rl
bSBjb25maWcgZGlyZWN0b3J5ICIvdXNyL3NoYXJlL1gxMS94b3JnLmNvbmYuZCIKWyAgIDU1OC42
ODFdICg9PSkgTm8gTGF5b3V0IHNlY3Rpb24uICBVc2luZyB0aGUgZmlyc3QgU2NyZWVuIHNlY3Rp
b24uClsgICA1NTguNjgxXSAoPT0pIE5vIHNjcmVlbiBzZWN0aW9uIGF2YWlsYWJsZS4gVXNpbmcg
ZGVmYXVsdHMuClsgICA1NTguNjgxXSAoKiopIHwtLT5TY3JlZW4gIkRlZmF1bHQgU2NyZWVuIFNl
Y3Rpb24iICgwKQpbICAgNTU4LjY4MV0gKCoqKSB8ICAgfC0tPk1vbml0b3IgIjxkZWZhdWx0IG1v
bml0b3I+IgpbICAgNTU4LjY4Ml0gKD09KSBObyBkZXZpY2Ugc3BlY2lmaWVkIGZvciBzY3JlZW4g
IkRlZmF1bHQgU2NyZWVuIFNlY3Rpb24iLgoJVXNpbmcgdGhlIGZpcnN0IGRldmljZSBzZWN0aW9u
IGxpc3RlZC4KWyAgIDU1OC42ODJdICgqKikgfCAgIHwtLT5EZXZpY2UgIkJ1aWx0aW4gRGVmYXVs
dCBmYmRldiBEZXZpY2UgMCIKWyAgIDU1OC42ODJdICg9PSkgTm8gbW9uaXRvciBzcGVjaWZpZWQg
Zm9yIHNjcmVlbiAiRGVmYXVsdCBTY3JlZW4gU2VjdGlvbiIuCglVc2luZyBhIGRlZmF1bHQgbW9u
aXRvciBjb25maWd1cmF0aW9uLgpbICAgNTU4LjY4Ml0gKD09KSBBdXRvbWF0aWNhbGx5IGFkZGlu
ZyBkZXZpY2VzClsgICA1NTguNjgyXSAoPT0pIEF1dG9tYXRpY2FsbHkgZW5hYmxpbmcgZGV2aWNl
cwpbICAgNTU4LjY4Ml0gKD09KSBBdXRvbWF0aWNhbGx5IGFkZGluZyBHUFUgZGV2aWNlcwpbICAg
NTU4LjY4Ml0gKD09KSBNYXggY2xpZW50cyBhbGxvd2VkOiAyNTYsIHJlc291cmNlIG1hc2s6IDB4
MWZmZmZmClsgICA1NTguNjgyXSAoV1cpIFRoZSBkaXJlY3RvcnkgIi91c3Ivc2hhcmUvZm9udHMv
VFRGLyIgZG9lcyBub3QgZXhpc3QuClsgICA1NTguNjgyXSAJRW50cnkgZGVsZXRlZCBmcm9tIGZv
bnQgcGF0aC4KWyAgIDU1OC42ODJdIChXVykgVGhlIGRpcmVjdG9yeSAiL3Vzci9zaGFyZS9mb250
cy9PVEYvIiBkb2VzIG5vdCBleGlzdC4KWyAgIDU1OC42ODJdIAlFbnRyeSBkZWxldGVkIGZyb20g
Zm9udCBwYXRoLgpbICAgNTU4LjY4Ml0gKFdXKSBUaGUgZGlyZWN0b3J5ICIvdXNyL3NoYXJlL2Zv
bnRzL1R5cGUxLyIgZG9lcyBub3QgZXhpc3QuClsgICA1NTguNjgyXSAJRW50cnkgZGVsZXRlZCBm
cm9tIGZvbnQgcGF0aC4KWyAgIDU1OC42ODJdIChXVykgYGZvbnRzLmRpcicgbm90IGZvdW5kIChv
ciBub3QgdmFsaWQpIGluICIvdXNyL3NoYXJlL2ZvbnRzLzEwMGRwaS8iLgpbICAgNTU4LjY4Ml0g
CUVudHJ5IGRlbGV0ZWQgZnJvbSBmb250IHBhdGguClsgICA1NTguNjgyXSAJKFJ1biAnbWtmb250
ZGlyJyBvbiAiL3Vzci9zaGFyZS9mb250cy8xMDBkcGkvIikuClsgICA1NTguNjgyXSAoV1cpIGBm
b250cy5kaXInIG5vdCBmb3VuZCAob3Igbm90IHZhbGlkKSBpbiAiL3Vzci9zaGFyZS9mb250cy83
NWRwaS8iLgpbICAgNTU4LjY4Ml0gCUVudHJ5IGRlbGV0ZWQgZnJvbSBmb250IHBhdGguClsgICA1
NTguNjgzXSAJKFJ1biAnbWtmb250ZGlyJyBvbiAiL3Vzci9zaGFyZS9mb250cy83NWRwaS8iKS4K
WyAgIDU1OC42ODNdICg9PSkgRm9udFBhdGggc2V0IHRvOgoJL3Vzci9zaGFyZS9mb250cy9taXNj
LwpbICAgNTU4LjY4M10gKD09KSBNb2R1bGVQYXRoIHNldCB0byAiL3Vzci9saWIveG9yZy9tb2R1
bGVzIgpbICAgNTU4LjY4M10gKElJKSBUaGUgc2VydmVyIHJlbGllcyBvbiB1ZGV2IHRvIHByb3Zp
ZGUgdGhlIGxpc3Qgb2YgaW5wdXQgZGV2aWNlcy4KCUlmIG5vIGRldmljZXMgYmVjb21lIGF2YWls
YWJsZSwgcmVjb25maWd1cmUgdWRldiBvciBkaXNhYmxlIEF1dG9BZGREZXZpY2VzLgpbICAgNTU4
LjY4M10gKElJKSBMb2FkZXIgbWFnaWM6IDB4NzRkOGYwMDgKWyAgIDU1OC42ODNdIChJSSkgTW9k
dWxlIEFCSSB2ZXJzaW9uczoKWyAgIDU1OC42ODNdIAlYLk9yZyBBTlNJIEMgRW11bGF0aW9uOiAw
LjQKWyAgIDU1OC42ODNdIAlYLk9yZyBWaWRlbyBEcml2ZXI6IDIzLjAKWyAgIDU1OC42ODNdIAlY
Lk9yZyBYSW5wdXQgZHJpdmVyIDogMjQuMQpbICAgNTU4LjY4M10gCVguT3JnIFNlcnZlciBFeHRl
bnNpb24gOiAxMC4wClsgICA1NTguNjg0XSAoSUkpIHhmcmVlODY6IEFkZGluZyBkcm0gZGV2aWNl
ICgvZGV2L2RyaS9jYXJkMSkKWyAgIDU1OC42ODddIChJSSkgeGZyZWU4NjogQWRkaW5nIGRybSBk
ZXZpY2UgKC9kZXYvZHJpL2NhcmQwKQpbICAgNTU4LjY4N10gKElJKSB4ZnJlZTg2OiBBZGRpbmcg
ZHJtIGRldmljZSAoL2Rldi9kcmkvY2FyZDIpClsgICA1NTguNjg3XSAoSUkpIG5vIHByaW1hcnkg
YnVzIG9yIGRldmljZSBmb3VuZApbICAgNTU4LjY4N10gCWZhbGxpbmcgYmFjayB0byAvc3lzL2Rl
dmljZXMvc29jMC9kaXNwbGF5LXN1YnN5c3RlbS9kcm0vY2FyZDEKWyAgIDU1OC42ODddIChJSSkg
T3BlbiBBUE0gc3VjY2Vzc2Z1bApbICAgNTU4LjY4N10gKElJKSBMb2FkTW9kdWxlOiAiZ2x4Igpb
ICAgNTU4LjY4OF0gKElJKSBMb2FkaW5nIC91c3IvbGliL3hvcmcvbW9kdWxlcy9leHRlbnNpb25z
L2xpYmdseC5zbwpbICAgNTU4LjcwMl0gKElJKSBNb2R1bGUgZ2x4OiB2ZW5kb3I9IlguT3JnIEZv
dW5kYXRpb24iClsgICA1NTguNzAyXSAJY29tcGlsZWQgZm9yIDEuMTkuMywgbW9kdWxlIHZlcnNp
b24gPSAxLjAuMApbICAgNTU4LjcwMl0gCUFCSSBjbGFzczogWC5PcmcgU2VydmVyIEV4dGVuc2lv
biwgdmVyc2lvbiAxMC4wClsgICA1NTguNzAyXSAoSUkpIExvYWRNb2R1bGU6ICJhcm1hZGEiClsg
ICA1NTguNzAzXSAoSUkpIExvYWRpbmcgL3Vzci9saWIveG9yZy9tb2R1bGVzL2RyaXZlcnMvYXJt
YWRhX2Rydi5zbwpbICAgNTU4LjcwNF0gKElJKSBNb2R1bGUgYXJtYWRhOiB2ZW5kb3I9IlguT3Jn
IEZvdW5kYXRpb24iClsgICA1NTguNzA0XSAJY29tcGlsZWQgZm9yIDEuMTkuMywgbW9kdWxlIHZl
cnNpb24gPSAwLjAuMApbICAgNTU4LjcwNF0gCU1vZHVsZSBjbGFzczogWC5PcmcgVmlkZW8gRHJp
dmVyClsgICA1NTguNzA0XSAJQUJJIGNsYXNzOiBYLk9yZyBWaWRlbyBEcml2ZXIsIHZlcnNpb24g
MjMuMApbICAgNTU4LjcwNF0gKElJKSBhcm1hZGE6IFN1cHBvcnQgZm9yIE1hcnZlbGwgTENEIENv
bnRyb2xsZXI6IDg4QVA1MTAKWyAgIDU1OC43MDRdIChJSSkgYXJtYWRhOiBTdXBwb3J0IGZvciBG
cmVlc2NhbGUgSVBVOiBpLk1YNgpbICAgNTU4LjcwNF0gKCsrKSB1c2luZyBWVCBudW1iZXIgNwoK
WyAgIDU1OC43MDRdIChJSSkgYXJtYWRhKDApOiBBZGRlZCBzY3JlZW4gZm9yIEtNUyBkZXZpY2Ug
L2Rldi9kcmkvY2FyZDEKWyAgIDU1OC43MDVdIChJSSkgYXJtYWRhKDApOiBoYXJkd2FyZTogaW14
LWRybQpbICAgNTU4LjcwNV0gKElJKSBhcm1hZGEoMCk6IENyZWF0aW5nIGRlZmF1bHQgRGlzcGxh
eSBzdWJzZWN0aW9uIGluIFNjcmVlbiBzZWN0aW9uCgkiRGVmYXVsdCBTY3JlZW4gU2VjdGlvbiIg
Zm9yIGRlcHRoL2ZiYnBwIDI0LzMyClsgICA1NTguNzA1XSAoPT0pIGFybWFkYSgwKTogRGVwdGgg
MjQsICgtLSkgZnJhbWVidWZmZXIgYnBwIDMyClsgICA1NTguNzA1XSAoPT0pIGFybWFkYSgwKTog
UkdCIHdlaWdodCA4ODgKWyAgIDU1OC43MDVdICg9PSkgYXJtYWRhKDApOiBEZWZhdWx0IHZpc3Vh
bCBpcyBUcnVlQ29sb3IKWyAgIDU1OC43MDVdICgqKikgYXJtYWRhKDApOiBPcHRpb24gIlh2QWNj
ZWwiICJUUlVFIgpbICAgNTU4LjcwNV0gKCoqKSBhcm1hZGEoMCk6IE9wdGlvbiAiWHZQcmVmZXJP
dmVybGF5IiAiVFJVRSIKWyAgIDU1OC43MDVdICgqKikgYXJtYWRhKDApOiBPcHRpb24gIlVzZUdQ
VSIgIlRSVUUiClsgICA1NTguNzA1XSAoKiopIGFybWFkYSgwKTogT3B0aW9uICJBY2NlbE1vZHVs
ZSIgImV0bmFkcm1fZ3B1IgpbICAgNTU4LjcwNV0gKElJKSBMb2FkaW5nIHN1YiBtb2R1bGUgImV0
bmFkcm1fZ3B1IgpbICAgNTU4LjcwNV0gKElJKSBMb2FkTW9kdWxlOiAiZXRuYWRybV9ncHUiClsg
ICA1NTguNzA2XSAoSUkpIExvYWRpbmcgL3Vzci9saWIveG9yZy9tb2R1bGVzL2RyaXZlcnMvZXRu
YWRybV9ncHUuc28KWyAgIDU1OC43MDZdIChJSSkgTW9kdWxlIEV0bmF2aXYgR1BVIGRyaXZlciAo
RFJNKTogdmVuZG9yPSJYLk9yZyBGb3VuZGF0aW9uIgpbICAgNTU4LjcwNl0gCWNvbXBpbGVkIGZv
ciAxLjE5LjMsIG1vZHVsZSB2ZXJzaW9uID0gMC4wLjAKWyAgIDU1OC43MDZdIAlBQkkgY2xhc3M6
IFguT3JnIEFOU0kgQyBFbXVsYXRpb24sIHZlcnNpb24gMC40ClsgICA1NTguNzA3XSAoKiopIGFy
bWFkYSgwKTogT3B0aW9uICJEUkkiICJUUlVFIgpbICAgNTU4Ljc0MF0gKElJKSBhcm1hZGEoMCk6
IE91dHB1dCBIRE1JMSBoYXMgbm8gbW9uaXRvciBzZWN0aW9uClsgICA1NTguNzc0XSAoSUkpIGFy
bWFkYSgwKTogRURJRCBmb3Igb3V0cHV0IEhETUkxClsgICA1NTguNzc0XSAoSUkpIGFybWFkYSgw
KTogTWFudWZhY3R1cmVyOiBUU0IgIE1vZGVsOiAyMDYgIFNlcmlhbCM6IDE2ODQzMDA5ClsgICA1
NTguNzc0XSAoSUkpIGFybWFkYSgwKTogWWVhcjogMjAxMiAgV2VlazogMQpbICAgNTU4Ljc3NF0g
KElJKSBhcm1hZGEoMCk6IEVESUQgVmVyc2lvbjogMS4zClsgICA1NTguNzc0XSAoSUkpIGFybWFk
YSgwKTogRGlnaXRhbCBEaXNwbGF5IElucHV0ClsgICA1NTguNzc0XSAoSUkpIGFybWFkYSgwKTog
TWF4IEltYWdlIFNpemUgW2NtXTogaG9yaXouOiAxNjAgIHZlcnQuOiA5MApbICAgNTU4Ljc3NF0g
KElJKSBhcm1hZGEoMCk6IEdhbW1hOiAyLjIwClsgICA1NTguNzc0XSAoSUkpIGFybWFkYSgwKTog
Tm8gRFBNUyBjYXBhYmlsaXRpZXMgc3BlY2lmaWVkClsgICA1NTguNzc0XSAoSUkpIGFybWFkYSgw
KTogU3VwcG9ydGVkIGNvbG9yIGVuY29kaW5nczogUkdCIDQ6NDo0IFlDckNiIDQ6NDo0IApbICAg
NTU4Ljc3NF0gKElJKSBhcm1hZGEoMCk6IEZpcnN0IGRldGFpbGVkIHRpbWluZyBpcyBwcmVmZXJy
ZWQgbW9kZQpbICAgNTU4Ljc3NF0gKElJKSBhcm1hZGEoMCk6IHJlZFg6IDAuNjQwIHJlZFk6IDAu
MzM1ICAgZ3JlZW5YOiAwLjI4NSBncmVlblk6IDAuNjA1ClsgICA1NTguNzc0XSAoSUkpIGFybWFk
YSgwKTogYmx1ZVg6IDAuMTUwIGJsdWVZOiAwLjA2MCAgIHdoaXRlWDogMC4yODAgd2hpdGVZOiAw
LjI5MApbICAgNTU4Ljc3NF0gKElJKSBhcm1hZGEoMCk6IFN1cHBvcnRlZCBlc3RhYmxpc2hlZCB0
aW1pbmdzOgpbICAgNTU4Ljc3NF0gKElJKSBhcm1hZGEoMCk6IDY0MHg0ODBANjBIegpbICAgNTU4
Ljc3NF0gKElJKSBhcm1hZGEoMCk6IDgwMHg2MDBANjBIegpbICAgNTU4Ljc3NF0gKElJKSBhcm1h
ZGEoMCk6IDEwMjR4NzY4QDYwSHoKWyAgIDU1OC43NzVdIChJSSkgYXJtYWRhKDApOiBNYW51ZmFj
dHVyZXIncyBtYXNrOiAwClsgICA1NTguNzc1XSAoSUkpIGFybWFkYSgwKTogU3VwcG9ydGVkIHN0
YW5kYXJkIHRpbWluZ3M6ClsgICA1NTguNzc1XSAoSUkpIGFybWFkYSgwKTogIzA6IGhzaXplOiAx
MjgwICB2c2l6ZSAxMDI0ICByZWZyZXNoOiA2MCAgdmlkOiAzMjg5NwpbICAgNTU4Ljc3NV0gKElJ
KSBhcm1hZGEoMCk6ICMxOiBoc2l6ZTogMTM2MCAgdnNpemUgNzY1ICByZWZyZXNoOiA2MCAgdmlk
OiA0OTI5MQpbICAgNTU4Ljc3NV0gKElJKSBhcm1hZGEoMCk6IFN1cHBvcnRlZCBkZXRhaWxlZCB0
aW1pbmc6ClsgICA1NTguNzc1XSAoSUkpIGFybWFkYSgwKTogY2xvY2s6IDE0OC41IE1IeiAgIElt
YWdlIFNpemU6ICAxNjAwIHggOTAwIG1tClsgICA1NTguNzc1XSAoSUkpIGFybWFkYSgwKTogaF9h
Y3RpdmU6IDE5MjAgIGhfc3luYzogMjAwOCAgaF9zeW5jX2VuZCAyMDUyIGhfYmxhbmtfZW5kIDIy
MDAgaF9ib3JkZXI6IDAKWyAgIDU1OC43NzVdIChJSSkgYXJtYWRhKDApOiB2X2FjdGl2ZTogMTA4
MCAgdl9zeW5jOiAxMDg0ICB2X3N5bmNfZW5kIDEwODkgdl9ibGFua2luZzogMTEyNSB2X2JvcmRl
cjogMApbICAgNTU4Ljc3NV0gKElJKSBhcm1hZGEoMCk6IFN1cHBvcnRlZCBkZXRhaWxlZCB0aW1p
bmc6ClsgICA1NTguNzc1XSAoSUkpIGFybWFkYSgwKTogY2xvY2s6IDg1LjUgTUh6ICAgSW1hZ2Ug
U2l6ZTogIDE2MDAgeCA5MDAgbW0KWyAgIDU1OC43NzVdIChJSSkgYXJtYWRhKDApOiBoX2FjdGl2
ZTogMTM2MCAgaF9zeW5jOiAxNDI0ICBoX3N5bmNfZW5kIDE1MzYgaF9ibGFua19lbmQgMTc5MiBo
X2JvcmRlcjogMApbICAgNTU4Ljc3NV0gKElJKSBhcm1hZGEoMCk6IHZfYWN0aXZlOiA3NjggIHZf
c3luYzogNzcxICB2X3N5bmNfZW5kIDc3NyB2X2JsYW5raW5nOiA3OTUgdl9ib3JkZXI6IDAKWyAg
IDU1OC43NzVdIChJSSkgYXJtYWRhKDApOiBNb25pdG9yIG5hbWU6IFRPU0hJQkEtVFYKWyAgIDU1
OC43NzVdIChJSSkgYXJtYWRhKDApOiBSYW5nZXM6IFYgbWluOiAyMyBWIG1heDogNjEgSHosIEgg
bWluOiAxNSBIIG1heDogNjgga0h6LCBQaXhDbG9jayBtYXggMTU1IE1IegpbICAgNTU4Ljc3NV0g
KElJKSBhcm1hZGEoMCk6IFN1cHBvcnRlZCBkZXRhaWxlZCB0aW1pbmc6ClsgICA1NTguNzc1XSAo
SUkpIGFybWFkYSgwKTogY2xvY2s6IDc0LjIgTUh6ICAgSW1hZ2UgU2l6ZTogIDE2MDAgeCA5MDAg
bW0KWyAgIDU1OC43NzVdIChJSSkgYXJtYWRhKDApOiBoX2FjdGl2ZTogMTkyMCAgaF9zeW5jOiAy
MDA4ICBoX3N5bmNfZW5kIDIwNTIgaF9ibGFua19lbmQgMjIwMCBoX2JvcmRlcjogMApbICAgNTU4
Ljc3NV0gKElJKSBhcm1hZGEoMCk6IHZfYWN0aXZlOiA1NDAgIHZfc3luYzogNTQyICB2X3N5bmNf
ZW5kIDU0NyB2X2JsYW5raW5nOiA1NjIgdl9ib3JkZXI6IDAKWyAgIDU1OC43NzVdIChJSSkgYXJt
YWRhKDApOiBTdXBwb3J0ZWQgZGV0YWlsZWQgdGltaW5nOgpbICAgNTU4Ljc3NV0gKElJKSBhcm1h
ZGEoMCk6IGNsb2NrOiA3NC4yIE1IeiAgIEltYWdlIFNpemU6ICAxNjAwIHggOTAwIG1tClsgICA1
NTguNzc1XSAoSUkpIGFybWFkYSgwKTogaF9hY3RpdmU6IDEyODAgIGhfc3luYzogMTM5MCAgaF9z
eW5jX2VuZCAxNDMwIGhfYmxhbmtfZW5kIDE2NTAgaF9ib3JkZXI6IDAKWyAgIDU1OC43NzVdIChJ
SSkgYXJtYWRhKDApOiB2X2FjdGl2ZTogNzIwICB2X3N5bmM6IDcyNSAgdl9zeW5jX2VuZCA3MzAg
dl9ibGFua2luZzogNzUwIHZfYm9yZGVyOiAwClsgICA1NTguNzc1XSAoSUkpIGFybWFkYSgwKTog
U3VwcG9ydGVkIGRldGFpbGVkIHRpbWluZzoKWyAgIDU1OC43NzVdIChJSSkgYXJtYWRhKDApOiBj
bG9jazogMjcuMCBNSHogICBJbWFnZSBTaXplOiAgMTIwMCB4IDkwMCBtbQpbICAgNTU4Ljc3Nl0g
KElJKSBhcm1hZGEoMCk6IGhfYWN0aXZlOiA3MjAgIGhfc3luYzogNzM2ICBoX3N5bmNfZW5kIDc5
OCBoX2JsYW5rX2VuZCA4NTggaF9ib3JkZXI6IDAKWyAgIDU1OC43NzZdIChJSSkgYXJtYWRhKDAp
OiB2X2FjdGl2ZTogNDgwICB2X3N5bmM6IDQ4OSAgdl9zeW5jX2VuZCA0OTUgdl9ibGFua2luZzog
NTI1IHZfYm9yZGVyOiAwClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogU3VwcG9ydGVkIGRl
dGFpbGVkIHRpbWluZzoKWyAgIDU1OC43NzZdIChJSSkgYXJtYWRhKDApOiBjbG9jazogMjcuMCBN
SHogICBJbWFnZSBTaXplOiAgMTIwMCB4IDkwMCBtbQpbICAgNTU4Ljc3Nl0gKElJKSBhcm1hZGEo
MCk6IGhfYWN0aXZlOiAxNDQwICBoX3N5bmM6IDE0NzggIGhfc3luY19lbmQgMTYwMiBoX2JsYW5r
X2VuZCAxNzE2IGhfYm9yZGVyOiAwClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogdl9hY3Rp
dmU6IDI0MCAgdl9zeW5jOiAyNDQgIHZfc3luY19lbmQgMjQ3IHZfYmxhbmtpbmc6IDI2MiB2X2Jv
cmRlcjogMApbICAgNTU4Ljc3Nl0gKElJKSBhcm1hZGEoMCk6IE51bWJlciBvZiBFRElEIHNlY3Rp
b25zIHRvIGZvbGxvdzogMQpbICAgNTU4Ljc3Nl0gKElJKSBhcm1hZGEoMCk6IEVESUQgKGluIGhl
eCk6ClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogCTAwZmZmZmZmZmZmZmZmMDA1MjYyMDYw
MjAxMDEwMTAxClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogCTAxMTYwMTAzODBhMDVhNzgw
YWYwOWRhMzU1NDk5YjI2ClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogCTBmNDc0YTIxMDgw
MDgxODA4YmMwMDEwMTAxMDEwMTAxClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogCTAxMDEw
MTAxMDEwMTAyM2E4MDE4NzEzODJkNDA1ODJjClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTog
CTQ1MDA0MDg0NjMwMDAwMWU2NjIxNTBiMDUxMDAxYjMwClsgICA1NTguNzc2XSAoSUkpIGFybWFk
YSgwKTogCTQwNzAzNjAwNDA4NDYzMDAwMDFlMDAwMDAwZmMwMDU0ClsgICA1NTguNzc2XSAoSUkp
IGFybWFkYSgwKTogCTRmNTM0ODQ5NDI0MTJkNTQ1NjBhMjAyMDAwMDAwMGZkClsgICA1NTguNzc2
XSAoSUkpIGFybWFkYSgwKTogCTAwMTczZDBmNDQwZjAwMGEyMDIwMjAyMDIwMjAwMTk0ClsgICA1
NTguNzc2XSAoSUkpIGFybWFkYSgwKTogCTAyMDMyNjcxNDk5MDAxMDIwMzA0MDUwNjA3MjAyNjA5
ClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogCTA3MDcxMTA3MTg4MzAxMDAwMDZjMDMwYzAw
MjAwMDAwClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogCTIxYzAxNTE1MWYxZjAxMWQ4MDE4
NzExYzE2MjA1ODJjClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogCTI1MDA0MDg0NjMwMDAw
OWUwMTFkMDA3MjUxZDAxZTIwClsgICA1NTguNzc2XSAoSUkpIGFybWFkYSgwKTogCTZlMjg1NTAw
NDA4NDYzMDAwMDFlOGMwYWQwOGEyMGUwClsgICA1NTguNzc3XSAoSUkpIGFybWFkYSgwKTogCTJk
MTAxMDNlOTYwMGIwODQ0MzAwMDAxODhjMGFhMDE0ClsgICA1NTguNzc3XSAoSUkpIGFybWFkYSgw
KTogCTUxZjAxNjAwMjY3YzQzMDBiMDg0NDMwMDAwOTgwMDAwClsgICA1NTguNzc3XSAoSUkpIGFy
bWFkYSgwKTogCTAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDNmClsgICA1NTguNzc3XSAo
LS0pIGFybWFkYSgwKTogSERNSSBtYXggVE1EUyBmcmVxdWVuY3kgMTY1MDAwS0h6ClsgICA1NTgu
Nzc3XSAoSUkpIGFybWFkYSgwKTogUHJpbnRpbmcgcHJvYmVkIG1vZGVzIGZvciBvdXRwdXQgSERN
STEKWyAgIDU1OC43NzddIChJSSkgYXJtYWRhKDApOiBNb2RlbGluZSAiMTkyMHgxMDgwIng2MC4w
ICAxNDguNTAgIDE5MjAgMjAwOCAyMDUyIDIyMDAgIDEwODAgMTA4NCAxMDg5IDExMjUgK2hzeW5j
ICt2c3luYyAoNjcuNSBrSHogZVApClsgICA1NTguNzc3XSAoSUkpIGFybWFkYSgwKTogTW9kZWxp
bmUgIjE5MjB4MTA4MCJ4NTkuOSAgMTQ4LjM1ICAxOTIwIDIwMDggMjA1MiAyMjAwICAxMDgwIDEw
ODQgMTA4OSAxMTI1ICtoc3luYyArdnN5bmMgKDY3LjQga0h6IGUpClsgICA1NTguNzc3XSAoSUkp
IGFybWFkYSgwKTogTW9kZWxpbmUgIjE5MjB4MTA4MGkieDYwLjAgICA3NC4yNSAgMTkyMCAyMDA4
IDIwNTIgMjIwMCAgMTA4MCAxMDg0IDEwOTQgMTEyNSBpbnRlcmxhY2UgK2hzeW5jICt2c3luYyAo
MzMuOCBrSHogZSkKWyAgIDU1OC43NzddIChJSSkgYXJtYWRhKDApOiBNb2RlbGluZSAiMTkyMHgx
MDgwIngyNC4wICAgNzQuMjUgIDE5MjAgMjU1OCAyNjAyIDI3NTAgIDEwODAgMTA4NCAxMDg5IDEx
MjUgK2hzeW5jICt2c3luYyAoMjcuMCBrSHogZSkKWyAgIDU1OC43NzddIChJSSkgYXJtYWRhKDAp
OiBNb2RlbGluZSAiMTkyMHgxMDgwaSJ4NTkuOSAgIDc0LjE4ICAxOTIwIDIwMDggMjA1MiAyMjAw
ICAxMDgwIDEwODQgMTA5NCAxMTI1IGludGVybGFjZSAraHN5bmMgK3ZzeW5jICgzMy43IGtIeiBl
KQpbICAgNTU4Ljc3N10gKElJKSBhcm1hZGEoMCk6IE1vZGVsaW5lICIxOTIweDEwODAieDI0LjAg
ICA3NC4xOCAgMTkyMCAyNTU4IDI2MDIgMjc1MCAgMTA4MCAxMDg0IDEwODkgMTEyNSAraHN5bmMg
K3ZzeW5jICgyNy4wIGtIeiBlKQpbICAgNTU4Ljc3N10gKElJKSBhcm1hZGEoMCk6IE1vZGVsaW5l
ICIxMjgweDEwMjQieDYwLjAgIDEwOC4wMCAgMTI4MCAxMzI4IDE0NDAgMTY4OCAgMTAyNCAxMDI1
IDEwMjggMTA2NiAraHN5bmMgK3ZzeW5jICg2NC4wIGtIeiBlKQpbICAgNTU4Ljc3N10gKElJKSBh
cm1hZGEoMCk6IE1vZGVsaW5lICIxMzYweDc2OCJ4NTkuOSAgIDg0Ljk2ICAxMzY2IDE0MzEgMTU2
NyAxNzc2ICA3NjggNzcxIDc4MSA3OTggLWhzeW5jICt2c3luYyAoNDcuOCBrSHopClsgICA1NTgu
Nzc3XSAoSUkpIGFybWFkYSgwKTogTW9kZWxpbmUgIjEzNjB4NzY4Ing2MC4wICAgODUuNTAgIDEz
NjAgMTQyNCAxNTM2IDE3OTIgIDc2OCA3NzEgNzc3IDc5NSAraHN5bmMgK3ZzeW5jICg0Ny43IGtI
eiBlKQpbICAgNTU4Ljc3N10gKElJKSBhcm1hZGEoMCk6IE1vZGVsaW5lICIxMjgweDcyMCJ4NjAu
MCAgIDc0LjI1ICAxMjgwIDEzOTAgMTQzMCAxNjUwICA3MjAgNzI1IDczMCA3NTAgK2hzeW5jICt2
c3luYyAoNDUuMCBrSHogZSkKWyAgIDU1OC43NzddIChJSSkgYXJtYWRhKDApOiBNb2RlbGluZSAi
MTI4MHg3MjAieDU5LjkgICA3NC4xOCAgMTI4MCAxMzkwIDE0MzAgMTY1MCAgNzIwIDcyNSA3MzAg
NzUwICtoc3luYyArdnN5bmMgKDQ1LjAga0h6IGUpClsgICA1NTguNzc3XSAoSUkpIGFybWFkYSgw
KTogTW9kZWxpbmUgIjEwMjR4NzY4Ing2MC4wICAgNjUuMDAgIDEwMjQgMTA0OCAxMTg0IDEzNDQg
IDc2OCA3NzEgNzc3IDgwNiAtaHN5bmMgLXZzeW5jICg0OC40IGtIeiBlKQpbICAgNTU4Ljc3N10g
KElJKSBhcm1hZGEoMCk6IE1vZGVsaW5lICIxNDQweDQ4MGkieDU5LjkgICAyNy4wMCAgMTQ0MCAx
NDc4IDE2MDIgMTcxNiAgNDgwIDQ4OCA0OTQgNTI1IGludGVybGFjZSAtaHN5bmMgLXZzeW5jICgx
NS43IGtIeiBlKQpbICAgNTU4Ljc3N10gKElJKSBhcm1hZGEoMCk6IE1vZGVsaW5lICI4MDB4NjAw
Ing2MC4zICAgNDAuMDAgIDgwMCA4NDAgOTY4IDEwNTYgIDYwMCA2MDEgNjA1IDYyOCAraHN5bmMg
K3ZzeW5jICgzNy45IGtIeiBlKQpbICAgNTU4Ljc3N10gKElJKSBhcm1hZGEoMCk6IE1vZGVsaW5l
ICI3MjB4NDgwIng2MC4wICAgMjcuMDMgIDcyMCA3MzYgNzk4IDg1OCAgNDgwIDQ4OSA0OTUgNTI1
IC1oc3luYyAtdnN5bmMgKDMxLjUga0h6IGUpClsgICA1NTguNzc4XSAoSUkpIGFybWFkYSgwKTog
TW9kZWxpbmUgIjcyMHg0ODAieDU5LjkgICAyNy4wMCAgNzIwIDczNiA3OTggODU4ICA0ODAgNDg5
IDQ5NSA1MjUgLWhzeW5jIC12c3luYyAoMzEuNSBrSHogZSkKWyAgIDU1OC43NzhdIChJSSkgYXJt
YWRhKDApOiBNb2RlbGluZSAiNjQweDQ4MCJ4NjAuMCAgIDI1LjIwICA2NDAgNjU2IDc1MiA4MDAg
IDQ4MCA0OTAgNDkyIDUyNSAtaHN5bmMgLXZzeW5jICgzMS41IGtIeiBlKQpbICAgNTU4Ljc3OF0g
KElJKSBhcm1hZGEoMCk6IE1vZGVsaW5lICI2NDB4NDgwIng1OS45ICAgMjUuMTggIDY0MCA2NTYg
NzUyIDgwMCAgNDgwIDQ5MCA0OTIgNTI1IC1oc3luYyAtdnN5bmMgKDMxLjUga0h6IGUpClsgICA1
NTguNzc4XSAoSUkpIGFybWFkYSgwKTogT3V0cHV0IEhETUkxIGNvbm5lY3RlZApbICAgNTU4Ljc3
OF0gKElJKSBhcm1hZGEoMCk6IFVzaW5nIGV4YWN0IHNpemVzIGZvciBpbml0aWFsIG1vZGVzClsg
ICA1NTguNzc4XSAoSUkpIGFybWFkYSgwKTogT3V0cHV0IEhETUkxIHVzaW5nIGluaXRpYWwgbW9k
ZSAxOTIweDEwODAgKzArMApbICAgNTU4Ljc3OF0gKD09KSBhcm1hZGEoMCk6IFVzaW5nIGdhbW1h
IGNvcnJlY3Rpb24gKDEuMCwgMS4wLCAxLjApClsgICA1NTguNzc4XSAoPT0pIGFybWFkYSgwKTog
RFBJIHNldCB0byAoOTYsIDk2KQpbICAgNTU4Ljc3OF0gKElJKSBMb2FkaW5nIHN1YiBtb2R1bGUg
ImZiIgpbICAgNTU4Ljc3OF0gKElJKSBMb2FkTW9kdWxlOiAiZmIiClsgICA1NTguNzc4XSAoSUkp
IExvYWRpbmcgL3Vzci9saWIveG9yZy9tb2R1bGVzL2xpYmZiLnNvClsgICA1NTguNzgwXSAoSUkp
IE1vZHVsZSBmYjogdmVuZG9yPSJYLk9yZyBGb3VuZGF0aW9uIgpbICAgNTU4Ljc4MF0gCWNvbXBp
bGVkIGZvciAxLjE5LjMsIG1vZHVsZSB2ZXJzaW9uID0gMS4wLjAKWyAgIDU1OC43ODBdIAlBQkkg
Y2xhc3M6IFguT3JnIEFOU0kgQyBFbXVsYXRpb24sIHZlcnNpb24gMC40ClsgICA1NTguNzgxXSAo
PT0pIERlcHRoIDI0IHBpeG1hcCBmb3JtYXQgaXMgMzIgYnBwClsgICA1NTguODA0XSAoKiopIGFy
bWFkYSgwKTogT3B0aW9uICJIV2N1cnNvciIgIlRSVUUiClsgICA1NTguODA0XSAoKiopIGFybWFk
YSgwKTogT3B0aW9uICJIb3RQbHVnIiAiVFJVRSIKWyAgIDU1OC44MDVdICg9PSkgYXJtYWRhKDAp
OiBCYWNraW5nIHN0b3JlIGVuYWJsZWQKWyAgIDU1OC44MDVdICg9PSkgYXJtYWRhKDApOiBTaWxr
ZW4gbW91c2UgZW5hYmxlZApbICAgNTU4LjgwNV0gKEVFKSBhcm1hZGEoMCk6IGV0bmF2aXY6IHVu
YWJsZSB0byBvcGVuOiBJbnZhbGlkIGFyZ3VtZW50ClsgICA1NTguODA1XSAoV1cpIGFybWFkYSgw
KTogW2RybV0gVml2YW50ZSBpbml0aWFsaXphdGlvbiBmYWlsZWQsIHJ1bm5pbmcgdW5hY2NlbGVy
YXRlZApbICAgNTU4LjgwNV0gKElJKSBhcm1hZGEoMCk6IE5vIGhhcmR3YXJlIGN1cnNvciBzdXBw
b3J0IC0gZGlzYWJsaW5nIGhhcmR3YXJlIGN1cnNvcnMKWyAgIDU1OC44MDVdIChJSSkgYXJtYWRh
KDApOiBSYW5kUiAxLjIgZW5hYmxlZCwgaWdub3JlIHRoZSBmb2xsb3dpbmcgUmFuZFIgZGlzYWJs
ZWQgbWVzc2FnZS4KWyAgIDU1OC44MDZdICg9PSkgYXJtYWRhKDApOiBEUE1TIGVuYWJsZWQKWyAg
IDU1OC44MDZdICgqKikgYXJtYWRhKDApOiBob3RwbHVnIGRldGVjdGlvbiBlbmFibGVkClsgICA1
NTguODYwXSAoLS0pIFJhbmRSIGRpc2FibGVkClsgICA1NTguODYxXSAoSUkpIEFJR0xYOiBTY3Jl
ZW4gMCBpcyBub3QgRFJJMiBjYXBhYmxlClsgICA1NTguODYxXSAoRUUpIEFJR0xYOiByZXZlcnRp
bmcgdG8gc29mdHdhcmUgcmVuZGVyaW5nClsgICA1NTkuMTkyXSAoSUkpIElHTFg6IGVuYWJsZWQg
R0xYX01FU0FfY29weV9zdWJfYnVmZmVyClsgICA1NTkuMTk0XSAoSUkpIElHTFg6IExvYWRlZCBh
bmQgaW5pdGlhbGl6ZWQgc3dyYXN0ClsgICA1NTkuMTk0XSAoSUkpIEdMWDogSW5pdGlhbGl6ZWQg
RFJJU1dSQVNUIEdMIHByb3ZpZGVyIGZvciBzY3JlZW4gMApbICAgNTU5LjE5NF0gKElJKSBhcm1h
ZGEoMCk6IFNldHRpbmcgc2NyZWVuIHBoeXNpY2FsIHNpemUgdG8gNTA4IHggMjg1ClsgICA1NTku
MzM4XSAoSUkpIGNvbmZpZy91ZGV2OiBBZGRpbmcgaW5wdXQgZGV2aWNlIGdwaW8ta2V5cyAoL2Rl
di9pbnB1dC9ldmVudDEpClsgICA1NTkuMzM4XSAoSUkpIE5vIGlucHV0IGRyaXZlciBzcGVjaWZp
ZWQsIGlnbm9yaW5nIHRoaXMgZGV2aWNlLgpbICAgNTU5LjMzOF0gKElJKSBUaGlzIGRldmljZSBt
YXkgaGF2ZSBiZWVuIGFkZGVkIHdpdGggYW5vdGhlciBkZXZpY2UgZmlsZS4KWyAgIDU1OS4zMzld
IChJSSkgY29uZmlnL3VkZXY6IEFkZGluZyBpbnB1dCBkZXZpY2UgZ3Bpb19pcl9yZWN2ICgvZGV2
L2lucHV0L2V2ZW50MikKWyAgIDU1OS4zNDBdICgqKikgZ3Bpb19pcl9yZWN2OiBBcHBseWluZyBJ
bnB1dENsYXNzICJldmRldiBrZXlib2FyZCBjYXRjaGFsbCIKWyAgIDU1OS4zNDBdIChJSSkgTG9h
ZE1vZHVsZTogImV2ZGV2IgpbICAgNTU5LjM0MF0gKElJKSBMb2FkaW5nIC91c3IvbGliL3hvcmcv
bW9kdWxlcy9pbnB1dC9ldmRldl9kcnYuc28KWyAgIDU1OS4zNDJdIChJSSkgTW9kdWxlIGV2ZGV2
OiB2ZW5kb3I9IlguT3JnIEZvdW5kYXRpb24iClsgICA1NTkuMzQyXSAJY29tcGlsZWQgZm9yIDEu
MTkuMywgbW9kdWxlIHZlcnNpb24gPSAyLjEwLjUKWyAgIDU1OS4zNDJdIAlNb2R1bGUgY2xhc3M6
IFguT3JnIFhJbnB1dCBEcml2ZXIKWyAgIDU1OS4zNDJdIAlBQkkgY2xhc3M6IFguT3JnIFhJbnB1
dCBkcml2ZXIsIHZlcnNpb24gMjQuMQpbICAgNTU5LjM0Ml0gKElJKSBVc2luZyBpbnB1dCBkcml2
ZXIgJ2V2ZGV2JyBmb3IgJ2dwaW9faXJfcmVjdicKWyAgIDU1OS4zNDJdICgqKikgZ3Bpb19pcl9y
ZWN2OiBhbHdheXMgcmVwb3J0cyBjb3JlIGV2ZW50cwpbICAgNTU5LjM0Ml0gKCoqKSBldmRldjog
Z3Bpb19pcl9yZWN2OiBEZXZpY2U6ICIvZGV2L2lucHV0L2V2ZW50MiIKWyAgIDU1OS4zNDNdICgt
LSkgZXZkZXY6IGdwaW9faXJfcmVjdjogVmVuZG9yIDB4MSBQcm9kdWN0IDB4MQpbICAgNTU5LjM0
M10gKC0tKSBldmRldjogZ3Bpb19pcl9yZWN2OiBGb3VuZCBrZXlzClsgICA1NTkuMzQzXSAoSUkp
IGV2ZGV2OiBncGlvX2lyX3JlY3Y6IENvbmZpZ3VyaW5nIGFzIGtleWJvYXJkClsgICA1NTkuMzQz
XSAoKiopIE9wdGlvbiAiY29uZmlnX2luZm8iICJ1ZGV2Oi9zeXMvZGV2aWNlcy9zb2MwL2lyLXJl
Y2VpdmVyL3JjL3JjMC9pbnB1dDIvZXZlbnQyIgpbICAgNTU5LjM0M10gKElJKSBYSU5QVVQ6IEFk
ZGluZyBleHRlbmRlZCBpbnB1dCBkZXZpY2UgImdwaW9faXJfcmVjdiIgKHR5cGU6IEtFWUJPQVJE
LCBpZCA2KQpbICAgNTU5LjM0M10gKCoqKSBPcHRpb24gInhrYl9ydWxlcyIgImV2ZGV2IgpbICAg
NTU5LjM0Nl0gKElJKSBjb25maWcvdWRldjogQWRkaW5nIGlucHV0IGRldmljZSBMb2dpdGVjaCBL
NDAwICgvZGV2L2lucHV0L2V2ZW50MCkKWyAgIDU1OS4zNDZdICgqKikgTG9naXRlY2ggSzQwMDog
QXBwbHlpbmcgSW5wdXRDbGFzcyAiZXZkZXYgcG9pbnRlciBjYXRjaGFsbCIKWyAgIDU1OS4zNDZd
ICgqKikgTG9naXRlY2ggSzQwMDogQXBwbHlpbmcgSW5wdXRDbGFzcyAiZXZkZXYga2V5Ym9hcmQg
Y2F0Y2hhbGwiClsgICA1NTkuMzQ3XSAoSUkpIFVzaW5nIGlucHV0IGRyaXZlciAnZXZkZXYnIGZv
ciAnTG9naXRlY2ggSzQwMCcKWyAgIDU1OS4zNDddICgqKikgTG9naXRlY2ggSzQwMDogYWx3YXlz
IHJlcG9ydHMgY29yZSBldmVudHMKWyAgIDU1OS4zNDddICgqKikgZXZkZXY6IExvZ2l0ZWNoIEs0
MDA6IERldmljZTogIi9kZXYvaW5wdXQvZXZlbnQwIgpbICAgNTU5LjM0N10gKC0tKSBldmRldjog
TG9naXRlY2ggSzQwMDogVmVuZG9yIDB4NDZkIFByb2R1Y3QgMHg0MDI0ClsgICA1NTkuMzQ3XSAo
LS0pIGV2ZGV2OiBMb2dpdGVjaCBLNDAwOiBGb3VuZCAyMCBtb3VzZSBidXR0b25zClsgICA1NTku
MzQ3XSAoLS0pIGV2ZGV2OiBMb2dpdGVjaCBLNDAwOiBGb3VuZCBzY3JvbGwgd2hlZWwocykKWyAg
IDU1OS4zNDddICgtLSkgZXZkZXY6IExvZ2l0ZWNoIEs0MDA6IEZvdW5kIHJlbGF0aXZlIGF4ZXMK
WyAgIDU1OS4zNDddICgtLSkgZXZkZXY6IExvZ2l0ZWNoIEs0MDA6IEZvdW5kIHggYW5kIHkgcmVs
YXRpdmUgYXhlcwpbICAgNTU5LjM0N10gKC0tKSBldmRldjogTG9naXRlY2ggSzQwMDogRm91bmQg
YWJzb2x1dGUgYXhlcwpbICAgNTU5LjM0N10gKElJKSBldmRldjogTG9naXRlY2ggSzQwMDogRm9y
Y2luZyBhYnNvbHV0ZSB4L3kgYXhlcyB0byBleGlzdC4KWyAgIDU1OS4zNDddICgtLSkgZXZkZXY6
IExvZ2l0ZWNoIEs0MDA6IEZvdW5kIGtleXMKWyAgIDU1OS4zNDddIChJSSkgZXZkZXY6IExvZ2l0
ZWNoIEs0MDA6IENvbmZpZ3VyaW5nIGFzIG1vdXNlClsgICA1NTkuMzQ3XSAoSUkpIGV2ZGV2OiBM
b2dpdGVjaCBLNDAwOiBDb25maWd1cmluZyBhcyBrZXlib2FyZApbICAgNTU5LjM0N10gKElJKSBl
dmRldjogTG9naXRlY2ggSzQwMDogQWRkaW5nIHNjcm9sbHdoZWVsIHN1cHBvcnQKWyAgIDU1OS4z
NDhdICgqKikgZXZkZXY6IExvZ2l0ZWNoIEs0MDA6IFlBeGlzTWFwcGluZzogYnV0dG9ucyA0IGFu
ZCA1ClsgICA1NTkuMzQ4XSAoKiopIGV2ZGV2OiBMb2dpdGVjaCBLNDAwOiBFbXVsYXRlV2hlZWxC
dXR0b246IDQsIEVtdWxhdGVXaGVlbEluZXJ0aWE6IDEwLCBFbXVsYXRlV2hlZWxUaW1lb3V0OiAy
MDAKWyAgIDU1OS4zNDhdICgqKikgT3B0aW9uICJjb25maWdfaW5mbyIgInVkZXY6L3N5cy9kZXZp
Y2VzL3NvYzAvc29jLzIxMDAwMDAuYWlwcy1idXMvMjE4NDIwMC51c2IvY2lfaGRyYy4xL3VzYjIv
Mi0xLzItMToxLjIvMDAwMzowNDZEOkM1MkIuMDAwMy8wMDAzOjA0NkQ6NDAyNC4wMDA0L2lucHV0
L2lucHV0MC9ldmVudDAiClsgICA1NTkuMzQ4XSAoSUkpIFhJTlBVVDogQWRkaW5nIGV4dGVuZGVk
IGlucHV0IGRldmljZSAiTG9naXRlY2ggSzQwMCIgKHR5cGU6IEtFWUJPQVJELCBpZCA3KQpbICAg
NTU5LjM0OF0gKCoqKSBPcHRpb24gInhrYl9ydWxlcyIgImV2ZGV2IgpbICAgNTU5LjM0OV0gKElJ
KSBldmRldjogTG9naXRlY2ggSzQwMDogaW5pdGlhbGl6ZWQgZm9yIHJlbGF0aXZlIGF4ZXMuClsg
ICA1NTkuMzQ5XSAoV1cpIGV2ZGV2OiBMb2dpdGVjaCBLNDAwOiBpZ25vcmluZyBhYnNvbHV0ZSBh
eGVzLgpbICAgNTU5LjM0OV0gKCoqKSBMb2dpdGVjaCBLNDAwOiAoYWNjZWwpIGtlZXBpbmcgYWNj
ZWxlcmF0aW9uIHNjaGVtZSAxClsgICA1NTkuMzQ5XSAoKiopIExvZ2l0ZWNoIEs0MDA6IChhY2Nl
bCkgYWNjZWxlcmF0aW9uIHByb2ZpbGUgMApbICAgNTU5LjM0OV0gKCoqKSBMb2dpdGVjaCBLNDAw
OiAoYWNjZWwpIGFjY2VsZXJhdGlvbiBmYWN0b3I6IDIuMDAwClsgICA1NTkuMzQ5XSAoKiopIExv
Z2l0ZWNoIEs0MDA6IChhY2NlbCkgYWNjZWxlcmF0aW9uIHRocmVzaG9sZDogNApbICAgNTU5LjM1
MV0gKElJKSBjb25maWcvdWRldjogQWRkaW5nIGlucHV0IGRldmljZSBMb2dpdGVjaCBLNDAwICgv
ZGV2L2lucHV0L21vdXNlMCkKWyAgIDU1OS4zNTFdIChJSSkgTm8gaW5wdXQgZHJpdmVyIHNwZWNp
ZmllZCwgaWdub3JpbmcgdGhpcyBkZXZpY2UuClsgICA1NTkuMzUxXSAoSUkpIFRoaXMgZGV2aWNl
IG1heSBoYXZlIGJlZW4gYWRkZWQgd2l0aCBhbm90aGVyIGRldmljZSBmaWxlLgo=

--001a113cbd3ab3d7910550da4971--
