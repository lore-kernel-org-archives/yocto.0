Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16E78E00A0A; Fri, 21 Apr 2017 13:59:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89CD4E0083C
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Apr 2017 13:59:03 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id m123so26104680wma.0
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Apr 2017 13:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=/zs0c6Oamp1oqUL52vZu6K3WB/3FZp92vBOWhdTPSTY=;
	b=E9bZtA35CDO2hnNiaSmnvFW3wlCj8GywndzaT6rYfbNpJYL48mG54DAQufDB0I3VSF
	ZobxvRPCVcSL4fC/K9gZqGHZjckai1ux3tCeWCx3ejxMnjFjgrGiG94O04uxJtVvrB4R
	djM+E5f9TqlXllLyyb4UFCS2fA5Sbsr8IL07Et0gfbpM2HA6rgTC0WGnsG6VJYTkuBdr
	YjFiK79BDpSfS19b0VyEk+MinlFOA4dPxqB/nn46Ea9qoGPNZ4zrTSrfAp+Xfs7gXqUc
	FBWsUWGMgcVjLXXd7qgKZhtP3WvUjhRShTHddYfSctCZLQ0V1O+DADbPMumocLvM1B51
	Ll/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=/zs0c6Oamp1oqUL52vZu6K3WB/3FZp92vBOWhdTPSTY=;
	b=pDnsZGljQi+pQcRqFEL+vBn1mVSKOSsVMoPCb0MtwOZovzfnx1Q/yZCv9kNZk1Eyc7
	5ud3Qy4aVMr7gSYVR3lNPb8ECJ24p4wEpHehiGSebWmEhWHninE4D1bOc4Ob1ymYFCb3
	jtQxdz01Ks2CbBIGyo56i3zZseJ+Rdfzwpju+kB0rO9RDXX/mL7RbevKMLxa8TTf/QbN
	hG7DV6TyaC/BaiTZE5wE1GgwyhGmazYYfbXQJ8yBt8jTF6stxSYBDmNWKdRrFxrosT7H
	9kXtgNhsKbYS0d530hGPA4aEylt40QNnPIjn6FgUF2zJYNgcR3BXXu3dBymSnnsM3Vux
	QDww==
X-Gm-Message-State: AN3rC/7LYLJ3t6/4y2efhBxBNP9Fx0FOczxB0axlGGMT9wXHde3oeqwA
	GKR4Z6sndNkimLTy
X-Received: by 10.28.23.198 with SMTP id 189mr465932wmx.38.1492808342088;
	Fri, 21 Apr 2017 13:59:02 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	l132sm3586020wmd.10.2017.04.21.13.59.00
	for <yocto@lists.yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 21 Apr 2017 13:59:00 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 21 Apr 2017 22:59:11 +0200
To: yocto@lists.yoctoproject.org
Message-ID: <20170421205911.GC3024@jama>
MIME-Version: 1.0
User-Agent: Mutt/1.8.2 (2017-04-18)
Subject: [RFC][meta-gplv2] layer priority and worth creating branch compatible with morty?
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
X-List-Received-Date: Fri, 21 Apr 2017 20:59:07 -0000
X-Groupsio-MsgNum: 35731
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="32u276st3Jlj2kUU"
Content-Disposition: inline

--32u276st3Jlj2kUU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

1) layer priority, currently it has:
       BBFILE_PRIORITY_gplv2 =3D "1"
   which is lower than oe-core with:
       BBFILE_PRIORITY_core =3D "5"
   so in order to use recipes from meta-gplv2 layer, user has to add
   couple PREFERRED_VERSIONS. Was this intended use for meta-gplv2?
   I can see some advantages of this (that the layer can be included
   without immediate side effects), but on the other hand why would
   anyone include this layer if he isn't deeply scared from (L)GPLv3
   versions sneaking into the build?
   In our local builds I'm bumping the priority to 6 to resolve this.
   Alternatively we can add some conf/distro/gplv2-versions.inc file
   in meta-gplv2 so that people who want to use all available recipes
   in gplv2 compatible version can include it in their DISTRO.

2) branch for morty, currently the recipes aren't compatible with morty
   but with e.g. gnutls version added there it might be better option
   to share the gplv2 work there even when oe-core/morty contains most
   of these recipes as well.
   The recipes I had to modify to be compatible with morty are:
   https://github.com/shr-project/meta-gplv2/commits/jansa/morty
   88d1052 coreutils: make it compatible with Yocto 2.2 Morty
   5e08ac2 rsync: make it compatible with Yocto 2.2 Morty
   b33037f libiconv: make it compatible with Yocto 2.2 Morty

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--32u276st3Jlj2kUU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWPpyngAKCRA3VSO3ZXaA
HPZtAJ9HZEibfq0goiRxrPFkcuW5I9S5SgCeJ7dwxWD9JipJiKsOjFIik7ck4zI=
=KrEo
-----END PGP SIGNATURE-----

--32u276st3Jlj2kUU--
