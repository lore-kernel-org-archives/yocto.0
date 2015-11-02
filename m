Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C15F2E005B3; Mon,  2 Nov 2015 12:32:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78B6CE0034B
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 12:32:14 -0800 (PST)
Received: by wmec75 with SMTP id c75so70514178wme.1
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 12:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=tt72Bv0WLidun3L1TRCYORxoQNEXMC/4dtYLQiaMhfA=;
	b=CzD4Faqe5KBVwVL+mLgwsp6keSbx3LaB9PBDTswJmniIt16z9L97vpZ9p00BVNT8GF
	rEK+mYJtyKMPfI3iGXPESJE010SkTojsYj08MswP+5xtBXShiumqHV4/nSMuXVyZS2XE
	ZIQax6JTz9hUGpEJ7nNu7DIXK1cQR4OCt2APzhf9YrLcvznwHLZxBr5iWivsVCll/+jJ
	kwSOMZgAOlGOWxd9D/iQme0zTXPIADTvYbiogvea5St6gkliz2IhYxMuKEOqzCY03CRn
	wf/z02WHPeEZ8bZrXlIlEY1hzx6VXXjmmEZzV8yPNOVV9o8221MMz9i6798enZtwpMWK
	SwMQ==
X-Received: by 10.28.211.143 with SMTP id k137mr16180098wmg.49.1446496334045; 
	Mon, 02 Nov 2015 12:32:14 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	d81sm19955759wma.16.2015.11.02.12.32.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Nov 2015 12:32:13 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 2 Nov 2015 21:32:20 +0100
To: Bryan Evenson <bevenson@melinkcorp.com>
Message-ID: <20151102203219.GB28051@jama>
References: <BN3PR0501MB1090167F43DDD94ECB562845BB2C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BN3PR0501MB1090167F43DDD94ECB562845BB2C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: COPY_LIC_DIRS, COPY_LIC_MANIFEST and firmware upgrades
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
X-List-Received-Date: Mon, 02 Nov 2015 20:32:20 -0000
X-Groupsio-MsgNum: 27140
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8P1HSweYDcXXzwPJ"
Content-Disposition: inline

--8P1HSweYDcXXzwPJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 02, 2015 at 05:13:48PM +0000, Bryan Evenson wrote:
> All,
>=20
> I'm on poky/dizzy-1.7.2 and I've been using COPY_LIC_DIRS and COPY_LIC_MA=
NIFEST to include the license text on my image.  I noticed something about =
the way it operates and I'm wondering if it's a problem when it comes to Fr=
ee and Open Source Software compliance.
>=20
> If I build an image with COPY_LIC_MANIFEST and COPY_LIC_DIRS both set to =
1, then the image is generated with the directory /usr/share/common-license=
s that include all the licenses for all the packages in the image.  There i=
s also /usr/share/common-licenses/license.manifest which summarizes all the=
 licenses in the directory.  Let's call this starting point image version A.
>=20
> Later on in development I add package "foo-extra" to the image.  I add "f=
oo-extra" to the RDEPENDS list for package "foo" which now needs the new pa=
ckage for proper operation.  The built image now includes in /usr/share/com=
mon-licenses/foo-extra the license for the new package.  We'll call this im=
age version B.
>=20
> If I ship a product that was burned with image verison A then it has all =
the licenses for all the packages that were installed in the image.  Likewi=
se, if I ship a product that was burned with image version B then it has al=
l the licenses for all the packages that were installed in the image.  Howe=
ver, if a product ships with image version A and then is upgraded to image =
version B then package "foo-extra" is installed due to dependencies but the=
 license for "foo-extra" is not included in the upgrade.  The /usr/share/co=
mmon-licenses directory is not tied to any package, so firmware upgrade doe=
s not add, modify or remove any of the licenses in /usr/share/common-licens=
es.
>=20
> Is this a problem when it comes to FOSS compliance?  If so, is there a su=
ggested way of including the new licenses for firmware upgrades?

You can also enable LICENSE_CREATE_PACKAGE which should create <pkg>-lic
packages rrecommended from <pkg> so they should get installed together
with image upgrade, see:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3743

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--8P1HSweYDcXXzwPJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlY3yFMACgkQN1Ujt2V2gBwtzwCfZLknm7ujPkWmbgc0iok3IccE
DP0An04FNe7M4RxDJEVgSCUbaZmWw9bD
=sIe5
-----END PGP SIGNATURE-----

--8P1HSweYDcXXzwPJ--
