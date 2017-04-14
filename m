Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC366E00B49; Fri, 14 Apr 2017 16:43:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FCF0E00B3F
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 16:43:26 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id o81so692976wmb.0
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 16:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+5w2oJ7NzI6833isyFHuYm7631zu/Hl8BToMeXbKOYM=;
	b=uHqunSI3eQeR+0jhoq8XTYl3c01BKfedcqjXS3WLhbCJmjKi1aHWNhhQVaC0kBIxHy
	T1fF2WKoQuYLbvvARfUPyRJTi4B/v0Og2a01BpCElNF9cqnGWUQgF62r34WMTLqw4jwg
	lZTKTxJhvekLjXGEebyc/fQ6r+G9jIBXoIFSsVplEYyySBJF/kqTJV9pgBOZsmdX3Djn
	T9TYPxQ/wH44thDuwI2QX9oTbZ+R8sL2OzcD1+VhhhzuF7e+vhYEW97gmLuEJKy1HqXM
	q2kDW2U9vfuvbu4CjPb+bH1a009uKqww2lvAO5NDgVFJ4RrBcrNwb8Qy9UeGfqJKmDih
	THUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+5w2oJ7NzI6833isyFHuYm7631zu/Hl8BToMeXbKOYM=;
	b=XcdiPeFEqHBryBDfuB0ek34jQHT60a3J8rftRwQtnt4g+TG1evSpSQIoWbgx4+6BJT
	oGUd6i96n485hVsjeYGI7XFE/WzLwR+2PVAxMuViiwB1I9cnLlrR3O2xNEK5CWdSfT13
	QTWNTxse190bpPBXbWxCWHPAY6xySJgxEBliLN5EQM4H+a5+xXHgCeSP+iYqVY+fUP9F
	oOmqwXPoihNjTFa0QcNj+6QtKiUT8vh2vaBrC50H73TIO7QCDS0TQgOfF5V/AimQgp9R
	ZJy8oaq1x7V+7PwiD6JhSkyP2FCZQrLCryisAGwgdaogY2G05ZSE2N5JfH6b9I2CUpBs
	S+2w==
X-Gm-Message-State: AN3rC/6UrG8D/jj0iSMoiFyRBV0yRnR3wNK3P/8FiQWSgNH9iipz9NqK
	9mufDtiTH9wXeZyyk9XrvUg9A5G6IQ==
X-Received: by 10.28.234.205 with SMTP id g74mr641892wmi.13.1492213406127;
	Fri, 14 Apr 2017 16:43:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Fri, 14 Apr 2017 16:42:55 -0700 (PDT)
In-Reply-To: <20170414201313.3138-4-andrei@gherzan.ro>
References: <20170414201313.3138-1-andrei@gherzan.ro>
	<20170414201313.3138-4-andrei@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 14 Apr 2017 16:42:55 -0700
Message-ID: <CAMKF1soBjHCNDqL62DM-6qgjTdau1uuPrMBkTn=q2uGEpcC_eA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/7] linux-raspberrypi_4.9: Bump to 4.9.21
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
X-List-Received-Date: Fri, 14 Apr 2017 23:43:28 -0000
Content-Type: text/plain; charset=UTF-8

I posted a similar patch earlier

On Fri, Apr 14, 2017 at 1:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> index 3aba67b..c0e8b83 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.9.13"
> +LINUX_VERSION ?= "4.9.21"
>
> -SRCREV = "28ea32b9afb5d813986c4ab940c26fe298d80ed2"
> +SRCREV = "5e4ee836560d4c0371e109bf469e1ad808ae7a44"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
>  "
>  require linux-raspberrypi.inc
> --
> 2.12.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

