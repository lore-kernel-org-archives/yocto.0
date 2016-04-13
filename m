Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7F77E00C73; Tue, 12 Apr 2016 20:12:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2B24E00B9E
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:12:38 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id u206so52430388wme.1
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=CrlVEN+u7sSEUrZfh5vODDXY5SxTkRn82SpZ5zIBil8=;
	b=CDT1hGuSYnSJcSHyTf4Nj8EFlip86A3BKLpPqBluQneKYRYYn4bmGFsg7U+oAiI5Lr
	nRlmsFQ+tLhTN60qpu4aLCDPFuPivyIr1dIL/S9NPhFaNiFVxSp1SHfNABEZ0Dv5tLx9
	hrz/Ja24hQo53dBTk4pcN0MwYHSzXVU8+wK8h4/NuIMnCv3esfCppBGoVz4vpAsaWjQ3
	s+hZQ8RgsNMmtgJVkej3+LS4kQYwwxezfRKzr7kCUA1a+s1cf0zXvWdwsFhSUbQ78Z4K
	ZofqbHmSdckhv0+9NgK84PRCvTu9FbKGvEV0duXK5YP8Q6H/16ND37QQ3oOChPqT8wDW
	aK8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=CrlVEN+u7sSEUrZfh5vODDXY5SxTkRn82SpZ5zIBil8=;
	b=SyZU67uXkqdO/9nk7NXMqRPZkM7bh7ezQGyUzbZCsfzxaJO2yaqp+KI+sREd7NZH0N
	eS8qyZ6qnHMLSxUnCfnjXhFBTzjkAxsJrGAKz2+pCwKHf6SkxVC2VIs04zibL+ZEgv4G
	N6nYhcGw9olPPiwVhcOrQk849QUq3dpA3tayvx+ztOSOjREJVxm+b5RbkPlwx/iqh3Ow
	rwKsiMziynn2mn64EPyEwd0Fhy5TZVNUfduAGXh5WvU7MsAs1+gzNnti0Ot4FNNflAmO
	LbZ3hvMfvrfzh6w0NVDEza5PD662vtouPDLIDrvwaxAAvipKnkB8zEFoFesSCc1D94R3
	TUYQ==
X-Gm-Message-State: AOPr4FVs8Ib6Dgpz7h0NsFawGtdmW1+Vmq5MfSYoL4BlKkW9k4X0plJSUGFQdlCVEpzQyg==
X-Received: by 10.194.58.138 with SMTP id r10mr6954976wjq.153.1460517157895;
	Tue, 12 Apr 2016 20:12:37 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	o128sm25573966wmb.19.2016.04.12.20.12.37 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 20:12:37 -0700 (PDT)
Date: Wed, 13 Apr 2016 05:12:35 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160413031235.GH22139@resin>
References: <1459510631-20294-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1459510631-20294-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [PATCH 1/1] userland: In case of wayland configuration build needs wayland-native
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
X-List-Received-Date: Wed, 13 Apr 2016 03:12:40 -0000
X-Groupsio-MsgNum: 29398
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="N8ia4yKhAKKETby7"
Content-Disposition: inline

--N8ia4yKhAKKETby7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 01, 2016 at 01:37:11PM +0200, Andrei Gherzan wrote:
> Building wayland support requires availability of wayland-scanner to avoid
> build errors like:
>
> | /bin/sh:
> | /home/andrei/work/yocto/build-rpi-master/tmp/sysroots/x86_64-linux/usr/bin/wayland-scanner:
> | No such file or directory
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-graphics/userland/userland_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index ca9123e..536c3ec 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -45,7 +45,7 @@ EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-a
>
>  PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
>
> -PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,,wayland"
> +PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,wayland-native,wayland"
>
>  CFLAGS_append = " -fPIC"
>
> --
> 2.7.4
>

Merged to master.

--
Andrei Gherzan

--N8ia4yKhAKKETby7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDbkjAAoJEHO76Gt+erfPnPYP/31T/h8z6MDZGEVBNDmBzPIR
VA4yC8lr4nIxRh3yrWiKOnAQyvl47mw972pLODTHVEV8zvoRD0kjXBGaU9sHjw60
/bNRGbh+7E8EcxFDqnPOzJH06yBdXlE7qWR0PjvzZrFKOCforQ6ttcs2M5egxj//
8yeRlenVMJLjdZ+BU5cYp4eE2spEa6rzLf+6KLbtn1TkwgunIyeulPmWII0ACNat
3QkQsLrjXzzHe6sIrLBo6/FFeOkk3+Can8PTayaid2IyKGLUHiu6g94861mah9h+
H9d1i2QR4QRQdhNZop/BgapwTzi3m80BVzZzbDYRTiZnMQqY2HivOWPvAvO78wap
zWqyKsjlyaRrc5hbla/rTNFsn1NdgIltPVaDnA9HotH2wWyhUVL51ecMwvjkoGdx
+JWaOVlyiZKsRqH7sKqpUonm9Z60GKXmEvNUlLS4XFv9svpgrB+PmPES9l8cctwe
FwwahAsnyBgJyJipWn6WV9uOZQWci0Puej4a+7cC/PrXplMwlTSBtqY9uKNVMcrr
30+oM1c69fuY+VpdEvIAIHWZRLVd/9+2VjCRy+W1B9pRq00SIJfSGWnDBEC8L54e
BKZ6uSSUOo+S/yxS/eYTvnAAJi09ox7saY1dS9sqTJvmlzw9IsJlYBg4n3KD2FZ6
IYS7ofgIFKOpLDCfVYwc
=nxAY
-----END PGP SIGNATURE-----

--N8ia4yKhAKKETby7--
