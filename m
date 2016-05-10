Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 891ACE00D69; Tue, 10 May 2016 07:53:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E1C3E00D57
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 07:53:05 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id n129so182351308wmn.1
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 07:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=W2uJPIRSsYLsoADzUUaHFbXWu1jSnV6S11uiSjNv9Kk=;
	b=T/GqOspxcnwV12G+xmGv/fXELisOZzxq+5KueSUEZrDioVidOZXwTML7/zcGnghjro
	xwNb6kQRr4gzDUOQK+ZDbqeCqrPG3kOKAauCmM3Uqpgs4vnNind6nYVqfW3eooX+Ihlu
	51N0lyuZM3sEonobewDitCa0YP5lW4d5P6kc/qE2b5e9fpF/e2uW4qKyZ8ZX6CpF30hZ
	j7rI/sGQkgGAIDzUAQjC7APl6FBj6xPdUOWQolHtM09I+86S/rmJ/6VMZ/7wAS+C8SEu
	8X9pU0BmKuYMLVdF38Iu/Ykp4yMW6UxvK/kb4U5tttW4+fRMUIoDGjB9SBHh+0aUCcj6
	zVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=W2uJPIRSsYLsoADzUUaHFbXWu1jSnV6S11uiSjNv9Kk=;
	b=FHvQC8dEw//Dqz6BRSCpKUZnEmSb3sBdsGQ9yaLq1+caamLnNnM8v+RP8+mi7yyhOa
	LP6R29D/8iowmk2cWuJtuLIwNl9jyAi1J0X4VqsHukzpjFVpTXpFLfaTgOpaf9Mtzn4m
	RP8aXGwEybcm8q8BlSzyBrgv+bJ/wNHgn2LHFGNmuY2VsY1lUujsaEs3oHhJEjA8CD63
	Ih85LO0JwKcRSCkERg9h0w007gDF3gigLRDe9C9ioBIJiaxmLC+RsgXXA1gazylZCjuL
	unKty+X3fMj3A3mlVlPFZ1qbDBS6Wk1mYOyX0+vnudDTKYxmpa+cG1d5qxqZ0+UxNGom
	ENwg==
X-Gm-Message-State: AOPr4FXaCuQJd2ECyBGT/nuBgDgfPJPWUyymn83MtUYLEbElDHzy1+DQSMvoQ0ANzZXM/A==
X-Received: by 10.28.17.211 with SMTP id 202mr15981520wmr.59.1462891984885;
	Tue, 10 May 2016 07:53:04 -0700 (PDT)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	lm1sm2940633wjc.25.2016.05.10.07.53.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 May 2016 07:53:03 -0700 (PDT)
Date: Tue, 10 May 2016 16:52:57 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20160510145257.GA19964@resin.home>
References: <1460399310-15649-1-git-send-email-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1460399310-15649-1-git-send-email-twoerner@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-chip][PATCH] u-boot-chip: fix md5sum
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
X-List-Received-Date: Tue, 10 May 2016 14:53:09 -0000
X-Groupsio-MsgNum: 29926
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline

--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 11, 2016 at 02:28:30PM -0400, Trevor Woerner wrote:
> The u-boot master and chip/stable branches have diverged such that the md5sums
> of the License README files are now different. The latest master branch has
> added a "SIL OPEN FONT LICENSE (OFL-1.1)" license.
>
> diff:
> 	--- chip/stable-README	2016-04-10 02:05:30.783023170 -0400
> 	+++ upstream-README	2016-04-11 13:48:34.973027406 -0400
> 	@@ -67,4 +67,5 @@
> 	 IBM PIBS (PowerPC Initialization and		IBM-pibs			ibm-pibs.txt
> 		Boot Software) license
> 	 ISC License					ISC		Y		isc.txt			https://spdx.org/licenses/ISC
> 	+SIL OPEN FONT LICENSE (OFL-1.1)		OFL-1.1		Y		OFL.txt			https://spdx.org/licenses/OFL-1.1.html
> 	 X11 License					X11				x11.txt			https://spdx.org/licenses/X11.html
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u-boot-chip_git.bb
> index 2342478..60db3e0 100644
> --- a/recipes-bsp/u-boot/u-boot-chip_git.bb
> +++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
> @@ -2,6 +2,8 @@ require recipes-bsp/u-boot/u-boot.inc
>
>  DESCRIPTION = "U-Boot port for C.H.I.P. boards"
>
> +LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
> +
>  DEPENDS += "dtc-native"
>  PROVIDES += "u-boot"
>
> --
> 2.7.0.rc3
>

Hi. Merged to master. Thanks.

--
Andrei Gherzan

--d6Gm4EdcadzBjdND
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXMfXJAAoJEHO76Gt+erfP/T0P/RK6+ASsXzJaoEwt/I8+0cCT
GzUn3xApss6geROpoWcaKmXanOOSZI7vePbYKlxCpnBfrK5Q613lWLdEPG7cZS45
BZpGdJUzxIa1BAH9FVhRsKe5MINiMa8g5pqw4b7jETrMnIN35i+mqRVFVT4Stor3
GOoIkaAl6B2UECXyG7U1h6bCKN6k/wVzvfj/5y6IrXWXRxgCWXQPypeswNc+TmwV
jGhm8OkUmhL2ieO8thFkB7NWyQdMK/hdpZmz/VJQ6k3q05+zFg+p9cth4pOQZSmk
Dko92hi2tbpt6bEeqd8qDIi+6WAGzPz6DtdBDs33pqtV6OeAxME7X8QdbHKBU+mg
OY+ZirYY07GOcMjF28SoT7ZV4oyAQn7e/j4GAsJZ8SB/Q/hQrAo5ZwuM+6XjdT6S
V4T85Cix2Z9LqptV/UgaRxbxJvPCcmhju29vGwvi7PZifsp/beBe7h1iXYAjKeG8
kyOuNve7R1JJ6ng2Co0Dens0OpQ+k9tyifkrT2K4R3vv/2X4U4c1K0JVTKAZ/FwV
3NEyE02zNIcxlE8UmQ/byzooc4DgP/S2RU64R/szTuLCXsW+e3MpRD0fFR5V06E+
/i3TL01Rlh1M91XkpI7O1OgZnKRbyZf/9zKODyfiTdzuih8f0TYvQqL+uW/k/6/S
64TntbDk0XEkDPge3PfH
=XVIj
-----END PGP SIGNATURE-----

--d6Gm4EdcadzBjdND--
