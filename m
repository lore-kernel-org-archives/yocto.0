Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39837E00527; Mon,  4 Apr 2016 10:53:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
Received: from mail-ig0-f195.google.com (mail-ig0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E781DE0048B
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 10:53:28 -0700 (PDT)
Received: by mail-ig0-f195.google.com with SMTP id qu10so9959366igc.1
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 10:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=p39jIa/4pxVTwt9foZRAKEId4/aEbHes5q6MIuZ5W3Q=;
	b=GBFXlPnd38fpW/owtyo/wPShLIxooHxnh6IznM7B0EVRkl1lQg2FIvO17qSV4G6eiN
	gFp0lE32UJHm+3ZHlFtYfoerRfBxOXyXMrLoulMxa7Ml67vyV85smXvaEwG6a9K04oel
	uRRNKl4JcpxNR9c9d10XkZ56tmwuoSHk7BDr74v1h4Q8+mUAj/Q7ZdqQDpQ+ymsz8ASQ
	mnjphUilFHPPHvaOyRzbIANGHxT/lQmrUcHTI3WHTbdMQS0dHhQcDvnK+CrM/3+gI6DO
	21DKiBkzjl0Y5iLlTRbk4LUHs19t1jq+CIW7ZLxFhExbfxLn3dqbiWO083NFQN4vm/GK
	bj8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=p39jIa/4pxVTwt9foZRAKEId4/aEbHes5q6MIuZ5W3Q=;
	b=LKC/l3tT2kJNPP/m6RVpoF+cmlId9EEXfwWJl+NMsDBCmYPziP46OkOT1I/KUo/wWu
	o4wq54GQ/d3qTEyMXaIrgZ+r4/Eaew1YQaShnHU/RFaXMQYjLVmeCQ442WoSapFNeQ8g
	xagJY8vYhqPxV5fP6bomDP8cUXe0hARbvyIt8Td9MqfqUgyGwRzI+qi0gtIcuiZnhlye
	7JWoNtgOMye6e2Gc/skPXl/YAOq5oqrFlBjIM3lfKmgCjs0f642jt0rvTOtXvpPw4/fc
	IZs9jUyjuJdAE4mX52l+X2byw3r7SX0odIreie3TOcQrx4atstDPIVlg4d8IWltcNlsi
	SwuQ==
X-Gm-Message-State: AD7BkJK0yLRDQrSmX2POChjgDrV2oftxST1ZF84C0ow+4zxK3H1dFMKJ4P0F/u4A3QwsHQ==
X-Received: by 10.50.8.101 with SMTP id q5mr11246837iga.22.1459792407837;
	Mon, 04 Apr 2016 10:53:27 -0700 (PDT)
Received: from deserted.net ([23.233.31.74])
	by smtp.gmail.com with ESMTPSA id g2sm5360579igi.2.2016.04.04.10.53.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Apr 2016 10:53:26 -0700 (PDT)
Date: Mon, 4 Apr 2016 13:53:24 -0400
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20160404175324.GA29386@deserted.net>
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1459729295-79553-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/3] refpolicy virtual package
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
X-List-Received-Date: Mon, 04 Apr 2016 17:53:32 -0000
X-Groupsio-MsgNum: 29283
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline

--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-selinux][PATCH 0/3] refpolicy virtual package] On 16.04.04 (=
Mon 00:21) Philip Tricca wrote:

> We currently require each image to depend on the policy (or multiple
> policies) that they want installed and the selinux-config package
> enables the DEFAULT_POLICY. Since only one policy can be in effect at a
> time, and we're targeting "embedded" systems it makes sense (to me at
> least) that we would treat the policy much like we do the kernel and use
> a virtual provider.
>=20
> Feedback would be much appreciated,
> Philip
>=20
> Philip Tricca (3):
>   refpolicy: Setup virtual/refpolicy provider.
>   Integrate selinux-config into refpolicy_common.
>   refpolicy_common: Sanity test DEFAULT_ENFORCING value and set default.
>=20
>  conf/distro/oe-selinux.conf                        |  1 +
>  .../packagegroups/packagegroup-core-selinux.bb     |  4 +-
>  .../packagegroups/packagegroup-selinux-minimal.bb  |  3 +-
>  recipes-security/refpolicy/refpolicy_common.inc    | 43 ++++++++++++++++=
+++++-
>  recipes-security/selinux/selinux-config_0.1.bb     | 41 ----------------=
-----
>  5 files changed, 44 insertions(+), 48 deletions(-)
>  delete mode 100644 recipes-security/selinux/selinux-config_0.1.bb

I've tried this out today and it all looks good to me, I've tried
breaking the sanity check on DEFAULT_ENFORCING as we discussed and it
still seems to do the right thing.  Since this is what we were
discussing last week and it seemed to make sense at the time, I went
ahead and merged your patches for you.

--=20
-Joe MacDonald.
:wq

--UugvWAfsgieZRqgk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlcCqgkACgkQwFvcllog0XzNLACghthoIjFp+uW8quMfYmlALTgd
dgoAnieEHy94bT2jk6DAHB46126131Ok
=D+xZ
-----END PGP SIGNATURE-----

--UugvWAfsgieZRqgk--
