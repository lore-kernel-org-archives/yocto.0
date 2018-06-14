Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3562E01406; Thu, 14 Jun 2018 05:33:25 -0700 (PDT)
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
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C589E013BE
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 05:33:16 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id e16-v6so10270513wmd.0
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 05:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Qqsw62IlJcC0OnBTRRwr/UNdckKOKOrswgQXbprGbBk=;
	b=GKcYE70Yq4a2vnWRmdAzZ+k4zal0bgCAo3mQ13Zzpm3GGl//sp2/AvecUDGciUEj8L
	1+fSin8SbAKuWGYm3wZ0lg+sDVedsXFCzfv7J2SFeX22drOH7FAy0jflwtNe7zFh76Az
	X/eApjJky3cXmRbscwHd31l0T8vUObc5ol2/zBA0r4mG+OABcfpAiirM96bsutDXZdRI
	JWidbb8DAlvVXwek6VdUh57kjryEX9290KcPhuglIZ4KsS2O5HYFCTDb3df4bZKwV1HD
	fCBhk1/gpE5Ufu9z8o4U1r++mtQpHPsAEVcoU16uABbNac5yrVNpKMzrS55wj2uLfa5m
	HjTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Qqsw62IlJcC0OnBTRRwr/UNdckKOKOrswgQXbprGbBk=;
	b=bvwI3j175sJ/nJgSum9p0/bN1/RcID91UTUY5B2KMwM7WSTKt2ZM0m5LsWS3Eda8jQ
	PSdbijVI+9Lqlff3kcIg5Pv4BVRmEFXQIXkvBp3gSaMBCcTFHxJw9flN15Scl1osSiLG
	NWW5RrKboP4+KBJ7TCDoz+jbqBPJGafEgfAHAJxEAozgYuH2U0F2W7hLXBJsl5v1pOSY
	o7wipf9BpTzQrkQrDAuiFJM5GXo2bvpZgXgLlUzPl3Pzn9v/rQjiDJAPAfwoAkPz2axI
	2VwaSx5Ct58Gi7QTlixkahCRSdkJexZi1+JMsT+ZBrwyt3JVni+SvtKSgDPsSSMY9wZd
	PHjw==
X-Gm-Message-State: APt69E18iNbiorV/BrcvlkYB+cQXh8XeNnXyS5EilrbJlwO5B88EBKZz
	w1hn3JgXkR8mHDePcTg84Rs=
X-Google-Smtp-Source: ADUXVKLn/UZI6T6LIcJFlmG3l3QtGTIe4EmtUj4xKwTyyqn6WX8wOPOWNAHhGX7NF7tLnxkRXt8dQg==
X-Received: by 2002:a1c:d2cb:: with SMTP id
	j194-v6mr1612720wmg.129.1528979595928; 
	Thu, 14 Jun 2018 05:33:15 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	n17-v6sm7927060wmd.14.2018.06.14.05.33.14
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 14 Jun 2018 05:33:14 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 14 Jun 2018 14:33:14 +0200
To: Damien LEFEVRE <lefevre.da@gmail.com>
Message-ID: <20180614123314.GA1389@jama>
References: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bbappend extra SRC_URI ignored
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
X-List-Received-Date: Thu, 14 Jun 2018 12:33:26 -0000
X-Groupsio-MsgNum: 41448
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline

--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 14, 2018 at 03:16:00PM +0300, Damien LEFEVRE wrote:
> HI,
>=20
> I'm working on meta-tegra layer and I'd like to append a recipe. The
> original recipe looks like this:
> https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/=
tegra-binaries/tegra-tools_28.2.0.bb
> <https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp=
/tegra-binaries/tegra-tools_28.2.0.bb>
>=20
> I've made a tegra-tools_28.2.0.bbappend to change the default PM_CONFIG
> DEFAULT from 2 to 3 to get max performance in nvpmodel.conf configuration
> file.
>=20
> ```
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files/tegra186:"
> SRC_URI_prepend_tegra186 +=3D "file://nvpmodel.conf "
>=20
> do_install_append_tegra186() {
>     install -d ${D}${sysconfdir}
>     install -m 0755 ${B}/usr/sbin/nvpmodel ${D}${sbindir}/
>     install -m 0644 ${WORKDIR}/nvpmodel.conf ${D}${sysconfdir}/nvpmodel.c=
onf
>     install -d ${D}${sysconfdir}/init.d
>     install -m 0644 ${S}/nvpmodel.init ${D}${sysconfdir}/init.d/nvpmodel
>     install -d ${D}${systemd_system_unitdir}
>     install -m 0644 ${S}/nvpmodel.service ${D}${systemd_system_unitdir}
> }
> ```
> Would you have any idea why the nvpmodel.conf prepend is ignored and the
> file never ends up in ${WORKDIR}.
>=20
> I've made sure the paths are correct. nvpmodel.conf exists and if I put a
> typo like nvpmodel.conf_blabla bitbake throws a warning that it cannot fi=
nd
> the file. So I'm sure the file is found but somehow bitbake ignores it.
>=20
> I'm having this issue with this one single recipe only, none of the others
> in my build system so I'm a bit puzzled.

Always use bitbake -e to verify that the file://nvpmodel.conf ends where
you expect it to end (and if it doesn't the history will show you why
not).

>=20
> Thanks,
> -Damien

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--mYCpIKhGyMATD0i+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWyJgiQAKCRA3VSO3ZXaA
HLBkAKCLzvxqZVhuqVe0rJHRbj55I+O8dQCggGXJYK7ms0jyf48IT2bbXwT5+Q8=
=eSui
-----END PGP SIGNATURE-----

--mYCpIKhGyMATD0i+--
