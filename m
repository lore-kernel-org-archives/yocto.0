Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBE6DE00CD5; Tue, 10 Sep 2019 05:56:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F24BDE00BA1
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 05:56:31 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id w13so20019135wru.7
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 05:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=t7dLvbv6+gGDILhMZAxVEbkOdzzdFPKtbtausILJmnY=;
	b=egV440Dulzt4oaGKLqRBdwV4UGLvz0sKlSTHaiYM1Tvrg1J1rxCUaioE2SNycQInvn
	rVd1l1rQPuUVFTfkNBUqzZHcJm6HeSdooMe1/hw97Q6FkmMv04orTtXOtdzyqwiIfEXv
	/JvvpXprdKm6gW1q7JmN8wEwZ+f763TzPUPQJw+kRHtU4tBmwDRAOdTZMbgYl4dHreav
	0CuYsz1GUFuRCq+XXQTJiTJVk2B0QlMKiBwRHt0fo+jsFrOP20W0HeUibYIUa3ByFc7e
	lCt/x0KfKCq8gHQfjaES8QmeB1D2k+8OQ4mAbTLSaZavgtlqh315ty2qS2Ykw+MXuV8i
	coaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=t7dLvbv6+gGDILhMZAxVEbkOdzzdFPKtbtausILJmnY=;
	b=mqs69Zmprom9fV3pDeQIuHBKsJa87OYU3nLthcsrG2lhhcdTC4d2VlhqfUpGZmvzsf
	CIayPjH3FEzCGc/Y2O46kADwsSE8LEtIx2wPeMgV1YKIoR/AbspuCiULg3mdMIEj8q7d
	732j3pNwkaKm6oLizJr9DNosFwm9KzkUyeshfWzPNCLieSkB9uzIV5OTz3V9ALboZrCB
	slVbu3vVE6ikU99jGv4PoGY2cGfQyD5pvC5CvJaz+VhCfN6SIcCsDJMXSjKLPCCVtcwl
	gu++yVqzrDAQDGZM+xUPs5Q6anyq4pOQ8S+ktGbz5DpVZX0ma59sDpEGiQCbh3MEfzBZ
	gdTQ==
X-Gm-Message-State: APjAAAXstvQgrulB+LuOXMZNjDFqlpYhqKthEmKcbWtnxlQTkcRkp9xr
	lnSD35DRJLJwkKnMMXNzYbAZnI9p7y8=
X-Google-Smtp-Source: APXvYqwbmihUQc8B98un+VRMnTRjIJZ2EVZE/3I0EyN+9boJigx2MtR4eTeOmME5rXOCodwN2jmVUg==
X-Received: by 2002:a5d:4ac5:: with SMTP id y5mr20592879wrs.179.1568120189852; 
	Tue, 10 Sep 2019 05:56:29 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id
	o193sm2867661wme.39.2019.09.10.05.56.28
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 10 Sep 2019 05:56:28 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 10 Sep 2019 14:56:31 +0200
To: William Durocher <wdurocher@it-link.ca>
Message-ID: <20190910125631.GA1532@jama>
References: <CAJdDtjGzQrCyHAMe7jptVcXZGAmD9QsKR1yrJLG0F_DYe7YjNQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJdDtjGzQrCyHAMe7jptVcXZGAmD9QsKR1yrJLG0F_DYe7YjNQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Cc: yocto@yoctoproject.org
Subject: Re: package_qa fails on copy openssl
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
X-List-Received-Date: Tue, 10 Sep 2019 12:56:32 -0000
X-Groupsio-MsgNum: 46562
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline

--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 10, 2019 at 08:49:35AM -0400, William Durocher wrote:
> Currently updating a sumo build to warrior. One of our recipe called conf=
ig
> server uses nodejs which was updated from 8.9 in sumo to 10.5 in warrior.
> As an interim solution we decided to keep the version of nodejs to 8.90.
> However I am getting the following exception in the package_qa step:
>=20
> "File:
> '/home/wdurocher/work/gammaip/warrior/sources/meta/meta/classes/staging.b=
bclass',
> lineno: 151, function: staging_copyfile
>      0147:        os.symlink(linkto, dest)
>      0148:        #bb.warn(c)
>      0149:    else:
>      0150:        try:
>  *** 0151:            os.link(c, dest)
>      0152:        except OSError as err:
>      0153:            if err.errno =3D=3D errno.EXDEV:
>      0154:                bb.utils.copyfile(c, dest)
>      0155:            else:
> Exception: FileExistsError: [Errno 17] File exists:
> '/home/wdurocher/work/gammaip/warrior/build/tmp/sysroots-components/x86_6=
4/openssl-native/usr/bin/openssl.real'
> ->
> '/home/wdurocher/work/gammaip/warrior/build/tmp/work/cortexa8hf-neon-schn=
eider-linux-gnueabi/config-server/0.0.2-r0/recipe-sysroot-native/usr/bin/op=
enssl.real'"
>=20
> Which apparently is related to nodejs(sumo) using openssl 1.0.2p while a
> few packages use openssl 1.1.0. Hacking staging.bbclass to remove the file
> did allow package_qa to complete but that is not really a satisfactory
> solution as 1) I would rather not hack the meta repo directly and

> 2) there
> has to be a better way to have both openssl 1.0 and openssl 1.1 coexist
> with the recipes using the correct version.

Unfortunately there isn't, pick one version (preferably 1.1) and use it
for everything.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXXedfwAKCRA3VSO3ZXaA
HIwGAKCMv7/cftJmOOI4ALqjOZxBke/0LgCeJhsn1vwDjF9zx+ldaD315xV4tZY=
=tpZw
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--
