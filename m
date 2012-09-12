Return-Path: <munoz0raul@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFD42E00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 10:25:43 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1486970lag.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 10:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=37w1AzYGmuqiET48qn24AiiRmmAZ0n++LVOhcwNmEys=;
	b=1EoI7uecJ3sbGMbzSWy9uMsAH4HpWQ9X0P9ZWhevIxHDg1N7I/XPrrY5Tt82TjUXKh
	WJuNwOtnyr/23U55O9CYzVArHgDVGirDyEj32PA8tYAlVGf750Q9OoR3KUkGUfBCk7da
	nmn3vlSDekqb9ioWF+ePCgpfyA0I46utaZujAF6GgSPsX18viqejt/GmJ0AGlGWNdVGt
	6CIn/jJ5S+QJojSi2/heMKwAB/nCqvMTAnxPGnSKgSWqth/bjMAaD+8u4F7Izhn47+MY
	FxuHxqMcqNDcSHv7lP2WCZATPwCywTk9SyATVaH3KBDRYwrc01st/CJ8On2felGh8RVv
	F09w==
MIME-Version: 1.0
Received: by 10.112.27.232 with SMTP id w8mr7759550lbg.77.1347470742412; Wed,
	12 Sep 2012 10:25:42 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Wed, 12 Sep 2012 10:25:42 -0700 (PDT)
In-Reply-To: <mailman.1284.1347465656.11837.yocto@yoctoproject.org>
References: <mailman.1284.1347465656.11837.yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 14:25:42 -0300
Message-ID: <CANmVirgzK9orPe_BRGKXkiQVhOCipdAn-S=oRjxYd0vPYDTGVg@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: yocto Digest, Vol 24, Issue 51
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
X-List-Received-Date: Wed, 12 Sep 2012 17:25:44 -0000
Content-Type: multipart/alternative; boundary=bcaec554dedaf25e8c04c9847a66

--bcaec554dedaf25e8c04c9847a66
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I saw the same problem but Im found the solution at link
*
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#changin=
g-recipes-kernel
*
*in B.2.3. Changing the  CONFIG_SMP Configuration Using  menuconfig*

Basic, do you need to do these commands:

$ bitbake linux-yocto -c cleansstate
$ bitbake linux-yocto -c menuconfig

change the kernel and:
$ bitbake linux-yocto -c compile -f
$ bitbake linux-yocto

Remermber all the times that you do cleanall you return you .config
configurations to your defconfig.
If you change menuconfig you must replace de defconfig file for your nem
.config found in /tmp/work/machine/linux/git/.config

Maybe Its help you!

Thanks



2012/9/12 <yocto-request@yoctoproject.org>

> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. Yocto Contract Position (Daniel McGuire)
>    2. [linux-yocto] 'bitbake linux-yocto' after 'bitbake
>       linux-yocto -c compile -f' does not create image (Rudolf Streif)
>    3. Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake
>       linux-yocto -c compile -f' does not create image (Chris Larson)
>    4. Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake
>       linux-yocto -c compile -f' does not create image (Rudolf Streif)
>    5. Re: [meta-fsl-ppc 09/16] rcw_git.bb: update to 1.2.1      release
>       version (Khem Raj)
>    6. Re: [meta-fsl-ppc 13/16] Update recipes to use release tags
>       instead of SHA (McClintock Matthew-B29882)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: 11 Sep 2012 19:55:26 -0400
> From: Daniel McGuire <daniel.m@tripleco.com>
> To: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
> Subject: [yocto] Yocto Contract Position
> Message-ID: <1726581940.1347407726406.JavaMail.cfservice@sl10app4>
> Content-Type: text/plain; charset=3D"utf-8"
>
>
>
>
> I am looking for a Yocto expert who can work a 3 week contract in the bay
> area. We are looking for one contractor only. And we pay on an hourly rat=
e.
> Also, we need someone with US citizenship, Greencard, or valid EAD. I hav=
e
> included the job description. If you are available, let me know the hourl=
y
> rate it would take to get you to do the project. We need someone
> immediately so give me a call as soon as you can if you are interested.
> Thanks. And if you are not available, maybe you could refer me to someone
> who would be willing and capable to complete the short project. Thanks
> again.
>
>
>
>
>
>
>
> Milpitas, CA.
>
> Few weeks contract - short.
>
> They need an expert.
>
> Phone hire.
>
>
>
> They're a defense contract company so the work must be done on-site.
> They're taking a skinny portion of their current legacy system and want t=
o
> port it to Yocto to see if it will be worthwhile. They essentially want
> Yocto to be the company's standard in California, Florida, and the U.K. b=
ut
> want to test the feasibility before moving forward (that's what this shor=
t
> project is for).
>
> The Yocto Project is a Linux-based project that helps developers create
> custom Linux distributions specifically for embedded devices.
>
> We are looking for a very short contract of a few weeks for a very
> specific specialist as outlined below.
>
>
>
> As the term is short, and the need is immediate, we'd pay a premium IF we
> could find hands-on yocto expertise. We have already spent a lot of time
> coming up to speed on Yocto, now we need an expert to complete the proof =
of
> concept for us.
>
>
>
> The following are the requirements for the candidate we should look for.
>
> -        Minimum two years' experience in working with "Yocto project"
> -        Experience in creating a build setup and configuration of the
> yocto project
> -        Good knowledge and usage of the tool chains related to yocto
> project
> -        Extensive knowledge and experience in integrating new layers to
> the Linux distribution.
> -        Ability to configure (add/remove) new kernel and user layers to
> create custom linux distribution.
> -        Experience in working with Java meta-layer, Database layer would
> be a nice to have
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> Daniel McGuire
>
>
> Technical Recruiter| Triple Crown Consulting, LLC
>
>
>
>
>
> 1901 S. Bascom Ave. Suite 750
> Campbell, CA 95008
>
>
> P: 408.680.2563|
> F: 408.608.0398
>
>
> daniel.m@tripleco.com
>
>
>
>
>
>
>
>
>
>
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20120911/f77156=
54/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Wed, 12 Sep 2012 08:06:06 -0700
> From: Rudolf Streif <rudolf.streif@linux.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] [linux-yocto] 'bitbake linux-yocto' after 'bitbake
>         linux-yocto -c compile -f' does not create image
> Message-ID:
>         <
> CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
> Content-Type: text/plain; charset=3D"iso-8859-1"
>
> In Denil modifying kernel parameters and doing
>
> bitbake linux-yocto -c compile -f
> bitbake linux-yocto
>
> worked perfectly fine. The tasks after compile were rerun and the new
> kernel copied to tmp/deploy/images
>
> In Edison 7.0.1 this does not seem to work anymore. The tasks do not reru=
n
> and the kernel image is not deployed.
>
> What has changed? Why does it not work anymore?
>
> Thanks,
> Rudi
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20120912/a319e9=
06/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 3
> Date: Wed, 12 Sep 2012 08:08:28 -0700
> From: Chris Larson <clarson@kergoth.com>
> To: Rudolf Streif <rudolf.streif@linux.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [linux-yocto] 'bitbake linux-yocto' after
>         'bitbake linux-yocto -c compile -f' does not create image
> Message-ID:
>         <
> CABcZANnkt30OvFX3BNctHf115jQbX4piKMxb3b2N8saP4Prrmg@mail.gmail.com>
> Content-Type: text/plain; charset=3DUTF-8
>
> On Wed, Sep 12, 2012 at 8:06 AM, Rudolf Streif <rudolf.streif@linux.com>
> wrote:
> > bitbake linux-yocto -c compile -f
> > bitbake linux-yocto
> >
> > worked perfectly fine. The tasks after compile were rerun and the new
> kernel
> > copied to tmp/deploy/images
> >
> > In Edison 7.0.1 this does not seem to work anymore. The tasks do not
> rerun
> > and the kernel image is not deployed.
>
> I'd suggest using bitbake's new -C argument. Run bitbake -C compile
> linux-yocto.
> --
> Christopher Larson
>
>
> ------------------------------
>
> Message: 4
> Date: Wed, 12 Sep 2012 08:16:46 -0700
> From: Rudolf Streif <rudolf.streif@linux.com>
> To: Chris Larson <clarson@kergoth.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [linux-yocto] 'bitbake linux-yocto' after
>         'bitbake linux-yocto -c compile -f' does not create image
> Message-ID:
>         <CA+gsK-rSTj418hLedGJ8VgdUgrP7=3D
> eRqNw5etpb21gBWwGAYkA@mail.gmail.com>
> Content-Type: text/plain; charset=3D"iso-8859-1"
>
> Thanks, Chris. From what bitbake version on is that command available? Th=
e
> bitbake version bundled with YP Denzil 7.0.1 is 1.15.2 and it does not
> recognize that command:
>
> ...
> bitbake: error: no such option -C
>
> Rudi
>
> On Wed, Sep 12, 2012 at 8:08 AM, Chris Larson <clarson@kergoth.com> wrote=
:
>
> > On Wed, Sep 12, 2012 at 8:06 AM, Rudolf Streif <rudolf.streif@linux.com=
>
> > wrote:
> > > bitbake linux-yocto -c compile -f
> > > bitbake linux-yocto
> > >
> > > worked perfectly fine. The tasks after compile were rerun and the new
> > kernel
> > > copied to tmp/deploy/images
> > >
> > > In Edison 7.0.1 this does not seem to work anymore. The tasks do not
> > rerun
> > > and the kernel image is not deployed.
> >
> > I'd suggest using bitbake's new -C argument. Run bitbake -C compile
> > linux-yocto.
> > --
> > Christopher Larson
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20120912/f7ad93=
34/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 5
> Date: Wed, 12 Sep 2012 08:57:16 -0700
> From: Khem Raj <raj.khem@gmail.com>
> To: Paul Eggleton <paul.eggleton@linux.intel.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] [meta-fsl-ppc 09/16] rcw_git.bb: update to 1.2.1
>         release version
> Message-ID:
>         <
> CAMKF1srJ6FHnmapeJAxu__xS95L02MRNCbhP68gCexNEU3nkQQ@mail.gmail.com>
> Content-Type: text/plain; charset=3D"utf-8"
>
> On Wednesday, September 12, 2012, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> > On Wednesday 12 September 2012 00:40:36 Khem Raj wrote:
> >> NAK
> >
> > Please do not reply to patches like this. If you object to a patch you
> need to
> > provide some reasoning.
>
> I did in the previous patch in this series which is similar
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20120912/f34cce=
42/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 6
> Date: Wed, 12 Sep 2012 16:00:49 +0000
> From: McClintock Matthew-B29882 <B29882@freescale.com>
> To: Khem Raj <raj.khem@gmail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] [meta-fsl-ppc 13/16] Update recipes to use
>         release tags instead of SHA
> Message-ID:
>         <
> 70CC66F5C30A414DADDA6973E4CA391A674A12@039-SN1MPN1-001.039d.mgd.msft.net>
>
> Content-Type: text/plain; charset=3D"iso-8859-1"
>
> On Wed, Sep 12, 2012 at 2:40 AM, Khem Raj <raj.khem@gmail.com> wrote:
> > NAK, it breaks BB_NO_NETWORK useless.
>
> Khem is right, I was about to go back and change all the tags to SHAs...
>
> -M
>
> > On Wed, Sep 12, 2012 at 12:06 AM,  <b19537@freescale.com> wrote:
> >> From: Matthew McClintock <msm@freescale.com>
> >>
> >> Signed-off-by: Matthew McClintock <msm@freescale.com>
> >> ---
> >>  recipes-tools/hv-cfg/hv-cfg_git.bb |    2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/recipes-tools/hv-cfg/hv-cfg_git.bb b/recipes-tools/hv-cfg=
/
> hv-cfg_git.bb
> >> index e137575..d3786c5 100644
> >> --- a/recipes-tools/hv-cfg/hv-cfg_git.bb
> >> +++ b/recipes-tools/hv-cfg/hv-cfg_git.bb
> >> @@ -18,7 +18,7 @@ PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> >>
> >>  inherit deploy
> >>
> >> -SRCREV =3D "102ab848d94f3c04f364ed273d0e00b21b0266f4"
> >> +SRCREV =3D "v1.2"
> >>  SRC_URI =3D "git://git.freescale.com/ppc/sdk/hv-cfg.git"
> >>
> >>  S =3D "${WORKDIR}/git"
> >> --
> >> 1.7.9.5
> >>
> >>
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> ------------------------------
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 24, Issue 51
> *************************************
>



--=20
*Raul Rosetto Mu=F1oz*

--bcaec554dedaf25e8c04c9847a66
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I saw the same problem but Im found the solution at link</div><div><b>=
<a href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.h=
tml#changing-recipes-kernel">http://www.yoctoproject.org/docs/current/dev-m=
anual/dev-manual.html#changing-recipes-kernel</a></b></div>
<div><b>in B.2.3. Changing the =A0CONFIG_SMP Configuration Using =A0menucon=
fig</b></div><div><br></div><div>Basic, do you need to do these commands:</=
div><div><br></div><div><font face=3D"&#39;courier new&#39;, monospace">$ b=
itbake linux-yocto -c cleansstate</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">$ bitbake linux-yocto =
-c menuconfig</font></div><div><br></div><div>change the kernel and:</div><=
div><font face=3D"&#39;courier new&#39;, monospace">$ bitbake linux-yocto -=
c compile -f</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">$ bitbake linux-yocto<=
/font></div><div><br></div><div>Remermber all the times that you do cleanal=
l you return you .config configurations to your defconfig.</div><div>If you=
 change menuconfig you must replace de defconfig file for your nem .config =
found in /tmp/work/machine/linux/git/.config</div>
<div><br></div><div>Maybe Its help you!</div><div><br></div><div>Thanks</di=
v><div><br></div><div><br><br><div class=3D"gmail_quote">2012/9/12  <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:yocto-request@yoctoproject.org" target=3D"=
_blank">yocto-request@yoctoproject.org</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Send yocto mailing list submissions to<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoprojec=
t.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto-request@yoctoproject.org">yocto-req=
uest@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto-owner@yoctoproject.org">yocto-owner=
@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=A0 =A01. Yocto Contract Position (Daniel McGuire)<br>
=A0 =A02. [linux-yocto] &#39;bitbake linux-yocto&#39; after &#39;bitbake<br=
>
=A0 =A0 =A0 linux-yocto -c compile -f&#39; does not create image (Rudolf St=
reif)<br>
=A0 =A03. Re: [linux-yocto] &#39;bitbake linux-yocto&#39; after &#39;bitbak=
e<br>
=A0 =A0 =A0 linux-yocto -c compile -f&#39; does not create image (Chris Lar=
son)<br>
=A0 =A04. Re: [linux-yocto] &#39;bitbake linux-yocto&#39; after &#39;bitbak=
e<br>
=A0 =A0 =A0 linux-yocto -c compile -f&#39; does not create image (Rudolf St=
reif)<br>
=A0 =A05. Re: [meta-fsl-ppc 09/16] <a href=3D"http://rcw_git.bb" target=3D"=
_blank">rcw_git.bb</a>: update to 1.2.1 =A0 =A0 =A0release<br>
=A0 =A0 =A0 version (Khem Raj)<br>
=A0 =A06. Re: [meta-fsl-ppc 13/16] Update recipes to use release tags<br>
=A0 =A0 =A0 instead of SHA (McClintock Matthew-B29882)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: 11 Sep 2012 19:55:26 -0400<br>
From: Daniel McGuire &lt;<a href=3D"mailto:daniel.m@tripleco.com">daniel.m@=
tripleco.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>, <=
a href=3D"mailto:openembedded-core@lists.openembedded.org">openembedded-cor=
e@lists.openembedded.org</a><br>
Subject: [yocto] Yocto Contract Position<br>
Message-ID: &lt;1726581940.1347407726406.JavaMail.cfservice@sl10app4&gt;<br=
>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
<br>
<br>
<br>
I am looking for a Yocto expert who can work a 3 week contract in the bay a=
rea. We are looking for one contractor only. And we pay on an hourly rate. =
Also, we need someone with US citizenship, Greencard, or valid EAD. I have =
included the job description. If you are available, let me know the hourly =
rate it would take to get you to do the project. We need someone immediatel=
y so give me a call as soon as you can if you are interested. Thanks. And i=
f you are not available, maybe you could refer me to someone who would be w=
illing and capable to complete the short project. Thanks again.<br>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
Milpitas, CA.<br>
<br>
Few weeks contract - short.<br>
<br>
They need an expert.<br>
<br>
Phone hire.<br>
<br>
<br>
<br>
They&#39;re a defense contract company so the work must be done on-site.<br=
>
They&#39;re taking a skinny portion of their current legacy system and want=
 to port it to Yocto to see if it will be worthwhile. They essentially want=
 Yocto to be the company&#39;s standard in California, Florida, and the U.K=
. but want to test the feasibility before moving forward (that&#39;s what t=
his short project is for).<br>

<br>
The Yocto Project is a Linux-based project that helps developers create cus=
tom Linux distributions specifically for embedded devices.<br>
<br>
We are looking for a very short contract of a few weeks for a very specific=
 specialist as outlined below.<br>
<br>
<br>
<br>
As the term is short, and the need is immediate, we&#39;d pay a premium IF =
we could find hands-on yocto expertise. We have already spent a lot of time=
 coming up to speed on Yocto, now we need an expert to complete the proof o=
f concept for us.<br>

<br>
<br>
<br>
The following are the requirements for the candidate we should look for.<br=
>
<br>
- =A0 =A0 =A0 =A0Minimum two years&#39; experience in working with &quot;Yo=
cto project&quot;<br>
- =A0 =A0 =A0 =A0Experience in creating a build setup and configuration of =
the yocto project<br>
- =A0 =A0 =A0 =A0Good knowledge and usage of the tool chains related to yoc=
to project<br>
- =A0 =A0 =A0 =A0Extensive knowledge and experience in integrating new laye=
rs to the Linux distribution.<br>
- =A0 =A0 =A0 =A0Ability to configure (add/remove) new kernel and user laye=
rs to create custom linux distribution.<br>
- =A0 =A0 =A0 =A0Experience in working with Java meta-layer, Database layer=
 would be a nice to have<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
Daniel McGuire<br>
<br>
<br>
Technical Recruiter| Triple Crown Consulting, LLC<br>
<br>
<br>
<br>
<br>
<br>
1901 S. Bascom Ave. Suite 750<br>
Campbell, CA 95008<br>
<br>
<br>
P: 408.680.2563|<br>
F: 408.608.0398<br>
<br>
<br>
<a href=3D"mailto:daniel.m@tripleco.com">daniel.m@tripleco.com</a><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20120911/f7715654/attachment-0001.html" target=3D"_blank">http://lists.y=
octoproject.org/pipermail/yocto/attachments/20120911/f7715654/attachment-00=
01.html</a>&gt;<br>

<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Wed, 12 Sep 2012 08:06:06 -0700<br>
From: Rudolf Streif &lt;<a href=3D"mailto:rudolf.streif@linux.com">rudolf.s=
treif@linux.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [linux-yocto] &#39;bitbake linux-yocto&#39; after &#39;bit=
bake<br>
=A0 =A0 =A0 =A0 linux-yocto -c compile -f&#39; does not create image<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:CA%2BgsK-qoz4u6OZV%2BFZN%2BLZq2AOgw5R=
ajOW6DCJOnXbZGecva1w@mail.gmail.com">CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DC=
JOnXbZGecva1w@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
In Denil modifying kernel parameters and doing<br>
<br>
bitbake linux-yocto -c compile -f<br>
bitbake linux-yocto<br>
<br>
worked perfectly fine. The tasks after compile were rerun and the new<br>
kernel copied to tmp/deploy/images<br>
<br>
In Edison 7.0.1 this does not seem to work anymore. The tasks do not rerun<=
br>
and the kernel image is not deployed.<br>
<br>
What has changed? Why does it not work anymore?<br>
<br>
Thanks,<br>
Rudi<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20120912/a319e906/attachment-0001.html" target=3D"_blank">http://lists.y=
octoproject.org/pipermail/yocto/attachments/20120912/a319e906/attachment-00=
01.html</a>&gt;<br>

<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Wed, 12 Sep 2012 08:08:28 -0700<br>
From: Chris Larson &lt;<a href=3D"mailto:clarson@kergoth.com">clarson@kergo=
th.com</a>&gt;<br>
To: Rudolf Streif &lt;<a href=3D"mailto:rudolf.streif@linux.com">rudolf.str=
eif@linux.com</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] [linux-yocto] &#39;bitbake linux-yocto&#39; after<br>
=A0 =A0 =A0 =A0 &#39;bitbake linux-yocto -c compile -f&#39; does not create=
 image<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:CABcZANnkt30OvFX3BNctHf115jQbX4piKMxb=
3b2N8saP4Prrmg@mail.gmail.com">CABcZANnkt30OvFX3BNctHf115jQbX4piKMxb3b2N8sa=
P4Prrmg@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3DUTF-8<br>
<br>
On Wed, Sep 12, 2012 at 8:06 AM, Rudolf Streif &lt;<a href=3D"mailto:rudolf=
.streif@linux.com">rudolf.streif@linux.com</a>&gt; wrote:<br>
&gt; bitbake linux-yocto -c compile -f<br>
&gt; bitbake linux-yocto<br>
&gt;<br>
&gt; worked perfectly fine. The tasks after compile were rerun and the new =
kernel<br>
&gt; copied to tmp/deploy/images<br>
&gt;<br>
&gt; In Edison 7.0.1 this does not seem to work anymore. The tasks do not r=
erun<br>
&gt; and the kernel image is not deployed.<br>
<br>
I&#39;d suggest using bitbake&#39;s new -C argument. Run bitbake -C compile=
 linux-yocto.<br>
--<br>
Christopher Larson<br>
<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Wed, 12 Sep 2012 08:16:46 -0700<br>
From: Rudolf Streif &lt;<a href=3D"mailto:rudolf.streif@linux.com">rudolf.s=
treif@linux.com</a>&gt;<br>
To: Chris Larson &lt;<a href=3D"mailto:clarson@kergoth.com">clarson@kergoth=
.com</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] [linux-yocto] &#39;bitbake linux-yocto&#39; after<br>
=A0 =A0 =A0 =A0 &#39;bitbake linux-yocto -c compile -f&#39; does not create=
 image<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;CA+gsK-rSTj418hLedGJ8VgdUgrP7=3D<a href=3D"mailto:eRqNw=
5etpb21gBWwGAYkA@mail.gmail.com">eRqNw5etpb21gBWwGAYkA@mail.gmail.com</a>&g=
t;<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
Thanks, Chris. From what bitbake version on is that command available? The<=
br>
bitbake version bundled with YP Denzil 7.0.1 is 1.15.2 and it does not<br>
recognize that command:<br>
<br>
...<br>
bitbake: error: no such option -C<br>
<br>
Rudi<br>
<br>
On Wed, Sep 12, 2012 at 8:08 AM, Chris Larson &lt;<a href=3D"mailto:clarson=
@kergoth.com">clarson@kergoth.com</a>&gt; wrote:<br>
<br>
&gt; On Wed, Sep 12, 2012 at 8:06 AM, Rudolf Streif &lt;<a href=3D"mailto:r=
udolf.streif@linux.com">rudolf.streif@linux.com</a>&gt;<br>
&gt; wrote:<br>
&gt; &gt; bitbake linux-yocto -c compile -f<br>
&gt; &gt; bitbake linux-yocto<br>
&gt; &gt;<br>
&gt; &gt; worked perfectly fine. The tasks after compile were rerun and the=
 new<br>
&gt; kernel<br>
&gt; &gt; copied to tmp/deploy/images<br>
&gt; &gt;<br>
&gt; &gt; In Edison 7.0.1 this does not seem to work anymore. The tasks do =
not<br>
&gt; rerun<br>
&gt; &gt; and the kernel image is not deployed.<br>
&gt;<br>
&gt; I&#39;d suggest using bitbake&#39;s new -C argument. Run bitbake -C co=
mpile<br>
&gt; linux-yocto.<br>
&gt; --<br>
&gt; Christopher Larson<br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20120912/f7ad9334/attachment-0001.html" target=3D"_blank">http://lists.y=
octoproject.org/pipermail/yocto/attachments/20120912/f7ad9334/attachment-00=
01.html</a>&gt;<br>

<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Wed, 12 Sep 2012 08:57:16 -0700<br>
From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com=
</a>&gt;<br>
To: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul=
.eggleton@linux.intel.com</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] [meta-fsl-ppc 09/16] <a href=3D"http://rcw_git.bb" tar=
get=3D"_blank">rcw_git.bb</a>: update to 1.2.1<br>
=A0 =A0 =A0 =A0 release version<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:CAMKF1srJ6FHnmapeJAxu__xS95L02MRNCbhP=
68gCexNEU3nkQQ@mail.gmail.com">CAMKF1srJ6FHnmapeJAxu__xS95L02MRNCbhP68gCexN=
EU3nkQQ@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
On Wednesday, September 12, 2012, Paul Eggleton &lt;<br>
<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.=
com</a>&gt; wrote:<br>
&gt; On Wednesday 12 September 2012 00:40:36 Khem Raj wrote:<br>
&gt;&gt; NAK<br>
&gt;<br>
&gt; Please do not reply to patches like this. If you object to a patch you=
<br>
need to<br>
&gt; provide some reasoning.<br>
<br>
I did in the previous patch in this series which is similar<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20120912/f34cce42/attachment-0001.html" target=3D"_blank">http://lists.y=
octoproject.org/pipermail/yocto/attachments/20120912/f34cce42/attachment-00=
01.html</a>&gt;<br>

<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Wed, 12 Sep 2012 16:00:49 +0000<br>
From: McClintock Matthew-B29882 &lt;<a href=3D"mailto:B29882@freescale.com"=
>B29882@freescale.com</a>&gt;<br>
To: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</=
a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] [meta-fsl-ppc 13/16] Update recipes to use<br>
=A0 =A0 =A0 =A0 release tags instead of SHA<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:70CC66F5C30A414DADDA6973E4CA391A674A1=
2@039-SN1MPN1-001.039d.mgd.msft.net">70CC66F5C30A414DADDA6973E4CA391A674A12=
@039-SN1MPN1-001.039d.mgd.msft.net</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
On Wed, Sep 12, 2012 at 2:40 AM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gm=
ail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; NAK, it breaks BB_NO_NETWORK useless.<br>
<br>
Khem is right, I was about to go back and change all the tags to SHAs...<br=
>
<br>
-M<br>
<br>
&gt; On Wed, Sep 12, 2012 at 12:06 AM, =A0&lt;<a href=3D"mailto:b19537@free=
scale.com">b19537@freescale.com</a>&gt; wrote:<br>
&gt;&gt; From: Matthew McClintock &lt;<a href=3D"mailto:msm@freescale.com">=
msm@freescale.com</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Matthew McClintock &lt;<a href=3D"mailto:msm@freesc=
ale.com">msm@freescale.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt; =A0recipes-tools/hv-cfg/<a href=3D"http://hv-cfg_git.bb" target=3D=
"_blank">hv-cfg_git.bb</a> | =A0 =A02 +-<br>
&gt;&gt; =A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/recipes-tools/hv-cfg/<a href=3D"http://hv-cfg_git.bb"=
 target=3D"_blank">hv-cfg_git.bb</a> b/recipes-tools/hv-cfg/<a href=3D"http=
://hv-cfg_git.bb" target=3D"_blank">hv-cfg_git.bb</a><br>
&gt;&gt; index e137575..d3786c5 100644<br>
&gt;&gt; --- a/recipes-tools/hv-cfg/<a href=3D"http://hv-cfg_git.bb" target=
=3D"_blank">hv-cfg_git.bb</a><br>
&gt;&gt; +++ b/recipes-tools/hv-cfg/<a href=3D"http://hv-cfg_git.bb" target=
=3D"_blank">hv-cfg_git.bb</a><br>
&gt;&gt; @@ -18,7 +18,7 @@ PACKAGE_ARCH =3D &quot;${MACHINE_ARCH}&quot;<br>
&gt;&gt;<br>
&gt;&gt; =A0inherit deploy<br>
&gt;&gt;<br>
&gt;&gt; -SRCREV =3D &quot;102ab848d94f3c04f364ed273d0e00b21b0266f4&quot;<b=
r>
&gt;&gt; +SRCREV =3D &quot;v1.2&quot;<br>
&gt;&gt; =A0SRC_URI =3D &quot;git://<a href=3D"http://git.freescale.com/ppc=
/sdk/hv-cfg.git" target=3D"_blank">git.freescale.com/ppc/sdk/hv-cfg.git</a>=
&quot;<br>
&gt;&gt;<br>
&gt;&gt; =A0S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;&gt; --<br>
&gt;&gt; 1.7.9.5<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
------------------------------<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 24, Issue 51<br>
*************************************<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><b>Raul Rose=
tto Mu=F1oz</b><br>
</div>

--bcaec554dedaf25e8c04c9847a66--
