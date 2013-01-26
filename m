Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 868E7E00724
	for <yocto@yoctoproject.org>; Sat, 26 Jan 2013 14:58:37 -0800 (PST)
Received: by mail-ee0-f46.google.com with SMTP id e49so737263eek.19
	for <yocto@yoctoproject.org>; Sat, 26 Jan 2013 14:58:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent:x-gm-message-state;
	bh=WQp7hNzp/H0uRsQwfsYdQEDQ19j41Hlw4kOUKB8etvU=;
	b=HbxqNtbyPJvqBSF8dNPwhhfC5n3a9gw9x1Jnfq0aS/hNwNACaJIYWR2jU1lpqvh1Ph
	dNX9tRj4B6Erqjg049E/Whl+lJ76X7Wu3l8qfj1m7cXccSJqIQaF0nelktakg4n2II5N
	EsG/G2hQR2vj8Usdt0b9OsQOMsWALnpzlc/xhiBMryt1kSYzESrJm14sVql/GrPtCCtS
	YxEK+IcDqBfj1tcuo0r4WWq0qxNcYrDkyxaJCkcePFcjmbbHhLKm4qaGD/5nmB/Eew14
	36AcXFdjIt4KK53moivJhLRnWT9lOhb/cMFBRAxo2FZD1FKNwj2uuclsYGmrSFDitlRu
	iaRA==
X-Received: by 10.14.177.1 with SMTP id c1mr34397696eem.8.1359241115845;
	Sat, 26 Jan 2013 14:58:35 -0800 (PST)
Received: from gmail.com (5-13-203-15.residential.rdsnet.ro. [5.13.203.15])
	by mx.google.com with ESMTPS id q5sm8575587eep.11.2013.01.26.14.58.34
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sat, 26 Jan 2013 14:58:34 -0800 (PST)
Date: Sun, 27 Jan 2013 00:58:37 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20130126225837.GA30017@gmail.com>
References: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
	<1359064662-17052-3-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1359064662-17052-3-git-send-email-schnitzeltony@googlemail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQnl7K8disAd/0ISqY90n3RLg0lPLtBVx5xoWjepKC45r6PED/28biWN4vgslUMrDW1StexK
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] xserver-xf86-config: fix do_install
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 26 Jan 2013 22:58:37 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Jan 24, 2013 at 10:57:42PM +0100, Andreas Müller wrote:
> for some reason wildcards don't work in current head. Error message was:
>
> | DEBUG: Executing shell function do_install
> | install: cannot stat `/home/Superandy/tmp/oe-core-eglibc/work/raspberrypi-angstrom-linux-gnueabi/xserver-xf86-config/0.1-r18/xorg.conf.d/*': No such file or directory
>

I can't reproduce your error. For me this works. Maybe was something broken in
oe-core? Anyway it seems to be fixed now. Would you retest it please

> Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
> ---
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    6 ++++--
>  1 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> index 65931e2..a8b8e8c 100644
> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -1,12 +1,14 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
>  # Don't forget to bump PRINC if you update the extra files.
> -PRINC := "${@int(PRINC) + 5}"
> +PRINC := "${@int(PRINC) + 6}"
>
>  THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>  FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
>
> -SRC_URI_append_raspberrypi = " file://xorg.conf.d/* "
> +SRC_URI_append_raspberrypi = " \
> +	file://xorg.conf.d/10-evdev.conf \
> +"
>
I don't find this lin ebreak necesssary here. And if it was, don't combine
formating commits with other fixes.

Thanks,

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12


