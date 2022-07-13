Return-Path: <n.jeker@delisys.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BC8C43334
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 13:32:56 +0000 (UTC)
Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de
 [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web12.21904.1657719166158231494
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 06:32:46 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 84-75-156-97.dclient.hispeed.ch ([84.75.156.97]
 helo=station.local); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1oBcTr-0004yr-T0; Wed, 13 Jul 2022 15:32:43 +0200
Message-ID: <18cb0052f9c42bba13cbe2738b74058a4d691a00.camel@delisys.ch>
Subject: Re: [yocto] Switching between multiple DISTROs without
 "contamination"
From: Nicolas Jeker <n.jeker@delisys.ch>
To: Khoi Dinh Trinh <khoidinhtrinh@gmail.com>, Mike Looijmans
	 <mike.looijmans@topic.nl>, Martin Weber <martin.weber@br-automation.com>
Cc: yocto@lists.yoctoproject.org
In-Reply-To: 
 <CAMLPRYczkk+ceHD8Mnf=BMv2GJrEF_75mwLek37rccwPKZvYZQ@mail.gmail.com>
References: 
	<1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.0579b8aa-d2a5-42d7-9e61-2548c06e61ef@emailsignatures365.codetwo.com>
	 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.2d9bc8b4-92c7-47b2-b9e8-ac8d32e87ee0@emailsignatures365.codetwo.com>
	 <6b3d2b0146aeaf2c25e0440e7dd6aa0c17cb4a36.camel@delisys.ch>
	 <8f0726b6-c7ed-83a1-6069-41bf8370b3bb@topic.nl>
	 <CAMLPRYczkk+ceHD8Mnf=BMv2GJrEF_75mwLek37rccwPKZvYZQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 Jul 2022 15:32:43 +0200
MIME-Version: 1.0
User-Agent: Evolution 3.44.3 
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1657719166;d3604046;
X-HE-SMSGID: 1oBcTr-0004yr-T0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 13:32:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57522

Thanks Martin and Mike for your explanations and tips.

So, I've done a lot of testing today and it seems I simplified the
example in my first email a bit too much. The example as-is works fine
when switching DISTROs as far as I can tell. The problem only arises
when wildcards are used.

Changing my initial example like this should trigger the behaviour I've
initially described:

SRC_URI:append:mydistro-dev =3D " file://application-dbg.service"

do_install {
    # ...snip...
    # systemd service
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/*.service ${D}${systemd_system_unitdir}
}

do_install:append:mydistro-dev() {
    # debug systemd services
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/application-dbg.service
${D}${systemd_system_unitdir}
}

Notice the *.service in do_install.

From my testing, this is how contamination happens:

1) Build with 'DISTRO=3Dmydistro bitbake application'. All tasks for the
recipe are run and the directories in WORKDIR are populated, including
the "application.service" file.
2) Build with 'DISTRO=3Dmydistro-dev bitbake application'. do_unpack is
rerun and places the additional "application-dbg.service" file in
WORKDIR.
3) Switching back to 'mydistro' will get the recipe from sstate cache,
which works fine.
4) Changing application.bb and rebuilding with 'DISTRO=3Dmydistro bitbake
application' reruns do_install (as expected). This leads to the
packages do_install picking up the additional "application-dbg.service"
file left behind by the invocation in step 2).

Mike, Martin: Do you remember in which cases you encountered problems
when sharing the build directory?

On Tue, 2022-07-12 at 09:15 -0700, Khoi Dinh Trinh wrote:
> Thank you Nicolas for asking this question since I will probably run
> into this issue soon if not for this email thread. The answers so far
> have been very helpful but I just want to clarify a bit more on why
> doesn't the package get rebuilt? From my understanding, Yocto should
> rerun a task when the signature of the task changes and since
> do_install has an override on mydistro-dev, shouldn't the content and
> thus the signature of do_install change when switching distro and so
> Yocto should rerun it?=C2=A0

As far as I can tell, all the relevant tasks are rerun correctly when
something is changed. Relevant tasks meaning only the tasks that are
actually different.

The specific issue I experienced is due to the WORKDIR not being
cleaned between different task invocations and the recipe (probably
wrongfully) relying on wildcards to gather files, see example above.

> I have a lot of tasks with override not just on DISTRO but other
> things like MACHINE or custom variables so I want to understand the
> rebuild mechanism as best I can.
>=20

There's surely someone more knowledgeable here that could clarify the
inner workings of this mechanism a lot better than me.

> Best,
> Khoi Trinh
>=20
> On Tue, Jul 12, 2022 at 8:05 AM Mike Looijmans
> <mike.looijmans@topic.nl> wrote:
> > Quick answer: Don't build multiple distros in one build directory.
> >=20

It's really a bummer that it's not reliably possible to switch between
DISTROs inside one build directory.

> > You might get away with setting TMPDIR =3D "tmp-${DISTRO}" to give
> > each=20
> > its own.
> >=20
> > But I'd rather advice to set up two separate builds and just point
> > the=20
> > downloads and sstate-cache to the same location. It'll be faster
> > than=20
> > the TMPDIR option.
> >=20
> > Or figure out how to put the difference in the IMAGE only. Then you
> > can=20
> > just build both images (in parallel, woot), which is faster, more=20
> > convenient and saves on diskspace.

As I'm currently working with something close to what you describe, I
think I'll try to stay away from multiple DISTROs if possible and
improve on what I'm already doing.

> >=20
> > What I often do is have my-application.bb generate a=20
> > my-application-utils package that only gets installed in the "dev"
> > image=20
> > but not in the production one, which only installs "my-
> > application".

This is probably what Martin meant with his A.bb and A-xx.bb example.
It's so far one of the best approaches I've seen, thanks.

> >=20
> > You could also create a "my-application-dev.bb" recipe that
> > includes=20
> > my-application.bb and just changes what it needs to be different.
> >=20
> >=20
> >=20
> >=20
> > Met vriendelijke groet / kind regards,
> >=20
> > Mike Looijmans
> > System Expert
> >=20
> >=20
> > TOPIC Embedded Products B.V.
> > Materiaalweg 4, 5681 RJ Best
> > The Netherlands
> >=20
> > T: +31 (0) 499 33 69 69
> > E: mike.looijmans@topicproducts.com
> > W: www.topic.nl
> >=20
> > Please consider the environment before printing this e-mail
> > On 12-07-2022 15:37, Nicolas Jeker via lists.yoctoproject.org
> > wrote:
> > > Hi all,
> > >=20
> > > I'm currently using an additional layer and image to
> > > differentiate
> > > between a release and development build (enabling NFS, SSH, root
> > > login,
> > > etc.). To create a development build, I manually add the layer to
> > > bblayers.conf. This works quite well, but feels a bit clumsy to
> > > integrate into a CI/CD pipeline.
> > >=20
> > > Per these past discussions here [1][2], I'm now trying to migrate
> > > to
> > > multiple DISTROs, something like "mydistro" and "mydistro-dev".
> > >=20
> > > While migrating some of the changes, I discovered that I run into
> > > caching(?) issues. I have a recipe for an internal application
> > > and want
> > > to include additional systemd service files in the development
> > > image.
> > >=20
> > > What I did was this:
> > >=20
> > > Added "application-dbg.service" to recipes-
> > > internal/application/files
> > >=20
> > > Adapted application.bb recipe:
> > >=20
> > > SRC_URI:append:mydistro-dev =3D " file://application-dbg.service"
> > >=20
> > > do_install {
> > > =C2=A0 =C2=A0 =C2=A0 # ...snip...
> > > =C2=A0 =C2=A0 =C2=A0 # systemd service
> > > =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_system_unitdir}
> > > =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/application.service
> > > ${D}${systemd_system_unitdir}
> > > }
> > >=20
> > > do_install:append:mydistro-dev() {
> > > =C2=A0 =C2=A0 =C2=A0 # debug systemd services
> > > =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_system_unitdir}
> > > =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/application-dbg.servi=
ce
> > > ${D}${systemd_system_unitdir}
> > > }
> > >=20
> > >=20
> > > When I run "DISTRO=3Dmydistro-dev bitbake application" followed by
> > > "DISTRO=3Dmydistro bitbake application", the debug service file is
> > > still
> > > present in the package. This seems to be caused by the "image"
> > > directory in the recipe WORKDIR not being cleaned between
> > > subsequent
> > > do_install runs. Is this expected behaviour? What's the best
> > > solution?
> > >=20
> > > Kind regards,
> > > Nicolas
> > >=20
> > > [1]:
> > > https://lore.kernel.org/yocto/CAH9dsRiArf_9GgQS4hCg5=3DJ_Jk6cd3eiGaOi=
Qd788+iSLTuU+g@mail.gmail.com/
> > > [2]:
> > > https://lore.kernel.org/yocto/VI1PR0602MB3549F83AC93A53785DE48677D3FD=
9@VI1PR0602MB3549.eurprd06.prod.outlook.com/
> > >=20
> > >=20
> > >=20
> >=20
> > --=20
> > Mike Looijmans
> >=20
> >=20
> >=20
> >=20
>=20

