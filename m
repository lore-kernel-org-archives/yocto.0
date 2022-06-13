Return-Path: <nowlans@ieee.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB0C433EF
	for <webhook@archiver.kernel.org>; Mon, 13 Jun 2022 23:45:01 +0000 (UTC)
Subject: Manipulating users/groups in helper class with fakeroot/pseudo
To: yocto@lists.yoctoproject.org
From: "Sean" <nowlans@ieee.org>
X-Originating-Location: Smyrna, Georgia, US (76.193.41.204)
X-Originating-Platform: Linux Chrome 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Jun 2022 16:44:53 -0700
Message-ID: <IbiD.1655163893899168352.gQ8H@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b512IaY27taR3DSQ9UXM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Jun 2022 23:45:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57328

--b512IaY27taR3DSQ9UXM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I wrote a class, call it MYCLASS, whose purpose is to migrate certain files=
 installed by standard recipes into a different directory and create symlin=
ks to those files.

The reason for this is to have a disk partition layout with a read-only, re=
placeable rootfs partition and a persistent storage partition. The idea is =
to move certain configuration files installed by a recipe into persistent s=
torage and replace the rootfs version with a symlink.

The user inherits this class in a .bbappend file in another layer and speci=
fies the list of files that should have this treatment inside a MYCLASS_CON=
FFILES variable.

I implemented this logic in a Python function and added it as a task as fol=
lows. I abstracted away some details and used "example.conf" as a hardcoded=
 example configuration file being moved to a partition mounted at "/persist=
ent".

fakeroot python myclass_copy_and_symlink_conffiles() {
...
sysconfdir_absfile =3D os.path.join(d.getVar('D'), d.getVar('sysconfdir'), =
'example.conf')
destdir_absfile =3D os.path.join(d.getVar('D', 'persistent/example.conf')

st =3D os.stat(sysconfdir_absfile)
shutil.copy(sysconfdir_absfile, destdir_absfile)
shutil.chown(destdir_absfile, user=3Dst.st_uid, group=3Dst.st_gid)

# omitted: replace original file with symlink to copied file

...

}

myclass_copy_and_symlink_conffiles[depends] +=3D "virtual/fakeroot-native:d=
o_populate_sysroot"

do_install[postfuncs] +=3D "${MYCLASSINSTALLFUNCS}"

MYCLASSINSTALLFUNCS_class-target =3D "myclass_copy_and_symlink_conffiles"
MYCLASSINSTALLFUNCS =3D ""

The problem I'm having is that UID and GID don't seem to be available to th=
e shutil.chown function or they're not read correctly from the pseudo datab=
ase when os.stat is called. Using the function as shown above, MYCLASS does=
n't preserve the UID/GID of the original file (as known to fakeroot/pseudo)=
 and falls back to setting UID:GID=3Droot:root on the copied file instead.

Any hints on how I can improve this approach? Is the problem that the syste=
m calls made by shutil/os functions aren't handled by pseudo? Should I repl=
ace this Python function with a shell function that can use fakeroot?

--b512IaY27taR3DSQ9UXM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I wrote a class, call it MYCLASS, whose purpose is to migrate certain fi=
les installed by standard recipes into a different directory and create sym=
links to those files.<br /><br />The reason for this is to have a disk part=
ition layout with a read-only, replaceable rootfs partition and a persisten=
t storage partition. The idea is to move certain configuration files instal=
led by a recipe into persistent storage and replace the rootfs version with=
 a symlink.<br /><br />The user inherits this class in a .bbappend file in =
another layer and specifies the list of files that should have this treatme=
nt inside a MYCLASS_CONFFILES variable.<br /><br />I implemented this logic=
 in a Python function and added it as a task as follows. I abstracted away =
some details and used "example.conf" as a hardcoded example configuration f=
ile being moved to a partition mounted at "/persistent".<br /><br /></p>
<p>fakeroot python myclass_copy_and_symlink_conffiles() {<br />...<br />&nb=
sp; &nbsp; sysconfdir_absfile =3D os.path.join(d.getVar('D'), d.getVar('sys=
confdir'), 'example.conf')<br />&nbsp; &nbsp; destdir_absfile =3D os.path.j=
oin(d.getVar('D', 'persistent/example.conf')</p>
<p>&nbsp; &nbsp; st =3D os.stat(sysconfdir_absfile)<br />&nbsp; &nbsp; shut=
il.copy(sysconfdir_absfile, destdir_absfile)<br />&nbsp; &nbsp; shutil.chow=
n(destdir_absfile, user=3Dst.st_uid, group=3Dst.st_gid)</p>
<p>&nbsp; &nbsp; # omitted: replace original file with symlink to copied fi=
le</p>
<p>...</p>
<p>}</p>
<p>myclass_copy_and_symlink_conffiles[depends] +=3D "virtual/fakeroot-nativ=
e:do_populate_sysroot"</p>
<p>do_install[postfuncs] +=3D "${MYCLASSINSTALLFUNCS}"</p>
<p>MYCLASSINSTALLFUNCS_class-target =3D "myclass_copy_and_symlink_conffiles=
"<br />MYCLASSINSTALLFUNCS =3D ""</p>
<div>&nbsp;</div>
<p>The problem I'm having is that UID and GID don't seem to be available to=
 the shutil.chown function or they're not read correctly from the pseudo da=
tabase when os.stat is called. Using the function as shown above, MYCLASS d=
oesn't preserve the UID/GID of the original file (as known to fakeroot/pseu=
do) and falls back to setting UID:GID=3Droot:root on the copied file instea=
d.</p>
<p>Any hints on how I can improve this approach? Is the problem that the sy=
stem calls made by shutil/os functions aren't handled by pseudo? Should I r=
eplace this Python function with a shell function that can use fakeroot?</p=
>

--b512IaY27taR3DSQ9UXM--

