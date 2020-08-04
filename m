Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.7589.1596554353471190552
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 08:19:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BLdhG5nrYz5tlB;
	Tue,  4 Aug 2020 17:19:10 +0200 (CEST)
Date: Tue, 4 Aug 2020 17:19:09 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: itai.kleiman@tandemg.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] do_package() failing due to "no attribute"
Message-ID: <20200804151909.zd465fkamrodsyry@qschulz>
References: <AM0PR0602MB3395AA49CAF5626EBEF0D57A974A0@AM0PR0602MB3395.eurprd06.prod.outlook.com>
 <AM0PR0602MB339594A583319B969BD00461974A0@AM0PR0602MB3395.eurprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM0PR0602MB339594A583319B969BD00461974A0@AM0PR0602MB3395.eurprd06.prod.outlook.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Itai,

On Tue, Aug 04, 2020 at 03:11:55PM +0000, Itai Kleiman via lists.yoctoproject.org wrote:
> export SDKTARGETSYSROOT = "${TMPDIR}/sysroots/x86_64-linux/usr/bin/mips64-poky-linux/"
> 

SDKTARGETSYSROOT = "${STAGING_BINDIR_NATIVE}/mips64-poky-linux"

> do_configure() {
> cd ${S}
> ./runConfigure -plinux -minmem -nsocket -rpthread -z--sysroot=${TMPDIR}/sysroots/${MACHINE} \
						      --sysroot=${STAGING_DIR_TARGET} \
>                     -C--build=${BUILD_SYS} \
>                     -C--host=${HOST_SYS} \
>                     -C--target=${TARGET_SYS}
> }
> 
> do_compile() {
> cd ${S}
> ${MAKE} CXX="mips64-poky-linux-g++  -meb -mabi=64 -mhard-float -march=mips64r2 -march=xlp --sysroot=${TMPDIR}/sysroots/${MACHINE}" CC="mips64-poky-linux-gcc  -meb -mabi=64 -mhard-float -march=mips64r2 -march=xlp --sysroot=${TMPDIR}/sysroots/${MACHINE}"  AR="mips64-poky-linux-ar" LDFLAGS="-L/${TMPDIR}/sysroots/${MACHINE}/usr/lib -Wl,-O1  -Wl,--as-needed"
	                                                                                    --sysroot=${STAGING_DIR_TARGET}
--sysroot=${STAGING_DIR_TARGET}                                                     -L/${STAGING_LIBDIR}

At least for the path, haven't checked anything else.

Also, most of those arguments should be passed by Yocto already to your
recipe's makefile.

Quentin
