Return-Path: <evadeflow@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BD38E0027E
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 08:45:05 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so1282010iea.35
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 08:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=AxxjEqvGF5RxtgtGf2+HLBUIHtSTKkQgTtJFNHW3BN4=;
	b=p0cz7Pq2jYFyhB+TxHe4Mh4yaUZWrnpjf4sXeTLxS1KDSxxRsL56NgPPUkSiL8Xyu9
	f7bQPwxKeggkCkpLmJXsrTTzgSRD4nVjsjovV5joyaTwLrBHFRVSQWPokc6P4sbcw7wO
	Pv7Ahlm7xj6kQNRiUhqsvMwTZC297V3NGv+M4ut+vR2CNurF10apOvuhT9vLtlMDt4Pf
	2cPZoBVcyHywL5owaj0H2vOMDUv4aKFjkO1Y1RH0gGeg7hsc5dplX8mU6ZaAeBMjQLjz
	Nu5tRUq7T1YJvGXH1KqTN49hn7kb2WF4AgBCuAIfiOP9HLyREnxU8OmzaJVu9o8qkDZV
	MxsQ==
MIME-Version: 1.0
Received: by 10.50.193.170 with SMTP id hp10mr5820599igc.63.1349883905159;
	Wed, 10 Oct 2012 08:45:05 -0700 (PDT)
Received: by 10.42.179.68 with HTTP; Wed, 10 Oct 2012 08:45:04 -0700 (PDT)
In-Reply-To: <BFCDD08E-1AB4-4770-812D-3BB6E2606E18@gamestop.com>
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
	<CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
	<6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
	<CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
	<1A527469-CEF5-434E-8604-540899C8BA04@gamestop.com>
	<CA+gsK-qzq5dK4QwOq1kw1U8tNbhDt-UZsRha-_ZKu0Kw8AWFAg@mail.gmail.com>
	<A4CBB3C5-9355-4C1E-8324-55AF1849E0CF@gamestop.com>
	<CA+gsK-obQLKv9LnMiqAiukKcoPBN3Bijn-oYhdUrvJ9yp12w=g@mail.gmail.com>
	<BFCDD08E-1AB4-4770-812D-3BB6E2606E18@gamestop.com>
Date: Wed, 10 Oct 2012 11:45:04 -0400
Message-ID: <CAMAb8ZOv9ashi8gAXgPMDStB0d8ynq9LrcvpmRV2G+PVd=_g7g@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The BitBake equivalent of "Hello, World!"
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
X-List-Received-Date: Wed, 10 Oct 2012 15:45:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Again, thanks *so* much for putting this together. I tried to do this
once before and didn't have the tenacity to stick with it--it is a
surprisingly daunting task. Having a smallest-possible example will, I
think, be really helpful to developers who want to learn how to debug
bitbake and contribute fixes.

Interestingly, I tried running this and got the following result:

bitbake_hello% ../bitbake-1.15.2/bin/bitbake a
The BBPATH variable is not set
DEBUG: Removed the following variables from the environment:
http_proxy, CVS_RSH,
SHLVL, LD_LIBRARY_PATH, EDITOR, SUDO_USER, USERNAME, PROMPT,
PYTHONPATH, SUDO_UID,
RPROMPT, SUDO_COMMAND, SUDO_GID, OLDPWD, MAIL


I guess I either fat-fingered something during cut-and-paste, or it's
due to some difference between the tarball I downloaded and the bitbake
tag you were using. I'm behind a firewall, but I'll see if I can suck
down the the actual git repo through my phone and see if that makes a
difference.

On Tue, Oct 9, 2012 at 6:31 PM, Patrick Turley
<PatrickTurley@gamestop.com> wrote:
> Success. The file tree depicted at the bottom of this mail is nearly the
> smallest, valid BitBake project that prints "Hello, World!" Here's the
> output:
>
>
>     $ ../BitBake/bin/bitbake  a
>     Parsing recipes: 100%
> |#############################################################| Time:
> 00:00:00
>     Parsing of 1 .bb files complete (0 cached, 1 parsed). 1 targets, 0
> skipped, 0 masked, 0 errors.
>     NOTE: Resolving any missing task queue dependencies
>     NOTE: Preparing runqueue
>     NOTE: Executing RunQueue Tasks
>     NOTE: Running task 1 of 1 (ID: 0,
> /home/pturley/Workspace/Hello/LayerA/a.bb, do_build)
>     NOTE: package None: task do_build: Started
>     Hello, World!
>     NOTE: package None: task do_build: Succeeded
>     NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be
> rerun and all succeeded.
>
>
> A few things to note:
>
> 1) This is not the *smallest* such BitBake project. For example, the
> "DESCRIPTION" and "PV" variables need not be assigned in "a.bb". I set th=
ose
> variables because I wanted "show-layers" and "show-recipes" to display
> reasonable information.
>
> 2) Some of the variables set in "bitbake.conf" have "simplified" values. =
For
> example, you would *not* want to use these values if there were multiple
> recipes and you had to disambiguate the output from each of them.
>
> 3) On the other hand, *all* the variable assignments in "bitbake.conf" ar=
e
> *essential* to BitBake itself. If you remove any one of those assignments=
,
> BitBake will either declare an error or die (usually because some interna=
l
> variable is set to "None" and the BitBake code can't handle it).
>
>
> ------------------------------------------------------------
>
>
> =E2=94=9C=E2=94=80=E2=94=80 build
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 classes
> =E2=94=82   =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 base.bbclass
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=82       +--------------------------------------------=
---
> =E2=94=82   =E2=94=82       |  addtask build
> =E2=94=82   =E2=94=82       +--------------------------------------------=
---
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 conf
> =E2=94=82       =E2=94=82
> =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf
> =E2=94=82       =E2=94=82
> =E2=94=82       =E2=94=82   +--------------------------------------------=
---
> =E2=94=82       =E2=94=82   |  BBLAYERS ?=3D " \
> =E2=94=82       =E2=94=82   |    /home/pturley/Workspace/Hello/LayerA \
> =E2=94=82       =E2=94=82   |    "
> =E2=94=82       =E2=94=82   +--------------------------------------------=
---
> =E2=94=82       =E2=94=82
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 bitbake.conf
> =E2=94=82
> =E2=94=82           +-----------------------------------------------
> =E2=94=82           |  TMPDIR  =3D "${TOPDIR}/tmp"
> =E2=94=82           |  CACHE   =3D "${TMPDIR}/cache"
> =E2=94=82           |  STAMP   =3D "${TMPDIR}/stamps"
> =E2=94=82           |  T       =3D "${TMPDIR}/work"
> =E2=94=82           |  B       =3D "${TMPDIR}"
> =E2=94=82           +-----------------------------------------------
> =E2=94=82
> =E2=94=9C=E2=94=80=E2=94=80 LayerA
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 a.bb
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=82       +--------------------------------------------=
---
> =E2=94=82   =E2=94=82       |  DESCRIPTION =3D "Layer A Recipe"
> =E2=94=82   =E2=94=82       |  PN =3D 'a'
> =E2=94=82   =E2=94=82       |  PV =3D '1'
> =E2=94=82   =E2=94=82       |
> =E2=94=82   =E2=94=82       |  python do_build() {
> =E2=94=82   =E2=94=82       |      bb.plain("Hello, World!");
> =E2=94=82   =E2=94=82       |  }
> =E2=94=82   =E2=94=82       +--------------------------------------------=
---
> =E2=94=82   =E2=94=82
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 conf
> =E2=94=82       =E2=94=82
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 layer.conf
> =E2=94=82
> =E2=94=82           +-----------------------------------------------
> =E2=94=82           |  BBPATH .=3D ":${LAYERDIR}"
> =E2=94=82           |
> =E2=94=82           |  BBFILES +=3D "${LAYERDIR}/*.bb"
> =E2=94=82           |
> =E2=94=82           |  BBFILE_COLLECTIONS +=3D "A"
> =E2=94=82           |  BBFILE_PATTERN_A :=3D "^${LAYERDIR}/"
> =E2=94=82           +-----------------------------------------------
> =E2=94=82
> =E2=94=94=E2=94=80=E2=94=80 BitBake
>
>    The BitBake directory origin is:
>
>        http://git.openembedded.org/bitbake/
>
>    I have the 1.15.2 tag checked out, which is what
>    Yocto denzil uses.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

