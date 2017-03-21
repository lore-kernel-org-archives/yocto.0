Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDD23E00A0A; Tue, 21 Mar 2017 09:49:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 507F7E00992
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:49:23 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id n11so4082373wma.0
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CDLdHK9FM/C1/MsNjX0vRZcHc5TqiMsGufOdVlFFujU=;
	b=b8mD9ahMdkSQLN+PZbCaKuQAL7fK9nMPs02uZi54GFV7KeiuPoGBYwyRj4xSeWmOth
	lAGP2RZJa5mwESQ4+QWgr3HSRt/jSciF2MpyVaAk89yEmroMypoNBtwWbALg24MFnQMO
	/KdNSvHm6xv32OwgJesMKUGBzJXgOhexT2/vrMNyCjG33csbHpAYCu4WtUm3D1J4cd4z
	sUVFxwkW2gj7TK824kxHIsyM3acDtoG2HHvXqHqbGbfrAR8abHcEK/eLfqdJgdWOR2Rd
	/4pGsRH+Dnq9zjcOO4Ff8dMedXDMD95brvW4xL3eUiiCHESu9serxOg2Mes/XDRP3IK7
	Xyew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CDLdHK9FM/C1/MsNjX0vRZcHc5TqiMsGufOdVlFFujU=;
	b=IB6vy3IvQGnjK10IG9BldcVgYdJFTJXgKquVNTZ0mBf1ezlNYrUdzoOUgvVjkmdfaX
	bWK43ErZYd3D01Vpq/pSqq/kUuS9WffxhlfOUDSddOiY9X7GzqZ2n3mWHzBp0HVKRUgy
	imrqQNhlXmXsJVstjtycFVZfJHJzq25k8MqTfwo2V/GVVOfKjAxnphVu0CJPNS7RId+d
	I47DCObJlf/olZC370y4E4HMwWh/W1VGv8T726FrAzI1HRi/wgSedUF1beBD6qRYpdUN
	MpuyWpiNzfV0k/BXK2rnLIfZaftVm21QjBWEYaK5FeaCqo7mfwGyPVevMt2XF7IBCXRd
	Z4QQ==
X-Gm-Message-State: AFeK/H0ZGjOG4HrdYAXLkueDuXz3CRfe3JvLc41vi8my5NdK59GB2IaIAG5w7xaFShecjthLdSwBfQk6BZGVUg==
X-Received: by 10.28.140.135 with SMTP id o129mr3685378wmd.101.1490114963140; 
	Tue, 21 Mar 2017 09:49:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.162 with HTTP; Tue, 21 Mar 2017 09:48:52 -0700 (PDT)
In-Reply-To: <20170321161804.21347-1-andrei@gherzan.ro>
References: <20170321161804.21347-1-andrei@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Mar 2017 09:48:52 -0700
Message-ID: <CAMKF1spXPtTy4Na+PKcKD1UjgRCAdqcX0eJwaV5ae18XwYUOgw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] omxplayer: Add dependency on coreutils-native
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
X-List-Received-Date: Tue, 21 Mar 2017 16:49:26 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 21, 2017 at 9:18 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Internal ffmpeg configure uses pr which is provided by coreutils-native:
> | ./configure: line 471: pr: command not found

this should probably we added to OE-core allowed binaries whitelist.

>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index c196fbf..72297d0 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -7,7 +7,7 @@ SECTION = "console/utils"
>  LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>
> -DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil"
> +DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil coreutils-native"
>  PR = "r4"
>
>  SRCREV = "62fb580260adb9b01e5694bb4374fb9a5f6f1021"
> --
> 2.12.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

