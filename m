Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5883E008CF; Tue, 18 Nov 2014 15:03:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 943D6E0087D
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 15:03:25 -0800 (PST)
Received: by mail-wi0-f173.google.com with SMTP id r20so3566938wiv.0
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 15:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=oc9HpkHza9eCAA3VPzquMZJ+zz/5Rv0RtqQMs2ZHlEg=;
	b=Ty5EZywoxMA4Oo9EYbvjyioyufSA/wDxB9i1luqfQ0TXLULU7NDwJA9NfHkbCpmdzs
	L8CR+Lm1Z5SXndgXe174Y4kRWtYdarE5tmrH5SwC+xhtsjnhqKtFkvIWmx8UirukFEuj
	SFO8xADdx+t51lPIpLieKj30bDHC2auvWfIOb+MAQoMjgQvi67/yNPyGEN6Uw2JAC9sX
	XCcEYu5U+li9Pu3sKobOdu1KHK6J41k6oh+bVqHcJZ8HwQL/ZUpHu2fB/ciSUfsCDI4L
	/tpWuuLQVArHTbqbU16ACMBd2MiuiVaELydZBm87lXiIj0pVUIcsWwV90Sk6LFk8JHo+
	8gjQ==
X-Received: by 10.194.175.67 with SMTP id by3mr51184493wjc.32.1416351805204;
	Tue, 18 Nov 2014 15:03:25 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	nd20sm21317638wic.11.2014.11.18.15.03.24 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Nov 2014 15:03:24 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 19 Nov 2014 00:03:24 +0100
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20141118230324.GA2477@jama>
References: <546BB9EF.4040807@balister.org>
	<CAJTo0LaKHeK+hL_s9z-pPT6dnzCR5mw4MgOkg4Zch=S=dWWGMA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaKHeK+hL_s9z-pPT6dnzCR5mw4MgOkg4Zch=S=dWWGMA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Layer model doomed, unless we all work together
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
X-List-Received-Date: Tue, 18 Nov 2014 23:03:29 -0000
X-Groupsio-MsgNum: 22248
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline

--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2014 at 09:57:30PM +0000, Burton, Ross wrote:
> Looking over the duplicate list, there's some obvious low-hanging fruit.
> Angstrom duplicates recipes that are in meta-multimedia. meta-webos and
> meta-webos-ports seem to be full of duplicates.  meta-guacamayo has some

meta-webos-ports is fork of meta-webos, so duplicates between these 2
are expected.

Also meta-webos master branch is compatible only with 1.4 dylan release,
so some of the duplicated recipes are actually backports from newer OE.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRr0DwACgkQN1Ujt2V2gByI1QCfc0EEjrboreHJ4N4l1TgJJDn/
zEsAoLrbwFu1fFRRmRfrBdzXkjwR9R+Z
=kAjO
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--
