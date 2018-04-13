Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 464D8E00994; Fri, 13 Apr 2018 15:44:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71BAFE00529
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:44:30 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id d19so11731077wre.1
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=tkulRB38zXaiTPUnrfUzapgZyxXLt0bC8n/JQC8qjAc=;
	b=LZRaUH7o86mtxQhCJ4q00HPqz0LIvGEbILDLYaWL/yE5wUE3ESDU48n4bRO/2sXtiD
	ewO/M9+5qy/KjVHWXWbpzejdlCQhMoMvN7EA9uMYu+KbjtNLDZihKTfoA+9yRe02GjXQ
	8TAOy/uB6qZG+zC3r/sMmbcIAvyL6bCObEpyr+Bs1BiYmeF7yP3HpgfCzTQ/pOTF6055
	BrH14QuEabW6fJPNU9i7liqQ05DSpSoAFm1pEt2Hn026fOqZTQBFU6jth7ATWxDfOUxE
	ayI1O3r8mpdFN90zzbASRlVQWn89yu+4k9B/nRgTHvc4ZbB/fJ0rxzHA6o0Cd7F5T3Mw
	rlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=tkulRB38zXaiTPUnrfUzapgZyxXLt0bC8n/JQC8qjAc=;
	b=lSsKrQy5GDenaHxFA8Zjwg4DJ9Z87ky6orcMa8DuMZsQQfoyv0MsoMY86eTlN0EcbW
	s4VTFN8UbldFKxcmIi0m1L/4LnBA0V8rbvRG1jr+TwOPu3NPY7p08yK5z38N0qkle1Lf
	PwXPSgqBWAM01yfA3KFdVuErJ5sc+OqvzCjR3xvhf0Vb285s9QAdAw+R/BQCHydBQmEH
	Gcfm3duNRAiRHpv4b6M0AuaXeD5Lno4oWcn3rzyP+wAwBir1hU6a1OVc2sU5yw7lDoXL
	axexYWqg0EYzNyLZ75tUuCQYbuTENdGXNerF03jCTMD+Qx2d7op3bXB0YA53rwoXcWom
	g9+Q==
X-Gm-Message-State: ALQs6tCnsEfFlq2V4KAyByV1++NOTLX0cgnPbUr+uk5I2+x8W1lDmOoi
	4Hh0dvaXVI4ywgiHYj/tfZc=
X-Google-Smtp-Source: AIpwx4+1cDxWn5eaAtOS2dTjVchvwVsCUoD07A2fdHMZgGX64OWB3vlFkO6YhTVwdQ1QjclPXrZT2g==
X-Received: by 10.28.150.210 with SMTP id y201mr5158003wmd.112.1523659470153; 
	Fri, 13 Apr 2018 15:44:30 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	c21sm5920071wre.43.2018.04.13.15.44.29
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 13 Apr 2018 15:44:29 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sat, 14 Apr 2018 00:44:31 +0200
To: Armin Kuster <akuster808@gmail.com>
Message-ID: <20180413224431.GA2157@jama>
References: <1523659287-17805-1-git-send-email-akuster@mvista.com>
MIME-Version: 1.0
In-Reply-To: <1523659287-17805-1-git-send-email-akuster@mvista.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt3][PATCH 1/2] layer: add LAYERSERIES_COMPAT
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
X-List-Received-Date: Fri, 13 Apr 2018 22:44:32 -0000
X-Groupsio-MsgNum: 40703
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 13, 2018 at 03:41:26PM -0700, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>  conf/layer.conf | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 84ab5f7..2100ffb 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -8,3 +8,4 @@ BBFILE_COLLECTIONS +=3D "qt3"
>  BBFILE_PATTERN_qt3 =3D "^${LAYERDIR}/"
>  BBFILE_PRIORITY_qt3 =3D "6"
> =20
> +LAYERSERIES_COMPAT_qt3-layer =3D "rocko"

Shouldn't this be just qt3 like BBFILE_* variables above?

Regards,

> --=20
> 2.7.4
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWtEyzgAKCRA3VSO3ZXaA
HMoHAKCOInnNNsNK0sLaQQL9B3WcIFIHoACfbjVFp4wROZOw3sLmd7v+IAdABEw=
=4hY4
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--
