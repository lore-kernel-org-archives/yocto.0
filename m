Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web09.8046.1581943441687180545
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 04:44:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48LkFC19LWz5tlD;
	Mon, 17 Feb 2020 13:43:58 +0100 (CET)
Date: Mon, 17 Feb 2020 13:43:57 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: philip.lewis@domino-uk.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Creating a build system which can scale. #yocto
Message-ID: <20200217124357.odaw6g5qpfkt2oxm@qschulz>
References: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <5HUZ.1581942437691543674.aeQI@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Philip,

*Very* quick and vague answer as it's not something I'm doing right now.
I can only give hints to where to look next.

On Mon, Feb 17, 2020 at 04:27:17AM -0800, philip.lewis@domino-uk.com wrot=
e:
> Hi,
>=20
> I'm looking for some advice about the best way to implement a build env=
ironment in the cloud for multiple=C2=A0dev teams which will scale as the=
 number of dev teams grow.
>=20
> Our devs are saying:
>=20
> *What do we want?*
>=20
> To scale our server-based build infrastructure, so that engineers can b=
uild branches using the same infrastructure that produces a releasable ar=
tefact, before pushing it into develop. As much automation of this as pos=
sible is desired..
>=20
> *Blocker* : Can=E2=80=99t just scale current system=C2=A0=E2=80=93=C2=A0=
can=E2=80=99t keep throwing more hardware at it, particularly storage. Th=
e main contributor to storage requirements is using a local cache in each=
 build workspace and there will be one workspace for each branch, per Jen=
kins agent: 3 teams x 10 branches per team x 70Gb per branch/workspace x =
number of build agents (let say 5) =3D 10Tb. As you can see this doesn=E2=
=80=99t scale well as we add branches, teams or build agents. Most of thi=
s 10Tb is the caches in each workspace, where most of the contents of eac=
h individual cache is identical.
>=20

Have you had a look at INHERIT +=3D "rm_work"? Should get rid of most of
the space in the work directory (we use this one, tremendous benefit in
terms of storage space).

c.f. https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.ht=
ml#ref-classes-rm-work

Incidently, also highlights broken recipes (e.g. one getting files from o=
ther
sysroots/elsewhere in the FS).

> *A possible=C2=A0solution:
> *
>=20
> Disclaimer/admission: I=E2=80=99ve not really researched/considered _ a=
ll _ =C2=A0possible=C2=A0solutions to the problem above, I just started s=
earching and reading and came up with/felt led towards =C2=A0this. I thin=
k there is some value in spending some of the meeting exploring other opt=
ions to see if anything=C2=A0sounds better (for a what definition of bett=
er?).
>=20
> **
>=20
> Something using the built-in cache mirror in Yocto=E2=80=93there are a =
few ways it can do this, as it=E2=80=99s essentially a file share somewhe=
re. https://pelux.io/2017/06/19/How-to-create-a-shared-sstate-dir.html fo=
r an example shows how to share it via NFS, but you can also use http or =
ftp.
>=20
> Having a single cache largely solves the storage issue as there is only=
 one cache, so having solved that issue, it introduces a few more questio=
ns and constraints:
>=20
> * How do we manage the size of the cache?
>=20
> There=E2=80=99s no built-in expiry mechanism I could find. This means w=
e=E2=80=99d probably have to create something ourselves (parse access log=
s from the server hosting the cache and apply a garbage collector process=
).
>=20

Provided you're not using a webserver with a cache (or a cache that is
refreshed every now and then), cronjob with find -atime -delete and
you're good.

> * How/When do we update the cache?
>=20
> All environments contributing to the cache need to be identical (that a=
nsible playbook just grabs the latest of everything) to avoid subtle diff=
erences in the build artefacts depending on which environment populated t=
he cache.
>=20
> * How much time will fetching the cache from a remote server add to the=
 build?
>=20
> I think this is probably something we will have to just live with, but =
if it=E2=80=99s all in the cloud the network speed between VMs is fast.
>=20

I remember (wrongly?) reading that sharing sstate-cache over NFS isn't a =
very
good idea (latency outweights the benefits in terms of storage/shared
sstate cache).

> This shared cache solution removes the per agent cost on storage, and a=
lso=C2=A0=E2=80=93=C2=A0a varying extent=C2=A0=E2=80=93=C2=A0the per bran=
ch costs (assuming that you=E2=80=99re not working on something at the to=
p/start beginning of the dependency tree) =C2=A0from the equation above.
>=20
> I=E2=80=99d love to see some other ideas as well as I worry I=E2=80=99m=
 missing something easier or more obvious=C2=A0=E2=80=93=C2=A0better.
>=20

I'm not too sure to have understood the exact use case but maybe you
would want to have a look at:

 - shared DL_DIR (this one can be served by an NFS, there isn't too much
 access to it during a build).
 - SSTATE_MIRRORS (c.f. https://www.yoctoproject.org/docs/current/mega-ma=
nual/mega-manual.html#var-SSTATE_MIRRORS),
 is basically a webserver serving the sstate-cache from an already-built
 image/system. This is RO, would make sense if your Jenkins is building
 a system and then your devs are basing their work on top of it. They
 would get the sstate-cache from your Jenkins and AFAIK, does not
 duplicate the sstate-cache locally =3D more free storage space.
 - investigate docker containers for guaranteed identical build environme=
nt,
 Pyrex has been often suggested on IRC.
 https://github.com/garmin/pyrex/

That's all I could think of about your issue, I unfortunately do not
have more knowledge to share on that topic.

Good luck, let us know what you decided to do :)

Quentin
