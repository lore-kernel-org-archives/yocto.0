Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81130E00572; Thu, 31 Jul 2014 19:11:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A46BE00547
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 19:11:49 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id y20so5058987ier.13
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 19:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=61vc6o6T2buZF3mG3/6bSHYiI30JX4v47ulsohw1Ysw=;
	b=nf++ujyL60bq39V7kyct8v3OEumSxZ3GJZSPFU+BrDPHJI8meQz/yCR5kdXpgpLYgf
	f2CNm7erwuh5zsqTMXpgdEgQKvoXmKjfyqBAardf+P7Zw6czgFnNnDztGA6DEhovEpzm
	5+jqNlFIaW7Wq2kpO8H9cw35kz9Sh6vV3+KV7XR0SOHScdzzXkeFQ9w0/9xxukZu5nX4
	5RfrhkqhpaA/LtfnvfnxWUjegQxs2+rbYYzJTVNbyAIitN3TOvbvCZtXE+ZFApRyZNFs
	3tjNgSdBPXVDzVK8GQ2K1Wa65wV1PMNHFR3mz38KcsWDrCdnZ5vSmZpSYJapJOlBkojL
	EjUA==
X-Received: by 10.42.82.6 with SMTP id b6mr2607105icl.51.1406859109110; Thu,
	31 Jul 2014 19:11:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Thu, 31 Jul 2014 19:11:19 -0700 (PDT)
In-Reply-To: <1406850306-28069-1-git-send-email-akuster@mvista.com>
References: <1406850306-28069-1-git-send-email-akuster@mvista.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Jul 2014 19:11:19 -0700
Message-ID: <CAMKF1soO9AfjdtGcxdzV0ANaTBqqWNwQw=0ioA-wOUs9P9TsGw@mail.gmail.com>
To: Armin Kuster <akuster@mvista.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] toyomo: ccs-tools
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
X-List-Received-Date: Fri, 01 Aug 2014 02:11:57 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 31, 2014 at 4:45 PM, Armin Kuster <akuster@mvista.com> wrote:
> Add userland support program ccs-tools
>
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>  recipes-security/ccs-tools/README             | 12 ++++++++
>  recipes-security/ccs-tools/ccs-tools_1.8.3.bb | 42 +++++++++++++++++++++++++++
>  2 files changed, 54 insertions(+)
>  create mode 100644 recipes-security/ccs-tools/README
>  create mode 100644 recipes-security/ccs-tools/ccs-tools_1.8.3.bb
>
> diff --git a/recipes-security/ccs-tools/README b/recipes-security/ccs-tools/README
> new file mode 100644
> index 0000000..89d2d00
> --- /dev/null
> +++ b/recipes-security/ccs-tools/README
> @@ -0,0 +1,12 @@
> +Documentation:
> +http://tomoyo.sourceforge.jp/1.8/index.html.en
> +
> +
> +To start via command line add:
> +
> +" security=tomoyo TOMOYO_trigger=/usr/lib/systemd/systemd"
> +
> +To initialize:
> +/usr/lib/ccs-tools/init_policy

the above info would be nicer on target. May be add it to package description

> +
> +DISTRO_FEATURES_append = " tomoyo"
> diff --git a/recipes-security/ccs-tools/ccs-tools_1.8.3.bb b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
> new file mode 100644
> index 0000000..939a5d7
> --- /dev/null
> +++ b/recipes-security/ccs-tools/ccs-tools_1.8.3.bb
> @@ -0,0 +1,42 @@
> +SUMMARY = "Tomoyo"
> +DESCRIPTION = "TOMOYO Linux is a Mandatory Access Control (MAC) implementation for Linux that can be used to increase the security of a system, while also being useful purely as a system analysis tool."
> +SECTION = "security"
> +LICENSE = "GPL-2.0"
> +LIC_FILES_CHKSUM = "file://README.ccs;md5=5b80632c6a2a3b7fa92ea46eff15bee9"
> +
> +DEPENDS = "ncurses"
> +
> +SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/ccs-tools-1.8.3-20130406.tar.gz"
> +
> +SRC_URI[md5sum] = "ffff535584cdf9ae28b85061c32e5618"
> +SRC_URI[sha256sum] = "1e4129b59cd7fdb963962af7f2cccf4a66c77a4b0948f67320b569aaf6585fcf"
> +
> +S = "${WORKDIR}/${PN}"
> +do_make(){
> +    oe_runmake USRLIBDIR=${libdir} all
> +    cd ${S}/kernel_test
> +    oe_runmake  all
> +}
> +
> +do_install(){
> +    oe_runmake INSTALLDIR=${D}  USRLIBDIR=${libdir} install
> +}
> +
> +PACKAGE="${PN} ${PN}-dbg"
> +
> +FILES_${PN} = "\
> +    ${sbindir}/* \
> +    ${base_sbindir}/* \
> +    ${libdir}/* \
> +    ${mandir}/man8/* \

manpages should go into ${PN}-doc

> +"
> +
> +FILES_${PN}-dbg = "\
> +    ${base_sbindir}/.debug/* \
> +    ${sbindir}/.debug/* \
> +    ${libdir}/.debug/* \
> +    ${libdir}/ccs/.debug/* \
> +    /usr/src/debug/* \
> +"
> +
> +
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

