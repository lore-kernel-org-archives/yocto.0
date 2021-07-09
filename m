Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web08.9498.1625829117501209132
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 04:11:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm1 header.b=pIK387dA;
 spf=pass (domain: pbarker.dev, ip: 66.111.4.28, mailfrom: paul@pbarker.dev)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id BE6B05C00BE
	for <yocto@lists.yoctoproject.org>; Fri,  9 Jul 2021 07:11:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 09 Jul 2021 07:11:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	date:from:to:subject:message-id:in-reply-to:references
	:mime-version:content-type; s=fm1; bh=s8dKPe+/tbJaFsJ/nVaZqbrlrl
	i2KGcvzgpMCeaWWfs=; b=pIK387dAOcQI9IC8swz/+qINrBKPIQzPrSaCJMq5Tg
	HqTc0Gq6TUkOm8lfhlE4vQlyiWdtwov1i6WyZUbCKa18085RSTvwGWMdzkGbyPAg
	/12Wwm0VehpfnPtwM+/126RDX4US4H6iXqYmTyinuTz5W9QeLulWOH6WIggtYhpH
	Js5t79OnXqHwj2d2ShVk73zLCYq/HRiEVOZ3e1ZYnOWSrwuU3SgynVivJGUx5dAS
	7Qr/KehUzXL2YAskWfWEfZ9rqPbgw1V47N2lzgYHq9QJOQKTMGCEncvJ5V1cPEEL
	upf32JMGMTo/YPtu4/AUGaExd7qhf+3kq7k8EgSA44oQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=s8dKPe
	+/tbJaFsJ/nVaZqbrlrli2KGcvzgpMCeaWWfs=; b=LDQjr3xqrq4lnJKW/8RAhw
	7nkCe6sFE2jABzJRsLpsYZWQFpEy01MG8wDVigL+UqCkQItUnyNnxsBVHa1FbwPS
	vX8CtxIEi1N8kXOaUiSs0Ek8IM3bTFzS64AzzR9Mom2DRI1UBoi4mwpIvup647YF
	+1ojgCeA3y394A1oaPBJuzXo93p/x6Bfe6ouxtdazowEA6BdcPnOhDpWDiH+BLby
	/2mUxEWb1c1Bp5VkRxJXPU6OJjyufUkpufY1TYJ7Hi6HpbHRSVFwF6KXc+5j3E7+
	o36jU13NK3V8yGGYMZQ//lHJVCtb2uNQycnHUOmMMMmCOuWrVMOPczckyVtImdbg
	==
X-ME-Sender: <xms:_C7oYELVstVcs9zxEUgEEeCwYYKDRjr5u6Xs80M1L6r3pDmnJLJLaw>
    <xme:_C7oYEI1jMXCwp7Jup6p8F45jhNr27qWej_Q_wjxg7Zi0uxtSVPXkTtx_XfAcmYvG
    44W9zWgFK26FxNytmA>
X-ME-Received: <xmr:_C7oYEtRxGDGu7PKDti9fcq1r1UcaSK9Aish5zV4bWgKOmUOQ9GIKoeuVi9WxkjXyidk_sQUU8csN_TaQjhkhHLHfi84dVHLk9r1lq1-r3gj9YCg5SfIM6qGbvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtdeigdefhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfgjfhfogggtsehgtderre
    ertddvnecuhfhrohhmpefrrghulhcuuegrrhhkvghruceophgruhhlsehpsggrrhhkvghr
    rdguvghvqeenucggtffrrghtthgvrhhnpeffudelffdutdfhgeeugeeuieehjeeuheelhf
    ffffdtvdevgeetteelheekhfelheenucffohhmrghinhepghhithhhuhgsrdgtohhmpdhp
    sggrrhhkvghrrdguvghvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghv
X-ME-Proxy: <xmx:_C7oYBZrp9QaZ3VPgEhdYbi89gu7yE9UQE46u7T_6jPhfFvujDjT2w>
    <xmx:_C7oYLYgCv6T9hKiQtDbCMNnbLzm3_YA9p-wyGyyEo-3KyWMW_jfUw>
    <xmx:_C7oYNANYsBeu4_Q-T2FOdc2gQOveHrD4T6OQeszDTsoAwovwb9obw>
    <xmx:_C7oYF0OdaydeyaDmn3dnuTLVSyiR4FWN13yNtu7LoRxfO5-azEFfQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <yocto@lists.yoctoproject.org>; Fri, 9 Jul 2021 07:11:56 -0400 (EDT)
Date: Fri, 9 Jul 2021 12:11:42 +0100
From: "Paul Barker" <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #archiver Archiver not archiving sources from Mirror
Message-ID: <20210709121142.39922a93.paul@pbarker.dev>
In-Reply-To: <f524ba87310043cc82c6d7e39f2b9586@claas.com>
References: <f524ba87310043cc82c6d7e39f2b9586@claas.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-Groupsio-MsgNum: 54088
Content-Type: multipart/signed; boundary="Sig_/.n2ptiO5EmdxqiPo6IVL5WN";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/.n2ptiO5EmdxqiPo6IVL5WN
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 9 Jul 2021 10:21:56 +0000
"Seipel, Christoph" <Christoph.Seipel@claas.com> wrote:

> Hello,
>=20
> I have a problem with the archiver. I want to use it to export the source=
s used in our image for license compliance (GPL etc.).
> We have a BSP supplier that supplies the Yocto system and the sources to =
build it in a mirror directory.
>=20
> Now, when I use the archiver (mode: original) the exported sources don't =
contain the sources from the mirror, but only other files like patches.
>=20
> To analyse this problem I put some extra logging into the archiver.bbclas=
s to inspect the variable contents, and it seems the "local" variable where=
 the archiver is looking for the sources to export doesn't fit with the pat=
h of the actual sources. This leads to the archiver just skipping that URL =
and proceeding.
>=20
> For example for the systemd recipe it has the variable URL=3D"git://githu=
b.com/systemd/systemd.git;protocol=3Dgit" and therefore it decides to look =
at local=3D"<builddir>/downloads/git2/github.com.systemd.systemd.git"
> But that file doesn't exist.
> I inspected the do_fetch and do_unpack logs to find that the fetcher reso=
lves "git://github.com/systemd/systemd.git;protocol=3Dgit" with returning t=
he corresponding file from the mirror file:///<mirrorpath>/gitshallow_githu=
b.com.systemd.systemd.git_46659f7-1_master.tar.gz<file:///%3cmirrorpath%3e/=
gitshallow_github.com.systemd.systemd.git_46659f7-1_master.tar.gz>
> The do_unpack task then unpacks tar -xzf <builddir>/downloads/gitshallow_=
github.com.systemd.systemd.git_46659f7-1_master.tar.gz
> Which is possible because there is a symlink, I guess that was created by=
 the fetcher
> <builddir>/downloads/gitshallow_github.com.systemd.systemd.git_46659f7-1_=
master.tar.gz -> <mirror>/gitshallow_github.com.systemd.systemd.git_46659f7=
-1_master.tar.gz
>=20
> So the problem seems to be that the archiver expects the sources in downl=
oads/git2 but the fetcher creates the symlink in downloads and with additio=
nal pre- and postfiexes on the filename.
>=20
> Sadly we are still on sumo, but at least for the archiver class there isn=
't any relevant change to hardknott. At least a dunfell upgrade is incoming=
 in the next weeks.

If the archives you've been given have names starting with
'gitshallow_' then it's likely that the following variables were set in
local.conf or in a distro conf file to generate them:

    BB_GENERATE_MIRROR_TARBALLS =3D "1"
    BB_GENERATE_SHALLOW_TARBALLS =3D "1"
    BB_GIT_SHALLOW =3D "1"
   =20
Could you make sure those are set in your configuration? If they're not
then the archiver may not be looking for the file names you have.

If things still don't work after that you could try backporting the
archiver class from hardknott and using the mirror archiver mode. That
mode is written to pick up the mirror tarballs from the downloads
directory so it should be able to handle your situation.

Thanks,

--=20
Paul Barker
https://pbarker.dev/

--Sig_/.n2ptiO5EmdxqiPo6IVL5WN
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCYOgu7gAKCRCrY1Tsnbr0
bus2AP9nijgh4cTrKQZrNibHO8FDBHkVNZfpO2c1HlcDiQumigEA5RBypF7VOLR1
v0kp+Iwropx035ePmLQpsfRCzRYAOQc=
=3lWG
-----END PGP SIGNATURE-----

--Sig_/.n2ptiO5EmdxqiPo6IVL5WN--
