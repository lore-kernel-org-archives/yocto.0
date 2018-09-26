Return-Path: <tokes_atti@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53E94E006F1; Wed, 26 Sep 2018 04:08:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.128.34 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tokes_atti[at]yahoo.com)
Received: from sonic304-11.consmr.mail.bf2.yahoo.com
	(sonic304-11.consmr.mail.bf2.yahoo.com [74.6.128.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44787E0053F
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 04:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1537960132; bh=nQa1ASGKpBuB+UyrN+rGTcnGz3B/WrgwEdlZq0T5RTw=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=Pv4799Pk2PnCkLrCFwW5CZgbz9jQ4LC+OsPXhILkcJalROhOCs71fq/S3lFrwaUi8iPLUMwpFHWiw8keh2aWkLGQKBS7Hbz4BXsuUZnM75e752w4iI/SIIQIs92QYq2G4nzQjO53X0xRtSipUFAEa5x3DKfUCEgrch2FWmZzcc9gPfUGaJNJUrS1/GzIK6UZ+SsrxLEFzwO/AhZZBhc40cuGmydhk4RzdEp9Yy4I/kLtyw6L7i7ck9KYWy2tpBCC1f5OyIJpTSIUhs8UUZgkvcpCyMCbsKdVgb0kUpB61qRlFcXpBdfZN0fWVUh+SYJXI/2sNimuiNuMk0Gdf2a4SQ==
X-YMail-OSG: Lk07yZoVM1lzN7Yi0_yL5Dt09paMQwNrHp2oUA5qNNMqlVlHO7sHx1GA1PvtsjC
	6cT.7nTznMOfBsg0v_pDvPAldzkNRGZbK8Rqo4kusqT.2mZGGnwkp8964wkik_noUyv2BNaY3g.g
	UQBTYUJIrAWbtUN8aJk0v.LGKglRPIbzoftjAxCb2vPGnH6NCmlEcA.fHsO2v0I.Z6tT7RCi.QNM
	iNpXnA2Z.oPuEVEnZKp4Z4Kmr2.a5a7fTBdJHM9_tXfchs0Hc7mU16Y8qyoFAS37kj8N31zq5414
	ny2hIVVhMN7jCx7fheqbUL19Np_YKxO0i7Y5.bKyoyEGtn7DzD7z8aQWcv6u4a7bGLMByusl5MVM
	eiINrLWsksKlxl7Vsd1k3In78dVMgYk0P43egzTGdE4JR8XIeIG9v8xRgQ6iAk8G71V65e3lOwKi
	XUDhviHeAhruHtOLuqrUxvcfj3Gc1f.FSewET_.E5yY3mBnYV1oKkSGLC2zZJU1U6szmVOUjKWv3
	geC2QPqkvCloPzGW4SoA7.U4cJwHdGXs42oeJZXosEAxft3nWRVo4dXrI9DFV4hjmkecfF4EPlIw
	8HnUn92vQRHu5SM6oTu0z8oaLEIIibIGpF3zZAgHp58fuL2puxAL5MsyH6al1CRIqqgu6IYuK0HA
	u1cHh4sNNga_ASitKI_9U133y6cg8PVrIqGaiKBuCkiGZyf.XmwlOCJWYpq_WEGjPka5GrOMf8Jm
	qRcowjkdf7EZxhQzg..bmaO3N9LjNNx45UAtR7Z4deHgqB3X5aeVQrlDiRyqp9aPyxdS68z5Zhfk
	AyKex0IrdQy8IkvlzL.VkwxfEwwMkG9kktWd3waccswIVGxkQjuEqBV1IveSPLr2GUDJayORDenh
	ZRBWvygJ9pmSUzElH.XbTCAvURNFCPLG3WgT49dK4ZLXP72apZB_z6NZ_qHejE1W7oT88TreTDzw
	9LdXFMRZEag92CxQF5lnf8oi7q9H8F_n8BIOEkUHODCMUK1PKUHfQSzoW8YDe_pdPjw--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic304.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 26 Sep 2018 11:08:52 +0000
Date: Wed, 26 Sep 2018 11:08:22 +0000 (UTC)
From: =?UTF-8?Q?T=C5=91k=C3=A9s_Attila?= <tokes_atti@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <95748566.2775937.1537960102419@mail.yahoo.com>
MIME-Version: 1.0
References: <95748566.2775937.1537960102419.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.12487 YahooMailNeo Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/69.0.3497.100 Safari/537.36
Subject: PetaLinux build fails because of locale errors logged by do_rootfs (Ubuntu 18.04 LTS)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: =?UTF-8?Q?T=C5=91k=C3=A9s_Attila?= <tokes_atti@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Sep 2018 11:08:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Yocto Team,

First of all sorry for spamming your mailing list, but I'm kind of out ideas with this...

I'm trying to build PetaLinux on Ubuntu 18.04 LTS, but the build is failing because of some (probably harmless) locale related errors the do_rootfs subtask logs:

bluetiger@Attila-Laptop:xilinx-ultra96-reva-2018.2$ petalinux-build[INFO] building project
[INFO] sourcing bitbake
INFO: bitbake petalinux-user-image
WARNING: Host distribution "ubuntu-18.04" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
...
WARNING: petalinux-user-image-1.0-r0 do_rootfs: [log_check] petalinux-user-image: found 1 warning message in the logfile:
[log_check] warning: %post(sysvinit-inittab-2.88dsf-r10.ultra96_zynqmp) scriptlet failed, exit status 1

ERROR: petalinux-user-image-1.0-r0 do_rootfs: [log_check] petalinux-user-image: found 4 error messages in the logfile:
[log_check] Failed to set locale, defaulting to C
[log_check] Failed to set locale, defaulting to C
[log_check] Failed to set locale, defaulting to C
[log_check] Failed to set locale, defaulting to C


ERROR: petalinux-user-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /media/bluetiger/Data/PetaLinux-Ultra96/xilinx-ultra96-reva-2018.2/build/tmp/work/ultra96_zynqmp-xilinx-linux/petalinux-user-image/1.0-r0/temp/log.do_rootfs.5592
ERROR: Task (/media/bluetiger/Data/PetaLinux-Ultra96/xilinx-ultra96-reva-2018.2/project-spec/meta-plnx-generated/recipes-core/images/petalinux-user-image.bb:do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 10052 tasks of which 10051 didn't need to be rerun and 1 failed.

Summary: 1 task failed:
/media/bluetiger/Data/PetaLinux-Ultra96/xilinx-ultra96-reva-2018.2/project-spec/meta-plnx-generated/recipes-core/images/petalinux-user-image.bb:do_rootfs
Summary: There were 2 WARNING messages shown.

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
The locales seems to be just fine on the machine:

bluetiger@Attila-Laptop:~$ localeLANG=en_US.UTF-8
LANGUAGE=en_US.UTF-8
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
LC_ALL=en_US.UTF-8


Does anyone know what causes the problem? Is there a way to fix / workaround it?
Yesterday, I had a similar problem with bitbake's sanity checks, but I solved that by commenting out some code in sanity_check_locale() from sanity.bbclass.

Is this something Ubuntu 18.04 related? If I understood correctly Ubuntu 18.04 is not officially supported. But maybe it would worth checking what causes this error.

I would really appreciate any help on this...

Thanks,
Attila

