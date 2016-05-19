Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EC7DE00E61; Thu, 19 May 2016 07:51:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FAD7E00D86
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:51:37 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id r12so21692542wme.0
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=vHvJd6hCR8JcaG/rZGbwCtqyj4J24mnBJdStpPZPcks=;
	b=Gp/pT1DdNkP2FimKYzEDVLWnMc6T5N/lZJHOLvjv1RTcNt9WpE2sB+mzM6SfZa7ML4
	/5HATnyT+tZ/hH40Dnpig9lEae0RjCob4QaBg+R9iDyVoeOEEKTE09ZH363i/Xawemxx
	RYEnI3G/i6z77Z0+kIvAGNWsVnGx52gWIwjGWbpHJER7bZikjMFADpl6RD1cO0IDVtV1
	VVjOFnodZ3KlPaN9jCS7areuMHOFmPt818jgHjaD49V/JJpI/HClc4pY/L3OBgHWXTE9
	+WwwaVLl6Zmx6xu1cJHCuIlPdNFQ8YNds7EBdbdxwE296AELnETscdVisQG+FwzlFM7C
	kHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=vHvJd6hCR8JcaG/rZGbwCtqyj4J24mnBJdStpPZPcks=;
	b=FnjoBHOXkENJRXRZgPhBgC2F+aKvLTTO0Q98gwoTIx5DjobMnfzEKLtpys305QnlYx
	QSv0pu70WfD0/idKxgo+wIEX2VYIFhB/+8YCGhvCOnl6u7hKCfrSB/waVBV9SRA0zUXG
	OT/00IRiIQLN4ZpVTqigqVc86xXtnU4AKkpNzGOoTr5JZtKbBlG1mVczkImU+FYH5jBq
	l2HriDWc179UMSGB9sFenPMSe9/mGpsK1KoN20L6d9xMqXH7J5LMuCGqpVntpunka6ZX
	7MBDGaxYZsruplqM2oGzHMa1V/UV3gRP7vD1D4Lm34x9GdSKiTelmyhgLFOowuzlFE5n
	RIfA==
X-Gm-Message-State: AOPr4FWpjVexPOCuu6Nn7D4lmDP/IEDmkqK3sv4X5Hv0QRRRQ9a3VkH+ZB7BDHkI5GMkNw==
X-Received: by 10.28.215.197 with SMTP id o188mr15045352wmg.14.1463669496718; 
	Thu, 19 May 2016 07:51:36 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	g3sm14787088wjb.47.2016.05.19.07.51.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 07:51:36 -0700 (PDT)
Date: Thu, 19 May 2016 16:51:34 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160519145134.GD3601@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-7-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1463574082-126198-7-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 6/8] Support for vc4 graphics driver: modify the wayland configuration for vc4
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
X-List-Received-Date: Thu, 19 May 2016 14:51:39 -0000
X-Groupsio-MsgNum: 30073
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EY/WZ/HvNxOox07X"
Content-Disposition: inline

--EY/WZ/HvNxOox07X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 18, 2016 at 08:21:20PM +0800, Herve Jourdain wrote:
> This patch series enables the support for the VC4 graphics driver from Eric Anholt.
> Configure the configuration options for Wayland, depending on whether 'vc4graphics' is in MACHINE_FEATURES or not.
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-graphics/wayland/weston_%.bbappend | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
> index c3a7421..76bab9f 100644
> --- a/recipes-graphics/wayland/weston_%.bbappend
> +++ b/recipes-graphics/wayland/weston_%.bbappend
> @@ -1,4 +1,3 @@
> -EXTRA_OECONF_append_rpi = "\
> -        --enable-rpi-compositor \
> -        WESTON_NATIVE_BACKEND=rpi-backend.so \
> -       "
> +EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' --enable-rpi-compositor', d)}"
> +EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"

Wondering if having this in one line would be better.

--
Andrei Gherzan

--EY/WZ/HvNxOox07X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdL2AAoJEHO76Gt+erfPxUIQAI8tAOyIfRvo5710DxrBsiAM
lL2SKGbafJF5Dv0Vu4+KhFVZatlAZoY8PvfxRMZAGt5o8y/PrydaGx5UVghiz5TE
DCTKj6OzLqDU53O0d/V1PDqfCuw0M7bKtJWGFjnunHBhhPjQAWFVgAXaEhxmOJd+
oUQyocHbGnV4pt2CAGrZEEGB0boUdzaim9fB7cEH4QaH7HJiPpJ1FeZACYCK6G4s
ssj7ilpTezF0gakU9z3LYjpFebLUDgkMxgD/oosHOOrpWQdiwRckuJEQWx50J6n2
60B9FNy/4a2N8J6OrhT3u2osXDIYMVdmB+2agfTQPOnAbujF6mqmykGgKR3mCbeA
yIDSVbx9Jl0Ofthv/a1yI5gogQ6UAIHdby1PEHl5rRjusynbiSYGDsJnDleLg1tX
FGVy+lQ5eLeFkzRmbZxipk9MSSLwKnfEfmM42ICGln/k5kyUiJPiMKn1h2cDMcJQ
1u3pajzaeYmD16134+wy4t3hghnJPzPJZ9SfSO3bnaV3fNk3aU732/WaN3kWF7SK
vjCfLje+wpOQ7AHyZjN/1ZrVFqIDgTV6ebdMlIuFY7xRimbZb1iKwIX0GOTqEp+z
wYKbktV1WNiYnR94u8tAnVHWCMqDPA5x7NjeJFRadeF1qJ5HFYsvoss3BaimX+uI
4fFTn9ERQlqQGj4qgZPo
=XQln
-----END PGP SIGNATURE-----

--EY/WZ/HvNxOox07X--
