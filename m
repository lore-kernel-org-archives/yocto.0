Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0BCAE00E68; Thu, 19 May 2016 08:08:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E723E00D86
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:08:57 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id s63so7252332wme.2
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Q/j4cSAcP0E++DJGJXZ+B0Tg+m0mPNYUN1SwV8753Fw=;
	b=k/lMieYEdNcMXe7QVaod1afgqcHSeqtmgNgdiVDJV/tGqV7/H+z3CIXatCbwC4LjpL
	Aq7rt4mUDi6AYls+0b7myQz5PMB41fJDh7ymlC3mLHrc10akg6z/86pimRbU1MS9tErm
	8J+Jk0Bf+S7UdlWmR6iKtOvu0mdODPxFe4JBvlydWNpeb1HacBxwQtOF5s5O7/4RHiXV
	JoGjKcmjGCt5WAn/ivorxYcdBhuPZ0aj4dkwQ09B+Auhp/hQxBGv93Vn9EjCUDy25TBT
	EQH/vhtFaa0zmZlvV6F9laJCZvFwwub5uVdHRYQUOLlTfwCo1wk3V2j3oZneWghnH/Cw
	jeYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Q/j4cSAcP0E++DJGJXZ+B0Tg+m0mPNYUN1SwV8753Fw=;
	b=XjG7IQVR5bOToT0ExR73ZPJFF28UxZc7M0q1oCNAoHb5QJGFmakQvoWNmV/cBIc+IP
	uP0Pei+d8/0+w2W1lkFBVCfUw0dD5LxF6WIgmV/0wpviBFGGso6VCFm2ApHe29AEB/ts
	qLtNDFSjQpZtFLMPgGAENT435mfsEtZzI8/5wuTTAuYh3Wrf0Xf+9XFXi4t3S2tWfJeC
	WfX8Ca5q++qsd+0aYnVfba3aHNLT6esTeAAmVMbRea+jVjf2C/uERTcLSemtb/wwtkMA
	xuHGKeYjCRT/9hzzHNzY587CVIesoVtkBSGi/UC1f6eO8a9wXcOyO7FM65ywKXR1r/q1
	zqBw==
X-Gm-Message-State: AOPr4FX4yQF1MTt8SsZCEfetrgyKxa3noX3LM1AZJc78nIUqryhRxvDK3TdPlfs4RexACA==
X-Received: by 10.28.9.137 with SMTP id 131mr14172831wmj.13.1463670537064;
	Thu, 19 May 2016 08:08:57 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	m3sm14884636wjc.27.2016.05.19.08.08.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 08:08:55 -0700 (PDT)
Date: Thu, 19 May 2016 17:08:49 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160519150849.GA9848@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/8] Support for vc4 graphics driver: add vc4-kms-v3d to the overlays
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
X-List-Received-Date: Thu, 19 May 2016 15:09:00 -0000
X-Groupsio-MsgNum: 30076
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline

--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 18, 2016 at 08:21:16PM +0800, Herve Jourdain wrote:
> This patch series enables the support for the VC4 graphics driver from Eric Anholt.
> Add vc4-kms-v3d overlay if 'vc4graphics' is in MACHINE_FEATURES.
> (This patch has a dependency on the patch that enables the support of .dtbo overlay files)
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-bsp/bootfiles/rpi-config_git.bb | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 4bc8eb7..79e436d 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -19,6 +19,8 @@ PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
>  PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
>  PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
>
> +VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
> +
>  inherit deploy
>
>  do_deploy() {
> @@ -102,6 +104,12 @@ do_deploy() {
>          echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> +
> +    # VC4 Graphics support
> +    if [ "${VC4GRAPHICS}" = "1" ]; then
> +        echo "# Enable VC4 Graphics" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtoverlay=vc4-kms-v3d,cma-256" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt

This is definitely not a good idea on rpi0/1. Let's select this based
on RPI version:
CMA_USAGE_raspberrypi = "cma-128"

Or we can set a default variable on this configurable by user. But I
would like to have a warning mechanism. Maybe a python function that
will check if we want to build rpi1 and cma-256 was selected issue a
warning.

> +    fi
>  }
>
>  addtask deploy before do_package after do_install
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--PNTmBPCT7hxwcZjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdcBAAoJEHO76Gt+erfPbCAP/349JgL9vG5PjWKuyBU8nph/
XJLYyEMlQQbQSyTp0uytLQ49WuItqvHlaJh4X89o53c7+WwdOtQKt2RsZrMGitaW
QcDIx7J63R6pfwJxujwr3eAv0z0z7IExYuKGF2bYp0fXLeS8ZxEjm89nshvn4uz+
ITavIA7nGq2nxveriuGLQONuSTNaeQi82xYXki1o7bXCCrjraBu61J/AtYvLTL7N
WQrTz7VqP7bl+Y1wNRS74BOVsbxkx3aZ/j7MW5XXaTP/pTN6HVo7LzKcTmFuEo3K
IEbGrxo2h7vT9qbjlLvunxCXFlAqKdvakBXyxjFdDMhUV17ifhw7cGB6Wpq8+tes
dHUDEH3LcDIsK6GkXTUotg7pZufPOIptZR6kidMhpj4hlV6qP6YJRc4ewFLR3rqa
eeLv/akqCiIc42Yjw3OnaddT9GvgY7KRIHYGRNmRS/1OAE1VdjaJOQe/MVfkwrH2
11nII3NP5SWHqN/2h33w+sb3al4C0thkQ/uOGr0CnqzLcy11+8BkwmYG4Kwf9hX+
Sb3Sv1IlWM6BKG0QHTDWmd0rU6c+a6zz8TJS7ImQ1Dfzz1GPPQMLBV4zSxM+N1N4
Lzur+Hz2osP86PUJRdl0e6PKUNixaJgRMTDyb2atdfQQR5lDx3pdehGMAI0EtbRx
VXcpSK0Q5unvGbDpYDLf
=4G0F
-----END PGP SIGNATURE-----

--PNTmBPCT7hxwcZjr--
