Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 695BEE00C2E; Wed, 21 Sep 2016 03:39:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CDFDE00A48
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 03:39:41 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id l132so7802491wmf.1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 03:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=kYMpbE6uNcec1E3Hl/X1w9FDbdduycBbBmAnHcVQ0+U=;
	b=sezwfeLKAHnuEjomq6HXZoEMXTLzAgOOcw62pYCLQyNdNTFevmf5nmg0q0ggcx7vrU
	XTuE5norpAsf7B1uQlCITzSFFB7PlVl1wCItxO/7yGDetW/ICRcOWcGfC1+XpI9CXafu
	eR6GyC81jGulZR3D1YNP8hX0gCbTCo70mdGw9YljU4PRpyOrU5A9LGq/8Y8EYKErGmr4
	YkeWlvuGcm3tDljsxpH8I1IRp7G/quy3dLzJU4glsLZeAEoJcxEbEnFPtJzgcB1NJT4d
	Mc/Tbrd9urLd89lz1xiXSjQtv4ra0man2G//jF1O3NqgiBZIZ2yR1WwXfNuOg7vSSbyg
	Mvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=kYMpbE6uNcec1E3Hl/X1w9FDbdduycBbBmAnHcVQ0+U=;
	b=HH8Lm65kfIFKLibz1lLbrdItPWu8b56cAmInBnIdqwcC5hkSmhQAgPEx5ySY0brFYD
	baKNhW1BQPYQSvWx//JtNHUzXjZg2A1mR/4Sq5JP6y4m3iChSq4ctFn3poMjBCjfCxv8
	BywLdrF9u+TXpNLQ5lqI86JL3HewoNf7pA6Uhy6yOIUkE4iytPoSts8u3daPXRjP8aLm
	tBKNj8XtTXp0FXMHvfPvgrEIrPmFxBP2oBArolYvLQUtdNFRtMJ6HwqdyC9IBLblbli7
	6SywusdE9331euqnG8k7+2Twnl3aRUsG8TLa1VuHUfCAY5mv13Vns5ZjQ3nt9NgCXRZP
	CGiA==
X-Gm-Message-State: AE9vXwM3XdLTwbLimulb9O52Sby7wg9vlskWDcWEmwkaC6I8STOsKc/at6xvKB8GB+XOcg==
X-Received: by 10.28.166.196 with SMTP id p187mr2396837wme.121.1474454379768; 
	Wed, 21 Sep 2016 03:39:39 -0700 (PDT)
Received: from resin (host86-179-71-51.range86-179.btcentralplus.com.
	[86.179.71.51]) by smtp.gmail.com with ESMTPSA id
	f15sm31875091wmf.8.2016.09.21.03.39.38 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 03:39:38 -0700 (PDT)
Date: Wed, 21 Sep 2016 11:39:33 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160921103933.GA2403@resin>
References: <20160916165436.13766-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20160916165436.13766-1-andrei@gherzan.ro>
User-Agent: Mutt/1.7.0 (2016-08-17)
Subject: Re: [meta-raspberrypi][PATCH 1/1] bcm2835: Compile examples correct LDFLAGS to avoid HASH errors
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
X-List-Received-Date: Wed, 21 Sep 2016 10:39:46 -0000
X-Groupsio-MsgNum: 32017
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline

--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 16, 2016 at 05:54:36PM +0100, Andrei Gherzan wrote:
> ERROR: bcm2835-1.50-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary:
> 'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/spi'
> No GNU_HASH in the elf binary:
> 'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/event'
> No GNU_HASH in the elf binary:
> 'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/gpio'
> No GNU_HASH in the elf binary:
> 'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/i2c'
> No GNU_HASH in the elf binary:
> 'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/blink'
> No GNU_HASH in the elf binary:
> 'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/spin'
> No GNU_HASH in the elf binary:
> 'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/input'
> No GNU_HASH in the elf binary:
> 'build-rpi-master/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/bcm2835/1.50-r0/packages-split/bcm2835-tests/usr/lib/bcm2835/pwm'
> [ldflags]
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-devtools/bcm2835/bcm2835_1.50.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-devtools/bcm2835/bcm2835_1.50.bb b/recipes-devtools/bcm2835/bcm2835_1.50.bb
> index 634dac8..9cf6f48 100644
> --- a/recipes-devtools/bcm2835/bcm2835_1.50.bb
> +++ b/recipes-devtools/bcm2835/bcm2835_1.50.bb
> @@ -21,7 +21,7 @@ do_compile_append() {
>      # Now compiling the examples provided by the package
>      mkdir -p ${B}/examples
>      for file in `ls ${S}/examples`; do
> -        ${CC} ${S}/examples/${file}/${file}.c -o ${B}/examples/${file} -Bstatic -L${B}/src -lbcm2835 -I${S}/src
> +        ${CC} ${LDFLAGS} ${S}/examples/${file}/${file}.c -o ${B}/examples/${file} -Bstatic -L${B}/src -lbcm2835 -I${S}/src
>      done
>  }
>
> --
> 2.9.3
>

Merged to master.

--
Andrei Gherzan

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX4mNlAAoJEHO76Gt+erfPd8wP/1FX27St1/VF2WeFinbdTN+s
rKiEw7a5qmsumMso3Og0drqJHH/yIJ3NK/GHo4SnBkAJ64PBvUTckpSCBZcVycsS
GTShEY4kHhU2nW6lRwzzAgzXTasFWdLaz+krHI69jDuX/QMV4CTFgRqXmzW+nZzK
PAsot+3UlraXW1aAOESnVq5DXES8dA1XhydsmTbihSfSBJMUXEyu/KzKXc7VJfAI
s4V7QAW+KWHIk0PxPg4HJX2J/VZzopbory4pwcoaWvFTgf/xgJ6n6wANo9pPuzhf
CyOpU2h8D6NJSxhtDDdioRO4QSQ6baOXI4bxV7pwvEsaFVGneFrJ8/dXhT4MvHQQ
t2kMXQBenR/Pt/3qCWJfYWlaZEEhJj4oFK9rjUBryoL28hqwvWGS7fujcaYt7Prm
k+Ns0hmA8VCyx8xLlQ4VQUYE0qgOHdxDLwACy/QObEzIYI/eZ9VF5kBERc1IWOdo
GTKsBaRH/ixj7dCIGQVsrf8bqRbz1/fAMQ9m/fWQLA7h20z1YDdPoOWzwX7YHThE
dED+eBWLS+IBNo82w5/+OzfClrNIaM/lOCvmAxLyYwfafXD2aSav8Cvz19RHdBWI
zo1Ivq3VkJE6nhyunvNsYNJDL00PcWcFmcrGLkrQ4ipglVQugCc2sAOTMauC6eL0
D1znJoSYVTSXO+ExPK87
=IBqH
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--
