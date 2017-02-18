Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98D2CE009F8; Sat, 18 Feb 2017 16:00:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E820E009F5
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 15:59:56 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id v184so8228318pgv.1
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 15:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=qrM7UU2T9mUIq6DlanwFkBmdiDIktTdaCt3UhwJ9Q0g=;
	b=fBtXhKodX20VP4I2ihUrBc8edPBxrsxI+4G2fLob1IsjyuVe+Scx+k9fLK0CQH2VQv
	A1zrDcc1G5kvhdhyMbCINgMGw8Wh8srydNfbTf7Emy+fExlNEC8FHG61UhGpmbtG5pDv
	aehEOFazpGISnB9WxUvZUHI4iui7RVfCYH9HFyOiaPWG3E7ST7pdsNfg4QBasYkkxStL
	LjBbd0tipPLA75YJ1dhavcIHzkoHAf0c+5AUXsvAjqS0znhZ76xlI6d2tNaSXn3FabfF
	puLGFxXsMqS8WVSlUgwUO+aO4/rjDYzVO9tGCI5+3sAsTmHXS0kBGbxBpI70TGM6O4h2
	Z2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=qrM7UU2T9mUIq6DlanwFkBmdiDIktTdaCt3UhwJ9Q0g=;
	b=G/5z5WGEOHi2U441Zo2WZSfjhgYmyw5mhlmMkRKtrebUWG8kruOhaCCrOaTmDqfTVT
	zN7LgW5pifr6+8QmUBbSexc+dPaL1rQNsLo5Bmdzqq6lKNk+q0jA6urq/rrqYIyE2gRC
	BoLpjUhaT+rfQ2feMf99zp/LMs/Cp+hIa49d/B4OhN+ePk2R8qF7/Rljlq3pPLMMSlwz
	mmvGhXsdLgSmDYYRA50RqzTRsttggcUnBq5L+RMG6CpjcqWjlUY+XEy2ijulhmRlZUwQ
	tksHpWUrOWtaNUci8Y0ERJEH7DJJIpx64Y5MMFxO9aPQ2qvVrcx515895I8b6gHqRr1o
	EWIQ==
X-Gm-Message-State: AMke39lmFgdia6tdRm0h4um7zewJmIdtOcflI/7HG2VlB5LYgJ6MnHhjY31s664H+oSxIw==
X-Received: by 10.98.147.78 with SMTP id b75mr17695483pfe.128.1487462396272;
	Sat, 18 Feb 2017 15:59:56 -0800 (PST)
Received: from ?IPv6:2601:202:4001:9ea0:1439:2a9a:604f:51bd?
	([2601:202:4001:9ea0:1439:2a9a:604f:51bd])
	by smtp.gmail.com with ESMTPSA id
	p129sm26928188pfp.118.2017.02.18.15.59.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Feb 2017 15:59:55 -0800 (PST)
To: wenzong.fan@windriver.com, yocto@yoctoproject.org
References: <1487313880-216027-1-git-send-email-wenzong.fan@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <b0188626-ea43-0900-5a3f-1d6b01237229@gmail.com>
Date: Sat, 18 Feb 2017 15:59:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1487313880-216027-1-git-send-email-wenzong.fan@windriver.com>
Subject: Re: [meta-security][PATCH] libseccomp: convert test package to ptest
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
X-List-Received-Date: Sun, 19 Feb 2017 00:00:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Wenzong Fan,


On 02/16/2017 10:44 PM, wenzong.fan@windriver.com wrote:
> From: Wenzong Fan <wenzong.fan@windriver.com>
I had to fixup  your changes against master-next. I just pushed to 
master-next.  If you sign-off, I will push to master.

thanks,
- armin
>
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>   recipes-security/libseccomp/files/run-ptest |  4 ++++
>   recipes-security/libseccomp/libseccomp.bb   | 24 ++++++++++++------------
>   2 files changed, 16 insertions(+), 12 deletions(-)
>   create mode 100644 recipes-security/libseccomp/files/run-ptest
>
> diff --git a/recipes-security/libseccomp/files/run-ptest b/recipes-security/libseccomp/files/run-ptest
> new file mode 100644
> index 0000000..54b4a63
> --- /dev/null
> +++ b/recipes-security/libseccomp/files/run-ptest
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +
> +cd tests
> +./regression -a
> diff --git a/recipes-security/libseccomp/libseccomp.bb b/recipes-security/libseccomp/libseccomp.bb
> index c131bea..830e051 100644
> --- a/recipes-security/libseccomp/libseccomp.bb
> +++ b/recipes-security/libseccomp/libseccomp.bb
> @@ -8,37 +8,37 @@ SRCREV = "937e774d8ccfd063a601f49ef46769de3926b62d"
>   
>   PV = "2.3.1+git${SRCPV}"
>   
> -SRC_URI = "git://github.com/seccomp/libseccomp.git"
> +SRC_URI = "git://github.com/seccomp/libseccomp.git \
> +           file://run-ptest \
> +"
>   
>   S = "${WORKDIR}/git"
>   
> -inherit autotools-brokensep pkgconfig
> +inherit autotools-brokensep pkgconfig ptest
>   
>   PACKAGECONFIG ??= ""
>   PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
>   
> -do_compile_append() {
> +do_compile_ptest() {
>       oe_runmake -C tests check-build
>   }
>   
> -do_install_append() {
> -    install -d ${D}/${libdir}/${PN}/tests
> -    install -d ${D}/${libdir}/${PN}/tools
> +do_install_ptest() {
> +    install -d ${D}${PTEST_PATH}/tests
> +    install -d ${D}${PTEST_PATH}/tools
>       for file in $(find tests/* -executable -type f); do
> -        install -m 744 ${S}/${file} ${D}/${libdir}/${PN}/tests
> +        install -m 744 ${S}/${file} ${D}${PTEST_PATH}/tests
>       done
>       for file in $(find tests/*.tests -type f); do
> -        install -m 744 ${S}/${file} ${D}/${libdir}/${PN}/tests
> +        install -m 744 ${S}/${file} ${D}${PTEST_PATH}/tests
>       done
>       for file in $(find tools/* -executable -type f); do
> -        install -m 744 ${S}/${file} ${D}/${libdir}/${PN}/tools
> +        install -m 744 ${S}/${file} ${D}${PTEST_PATH}/tools
>       done
>   }
>   
> -PACKAGES += " ${PN}-tests"
>   FILES_${PN} = "${bindir} ${libdir}/${PN}.so*"
> -FILES_${PN}-tests = "${libdir}/${PN}/tools ${libdir}/${PN}/tests"
>   FILES_${PN}-dbg += "${libdir}/${PN}/tests/.debug/* ${libdir}/${PN}/tools/.debug"
>   
>   RDEPENDS_${PN} = "bash"
> -RDEPENDS_${PN}-tests = "bash"
> +RDEPENDS_${PN}-ptest = "bash"


