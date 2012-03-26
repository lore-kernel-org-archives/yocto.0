Return-Path: <josh@hipro.co.in>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63E1AE013A8
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 00:56:46 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so6913816pbb.35
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 00:56:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=/YOgymVw8GAzUQyyh0JRPUoIpUn+b06z8Z0rVt9o/R4=;
	b=p14+gd3MbNARtw2A6h5yDVq1OP6tILcM8LUZa/u3WOgx4fxnvwxraZ7zREJk/PZPCJ
	DR6HcMDleDoEUIubCU+xx3pNcaZJPz4MhNc9+8JynwUyjFlJKCfHSs5OH/ZYWuW/0jNQ
	AdvQI+vfdume26rpLzVGl3mEO2SFjBkZ9z53cINUcDwqgTVUcaXO2mIHNEa14qnx/cYe
	JMpnUjer8EJIqLysOowRar8Uhj015CmUKXywcK0tFTSaJowX9IBXSUG9Cr/hqDQTFuRb
	cJj0gJS4Ev/9pBRVvuQEKNTEoYKu+DpQwwpSa6WveUW3OLhrJqTwlSB/oU90Hf58bnYH
	iFlw==
Received: by 10.68.219.72 with SMTP id pm8mr51568203pbc.116.1332748606170;
	Mon, 26 Mar 2012 00:56:46 -0700 (PDT)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id l4sm11977667pbl.27.2012.03.26.00.56.43
	(version=SSLv3 cipher=OTHER); Mon, 26 Mar 2012 00:56:44 -0700 (PDT)
Message-ID: <1332748593.3690.9.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 26 Mar 2012 13:26:33 +0530
In-Reply-To: <1331816822.19369.7.camel@babel.joshhome>
References: <1331816822.19369.7.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQkyVi0zYeWhO4HEOWTgPqfo1NErvBLpXsaskpvV1uDgvrzhpPGj/sX6TdzwWDfMsau/z9Jw
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: syslinux filesystem size limitation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Mar 2012 07:56:46 -0000
X-Groupsio-MsgNum: 5520
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-LiYQXOIi1mtwev2NES1/"

--=-LiYQXOIi1mtwev2NES1/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, 2012-03-15 at 18:37 +0530, Joshua Immanuel wrote:
>         In yocto I find that the live image (hddimg) is generated
> using syslinux (in bootimg.bbclass). But, I find there has been no
> check enforced to find whether the filesystem size exceeds 1 GB. The
> image will not boot if the hddimg size exceeds 1GB. This is due to the
> limitation in syslinux.

For the benefit of others who arrived at this thread via search I am
writing this.

Apparently, there is no 1GB limitation with syslinux. The problem was
due to mkdosfs tool in poky edison branch. The complete discussions
about this can be found in the (long) comments section of this bug.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2138

I would like to thank Darren for helping me in debugging this problem.

Regards
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-LiYQXOIi1mtwev2NES1/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk9wITEACgkQWw85XwuSFMLBiACcCnYHChdYJHXyFx+Y+j95DcRx
7a8AoLc7LIpmmHC82ceiQ0PsM47acoW/
=09Se
-----END PGP SIGNATURE-----

--=-LiYQXOIi1mtwev2NES1/--
