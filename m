Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43B92E00A80; Tue, 18 Apr 2017 11:56:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8D31E00A31
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:56:14 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id o81so1067129wmb.0
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zJkoLlI/QeN0EQskIclQkGGKXieaF08qASeH2FXXyfs=;
	b=pvO0SQTkfEsC31elbBYmMpqom5S9vU5MIe0NOcz2/nhP0+nf42ftlEwe5VwE5vzwi3
	tgOqaIaegq2bJGi3rM6QfVKb+ztXAWNBKc2ApGqsvSxsDVGiH/DAESg9DCI25VWknhds
	J/Cc85tWAOF2R+TpIaIIb0oUrwrw8b3DGIgYIKMgg9f5J6jxJqO4PO4KlrDTcWKfSy5W
	wN0pyJ8GImHZRuqJcYXXwMGrbx1GhVXA9CWi7bCxDMhsI/z7QdubvSIETHLJKnlSO4Yh
	B4qytNwaCksPq1A6g83XNTU3k+8AlwrQX8FxxKndSGbW0vGyVV57/F/J4Hyxp8O/jlnW
	3+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zJkoLlI/QeN0EQskIclQkGGKXieaF08qASeH2FXXyfs=;
	b=IzzqwtUXCiHbpqn/FjQU7XV9LiAya1V8D8iaLLFzjeRoUEQ4wrskNREgxRNwrUsb/q
	wGMM6FmIoBSaVbZ9VlHVSo+o/1CXKbaUTZPtzWCVRtMcJz3FRAnAsQGxzcdRvoIQDyb/
	hwjBzC7/DMBKsXoeTWTBNgFiW+EOqzQADxb8xH33PfFDFD2+ZR/j4mntim+qyUzDJ1Hx
	N8ZCgYVc74bk/cSHt6C5fDHstgDhm+8LZo9sKyxkhxyEs46E5uBTX+xjIGp8UnCYVPgS
	aSKslD6JMrpxJI5vL3bJEVyL2OQx6TqfK502jR1ny/+9UIZKHiK6/EZZ+78Js78NEk82
	gvCQ==
X-Gm-Message-State: AN3rC/6qJ1/jOEnmr5qmJSnhilqF7V+6mAt5DJ3lWXLyMSJZPeyjlSaI
	vVphMtmVgMooZy0jJKYQ9Wlf+a9lGg==
X-Received: by 10.28.206.195 with SMTP id e186mr13682684wmg.37.1492541773409; 
	Tue, 18 Apr 2017 11:56:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Tue, 18 Apr 2017 11:55:42 -0700 (PDT)
In-Reply-To: <20170418181322.14588-1-andrei@gherzan.ro>
References: <20170418181322.14588-1-andrei@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Apr 2017 11:55:42 -0700
Message-ID: <CAMKF1sq1UcUOny3pj+USAf8TUWoccV_zHz+EF2Tu99tdbLm+yQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/3] udev: Create rules file to generate serial0/1
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
X-List-Received-Date: Tue, 18 Apr 2017 18:56:16 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 18, 2017 at 11:13 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-core/udev/udev-rules-rpi.bb           | 12 ++++++++++++
>  recipes-core/udev/udev-rules-rpi/99-com.rules | 21

perhaps a bbappend to udev-extraconf recipe is better ?

+++++++++++++++++++++
>  2 files changed, 33 insertions(+)
>  create mode 100644 recipes-core/udev/udev-rules-rpi.bb
>  create mode 100644 recipes-core/udev/udev-rules-rpi/99-com.rules
>
> diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/udev-rules-rpi.bb
> new file mode 100644
> index 0000000..20443d3
> --- /dev/null
> +++ b/recipes-core/udev/udev-rules-rpi.bb
> @@ -0,0 +1,12 @@
> +DESCRIPTION = "udev rules for Raspberry Pi Boards"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +
> +SRC_URI = " file://99-com.rules"
> +
> +S = "${WORKDIR}"
> +
> +do_install () {
> +    install -d ${D}${sysconfdir}/udev/rules.d
> +    install -m 0644 ${WORKDIR}/99-com.rules ${D}${sysconfdir}/udev/rules.d/
> +}
> diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules b/recipes-core/udev/udev-rules-rpi/99-com.rules
> new file mode 100644
> index 0000000..6bf019b
> --- /dev/null
> +++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
> @@ -0,0 +1,21 @@
> +KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
> +       ALIASES=/proc/device-tree/aliases; \
> +       if cmp -s $ALIASES/uart0 $ALIASES/serial0; then \
> +               echo 0;\
> +       elif cmp -s $ALIASES/uart0 $ALIASES/serial1; then \
> +               echo 1; \
> +       else \
> +               exit 1; \
> +       fi\
> +'", SYMLINK+="serial%c"
> +
> +KERNEL=="ttyS0", PROGRAM="/bin/sh -c '\
> +       ALIASES=/proc/device-tree/aliases; \
> +       if cmp -s $ALIASES/uart1 $ALIASES/serial0; then \
> +               echo 0; \
> +       elif cmp -s $ALIASES/uart1 $ALIASES/serial1; then \
> +               echo 1; \
> +       else \
> +               exit 1; \
> +       fi \
> +'", SYMLINK+="serial%c"
> --
> 2.12.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

