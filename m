Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 701FFE022C4; Sat,  9 Jun 2018 16:36:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E33B8E00EE2
	for <yocto@yoctoproject.org>; Sat,  9 Jun 2018 16:36:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id AD845188BD;
	Sun, 10 Jun 2018 01:36:10 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id sTo7aFvgQm4X; Sun, 10 Jun 2018 01:36:10 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id F0AF91889F;
	Sun, 10 Jun 2018 01:36:09 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C6C511E057;
	Sun, 10 Jun 2018 01:36:09 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BAACC1E056;
	Sun, 10 Jun 2018 01:36:09 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Sun, 10 Jun 2018 01:36:09 +0200 (CEST)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by seth.se.axis.com (Postfix) with ESMTP id AE1222A1E;
	Sun, 10 Jun 2018 01:36:09 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Sun, 10 Jun 2018 01:36:09 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1365.000; Sun, 10 Jun 2018 01:36:09 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Ulf Samuelsson <yocto@emagii.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How handle files needing updates in read-only filesystem
Thread-Index: AQHT/9eTLaojbEq9xkOtMXxwxXPICqRYkFCQ
Date: Sat, 9 Jun 2018 23:36:09 +0000
Message-ID: <b02028a72c604aa1bce0e40bc0089f43@XBOX02.axis.com>
References: <3cf3fb0e-02c4-8867-7650-8764bfb67a3b@emagii.com>
In-Reply-To: <3cf3fb0e-02c4-8867-7650-8764bfb67a3b@emagii.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: How handle files needing updates in read-only filesystem
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
X-List-Received-Date: Sat, 09 Jun 2018 23:36:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Ulf Samuelsson
> Sent: den 9 juni 2018 11:51
> To: yocto@yoctoproject.org
> Subject: [yocto] How handle files needing updates in read-only
> filesystem
>=20
> We have a rootfs which is read-only.
> For files that needs to be updated, like "/etc/localtime"
> we will create a symbolic link to a partition (/persistent) which
> is retained between rootfs image updates.
>=20
> /etc/localtime -> /persistent/etc/localtime
>=20
> The original recipe will generate the real /etc/localtime of course.
>=20
> To support the file beeing updated, the following needs to be done in a
> rootfs postprocess.
>=20
> mv   /etc/localtime /update/etc/localtime
> ln   -sf /persistent/etc/localtime /etc/localtime
> install -m 0644 /update/etc/localtime /persistent/etc/localtime
> chown <user>:<group> /persistent/etc/localtime
>=20
> The last two commands needs to be executed on the running system,
> since /persistent is not part of the rootfs.
>=20
> To ensure that the file can be updated is an ad-hoc activity for each
> affected file. It would be better if there was a class where you
> declare
> a file to be writeable, and then a post process
> would move the file to /update (or similar) and create a symbolic link
>=20
> SETTINGS ?=3D "/persistent"
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> inherit writeable
>=20
> WRITEABLE =3D "/etc/localtime"
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
>=20
> This would generate the first two commands for each listed file.
>=20
> mv   /etc/localtime /update/etc/localtime
> ln   -sf ${SETTINGS}/etc/localtime /etc/localtime
>=20
> The file would also be added to a file indicating that it may need
> to be copied to the ${SETTINGS}
>=20
> Is it a good solution to modify "populate_volatiles.sh"
> to support a second file parameter for the f (file) command
> in the /etc/default/volatiles file?
>=20
> Today the file create command looks like:
> f <mode> <uid> <gid> <filename> <ignored>
>=20
> An idea would be to have the following syntax:
> f <mode> <uid> <gid> <filename> <source>
>=20
> If <source> is a valid filepath, then copy this file to <filename>
> If <source> is not a valid filepath, create <filename> using "touch"
>=20
> This would break any build which has a "funny" volatiles file.
> Otherwise a script called populate_persistent.sh could be
> created with such an extension.
>=20
> Comments?
>=20
> BR
> Ulf Samuelsson

Since a  lot of files in /etc typically need to be writable, one way to=20
handle this is by using an overlayfs for /etc. That is what we do and=20
it works very well.

An alternative, more along your suggestion, is to use bind mounts. The=20
advantage of using a bind mount instead of a symbolic link is that it=20
will look as a normal file.

You should look into the volatile-binds recipe and the VOLATILE_BINDS=20
variable. It is used to handle directories that need to be writable.=20
It will create systemd service files that copies the non-volatile=20
directory to the volatile directory (if it does not already exists),=20
and the bind mounts it back.=20

I am not sure volatile-binds works out-of-the-box for files, but I=20
believe it does. If not, it should not be too hard to modify it so=20
that it can handle files as well.

//Peter


