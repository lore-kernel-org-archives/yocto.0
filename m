Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72ECAE0087C; Wed, 28 Jan 2015 12:06:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0D8AE00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 12:06:19 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id k14so22570074wgh.10
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 12:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=5nWfnh/XOCPAfZjrjKhjhm61ipYxKeNrmmqnlOAcJdw=;
	b=tGs2uVxkASNdF6UzRrlKKfSZf7CzVBcCFewXVQZF1yCzZdUv1qjXlkCS0632AP5mkT
	5Y55C9if40lmvJivXj4nnFM4DOM0aYzdMP8tMsezz8cYXzixlNPxf1qKq/GKz2X7U058
	6UmUEsgvslcuZS9wrowap1SqXaOzy4AwYwS5vymPXoO3qS3BqTP/nJZXEk4V4JRdmXJM
	V8HIxPCpXdxmZu7VHCJNzMv8WhoQcnXihlsGXmul95iRvm5SpxBQEs/SpAhFS2qvQNx0
	aBccel8hhsYSCA2aKLawieO+16WatAKfP6bwW/hra/w+wyR5WFdJJpqfLW6/YEyYu2E2
	pQiA==
X-Received: by 10.194.184.76 with SMTP id es12mr11236136wjc.110.1422475576621; 
	Wed, 28 Jan 2015 12:06:16 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	vq9sm7493842wjc.6.2015.01.28.12.06.15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jan 2015 12:06:15 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 28 Jan 2015 21:06:18 +0100
To: Simon Bolek <simon.bolek@googlemail.com>
Message-ID: <20150128200618.GK2477@jama>
References: <CAEfap_Ab0Le_sXyjZUJ3Yh-kVDQQ9sQi0sGHcB1HQx-5xQ5mnw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEfap_Ab0Le_sXyjZUJ3Yh-kVDQQ9sQi0sGHcB1HQx-5xQ5mnw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-toolchain-qt5] Can't install qtwebkit-dev-5.3.2-r0@i586: no package provides qtwebkit = 5.3.2-r0
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
X-List-Received-Date: Wed, 28 Jan 2015 20:06:28 -0000
X-Groupsio-MsgNum: 23255
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="x1F0m3RQhDZyj8sd"
Content-Disposition: inline

--x1F0m3RQhDZyj8sd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 28, 2015 at 06:15:11PM +0100, Simon Bolek wrote:
> hello group!
>=20
> working with dizzy trying to
> *bitbake meta-toolchain-qt5*
> it fails at the step
>=20
> *do_populate_sdk*
>=20
> with the error(see below). So if i read the error correctly, qtwebkit-dev
> is missing qtwebkit.
> There is no such package as qtwebkit beeing generated :( So is this a bug?
> Or maybe I am doing sth wrong?

Read README file and qtbase.inc about mandatory PACKAGECONFIG options.

> HELP please :) Any hint would be more than welcome.
> *BTW: Working with daisy did not produce such an error.*
>=20
> +++
>=20
>=20
>=20
>=20
>=20
>=20
> *ERROR: Unable to install packages. Command
> '/home/simon/poky-dizzy/build/tmp/sysroots/i686-linux/usr/bin/smart --qui=
et
> --data-dir=3D/home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/meta-t=
oolchain-qt5/1.0-r0/sdk/image/opt/poky/1.7/sysroots/i586-poky-linux/var/lib=
/smart
> install -y packagegroup-core-standalone-sdk-target-dbg@all
> packagegroup-core-standalone-sdk-target@all
> packagegroup-qt5-toolchain-target@all' returned 1:error: Can't install
> qtwebkit-dev-5.3.2-r0@i586: no package provides qtwebkit =3D 5.3.2-r0ERRO=
R:
> Function failed: do_populate_sdkERROR: Logfile of failure stored in:
> /home/simon/poky-dizzy/build/tmp/work/i586-poky-linux/meta-toolchain-qt5/=
1.0-r0/temp/log.do_populate_sdk.20827ERROR:
> Task 7
> (/home/simon/poky-dizzy/sources/meta-qt5/recipes-qt/meta/meta-toolchain-q=
t5.bb
> <http://meta-toolchain-qt5.bb>, do_populate_sdk) failed with exit code '1=
'*
> +++
>=20
> thank you and br
> simon:)

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--x1F0m3RQhDZyj8sd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlTJQToACgkQN1Ujt2V2gBxigACgpxX5q3RMl/fAUWd0oK6dJe2i
jvUAni14t1hnMp8oY65+fwO4QIKCF8gC
=YTiR
-----END PGP SIGNATURE-----

--x1F0m3RQhDZyj8sd--
