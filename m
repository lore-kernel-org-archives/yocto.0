Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21764E00C7D; Wed, 28 Nov 2018 05:11:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5E25E00C74
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 05:11:41 -0800 (PST)
Received: by mail-lf1-f48.google.com with SMTP id a16so19288090lfg.3
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 05:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=0s5YN5GbWW/vhrTnqZlsE6dP25c+gg8TMhg8cV1a+9M=;
	b=EFPPwW4trikPtVVQve+gdm3DVhknZS+2vK/i+8lZYS/OY4Lk2MEx0hG1HWiWepjU8Y
	k2tVL4FCpSU8vydANgsm7e3skHLQE271y1Wdb0yiW/dVU9QyO5exSAWJ9hUy4Go4NC2c
	Mn8fjti4goYDVo+I+8irLn4NkkIMxBWzZ+kFk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=0s5YN5GbWW/vhrTnqZlsE6dP25c+gg8TMhg8cV1a+9M=;
	b=GAw69G8T0cQeolXiaaHe+5Ub6naiD55ssdj84p3uhbZdzi0/8k1BKWHX2bfaE3Z34a
	WIqp+tZuKgcf8v8ZqWU90dHhCkIiucX76Pmj1y61PQwavOTFj+0ts/Kds/PMlCLwlbQH
	1jegUZ1xhHEy1L0GWD4tuQRF6qbnl0lLYHJQxQtnUHmJsyETj7ZYzygu4Sf+CCn1c9+v
	iom+vt4byPXe56hW1IkKy+y7+pb6SS2ST+FOQCF8UsxcUKW368QkVV+xlRS7lNhMuh7s
	Ehqx4Yva1BvaWHfsQ6gntUweXTjA0OgmFRpM9du0Zbqo+oBhZuZrdZaoPhrnKWGzj9in
	fkmg==
X-Gm-Message-State: AGRZ1gJWUMKxb7AnJbuj//I/pNRkZgi51MTmb8VC/7bioPR3bmSjyYDe
	Ogq8OChI4rilUCtTfuk5z/ZFIrQf5tC6qaKFzhL1og==
X-Google-Smtp-Source: AJdET5di7jlGUfE9rGBAjDaiwN/7OorYuC+Cw4kAXmflLBAwSTkE2PCnvDbNvwo+bErh0B/Pud5pWx4UHqtn3PlFvH4=
X-Received: by 2002:a19:54d7:: with SMTP id b84mr20558445lfl.131.1543410700356;
	Wed, 28 Nov 2018 05:11:40 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
	<20181128112500.emfrdulwvzowkfyu@jholzmayr.localdomain>
	<CAGAf8LwjJ3UpQnq6ii_s5Xd9d0qT=ECQwtordxzTZXgUnxv8bQ@mail.gmail.com>
In-Reply-To: <CAGAf8LwjJ3UpQnq6ii_s5Xd9d0qT=ECQwtordxzTZXgUnxv8bQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 28 Nov 2018 14:11:28 +0100
Message-ID: <CAP71WjzP+QUKOZfJ3wreKQ80ni6rPT2et5FWe=dazZ-RkSqoGg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: jan.kiszka@siemens.com, Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Git tool/command problems with YOCTO Open Source repos
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
X-List-Received-Date: Wed, 28 Nov 2018 13:11:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 28, 2018 at 1:53 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> > This is what your opinion is. Which seems to be vastly overestimating i=
ts own importance.
>
> I do not think you understood what I am trying to advertise. The
> unification. In other words:
> If I use kernel.org, I use git tool.
> If I use YOCTO Poky, I would like to use git tool.
> For all YOCTO repos, I would like to use git tool.

You mean OpenEmbedded Layers, not Yocto repo here. I think 99.9%
(maybe 100%) of the public OE layers are available as git repo. So you
can (in fact you have to) use git for any OE layer.

>
> Not repo, kas, or other tools. Not particular tools, assigned to
> particular tasks, for particular build systems.

I think you are confused. There are hundreds of OE layers out there,
maintained by developers, companies, communities, ... Poky is a
reference implementation maintained by the Yocto Project. Building a
custom Linux distro using Yocto Project means that you need to pull a
certain amount of layers based on what you are doing. Most of the time
each of these layers are hosted in their own *git* tree. For Poky we
create a *new* git tree that results of the "merge" of all the
dependent layers. However the OE core is maintained in their own tree
and  bitbake as well.

the tools you mentioned here, like repo, kas, .. are not equivalent to
git. they are helpers, wrappers, tools that can be use to combine many
individual git repo to form a single workspace, so that you have all
the layers you need in a single workspace to build your own custom
distro.

The Yocto Project does not recommend any specific tool to create such
workspace, and people are using various solutions. There are on-going
discussions in YP/OE to pick one tool and promote it, but no
conclusion so far.

But again this is very different from the initial problem you are
reporting, which is just a misunderstanding of git tags and commits.

>
> Since I would like to invest time and effort in ONLY one,
> comprehensive tool, and discard all other tools which are not up to
> the complex challenges I have. So this is why I sent initial email, in
> first place,
>
> Thank you,
> Zoran
> _______
> On Wed, Nov 28, 2018 at 12:25 PM Josef Holzmayr
> <holzmayr@rsi-elektrotechnik.de> wrote:
> >
> > Hello Zoran,
> >
> > On Wed, Nov 28, 2018 at 12:00:22PM +0100, Zoran Stojsavljevic wrote:
> > > I am (almost) perfectly aligned with kernel.org, and I (personally)
> > > decided to use git. Since I start understanding importance of Linus.
> > > Linux officers and their Linux philosophy.
> >
> > You are free to choose your workflow as you please.
> >
> > > Now... Answers to your email. KAS (Siemens developed tool by Jan
> > > Kiszka and his crew) is the supplement for the fast/quick building th=
e
> > > YOCTO, to use ONLY rootfs. NOT kernel. NOT aligned with the git tool.
> > > Not applicable for purposes as git.
> >
> > It is a tool that serves one purpose. It does that job well.
> >
> > > On the other note, repo is GOOGLE tool. Promoted by them. Most of the
> > > ARM followers (such as Toradex) use repo tool.
> >
> > Thats what they choose.
> >
> > > You say: I talk to the wrong crew. I think opposite. I am giving the
> > > generic message via YOCTO email list, to avoid hundreds of particular
> > > emails, so we can unify the effort. Which is not minor. Rather
> > > opposite: major.
> > >
> > > Since, I guess, this is of the major importance. For YOCTO survival.
> > > The direction is one: git tool. For all YOCTO developers. IMHO.
> >
> > This is what your opinion is. Which seems to be vastly overestimating
> > its own importance.
> >
> > > Stefano,
> > >
> > > You, as major official representative of U-Boot philosophy (and
> > > Wolfgang's Denk right hand), do not take sides, rather ad-hoc
> > > approach. For you, this topic is not important. Appreciated your help=
.
> >
> > By now, you are telling other people who have been doing thwir work
> > successfully for decades how to do their jobs.
> > Actually, telling off one of the core contributors and community member=
s
> > with "This is not for you" is plain rude.
> >
> > > I am asking here for much higher awareness. YOCTO better survival in =
The Future.
> >
> > We are doing quite well at the moment, thank you.
> >
> > So if you have a proposal on how to improve things, feel free to share
> > it. Go ahead and lead on how to use that proposal by doing your own
> > upstream work, showing how emplying your proposal makes it better and
> > more usable.
> >
> > Just getting onto a mailing list and saying "You're doing it wrong
> > because it doesn't suit my workflow", again, is quite rude.
> >
> > Greetz.
> >
> > PS: yes, this mail is explicitly meant to support Stefano.
> >
> > >
> > > Thank you,
> > > Zoran
> > > _______
> > > On Wed, Nov 28, 2018 at 10:52 AM Stefano Babic <sbabic@denx.de> wrote=
:
> > > >
> > > > Hi Zoran,
> > > >
> > > > On 28/11/18 10:17, Zoran Stojsavljevic wrote:
> > > > > Hello YOCTO people,
> > > > >
> > > > > I would like to use standard git tool while using all the Yocto
> > > > > layers. NOT only Poky repository (which, I believe, works all the=
 way
> > > > > with git tools), but as much as possible with other github propri=
etary
> > > > > repos and layers. Since I am not able to execute git commands usi=
ng
> > > > > some number of proprietary repos over github.
> > > > >
> > > > > As example, I'll use meta-bbb repository.
> > > > > https://github.com/jumpnow/meta-bbb.git, after cloning the follow=
ing
> > > > > happens (chosen, since it has at least dozen of branches):
> > > > >
> > > > > After cloning, I did not get anything from the following commands=
,
> > > > > being in the root of the meta-bbb repo, namely:
> > > > >
> > > > > [user@fedora28-ssd meta-bbb]$ pwd
> > > > > /home/user/projects2/beaglebone-black/yocto-master/meta-bbb
> > > > > [user@fedora28-ssd meta-bbb]$ git describe
> > > > > fatal: No names found, cannot describe anything.
> > > >
> > > > I understand, but why is this an issue in Yocto project ? The maint=
ainer
> > > > does not use tags and git describe is fast useless.
> > > >
> > > > You should contact layer's maintainer and ask for that. Anyway, out=
side
> > > > poky, tags are quite unused in layers.
> > > >
> > > > > [user@fedora28-ssd meta-bbb]$ git tag
> > > > > [user@fedora28-ssd meta-bbb]$ git checkout thud
> > > > > Branch 'thud' set up to track remote branch 'thud' from 'origin'.
> > > > > Switched to a new branch 'thud'
> > > > > [user@fedora28-ssd meta-bbb]$ git checkout sumo
> > > > > Switched to branch 'sumo'
> > > > > Your branch is up to date with 'origin/sumo'.
> > > > > [user@fedora28-ssd meta-bbb]$ git describe
> > > > > fatal: No names found, cannot describe anything.
> > > > > [user@fedora28-ssd meta-bbb]$
> > > > >
> > > > > The rationale behind this request: git is the powerful tool which
> > > > > should work and be solely used for YOCTO layers' synchronization.=
 In
> > > > > other words, YOCTO should give some tools' (namely git) unificati=
on
> > > > > guidelines in some way. :-)
> > > >
> > > > It is clear that a tool to maintain the layers in sync is required,=
 but
> > > > it is quite independent how the layers (and many are proprietary la=
yers)
> > > > are built. So you can use "repo" or "kas" (my preferred one) for th=
at.
> > > >
> > > > Best regards,
> > > > Stefano Babic
> > > >
> > > > --
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > > DENX Software Engineering GmbH,      Managing Director: Wolfgang De=
nk
> > > > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germa=
ny
> > > > Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.=
de
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> > Josef Holzmayr
> > Software Developer Embedded Systems
> >
> > Tel: +49 8444 9204-48
> > Fax: +49 8444 9204-50
> >
> > R-S-I Elektrotechnik GmbH & Co. KG
> > Woelkestrasse 11
> > D-85301 Schweitenkirchen
> > www.rsi-elektrotechnik.de
> > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> > Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170=
393
> > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> > Ust-IdNr: DE 128592548
> >
> > _____________________________________________________________
> > Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> > USt-IdNr.: DE 128592548
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

