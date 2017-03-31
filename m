Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8262EE00AA2; Fri, 31 Mar 2017 12:02:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39E0FE00A5C
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 12:02:55 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id o123so19267782pga.1
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 12:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=Ya0WIG2my1M1DCvcF4UiRjlZWmZst8yFK+7U30jig0w=;
	b=hs8Ha4dbvHwPD1JahhtLfol6Smju5k8/5bfDEsY4/3Hxf6zWQ2xsjEKjx6A1cNWAXr
	F6/iM+4Y3ZKYcaqn5egmk0Okgh6a0KOzEanlIpOcWMzRkSId5Ewlr81Rb4DqnNLyl13x
	9QBMQrxO1D+XNzB9wIIw89bvmBHRCJyId2aYvaTOqKgZomv8E5p/m4jeKIWVr8awrlAA
	hIsMSYhTzKFkQXhrL0HfxeOZ7r4vdEWKdZZT3XyhsKH3CBllkBdLBSJ7GeWm7w59eAs1
	a2CXusD99X3N+5y2yYO2FWQZj3dJBC0m2HBK8wlXZPFvuHUorK9VN8IA8MKM2bWZu9WN
	Y+tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=Ya0WIG2my1M1DCvcF4UiRjlZWmZst8yFK+7U30jig0w=;
	b=DTvKDG15WlE8IBFn0upKXKHUNih3TfQqQCl5lwQYs2NzSR8YMfe4agUjlmH96lQcyx
	cDhEd30jHpc9L20Lhs+RWa5AV2NWy7eZfuzUhhiM9mDXG/B+oNA/SvGfdhzPz1eWsLrB
	X0wSBpVrxl7nNa3ZMHus9261SiZfDlav9hHfjNYj3u/xraSklqBo8KnXa/OzOCnUy/ZD
	SN25u061XxqRVJhYZrP6+r00bCo2jo/+3fcKJtLSDTm+QQU31tRX4gG1cPv1le1jgxil
	dbL9bZUEvv4qFXYC2g17YO4nllBDPyWijQUjt/eUZCaI7e3muiLNxTSJyfoJ+tLcGSm9
	BXHw==
X-Gm-Message-State: AFeK/H0aQ6BnrNN62V88Y+Ynpu+ozuy7qizPT3ilqMEqcZqoCQdwwSCa0DZmyClpUe1+NQ==
X-Received: by 10.98.18.66 with SMTP id a63mr4095370pfj.188.1490986975169;
	Fri, 31 Mar 2017 12:02:55 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:dd64:9ebc:182c:f6cf])
	by smtp.gmail.com with ESMTPSA id
	s17sm12024545pgo.27.2017.03.31.12.02.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 31 Mar 2017 12:02:54 -0700 (PDT)
To: Rob Woolley <rob.woolley@windriver.com>, yocto@yoctoproject.org,
	andrei@gherzan.ro
References: <20170331181926.8976-1-rob.woolley@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <c8b3c79c-8dbc-904a-c72a-07dbe09f9260@gmail.com>
Date: Fri, 31 Mar 2017 12:02:46 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170331181926.8976-1-rob.woolley@windriver.com>
Subject: Re: [meta-raspberrypi][PATCH 1/1] pitft: Add support for pitft35r
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
X-List-Received-Date: Fri, 31 Mar 2017 19:02:57 -0000
X-Groupsio-MsgNum: 35359
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="5OJNQ3Km5sf3wp0rMlptnuobRvFhJEckS"

--5OJNQ3Km5sf3wp0rMlptnuobRvFhJEckS
Content-Type: multipart/mixed; boundary="OMJcMWjrpCHucaXXlcdqDSUFP60mVW8hU";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Rob Woolley <rob.woolley@windriver.com>, yocto@yoctoproject.org,
 andrei@gherzan.ro
Message-ID: <c8b3c79c-8dbc-904a-c72a-07dbe09f9260@gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] pitft: Add support for
 pitft35r
References: <20170331181926.8976-1-rob.woolley@windriver.com>
In-Reply-To: <20170331181926.8976-1-rob.woolley@windriver.com>

--OMJcMWjrpCHucaXXlcdqDSUFP60mVW8hU
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/31/17 11:19 AM, Rob Woolley wrote:
> The support for the PiTFT 3.5 inch resistive touchscreen is optional.
> It may be enabled by adding the following line in local.conf:
>=20
> MACHINE_FEATURES +=3D "pitft pitft35r"
>=20

Looks ok, I have staged it.

> Signed-off-by: Rob Woolley <rob.woolley@windriver.com>
> ---
>  README                                  | 1 +
>  conf/machine/include/rpi-base.inc       | 1 +
>  conf/machine/raspberrypi3-64.conf       | 1 +
>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
>  4 files changed, 9 insertions(+)
>=20
> diff --git a/README b/README
> index 65a1e5f..a5c3d38 100644
> --- a/README
> +++ b/README
> @@ -240,6 +240,7 @@ the modelname should be added as a MACHINE_FEATURES=
 in local.conf like below:
>  List of currently supported models:
>      - pitft22
>      - pitft28r
> +    - pitft35r
> =20
>  3.O. Enable UART
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/r=
pi-base.inc
> index 092cbeb..9bcb91d 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?=3D " \
>      overlays/lirc-rpi.dtbo \
>      overlays/pitft22.dtbo \
>      overlays/pitft28-resistive.dtbo \
> +    overlays/pitft35-resistive.dtbo \
>      overlays/pps-gpio.dtbo \
>      overlays/rpi-ft5406.dtbo \
>      overlays/w1-gpio.dtbo \
> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberry=
pi3-64.conf
> index ca10ed9..0efe3ff 100644
> --- a/conf/machine/raspberrypi3-64.conf
> +++ b/conf/machine/raspberrypi3-64.conf
> @@ -23,6 +23,7 @@ KERNEL_DEVICETREE =3D " \
>      overlays/lirc-rpi.dtbo \
>      overlays/pitft22.dtbo \
>      overlays/pitft28-resistive.dtbo \
> +    overlays/pitft35-resistive.dtbo \
>      overlays/pps-gpio.dtbo \
>      overlays/rpi-ft5406.dtbo \
>      overlays/w1-gpio.dtbo \
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/boot=
files/rpi-config_git.bb
> index 20ec343..0fd9cea 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -18,6 +18,7 @@ PR =3D "r5"
>  PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d=
)}"
>  PITFT22=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0=
", d)}"
>  PITFT28r=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", =
"0", d)}"
> +PITFT35r=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft35r", "1", =
"0", d)}"
> =20
>  VC4GRAPHICS=3D"${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics",=
 "1", "0", d)}"
> =20
> @@ -99,6 +100,11 @@ do_deploy() {
>          echo "dtoverlay=3Dpitft28-resistive,rotate=3D90,speed=3D320000=
00,txbuflen=3D32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> =20
> +    if [ "${PITFT35r}" =3D "1" ]; then
> +        echo "# Enable PITFT35r display" >>${DEPLOYDIR}/bcm2835-bootfi=
les/config.txt
> +        echo "dtoverlay=3Dpitft35-resistive,rotate=3D90,speed=3D420000=
00,fps=3D20" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
> +
>      # UART support
>      if [ "${ENABLE_UART}" =3D "1" ]; then
>          echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt
>=20


--OMJcMWjrpCHucaXXlcdqDSUFP60mVW8hU--

--5OJNQ3Km5sf3wp0rMlptnuobRvFhJEckS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljep9oACgkQuwUzVZGdMxRQ1QCbBijqUYMIlCdBOjezfp74T05B
T6UAn3hzhkd7PjsSIXux8WhV5fNQKpt1
=gAgP
-----END PGP SIGNATURE-----

--5OJNQ3Km5sf3wp0rMlptnuobRvFhJEckS--
