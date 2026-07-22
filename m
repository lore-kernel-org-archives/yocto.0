Return-Path: <yocto@nkent.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46106C44512
	for <webhook@archiver.kernel.org>; Wed, 22 Jul 2026 06:23:32 +0000 (UTC)
Subject: Re: [yocto] Limiting Yocto Memory Usage
To: "Randy MacLeod" <randy.macleod@windriver.com>, yocto@lists.yoctoproject.org
From: "Nate Kent" <yocto@nkent.net>
X-Originating-Location: Zaventem, Flanders, BE (194.110.115.19)
X-Originating-Platform: Android Phone Firefox 153
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 Jul 2026 23:23:27 -0700
References: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com> <6rpl0nny24.fsf@pengutronix.de> <f7c74a04-f5dc-4e09-8bae-65626db09dde@windriver.com>
In-Reply-To: <f7c74a04-f5dc-4e09-8bae-65626db09dde@windriver.com>
Message-ID: <978937.1784701407866859454@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jzLmkL32SBKJMjlDcsmU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jul 2026 06:23:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66651

--jzLmkL32SBKJMjlDcsmU
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 21, 2026 at 05:22 PM, Randy MacLeod wrote:

>
> On 2026-07-16 04:22, Ulrich =C3=96lmann via lists.yoctoproject.org wrote:
> > Hey Luis,
> >
> > On Fri, Jul 10 2026 at 15:26 -0600, "Luis Merayo via
> lists.yoctoproject.org"<luis.merayo=3Dridgerun.com@lists.yoctoproject.org=
>
> wrote:
> >> Hi,
> >>
> >> I would like to know if there is a way to limit Bitbake's Memory usage
> >> to a specific percentage of the available RAM. For example, can the
> >> Yocto build be limited to use a maximum of 70% of RAM?
> > if you are doing your Bitbake work on a machine running a systemd based
> > Linux distribution you could simply do something like
> >
> >    $ systemd-run \
> >         --user \
> >         --scope \
> >         --property=3DCPUWeight=3D<YOUR_CPUWEIGHT> \
> >         --property=3DIOWeight=3D<YOUR_IOWEIGHT> \
> >         --property=3DMemoryHigh=3D<YOUR_MEMORYHIGH> \
> >         --property=3DOOMPolicy=3Dkill \
> >         --unit=3D"bitbake-run" \
> >         bitbake [...]
> >
> > to somewhat limit the resources, see systemd.resource-control(5) and
> > systemd.scope(5) for details regarding the used parameters.
> >
> > Best regards,
> > Ulrich
>=20
>=20
> Hi Ulrich,
>=20
> Using systemd-run is something that I've been meaning to try so it's=20
> good to hear that you're doing it.
>=20
> Do you have any experiences to share about this approach ?
> Do you do world builds?
> Do you run more than one systemd-run build on a given machine?

I do this as a regular part of my development, though I tend to use '-S' ('=
-shell', essentially interactive mode) rather than spawning a unit just for=
 a single build. I'll also often modify the resource constraints while BitB=
ake is running if I need to reserve additional resources for non-BitBake ta=
sks while a build is running. That being said, I generally do not do more t=
han a single build at a time simply because reasoning about how to get two =
competing processes to maximize the usage of the system is a much more diff=
icult challenge.

For theor the most my experience shows that it will work as you expect. If =
you give the slice three cores and it will act like building on a machine w=
ith just three cores, give it a low CPU weight and you'll get a build that'=
s low priority to the scheduler, etc.

If you have other questions I can try to answer them but, for the most part=
, it's so painless and unsurprising that I don't really have much in the wa=
y of advice.

- Nate

PS: I'm sending this from the Yocto Mailing list website and I can't tell i=
f it's going to send as "Github Flavored Markdown" + HTML or the plaintext =
that I'm typing. Apologies if this comes through mangled.=20

--jzLmkL32SBKJMjlDcsmU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>On Tue, Jul 21, 2026 at 05:22 PM, Randy MacLeod wrote:</p>

<blockquote>
<p>On 2026-07-16 04:22, Ulrich =C3=96lmann via lists.yoctoproject.org wrote=
:
&gt; Hey Luis,
&gt;
&gt; On Fri, Jul 10 2026 at 15:26 -0600, &quot;Luis Merayo via
lists.yoctoproject.org&quot;<luis.merayo=3Dridgerun.com@lists.yoctoproject.=
org>
wrote:
&gt;&gt; Hi,
&gt;&gt;
&gt;&gt; I would like to know if there is a way to limit Bitbake's Memory u=
sage
&gt;&gt; to a specific percentage of the available RAM. For example, can th=
e
&gt;&gt; Yocto build be limited to use a maximum of 70% of RAM?
&gt; if you are doing your Bitbake work on a machine running a systemd base=
d
&gt; Linux distribution you could simply do something like
&gt;
&gt;    $ systemd-run \
&gt;         --user \
&gt;         --scope \
&gt;         --property=3DCPUWeight=3D<YOUR_CPUWEIGHT> \
&gt;         --property=3DIOWeight=3D<YOUR_IOWEIGHT> \
&gt;         --property=3DMemoryHigh=3D<YOUR_MEMORYHIGH> \
&gt;         --property=3DOOMPolicy=3Dkill \
&gt;         --unit=3D&quot;bitbake-run&quot; \
&gt;         bitbake [...]
&gt;
&gt; to somewhat limit the resources, see systemd.resource-control(5) and
&gt; systemd.scope(5) for details regarding the used parameters.
&gt;
&gt; Best regards,
&gt; Ulrich</p>

<p>Hi Ulrich,</p>

<p>Using systemd-run is something that I've been meaning to try so it's
good to hear that you're doing it.</p>

<p>Do you have any experiences to share about this approach ?
Do you do world builds?
Do you run more than one systemd-run build on a given machine?</p>
</blockquote>

<p>I do this as a regular part of my development, though I tend to use '-S'=
 ('-shell', essentially interactive mode) rather than spawning a unit just =
for a single build. I'll also often modify the resource constraints while B=
itBake is running if I need to reserve additional resources for non-BitBake=
 tasks while a build is running. That being said, I generally do not do mor=
e than a single build at a time simply because reasoning about how to get t=
wo competing processes to maximize the usage of the system is a much more d=
ifficult challenge.</p>

<p>For theor the most my experience shows that it will work as you expect. =
If you give the slice three cores and it will act like building on a machin=
e with just three cores, give it a low CPU weight and you'll get a build th=
at's low priority to the scheduler, etc.</p>

<p>If you have other questions I can try to answer them but, for the most p=
art, it's so painless and unsurprising that I don't really have much in the=
 way of advice.</p>

<ul>
<li>Nate</li>
</ul>

<p>PS: I'm sending this from the Yocto Mailing list website and I can't tel=
l if it's going to send as &quot;Github Flavored Markdown&quot; + HTML or t=
he plaintext that I'm typing. Apologies if this comes through mangled.</p>

--jzLmkL32SBKJMjlDcsmU--

