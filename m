Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EB95E00A65; Wed, 10 Dec 2014 04:28:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.156.172.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34783E0092E
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 04:28:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 38A694A006;
	Wed, 10 Dec 2014 13:28:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ifqtCryXTyL8; Wed, 10 Dec 2014 13:27:58 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Wed, 10 Dec 2014 13:27:58 +0100 (CET)
Received: from MSSRVS1.atlas.de (mssrvs1.atlas.de [10.200.101.71])
	by mgsrv01.atlas.de (Postfix) with ESMTP id EBFC127169;
	Wed, 10 Dec 2014 13:27:57 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS1.atlas.de
	([10.200.101.71]) with mapi; Wed, 10 Dec 2014 13:27:58 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <anders@chargestorm.se>
Date: Wed, 10 Dec 2014 13:27:57 +0100
Thread-Topic: [yocto] nfs-boot problem
Thread-Index: AdAUavJwYgfymr80TWqHNtI0HciOWQABIj3w
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A7B@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
	<86196249137E0843B2E0673D4F731E0C0108E2916C@reactor.sldomain.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A78@MSSRVS5.atlas.de>
	<20141210102413.GC14155@ad.chargestorm.se>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A7A@MSSRVS5.atlas.de>
	<20141210111651.GD14155@ad.chargestorm.se>
In-Reply-To: <20141210111651.GD14155@ad.chargestorm.se>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Cc: jimr@spectralogic.com, yocto@yoctoproject.org
Subject: Re: nfs-boot problem
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
X-List-Received-Date: Wed, 10 Dec 2014 12:28:19 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> -----Urspr=FCngliche Nachricht-----
> Von: Anders Darander [mailto:anders@chargestorm.se]
> Gesendet: Mittwoch, 10. Dezember 2014 12:17
> An: Heise, Matthias
> Cc: jimr@spectralogic.com; yocto@yoctoproject.org
> Betreff: Re: [yocto] nfs-boot problem
>=20
> * Matthias.Heise@atlas-elektronik.com <Matthias.Heise@atlas-
> elektronik.com> [141210 11:48]:
> > > -----Urspr=FCngliche Nachricht-----
> > > Von: Anders Darander [mailto:anders@chargestorm.se]
> > > Gesendet: Mittwoch, 10. Dezember 2014 11:24
> > > An: Heise, Matthias
> > > Cc: jimr@spectralogic.com; yocto@yoctoproject.org
> > > Betreff: Re: [yocto] nfs-boot problem
>=20
> > > * Matthias.Heise@atlas-elektronik.com <Matthias.Heise@atlas-
> > > elektronik.com> [141210 09:35]:
> > > > As to the rootfs, this folder
> > > > fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-
> > > gnueabi/cor
> > > > e-image-minimal/1.0-r0/rootfs seems to be exactly the structure
> > > > that is packed into the
> > > > image.tar.bz2 so I thought it is a good idea to directly use it as
> > > > nfs share. Is there some reason not to do so ?
>=20
> > > Well, there're quite few. For instance file and directory ownership,
> > > permissions etc.
>=20
> > Yes, I can see that
>=20
> > >If you're not using devtmpfs, and thus would like static  device
> > >nodes, they wouldn't be created in the build directory.
>=20
> > This is a little beyond my horizon, if you don't mind, could you
> > please explain this a little, I may be lacking some knowledge here...
> > sorry
>=20
> Well, nowadays most people are letting the kernel create the device nodes
> itself (possibly with some extra help from udev/mdev). Though, on really =
tiny
> systems you might still want to manually create all device nodes statical=
ly
> during image create time. In that special case, the device node names wil=
l be
> available in the build directory .../rootfs, but they will be regular fil=
es, not
> device nodes.

Ah, ok , thank you.

>=20
> If you don't know about this, it's quite likely you don't have to bother =
with
> this at the moment.
>=20

Ok ;-)


> > > Thus, you really should be using the tarball when you want to run an
> nfsroot.
>=20
> > Tried again but again it didn't work, do you have an idea what could be
> wrong ?
>=20
> What steps have you taken?
>=20
> How have you unpacked and exported the rootfs?
>=20
> If you have export e.g. /export/rootfs, it's usually enough (for a simple=
 image
> at least) to run `sudo tar xf ....rootfs.tar.bz2`.
>=20

I did unpack and copy to correct location but didn't know I'd have to re-ru=
n "exportfs" after changing the directory (I just switched a link from the =
other working-but-not-advisable-rootfs to the unpacked tar.bz2 ). After doi=
ng so it works, thank you !
I only have some permission issues left, don't know if they are important :

INIT: version 2.88 booting
Starting udev
udevd[171]: starting version 182
bootlogd: cannot allocate pseudo tty: No such file or directory
Populating dev cache
mv: can't preserve ownership of '/etc/udev/cache.data': Operation not permi=
tted
INIT: Entering runlevel: 5
Configuring network interfaces... ifup skipped for nfsroot interface eth0
run-parts: /etc/network/if-pre-up.d/nfsroot exited with code 1
Starting OpenBSD Secure Shell server: sshd
  generating ssh RSA key...
  generating ssh ECDSA key...
  generating ssh DSA key...
  generating ssh ED25519 key...
done.
Starting rpcbind daemon...done.
creating NFS state directory: chown: sm: Operation not permitted
chown: sm.bak: Operation not permitted
chown: statd: Operation not permitted
chown: /var/lib/nfs: Operation not permitted
done
starting statd: done
Starting syslogd/klogd: done

Poky (Yocto Project Reference Distro) 1.7 wandboard-quad /dev/ttymxc0

wandboard-quad login:

> Cheers,
> Anders
> --
> Anders Darander
> ChargeStorm AB / eStorm AB

Thank you,
regards,
Mat

