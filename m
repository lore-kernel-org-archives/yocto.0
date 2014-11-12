Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1D19E008E3; Wed, 12 Nov 2014 05:02:47 -0800 (PST)
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
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F79CE008CA
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 05:02:44 -0800 (PST)
Received: by mail-wi0-f170.google.com with SMTP id r20so4820295wiv.1
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 05:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=SHSjOmOC+hOKo9OIJ/KeeGH1LseyecG9z/3aD1lSp14=;
	b=udkeuVJzIkWjom1zkMj1N/aQ0EvOYI3bkfYTfSiEmbdH9SaiBcnd5F0+nbqtmAaMDL
	QmkEpVMch9p77rUNl2vZ2w6z8WHvdoMloUA48JsDS/YzDOk+3DBd/EXEpuYo95jxxbKY
	kfr6Qtg9HmeTuJ8sebginQnfP5lTlH/LIZfOOL1PqfRYxcQLAC3La1ZFWAWgEEQNkhPD
	TqDq7wbYUwOraBwd7W1/te02B9aHqmEWdH2S/raAvvey3xLPSbWMfGNbIfLi1YOY0C39
	LUxAt59YvTl/Y2Dh4u8ViwIgv7zChrnGPmIDlTbq+zt/F3ypPSkv5hpVzDKzI72ygWuw
	PAqQ==
X-Received: by 10.180.20.173 with SMTP id o13mr22805317wie.70.1415797363907;
	Wed, 12 Nov 2014 05:02:43 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	fq1sm21574982wib.12.2014.11.12.05.02.43 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Nov 2014 05:02:43 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 12 Nov 2014 14:02:45 +0100
To: Andy Ng <andreas2025@gmail.com>
Message-ID: <20141112130245.GA2450@jama>
References: <CAAVaN8zpgtbJOet0bmYiHJKFNL9_O4UaL6K-cMUP=xVykY=pCg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAVaN8zpgtbJOet0bmYiHJKFNL9_O4UaL6K-cMUP=xVykY=pCg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Removing old git revisions from the build
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
X-List-Received-Date: Wed, 12 Nov 2014 13:02:47 -0000
X-Groupsio-MsgNum: 22166
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline

--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 12, 2014 at 12:02:58PM +0000, Andy Ng wrote:
> Hello,
>=20
> I am using Dylan and my kernel recipe has AUTOREV.
> Everything works fine and any new kernel changes are checked out and
> a new kernel is built. However, I have noticed that the old builds are
> not deleted and after a while started having space problems.
>=20
> Is there any way to have the old git revisions deleted automatically
> from the "tmp" area?

rm_work will make them smaller, there is also rm_old_work which will
remove all WORKDIRs except latest:
https://github.com/shr-distribution/meta-smartphone/blob/shr/meta-shr/class=
es/rm_old_work.bbclass

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRjWnUACgkQN1Ujt2V2gByiHACdGVX8OcYQ4fSAE9lV/j+7TerY
5wMAnRjyDqIpxBWEhxsO2VtEp4eUTGUn
=Os8j
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--
