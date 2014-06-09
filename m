Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09731E00B6C; Mon,  9 Jun 2014 01:30:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2234EE00A44
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 01:30:27 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id n12so5119136wgh.31
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 01:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=iREXVo/9Wyl6G/jz0B2sDq4XlNnuHOAhB5SoZBA3lgE=;
	b=zlkuv3sK1DIlyCvQPLkKt5QRW1EaFXiWzEkwcxwMNtx6puA1/6WxkI1tuu/KQdRhaM
	/KPqCv6ZZADA/ZFHlb5noXMNpDOtjTTi/nKR+sWc6OKPedXQetAIKFKF2ZoLO8f18kme
	c6peG5vKjF5VDimD3ZCZ8OUnZmFOw+ck41v9uCFvqJ94ABgHQMUBUeYckdBDjRCGCqQt
	5X5D1VNvcv3Zj1EXEFyeiRd6rQtWzbZmC1BgczY9N7iNjFix1zy0W+W8gKkCsaf5sy1Y
	C1Irb7oFotJ2Tl90VtsQqaTEVpQ01dFvIgLWb9K6WnMFG+dBvQQQ1bnD3GtT1jAlYglS
	euxA==
X-Received: by 10.14.174.135 with SMTP id x7mr3218466eel.10.1402302626102;
	Mon, 09 Jun 2014 01:30:26 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	ci54sm43485992eeb.19.2014.06.09.01.30.24 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Jun 2014 01:30:25 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 9 Jun 2014 10:30:44 +0200
To: Yao Xinpan <yaoxp@cn.fujitsu.com>
Message-ID: <20140609083044.GC7549@jama>
References: <1402288294-19549-1-git-send-email-yaoxp@cn.fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <1402288294-19549-1-git-send-email-yaoxp@cn.fujitsu.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] add license file: DMTF
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
X-List-Received-Date: Mon, 09 Jun 2014 08:30:37 -0000
X-Groupsio-MsgNum: 20012
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2Z2K0IlrPCVsbNpk"
Content-Disposition: inline

--2Z2K0IlrPCVsbNpk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 09, 2014 at 12:31:34PM +0800, Yao Xinpan wrote:
> hi all
> I want to add software which associates with DMTF into rootfs.
> There is WARNING as follows when build:
> "WARNING: cim-schema: No generic license file exists for: DMTF in any pro=
vider"
>=20
> Could add license DMTF into yocto?

into oe-core? You can have license files in your own layer, do you plan
to add the recipe for "software which associates with DMTF" to oe-core?
=20
Regards,

> Signed-off-by: Yao Xinpan <yaoxp@cn.fujitsu.com>
> ---
>  meta/files/common-licenses/DMTF | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 meta/files/common-licenses/DMTF
>=20
> diff --git a/meta/files/common-licenses/DMTF b/meta/files/common-licenses=
/DMTF
> new file mode 100644
> index 0000000..54a2812
> --- /dev/null
> +++ b/meta/files/common-licenses/DMTF
> @@ -0,0 +1,34 @@
> +// Copyright 1998-2008 Distributed Management Task Force, Inc. (DMTF).
> +// All rights reserved.
> +// DMTF is a not-for-profit association of industry members dedicated
> +// to promoting enterprise and systems management and interoperability.
> +// DMTF specifications and documents may be reproduced by
> +// members and non-members, provided that correct attribution is given.
> +// As DMTF specifications may be revised from time to time,
> +// the particular version and release date should always be noted.
> +//=20
> +// Implementation of certain elements of this standard or proposed
> +// standard may be subject to third party patent rights, including
> +// provisional patent rights (herein "patent rights"). DMTF makes
> +// no representations to users of the standard as to the existence
> +// of such rights, and is not responsible to recognize, disclose, or
> +// identify any or all such third party patent right, owners or
> +// claimants, nor for any incomplete or inaccurate identification or
> +// disclosure of such rights, owners or claimants. DMTF shall have no
> +// liability to any party, in any manner or circumstance, under any
> +// legal theory whatsoever, for failure to recognize, disclose, or
> +// identify any such third party patent rights, or for such party's
> +// reliance on the standard or incorporation thereof in its product,
> +// protocols or testing procedures. DMTF shall have no liability to
> +// any party implementing such standard, whether such implementation
> +// is foreseeable or not, nor to any patent owner or claimant, and shall
> +// have no liability or responsibility for costs or losses incurred if
> +// a standard is withdrawn or modified after publication, and shall be
> +// indemnified and held harmless by any party implementing the
> +// standard from any and all claims of infringement by a patent owner
> +// for such implementations.
> +//=20
> +// For information about patents held by third-parties which have
> +// notified the DMTF that, in their opinion, such patent may relate to
> +// or impact implementations of DMTF standards, visit
> +// http://www.dmtf.org/about/policies/disclosures.php.
> --=20
> 1.8.4.2
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--2Z2K0IlrPCVsbNpk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlOVcLQACgkQN1Ujt2V2gBwhXQCgrf21BF6P5rMSFTEWYzw73df8
TAEAn3jbWP+0m8RbOo8vcFKTFod/ijQf
=9v2S
-----END PGP SIGNATURE-----

--2Z2K0IlrPCVsbNpk--
