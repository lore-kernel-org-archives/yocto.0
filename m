Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B09C7E00C7C; Sat, 15 Dec 2018 15:27:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12D1EE00AD8
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2018 15:27:23 -0800 (PST)
Received: by mail-pf1-f195.google.com with SMTP id z9so4571812pfi.2
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2018 15:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=4SW0hTLw9vdWB1hC+IepHvOmNxc5GzIlXsku7Hp+VfI=;
	b=ZdAaCxuS1Y1EfLzsNqxaIXelDNfDUYYeE2Tf0BTdY9QBstGFES2r4IQ4CIeUMjv2rr
	70CVuizExFs+qdtB5R+S6Xb1/lStyXbFIyuv0+lctOl4qanlQqd5cmUppJuHySBQpx5R
	7TKBEx53BGd0WB7IPEQPk+pSDUg3uqyghguMxr+twwwkgHDZeRqkXv6oWr3tPy/dc1Ou
	UsFVkTgb8JTdsrGWwbH0GSdo4KznfhE8160cIwE2FChFCmE5rGr5OztVpKjVEY4dUIYy
	BOnMA3qs+NF9/YlVnH+NcETzAczrhixOV08fqb0Pfqguz0zp7xYl7k7x668R87+YU9EO
	wlDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=4SW0hTLw9vdWB1hC+IepHvOmNxc5GzIlXsku7Hp+VfI=;
	b=AOjJbvIO8Zlbh9QdJYM1og4K6k4tnI4+Yrlxng34TFM4pm3uSz8ujcThtWPZL11+G1
	fk3vpCPgBDTtZ1smTsuRf+WMhtIeBOL5aXi8rFuklGYGVqlYtXNu2pfw/CfRBXXJ5uh6
	19BMl8V0lZu0jNwecA7q+TMqeZLNxNXRepXk4OSvy7+whHmmHMEAc6lcGsH+lnyUO/42
	8pbNAwBGXmldla82WYkwzwX8VxvfuTFjlkepyTxg6TVCVbdHeTIAlTSGnF8jAR21bgvf
	ipdFzkLwjZIar84ndy5aCueCw0QH84P2wGJUtxua+owf8VdkWlVyJG4NH/dbYPH3X09t
	o7tw==
X-Gm-Message-State: AA+aEWZS46dorcYQcXkepci2MNX+xbAwecJFkB1BZisekmYqjO0+jExK
	aj0+2Si+yo1MLpi7bCvmJ5Eg2kuN8Dc=
X-Google-Smtp-Source: AFSGD/UMerlQVtDsiQ6YpuxSmBeJgP6uzUwUgOo8rZkIxLhBmGpQl6Hs3qsOXko/jlAKL5hlvJ2vwA==
X-Received: by 2002:a65:5c4b:: with SMTP id v11mr7450614pgr.333.1544916442697; 
	Sat, 15 Dec 2018 15:27:22 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:142d:7852:54a7:93fc?
	([2601:202:4180:c33:142d:7852:54a7:93fc])
	by smtp.gmail.com with ESMTPSA id
	q7sm10523521pgp.40.2018.12.15.15.27.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Dec 2018 15:27:21 -0800 (PST)
To: yocto@yoctoproject.org
References: <1544179080-3412-1-git-send-email-daniel.dragomir@windriver.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <a3ffdaf1-4745-8429-40a1-e7f89a480b6b@mvista.com>
Date: Sat, 15 Dec 2018 15:27:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <1544179080-3412-1-git-send-email-daniel.dragomir@windriver.com>
Subject: Re: [meta-security][thud][PATCH] tpm2.0-tss: Remove resourcemgr sub-package
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
X-List-Received-Date: Sat, 15 Dec 2018 23:27:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 12/7/18 2:38 AM, Daniel Dragomir wrote:
> Since in 2.0.x branch resourcemgr was removed as deprecated by
> commit 7966ef8916f79ed09eab966a58d773f413fbb67f ("Remove resourcemgr
> and fixup build.") and commit 0e175d36c13b1801d75ae768ac520154585326f8
> ("contrib: Remove systemd service and udev rules for old resourcemgr."),
> remove resourcemgr sub-package with it's components.
merged.

> Build will fail when trying sed command on resourcemgr.service
> (No such file or directory).
>
> Signed-off-by: Daniel Dragomir <daniel.dragomir@windriver.com>
> ---
>  meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb | 19 -------------------
>  1 file changed, 19 deletions(-)
>
> diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
> index 3e7b81a..9d1ff72 100644
> --- a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
> +++ b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
> @@ -24,22 +24,6 @@ EXTRA_USERS_PARAMS = "\
>  	groupadd tss; \
>  	"
>  
> -SYSTEMD_PACKAGES = "resourcemgr"
> -SYSTEMD_SERVICE_resourcemgr = "resourcemgr.service"
> -SYSTEMD_AUTO_ENABLE_resourcemgr = "enable"
> -
> -do_patch[postfuncs] += "${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','fix_systemd_unit','', d)}"
> -fix_systemd_unit () {
> -    sed -i -e 's;^ExecStart=.*/resourcemgr;ExecStart=${sbindir}/resourcemgr;' ${S}/contrib/resourcemgr.service
> -}
> -
> -do_install_append() {
> -    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
> -        install -d ${D}${systemd_system_unitdir}
> -        install -m0644 ${S}/contrib/resourcemgr.service ${D}${systemd_system_unitdir}/resourcemgr.service
> -    fi
> -}
> -
>  PROVIDES = "${PACKAGES}"
>  PACKAGES = " \
>      ${PN} \
> @@ -57,7 +41,6 @@ PACKAGES = " \
>      libtss2 \
>      libtss2-dev \
>      libtss2-staticdev \
> -    resourcemgr \
>  "
>  
>  FILES_libtss2-tcti-device = "${libdir}/libtss2-tcti-device.so.*"
> @@ -89,5 +72,3 @@ FILES_libtss2-dev = " \
>  FILES_libtss2-staticdev = "${libdir}/libtss*a"
>  
>  FILES_${PN} = "${libdir}/udev"
> -
> -FILES_resourcemgr = "${sbindir}/resourcemgr ${systemd_system_unitdir}/resourcemgr.service"


