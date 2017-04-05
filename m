Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF54DE00985; Wed,  5 Apr 2017 08:36:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54807E00970
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 08:35:56 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id t20so3739133wra.2
	for <yocto@yoctoproject.org>; Wed, 05 Apr 2017 08:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=epIwe841yVOV/+esDd3cmpoECW3Du0ir3WKYismiDtM=;
	b=uIkoVX/u1DxayIZ/mgK42vqwpJRHl9FU9H401bB5Dv/O0+VoWjH6QpZ2DIbGxzVN2W
	ySj9i9I/vaCITIGEAlbpRIX0AIlXvTQhkn35Qrn+6qBk80uX4oCXA5sC4esNn4Xtmy+l
	2e2lbxFXfvamjHILROMzyPWRdSIkWE4Pbotar1IZI9NunZKPbehWRdC4Fd9QFxOiG6aF
	d3zd6epkJWj2jPyCb55BVXlNp6ek2RsqEV0RIQhqfNTzpbzFkwWomdm1T3fDPZqj0CV7
	GSaU/PK8DhY3raWrZBr7RF72Ld/mFGD9n8aEMBKgygCZPken1Oz4W4iyjv52ArWycZCM
	msgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=epIwe841yVOV/+esDd3cmpoECW3Du0ir3WKYismiDtM=;
	b=OxW95gEpymj8nCjBOWm/BRS4XVtIHjbUBLoTc0w0Zbj4IjSp3hp6WlmlBkB/QeYeCO
	LykqEaf+Rcapn/J8HyAIDGS6Rc+ZXpHqDBz//ILwWjXF5DYsuN5JE7QF/YfBh1y6ICfI
	d6jNB24gN0c0hxdFq473/6BEYXDGi7fJ0lR6VWnhqZsf5Ldl4Tpv7io8dagbj244bf3k
	MNpSD3ciu8O19zDp0CsFBWI8d5SgGTpYb8og7UIcpdwwGlux7l9rMdv+4Yq6uGUag1tG
	Pt2ZtNezo2Uxas47tB98SJAucG3Z9nPuG49k8yarg1LWMf06Nee9gvrag1AkU1jFPdGq
	wGlA==
X-Gm-Message-State: AFeK/H3ajks8zHPDJOP6/ZQfyfNiJJN6o48J+yesYApcba2FWJJkyvm7
	WG+sn3K5YyZ9XSebw44=
X-Received: by 10.28.135.149 with SMTP id j143mr19672519wmd.19.1491406556054; 
	Wed, 05 Apr 2017 08:35:56 -0700 (PDT)
Received: from carbonA (host109-159-26-35.range109-159.btcentralplus.com.
	[109.159.26.35]) by smtp.gmail.com with ESMTPSA id
	p7sm26649964wrc.19.2017.04.05.08.35.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Apr 2017 08:35:55 -0700 (PDT)
Date: Wed, 5 Apr 2017 16:35:53 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andrea Galbusera <gizero@gmail.com>
Message-ID: <20170405153553.GM4938@carbonA>
References: <1491327350-31629-1-git-send-email-gizero@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1491327350-31629-1-git-send-email-gizero@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] rpi-config: fix invalid shell variable name
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
X-List-Received-Date: Wed, 05 Apr 2017 15:36:00 -0000
X-Groupsio-MsgNum: 35428
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x38akuY2VS0PywU3"
Content-Disposition: inline

--x38akuY2VS0PywU3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 04, 2017 at 07:35:50PM +0200, Andrea Galbusera wrote:
> Commit da32aac introduced an invalid shell variable name in do_deploy():
> according to bash manpage variable names cannot contain dots. Replace
> dot with underscore to fix it.
>
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>
> v2: also update README accordingly
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  README                                  | 2 +-
>  recipes-bsp/bootfiles/rpi-config_git.bb | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/README b/README
> index c58bc99..9fdd5eb 100644
> --- a/README
> +++ b/README
> @@ -247,7 +247,7 @@ List of currently supported models:
>  If you would like to use the Waveshare "C" 1024=D7600, 7 inch Capacitive=
 Touch
>  Screen LCD, HDMI interface (http://www.waveshare.com/7inch-HDMI-LCD-C.ht=
m)
>  Rev 2.1, please set the following in your local.conf
> -WAVESHARE_1024X600_C_2.1 =3D "1"
> +WAVESHARE_1024X600_C_2_1 =3D "1"
>
>  3.P. Enable UART
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfi=
les/rpi-config_git.bb
> index 8adc938..af55983 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -112,7 +112,7 @@ do_deploy() {
>      fi
>
>      # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (http://www.=
waveshare.com/7inch-HDMI-LCD-C.htm)
> -    if [ "${WAVESHARE_1024X600_C_2.1}" =3D "1" ]; then
> +    if [ "${WAVESHARE_1024X600_C_2_1}" =3D "1" ]; then
>          echo "# Waveshare \"C\" 1024x600 7\" Rev2.1 IPS capacitive touch=
 screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "max_usb_current=3D1" >> ${DEPLOYDIR}/bcm2835-bootfiles/con=
fig.txt
>          echo "hdmi_group=3D2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--x38akuY2VS0PywU3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljlDtkACgkQJrqo2vax
FPYFCg//VsEvP5Bi99bkztPcBGHYRdPZk7+mss1DCrH0hsIYEOKlnIDu+hEO4KE/
t20cA6fq+cz57lQoUVtolu3tq0BvFQQuEaHRuJLbhnF5+L4xokkJoa8qtIV9cRny
cWyB7ka/XFTnx3fbyg7q8GtYPgYQMmKc35jTaJZtKHMku4+x6zKfPAE90AzENJoU
nY7FZibGbLRot//5RurMklRAvrt0H72MKMZpe9NJhduNpN73Bc+pzAibIku3Zpa5
w1BSRKI4s9hiGKF2hKSt9MEOz5Z9KF51V7QZws8aYsDKALdtpDU4G1FloJMh8okb
N9Ntz+2VnAPa4mdlBWFm+xbtVZr/VfZXRjEbKbDTORxS7U4E3ftOu5Is1/RpppMe
Ht+pzAiLPwgMU84t4Ub93dsU17Wee9V++/NpeNAQ3Y3KJc6rHuyXsEMh3HFWg0DM
vGVaz1/8qQHtPumREW97WVqETO3sS2NZ2xfPmFwt+Lu1sUwLcdOUmiAzn0DznKVv
KIMQ+LuER0BpXoPXs9g4KYYsOTcFthGxBHVs9z/uHQu+7C2lrpqLUdCE7DeQaNcq
zmn1hfZUUXq72ZPgsmZOW58iNZzfa/e+BKpSm+TfIQoqt6Mze19JJK0q+jgEzY6U
tq96KdREKNoTL6UlBpTzGawjnWZ7jyfN8ii7hbfitNJJhvopj5M=
=GLnQ
-----END PGP SIGNATURE-----

--x38akuY2VS0PywU3--
