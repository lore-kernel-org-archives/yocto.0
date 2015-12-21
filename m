Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41D29E00C23; Mon, 21 Dec 2015 03:17:42 -0800 (PST)
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
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 019BFE0083E
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 03:17:38 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id p187so64004955wmp.1
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 03:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=MGlLquo0IMAlWyU44NPnvDhHzclDoxYM0ya3DTvqms8=;
	b=NeQsl/mu/bq6cCSd0aYl34ZOb6OqqX2D4mvSZMs3HIIC3ydNJ7Y8+kqOHfe3sO3hsM
	KEJZyVAOPmOfDXA9cZF0Dj+8Gz7JqZwIDhMgca69ywnpdMaY3VX0OAiwzCWwi/yz943W
	ftwfKwS/rP++uVK3m4dGovPiz2L5QCQ3VBaKsl3Br1fNHUIiE4e4WmHbfXqC2OrIubYL
	1dozNHQfTHKg3wqiVN3pz12huuAXcAciaofPt3zsADMPYcHq3/+fV524tv+L+QoMWlzI
	qM/tQN+zVpxAXj3F4+ykwyLI4gdeuaOQifGThDaeDIsvcnZSz/tFfCqfhUbHttmlWxDd
	LUHg==
X-Received: by 10.194.87.170 with SMTP id az10mr20086424wjb.144.1450696657898; 
	Mon, 21 Dec 2015 03:17:37 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	200sm19633013wmn.11.2015.12.21.03.17.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Dec 2015 03:17:36 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 21 Dec 2015 12:20:29 +0100
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Message-ID: <20151221112029.GA2771@jama>
References: <MA1PR01MB0056024224A9B50B4F6D381082E40@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB0056024224A9B50B4F6D381082E40@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nodejs building issue in yocto
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
X-List-Received-Date: Mon, 21 Dec 2015 11:17:42 -0000
X-Groupsio-MsgNum: 27779
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline

--+QahgC5+KEYLbs62
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 21, 2015 at 08:31:49AM +0000, Raghavendra Kakarla wrote:
> Hi All,
>=20
> I am try to build the nodejs-5.3 in yocto but I got the following errors.
>=20
> That errors also not consistent. They are changes for compile to compile.

search openembedded-devel ML, it was discussed there (long time ago) and
there was even a fix in meta-oe nodejs recipe.

>=20
> Could you please help in solving this issue.
>=20
> The errors are as follows:
>=20
> mips32r22r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Release/obj.targ=
et/http_parser/deps/http_parser/http_parser.o
> | make[1]: execvp: printf: Argument list too long
> | make[1]: *** [/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home=
/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.=
3.0/out/Release/obj.target/deps/openssl/libopenssl.a] Error 127
> | make[1]: *** Waiting for unfinished jobs.
>=20
>=20
>=20
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | make -C out BUILDTYPE=3DRelease V=3D1
> | make[1]: Entering directory `/media/testuser/b156d50b-387f-4037-b97b-e0=
de6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.=
0-r1.0/node-v5.3.0/out'
> |   LD_LIBRARY_PATH=3D/media/testuser/b156d50b-387f-4037-b97b-e0de6259af1=
1/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/no=
de-v5.3.0/out/Release/lib.host:/media/testuser/b156d50b-387f-4037-b97b-e0de=
6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-=
r1.0/node-v5.3.0/out/Release/lib.target:$LD_LIBRARY_PATH; export LD_LIBRARY=
_PATH; cd ../deps/v8/tools/gyp; mkdir -p /media/testuser/b156d50b-387f-4037=
-b97b-e0de6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nod=
ejs/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target/v8_snapshot/geni; "/media=
/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/testpc2/poky/build/tmp/=
work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Release/mksnapsh=
ot" --log-snapshot-positions --logfile "/media/testuser/b156d50b-387f-4037-=
b97b-e0de6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/node=
js/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target/v8_snapshot/geni/snapshot.=
log" "/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/testpc2/pok=
y/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Rele=
ase/obj.target/v8_snapshot/geni/snapshot.cc" ""
> | /bin/sh: /media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/test=
pc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/o=
ut/Release/mksnapshot: cannot execute binary file: Exec format error
> | make[1]: *** [/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home=
/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.=
3.0/out/Release/obj.target/v8_snapshot/geni/snapshot.cc] Error 126
>=20
> Thanks in advance.
>=20
> Regards,
> Raghavendra K.

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--+QahgC5+KEYLbs62
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZ34HwACgkQN1Ujt2V2gBydTgCfSRtDuzxgxyGOqV5apSxF0seY
ekgAn2VGCeCCMNGxFWb8CKSPhgeNox6k
=gpKF
-----END PGP SIGNATURE-----

--+QahgC5+KEYLbs62--
