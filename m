Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9FCFE00A6A; Thu,  9 Nov 2017 11:35:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB556E009B4
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 11:35:39 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id p9so5503116pgc.8
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 11:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=9txn1HqFGlkqGNNZ2Z0/xjp3FdFkWuABvXc0JJFfl1Y=;
	b=mxIyZg/sP8MiMG8h6r2uvTNov/WcCBY+YjJ1qWrFS7n8ERD5HihWLpzHTMVyv0pvC5
	W/8wc7Ti38hPFKq4GbMG2QIPVIBSfkcRXTd9ITxNFa6y88BDotFV/Wjn5baNSbacRPMx
	Wes+/aQ+7YvygxJ9+KXPLSVz3ggu+dt0OkDiIaLEB8J/kvsmZ/xZ2l0VGFa/aZdxTvmv
	NIbfHtHaLw95xNh4clQ7Q7ddh53JGjnAU49tn3dSv7f+SIBXDcMP7XI7/en1h2Fw94YW
	ahE6Uv6HIoIDUCyKyd4Hg2u/2WpaekrvvJaTIEFIRUpH9+T5QSJnu/iYH+yoh0Mpl7yQ
	YUnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=9txn1HqFGlkqGNNZ2Z0/xjp3FdFkWuABvXc0JJFfl1Y=;
	b=MHbVTQu9B8d4a0B49Cy21F/Mr0bm0cKvlVKJWYwryQuy9Jv6hzAs9fyRrREJy47dMz
	Oja1p1/nBRiDzEp5Czb3Z3Ke640zgCErvWKL3bO+SBUriFFwYizm3bevecXdhAqZZHyy
	9DyOutCguEs0xqQ85yWYpLknPDfeCH6Vu54B5wZzdK2frn12jFMgh23A89R7D41c/eP5
	PiYzfaQmgf5LlE9sj4HMXVtA+hqomL3iQlGzRMPtP5kChtxRvorrE72xOlBpmQrKfdQg
	lT/o2Re4CGyl7CrmCPQM0QU8+n8XZiHSiQpdE6kUi+wFxAmedeUNeRWEK9IYeWOTl7WA
	eAKw==
X-Gm-Message-State: AJaThX7ws1J3NTgtAuCSGbenniSufhoIILMGV+Smp0ldn358MkXkAgdk
	oSceaDmeoXGkeRo5VSKZcnQdIw==
X-Google-Smtp-Source: ABhQp+TQVEXLCHzluPOXU/JJg2Mk3c+bbj4JcCBa7bl0dZp2WwQ+KQHHE+YNlyKyibIQZ5JZBrOmkw==
X-Received: by 10.98.237.5 with SMTP id u5mr1510813pfh.209.1510256138774;
	Thu, 09 Nov 2017 11:35:38 -0800 (PST)
Received: from [10.43.100.234] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156]) by smtp.gmail.com with ESMTPSA id
	c1sm13604100pfa.12.2017.11.09.11.35.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Nov 2017 11:35:38 -0800 (PST)
To: =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>, yocto@yoctoproject.org
References: <20171101115906.6423-1-git@andred.net>
From: akuster808 <akuster808@gmail.com>
Message-ID: <fd09b5d6-c863-5518-95dd-f8b526cab87a@gmail.com>
Date: Thu, 9 Nov 2017 11:35:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171101115906.6423-1-git@andred.net>
Subject: Re: [meta-security][PATCH] trousers: allow overriding localstatedir mandir sysconfdir
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
X-List-Received-Date: Thu, 09 Nov 2017 19:35:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

merged.


not sure if I sent our a confirmation email.

Thanks,

armin


On 11/01/2017 04:59 AM, André Draszik wrote:
> From: André Draszik <adraszik@tycoint.com>
>
> It is currently impossible to override localstatedir,
> mandir and sysconfdir during ./configure, because they
> are being overriden unconditionally.
>
> With this patch it is now possible to set above
> locations as needed.
>
> Signed-off-by: André Draszik <adraszik@tycoint.com>
> ---
>  ...-override-localstatedir-mandir-sysconfdir.patch | 68 ++++++++++++++++++++++
>  meta-tpm/recipes-tpm/trousers/trousers_git.bb      |  1 +
>  2 files changed, 69 insertions(+)
>  create mode 100644 meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch
>
> diff --git a/meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch b/meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch
> new file mode 100644
> index 0000000..7b3cc77
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm/trousers/files/0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch
> @@ -0,0 +1,68 @@
> +From 3396fc7a184293c23135161f034802062f7f3816 Mon Sep 17 00:00:00 2001
> +From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <adraszik@tycoint.com>
> +Date: Wed, 1 Nov 2017 11:41:48 +0000
> +Subject: [PATCH] build: don't override --localstatedir --mandir --sysconfdir
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=UTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +It is currently impossible to override localstatedir,
> +mandir and sysconfdir during ./configure, because they
> +are being overriden unconditionally because of they
> +way trousers is built using rpmbuild.
> +
> +If they need massaging for rpmbuild, the values should
> +be specified inside the spec file, not in ./configure
> +and thereby overriding user-requested values.
> +
> +With this patch it is now possible to set above
> +locations as needed. The .spec file is being modified
> +as well so as to restore previous behaviour.
> +
> +Signed-off-by: André Draszik <adraszik@tycoint.com>
> +---
> +Upstream-Status: Submitted [https://sourceforge.net/p/trousers/mailman/message/36099290/]
> +Signed-off-by: André Draszik <adraszik@tycoint.com>
> + configure.ac          | 11 ++---------
> + dist/trousers.spec.in |  2 +-
> + 2 files changed, 3 insertions(+), 10 deletions(-)
> +
> +diff --git a/configure.ac b/configure.ac
> +index b9626af..7fe5f8e 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -376,16 +376,9 @@ CFLAGS="$CFLAGS -I../include \
> + KERNEL_VERSION=`uname -r`
> + AC_SUBST(CFLAGS)
> + 
> +-# When we build the rpms, prefix will be /usr. This'll do some things that make sense,
> +-# like put our sbin stuff in /usr/sbin and our library in /usr/lib. It'll do some other
> +-# things that don't make sense like put our config file in /usr/etc. So, I'll just hack
> +-# it here. If the --prefix option isn't specified during configure, let it all go to
> ++# If the --prefix option isn't specified during configure, let it all go to
> + # /usr/local, even /usr/local/etc. :-P
> +-if test x"${prefix}" = x"/usr"; then
> +-	sysconfdir="/etc"
> +-	localstatedir="/var"
> +-	mandir="/usr/share/man"
> +-elif test x"${prefix}" = x"NONE"; then
> ++if test x"${prefix}" = x"NONE"; then
> + 	localstatedir="/usr/local/var"
> + fi
> + 
> +diff --git a/dist/trousers.spec.in b/dist/trousers.spec.in
> +index b298b0e..10ef178 100644
> +--- a/dist/trousers.spec.in
> ++++ b/dist/trousers.spec.in
> +@@ -45,7 +45,7 @@ applications.
> + 
> + %build
> + %{?arch64:export PKG_CONFIG_PATH=%{pkgconfig_path}:$PKG_CONFIG_PATH}
> +-./configure --prefix=/usr --libdir=%{_libdir}
> ++./configure --prefix=/usr --libdir=%{_libdir} --sysconfdir=/etc --localstatedir=/var --mandir=/usr/share/man
> + make
> + 
> + %clean
> +-- 
> +2.15.0.rc1
> +
> diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
> index 352374c..e9f838e 100644
> --- a/meta-tpm/recipes-tpm/trousers/trousers_git.bb
> +++ b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
> @@ -15,6 +15,7 @@ SRC_URI = " \
>      	file://trousers-udev.rules \
>      	file://tcsd.service \
>          file://get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch \
> +        file://0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch \
>      	"
>  
>  S = "${WORKDIR}/git"


