Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7F52E00803; Mon,  7 Mar 2016 19:47:26 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34092E0071E
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 19:47:25 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id q184so124371qkb.0
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 19:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Kw5mOsflk16pG0O/PgdAsHeRwSVzQvPaLOWNX5dE+ME=;
	b=iMiMkbE8+VY5Ped4j7UUNN96IvZ5tSYXIk7ca3TiusP7qHEYd1Ruz4euiIOduZyH89
	mzEvniB24KL23M/QZ7vqMnlcaenoTgutPVknc9wvVKqJQOWTe1Th27LD51ShMZJtD1mf
	RiCU9j9MQwV64KuoRFeFa7zHfLV/3hRXdnfmbAazmsGU5vbGwNaZsBCgGiC34zw42c9z
	GTxymn6Ngd9tCUiiYCxYWLZA976ELdFxPIR9TatEDPkkKsCnT3/DhihXejd2cWRUSEZe
	r4svYwnNLoM33S/EboTstqkU43io9FYn2pqrEvg8XBhBFrN/h+l3x/fQeJXRQ4m4aRcK
	7rBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Kw5mOsflk16pG0O/PgdAsHeRwSVzQvPaLOWNX5dE+ME=;
	b=hJcde9yVf76e4YnJGL3jQ6h19GlzxW2BJZPlfdC5lKFP2YCZhHpkWkstJ5DXjJPlnI
	yKMe1ihTmJHv00XzsiLc4kBdaPFXBdDZp33sKVlk6UnyS3PBPunOcVkdGRllWNaGyG/g
	2P+r/2LdCtbvKoDfwytl1gGBsm6PytnLau0GQFHjElCnxN28f9Vc9D3z9MficIfmUPm+
	LfTEqDwClLEaySQwj33/ELxW4yax+zI0JFJaDqxzanhwUrGn4UMzbcwpIjiQZazj1tbM
	fL9HRqJ/6pCn8KW7an5QwvoptdHfWOSbSZ96GYegy7EAWU1rkANNms5v/x/csnc0d5QY
	jXpQ==
X-Gm-Message-State: AD7BkJIx9hj/9414xQ/75+K+/fbfYCymnohTij2as5iskN3CIotpH5SdEGJLqlIXy39WIBALCew8vXqAZ4NNXg==
X-Received: by 10.55.74.197 with SMTP id x188mr33138087qka.104.1457408844913; 
	Mon, 07 Mar 2016 19:47:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Mon, 7 Mar 2016 19:46:55 -0800 (PST)
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 Mar 2016 10:46:55 +0700
Message-ID: <CAMKF1sqj9s9ZkMAmNYaZO0NWea7Zey2p24QTX8p4yeXt80PWgg@mail.gmail.com>
To: Stephen Smalley <sds@tycho.nsa.gov>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 01/13] Add include file for the 20160223 SELinux userspace release.
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
X-List-Received-Date: Tue, 08 Mar 2016 03:47:26 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 8, 2016 at 3:52 AM, Stephen Smalley <sds@tycho.nsa.gov> wrote:
> Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
> ---
>  recipes-security/selinux/selinux_20160223.inc | 5 +++++
>  1 file changed, 5 insertions(+)
>  create mode 100644 recipes-security/selinux/selinux_20160223.inc
>
> diff --git a/recipes-security/selinux/selinux_20160223.inc b/recipes-security/selinux/selinux_20160223.inc
> new file mode 100644
> index 0000000..4c1ef6b
> --- /dev/null
> +++ b/recipes-security/selinux/selinux_20160223.inc
> @@ -0,0 +1,5 @@
> +SELINUX_RELEASE = "20160223"
> +
> +SRC_URI = "https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
> +
> +include selinux_common.inc

this should go to meta-selinux

> --
> 2.4.3
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

