Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4A8FE00C82; Tue, 14 Jun 2016 17:09:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C380AE00C7D
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 17:09:55 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id r5so2065072wmr.0
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 17:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=LxfVSXTp5qucxdYh1X0Q4S9DByUW4ATzCloPiE4RqKs=;
	b=EqxZtvk9EN9u9tkfYpGVUx4BOduCupzQ/mEfjNCFsjEwuz+Q5XXgXhbnIu1PHl9jIg
	Nc5ZM1SVwEn+M/z7rU8Wikh31RVVMBaJkv/oYM+7tmJOZWIb8HikQ1jPtol7nKaAz6we
	xoNUmTTXkF53KZ2LnX1C6xcQElDkpD7zplM8K/eRu2J/+6JXAimV/4NShDnJhSvNk3TR
	JxNvQaW4GbBYVKMUS3USF6ENeP3ggxJY5/x2NjqMlqji2o69ZFNX5IEVouKjX7b8e1xi
	Spu6voRIdHNVhmE0x+nnUz4CTFrb5hFqN+gjkqY3UPV/kA/pImjbYbDDEPSzAYffVdKi
	cIJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=LxfVSXTp5qucxdYh1X0Q4S9DByUW4ATzCloPiE4RqKs=;
	b=D1PNZ0+xoOQ0yUqVvQ5KXrSsnbWiHlIiRISSP91itRqmSxq3q6xsFkrGGqPX9v5yJ4
	wFTTCb086L6cAIB2amHv7e7SDF6MV5r+ZOKLSlMkwNNyivF7I6FOsABGEW9/0r8F+hk7
	okh7xFXoAPumLAmJ2M0nl9m736Frupg2gYyQIJh2CKabLNcu4A3I+/SEEplUBWM03Vj2
	uBl7DKlfCYOj1PWFe73dmwKjJqXSl8/+snm+g9pkGfmejwxJA289iE0NTjT6/eWYdibX
	tfc+BKRfkId1BCr0Vq+rvyFCNS1oUsq49CyXtG6yvWMcluGOT+HVQ89E4HC6U7o38J4A
	zJ8g==
X-Gm-Message-State: ALyK8tKtIxa2z+nxj4Y/6nglid1U8cgh7770EqUtE3Xvfi4flE/F2Mp9yoAu3KXbx+tu+g==
X-Received: by 10.194.115.130 with SMTP id jo2mr3532882wjb.82.1465949394746;
	Tue, 14 Jun 2016 17:09:54 -0700 (PDT)
Received: from resin ([85.255.232.185])
	by smtp.gmail.com with ESMTPSA id k62sm826853wmb.7.2016.06.14.17.09.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 17:09:53 -0700 (PDT)
Date: Wed, 15 Jun 2016 01:09:43 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160615000943.GE22479@resin>
References: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
	<1464641195-88380-5-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1464641195-88380-5-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 4/5] linux-raspberrypi_4.4.inc: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Wed, 15 Jun 2016 00:09:58 -0000
X-Groupsio-MsgNum: 30527
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0QFb0wBpEddLcDHQ"
Content-Disposition: inline

--0QFb0wBpEddLcDHQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 31, 2016 at 04:46:34AM +0800, Herve Jourdain wrote:
> Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
> Patch the kernel, which has faulty rules to generate .dtbo the way yocto does
>

You need an Upstream status here:
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
I think this would be interesting to send upstream too.

> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  .../0001-fix-dtbo-rules.patch                      | 27 ++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
> new file mode 100644
> index 0000000..ef04a72
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
> @@ -0,0 +1,27 @@
> +diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> +index a2e7cf7..673c1cb 100644
> +--- a/arch/arm/Makefile
> ++++ b/arch/arm/Makefile
> +@@ -333,6 +333,8 @@ $(INSTALL_TARGETS):
> +
> + %.dtb: | scripts
> + 	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
> ++%.dtbo: | scripts
x> ++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
> +
> + PHONY += dtbs dtbs_install
> +
> +diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> +index 3079c4f..6cc3766 100644
> +--- a/scripts/Makefile.lib
> ++++ b/scripts/Makefile.lib
> +@@ -293,7 +293,8 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
> + 	$(call if_changed_dep,dtc)
> +
> + quiet_cmd_dtco = DTCO    $@
> +-cmd_dtco = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
> ++cmd_dtco = mkdir -p $(dir ${dtc-tmp}) ; \
> ++	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
> + 	$(objtree)/scripts/dtc/dtc -@ -H epapr -O dtb -o $@ -b 0 \
> + 		-i $(dir $<) $(DTC_FLAGS) \
> + 		-d $(depfile).dtc.tmp $(dtc-tmp) ; \
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

--0QFb0wBpEddLcDHQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXYJzGAAoJEHO76Gt+erfPJ0wP/ilLZShYnzW3s0aU5bSLUf1b
TsNYmQJuhKdk/1Fet3mLNqvgAR0iGM2F2H8MR8289NDIXpUMQDZNNTadsPpIYKDG
RBiAnhEBi4Q77pgkbS4kdbage8I6qlJUT9TdufUzGNgs1yiSeSqW2BSjY8XBiIIA
J0A03mUlfrk7EywtLrd9+JWpaxD7bxg9SEYEZz4PfqsPX3UR2gudOIshBlYKHpx+
w5OCVxUORcEOK9ZLpH/ZFMW07YmanI8E7Ukoyc2u0UtsfWCzhJprWpEYCE2jUXJS
dy5yDe8QMOYqwuH+w5CEPJj3ZfCkGkAuxWLxE8XhGfl2rH9D/nAKAzecEkSfcAEr
xYHbAFMiC9JW7hvhHmejpH9i2w5oTRVmeUwtsPx7H9dcAl4I3M5XsxKzZXzN4RGN
gezbizO0zdEYj5At/1hPhWY/K9LGsW4kGZcRxfjHJBv2w2PNpLSCUV50WKB/+SRF
tQGwnkKk+98fjrQvXZhDwM2b9SpOnLaytawmXFyyT2LXcQoaIxnGDkyBPDhVEFEW
SFzBl/d85/qEI7dqazbIu3/JTTB6UwBAVuksl1A4BNickX6kN2UCDDxl37smS5k7
wM08XRzIXEICC9KJFdAdx0abvbrGG6F2E8B6ZsldicRBPJzrrBWYgxX8h5bE6sff
7eRbEdP3P2Mib2UIBInu
=rCZG
-----END PGP SIGNATURE-----

--0QFb0wBpEddLcDHQ--
