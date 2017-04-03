Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D439BE00AD5; Mon,  3 Apr 2017 06:45:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D580E00A9A
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 06:45:17 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id w43so33714796wrb.1
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 06:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ofztHSGCOk9lXMExy/hkoBmE1s1cFyUSoL+ftz8W4rM=;
	b=pdK1ZjYZrPGS+/HZFL3C7Bu2lQ9gK0hoX/t4XI3tHVxWpJOVYBwDtYlIpxrmgFy/ku
	oe2m8RJdx1rHxf8lqO3rMZG5+QsNldc+IcAOKBNLrPLvCJYFgR7+Z4h7IUcj3s+daXCn
	RnHwhQ55fgKm3ARu+ogvk1Zk7S8Rim9LN8UmBhzdDjgFTaHlL8FtqsuFolXbouRjmRx5
	k7nTlRfwHnvQmqfi2n6a2qb2IS3QB7GnaJLy93vw9xzEyvq01yqyD54IsC7dUxY4PbzM
	DM2mAElJKfuKJL1PYxwz9dXk6yBMnqIA4su++KLYhADYsAJwzbHicGyr6yLQP3eC3oK9
	3sBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ofztHSGCOk9lXMExy/hkoBmE1s1cFyUSoL+ftz8W4rM=;
	b=kLrriYH43uq+Of/dWTAsYv2VKofZDNFpDZgpuEMl62X00oQXWJG8+qTA3pJvUdoBeh
	bmNUtr5frmI6xdON+8rBhuQgpo3HQ/ZfPZtiye32bHZhoFFVWMXL98TJ2OdcL0CkYJNo
	bAQ6+1ih0XqoEOKXNhkfg1aMzCYC0gxCjH1e864doglgDCI7GU+sZ6SGTlibVZlk8ja9
	ABjHwCkwREBQRBFz7079s65U7cPIhsQGNQaiyEYGV7WrYIpZwJDEL5Lu0jML9It6dYEi
	SRSZjsgxrN/vDAzMLRsC89IfloIkxPV9wcisE3+SPMHLGFjL4TlwfypNFZHQqnHgX8lq
	J/oQ==
X-Gm-Message-State: AFeK/H1IIS4z2Bn4umSD8z7gZV0pyT9yoUJWEY7NVD+F4Bv315rsMzAu
	znCFs7rW5YCXobiYGBQ=
X-Received: by 10.28.193.197 with SMTP id r188mr9948636wmf.116.1491227117095; 
	Mon, 03 Apr 2017 06:45:17 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	z40sm18298349wrz.67.2017.04.03.06.45.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Apr 2017 06:45:16 -0700 (PDT)
Date: Mon, 3 Apr 2017 14:45:14 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20170403134514.GD27299@carbonA>
References: <1484831765-82329-1-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1484831765-82329-1-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] Add recipe to build qtbase for raspberrypi out of the box.
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
X-List-Received-Date: Mon, 03 Apr 2017 13:45:20 -0000
X-Groupsio-MsgNum: 35373
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hxkXGo8AKqTJ+9QI"
Content-Disposition: inline

--hxkXGo8AKqTJ+9QI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 19, 2017 at 09:16:05PM +0800, Herve Jourdain wrote:
> Supports different EGLFS_DEVICE_INTEGRATION for userland or vc4
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-qt/qt5/qtbase_%.bbappend | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>  create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>
> diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
> new file mode 100644
> index 0000000..aebcaf9
> --- /dev/null
> +++ b/recipes-qt/qt5/qtbase_%.bbappend
> @@ -0,0 +1,10 @@
> +PACKAGECONFIG_GL_rpi = "gles2 eglfs"
> +DEPENDS_${PN}_append_rpi = " virtual/egl"
> +
> +OE_QTBASE_EGLFS_DEVICE_INTEGRATION = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'eglfs_kms', 'eglfs_brcm', d)}"
> +
> +do_configure_prepend() {
> +    # Add the appropriate EGLFS_DEVICE_INTEGRATION, depending if using VC4 or USERLAND
> +    echo "EGLFS_DEVICE_INTEGRATION = ${OE_QTBASE_EGLFS_DEVICE_INTEGRATION}" > ${S}/mkspecs/oe-device-extra.pri
> +}
> +
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Khem, what do you think about this change?

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--hxkXGo8AKqTJ+9QI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljiUeoACgkQJrqo2vax
FPayOw//Z8Y3HJxJLlu6LCPkHbEIaMMmWAB22U7SFHKXEbvxQSLaZB89aefcDJ6L
BZqtRfmtGe0BFBUEQzpHNcNiqqwV/1g8jIudu0DJobE8Eej8Zf7UQ5upKYQwo+D8
VAyRLQayrSNKF0qApFTsTNCsnwgC4Wm72NvTHFjzPbhf3EH5CwTvTSzakDPjn1Q9
wa0/6ES7gtiihzV6SFejG8b65FCY95ZgY9zTsuSZfHfznJeQ0tXuMWkcbJWwO4M1
Knx97Me1HbPUlnGAz71gAJqSiqI/9RO5cwbixHCX9xI//iVrzpt+5OEzb4ljmkSE
J4EFeWbUlqc5V9VVIpH0qpK1wdY/hH8GssDXAz4f3bheHZ7zRwJ+tUpSRv4CHJfs
pxcyTnyIWPOm3iqTh3z+xhk45shVrOR0Yt94rTrTZv5XDUFpM+ascR7OU2i3ZXBh
UgIckuaxtp/JjmjXHLiNwHK95ZXsi+T/6xYUDeCIUEp+n9zu4XymGc0E2NPPu86B
W29rpRrR9YJpes6SvB2Cg5S+37LQdjuy56wZbxAEwtn2TxM1H8wso/phWU47kFx8
p+GASFFwHsV1GB5FzdagiHNGKd94N+9PWFbg8p2nGQjBop5FgPAZClNL7hZhRqm9
SgH19+6G1z1mKi45gXX4igYqwXhPK+xYvRI2GJuvIs69bJG8t5I=
=6QtQ
-----END PGP SIGNATURE-----

--hxkXGo8AKqTJ+9QI--
