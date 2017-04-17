Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AADBE00B76; Sun, 16 Apr 2017 18:31:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F0E6E007EE
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:31:15 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id d79so6818001wmi.2
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=XEjvIZPMnyUm8CplX86FwhT/NMZGaPzmPbCdIbBVShM=;
	b=U8zCNmSLdtdSUr7R+BA+GnvCS5/gu4BLsilvs/zuQYsALECrtUq50T6jUVZGlkJety
	lzXrtn775Db34+5t/CKXzQY8RwmlKWMk7tGDcJeIx3IM2ZKlM3wKXIvhpfUHLclfk5JR
	8XgQdXcvDDsTHxWY1JXwFRw9aSVw5HbPGAXXHl6T7e6owrNx2S89DiU9/mTklkiSHeeg
	P4SB95yd3fUuvrDijUalq4leSBJO40AftyeqcJQCtuwl6oozFk+mgmezGNlEU6oYCjPV
	XPGxMLkvJ2pJU6jU2PWolxmyNzyRqcgc64irhQOZpex9BjbndJvddK7hEQXkTEF+Bb7T
	gDAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=XEjvIZPMnyUm8CplX86FwhT/NMZGaPzmPbCdIbBVShM=;
	b=GfC9Sd44Jte/oQKoQBvZ9gezIoWUNbwbuoCJQlFt+aDmSRx1AozGNhVVllHIrlORna
	JeDF0i+3dy+PtBYFTmIA/Db1UZeVGvZ5niw9CAOe6hw3fY+x8mYqXxQwOnRH7mTFlCwD
	0RLY7c6s9I5v2wEOVmV7c+r/LgevOHlcmywNYZTSYrzp19PfdSubVelzA7VEqEegMdcm
	OAW2Nn6th2LrQdU5VyfMyJ00w5vK8yVAP++A+cXDlXEFZaJ8p+zXZtJrLnOaIl+mhSnn
	38BtKnNe7vD426oYr1+0Qnal6n8/thTb/ykuDEINEgGCr9rXzJPY70dD64gyXnqETCmX
	KgJw==
X-Gm-Message-State: AN3rC/6RFBfsjpXQN99FZ27C1+fa3ifnf59ZAYOahYV9qVPtSkMS0wFb
	xXBblGssvA6YCA==
X-Received: by 10.28.16.149 with SMTP id 143mr6533783wmq.42.1492392675106;
	Sun, 16 Apr 2017 18:31:15 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191])
	by smtp.gmail.com with ESMTPSA id 201sm8447782wmr.5.2017.04.16.18.31.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:31:14 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:31:12 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170417013112.GI16624@carbonA>
References: <20170414162035.23522-1-raj.khem@gmail.com>
	<20170414162035.23522-4-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170414162035.23522-4-raj.khem@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/5] eglinfo-fb: Mark is userland specific
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
X-List-Received-Date: Mon, 17 Apr 2017 01:31:30 -0000
X-Groupsio-MsgNum: 35598
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AptwxgnoZDC4KQWS"
Content-Disposition: inline

--AptwxgnoZDC4KQWS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 14, 2017 at 09:20:34AM -0700, Khem Raj wrote:
> It does not yet compile/work with vc4 open graphics driver
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-graphics/eglinfo/eglinfo-fb_%.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend b/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
> index 7f8b600..7692133 100644
> --- a/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
> +++ b/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
> @@ -1 +1,2 @@
>  EGLINFO_DEVICE_rpi  = "raspberrypi"
> +COMPATIBLE_HOST_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'null', '"(.*)"', d)}"
> --
> 2.12.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks!

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--AptwxgnoZDC4KQWS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0GuAACgkQJrqo2vax
FPbCZA/9H8GbBGlHV8mXu7f+VnaF4d6LuGNmAP97rrkp/k0o/0NsS90KiJ7a58z6
7cFH80QuRNVCd5zf9pQZY/Lg7SSVr/cXQwK3FCgdkcj48kifzjpoj3/FYGMgwcmy
tbQx30eGgJR0RBBkxuZiWdFUxgTl+CFbP9e7wHvTpQe6RqJh9FcL8CWGB+I3rnt/
86HU4yUwRoZRum3ZPC2hbl5kzKDMNihY0WuFw8KunQ71gTB3By0llJKPcjgLfA0C
ICxNsQHdK+R/yHKz1pGg6l9v7ECPctXcvf58f0RCLQv7o+b1K/XviTyTM/qcwteZ
BniLEXj7K9goqRTx/4P1gmV+Vxe59E6HJeVzzyboFpLV+oZw9mpbfJJpaa5BcZpz
OaiuaKSz9HOZkaYaegVyXOry/WlAhra9aJ7C8Qof4BZXo90+ZLhb2nV9KXQSzssG
xblXEHQAkpmF0vM7UcgXWt2OnZiADoftQzv1BcBforpHHrYXEFoVt3EKBDmeRVrp
rsTPubb2LmcH8kQmLUxt7rfb1n69xXBEgNBEItiE/xPYLX035GPpRrc6d6gBt75f
PSh2056zTcXHEanx5Qw84REdLVP4a1bP7NCfnTj+dbdod0JlUPLspmWAKqrUAG5z
gJP2fkski/knfW6VuxYvV2QI9yvvYZFW+l5wVoNPHgSNhaTptU4=
=K2+6
-----END PGP SIGNATURE-----

--AptwxgnoZDC4KQWS--
