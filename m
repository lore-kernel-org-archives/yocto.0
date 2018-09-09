Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85599E006F1; Sun,  9 Sep 2018 13:03:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B94F5E00460
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2018 13:03:49 -0700 (PDT)
Received: by mail-io1-f66.google.com with SMTP id y10-v6so5345749ioa.10
	for <yocto@yoctoproject.org>; Sun, 09 Sep 2018 13:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=WcgjbEq5n6GfprkOnl6/Uh9B/EKqqKhZs/ndlmW/Su8=;
	b=jBRqhWE4YjRXpN2eP8QTZpUOHdt8tT3PDywJfCoP3jHY2LJyifmj1wcEWLa6uXThto
	wFXX5fpFiBRxSr+VKeestz+HegT06E75Pi4PTawEpgEf04u65UuRJfzs8ge3gl0kr3sH
	fgDSbL9qhG92f9DtySZlAH0eJ32Sqain988i/2z0Y+9b5EKjYk7p0irBxPd+emzoWR5x
	u1jmzt7BdDk7JywJZXi+5o8DnJ0INYmwzeD8XJQANjOgheyqhZ2rKxOOCPJT0eZSmp47
	l8zkN1Ti5v3V/f5p3iq9j39EuHMmt7+yft0mdhFIlCKzgzOEMcDaBlJ3sD6hzc06Hb+a
	Wv6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=WcgjbEq5n6GfprkOnl6/Uh9B/EKqqKhZs/ndlmW/Su8=;
	b=kDZbBzlRfbhSpyT2eF2a+vFnpq9yWGjp+8S5/sbExChxKRgaD7r25KaCoM4tqe4AgP
	7hCfUFvFSttQBBG/pxK63jXKsXCSnG1iDezDxkFFee5O1btnvN9UlkRaVEUwY5teAOnW
	saCYuaKHjb9R96lXO9CnllIBkxFxzF9f7+7WmWhuqbFj0dod4LVM6UuLZfrz08JtbWNc
	UD9PXHFbslkkwLOY2wQ42GVTTARiW6WpGoVEXC2AUo5FIWfRbeuYhyK/BvOKnT9LogiC
	SpQKqjv5Lc4Z2hC8866Zb9UqAmqh/vHiyNViRPPblQZsvk4VuLc2MaNeKijr9TPDgAD6
	AEHg==
X-Gm-Message-State: APzg51CUUx2pNARCGwDRnM38VrGxYBxuoFQdBkj+32WulbYbS86T0B0/
	PRgJpjW6/c4rnM8/pUsyYOQ2Ci9WDtGieg==
X-Google-Smtp-Source: ANB0VdYXGv9ZqTmpgBtv0onAtT92HBZvfOke9YSsC/iTmoV4fRNigWVlTo/E0ut+6I+Q2Y23V5TvsQ==
X-Received: by 2002:a6b:f919:: with SMTP id
	j25-v6mr13414412iog.280.1536523428819; 
	Sun, 09 Sep 2018 13:03:48 -0700 (PDT)
Received: from deserted.net (23-233-29-148.cpe.pppoe.ca. [23.233.29.148])
	by smtp.gmail.com with ESMTPSA id
	t134-v6sm6384582itb.41.2018.09.09.13.03.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Sep 2018 13:03:47 -0700 (PDT)
Received: by deserted.net (Postfix, from userid 1000)
	id C829221A006B; Sun,  9 Sep 2018 16:03:45 -0400 (EDT)
Date: Sun, 9 Sep 2018 16:03:45 -0400
From: Joe MacDonald <joe@deserted.net>
To: Eric Chanudet <chanudete@ainfosec.com>
Message-ID: <20180909200344.GA21403@deserted.net>
References: <20180909192432.29868-1-chanudete@ainfosec.com>
MIME-Version: 1.0
In-Reply-To: <20180909192432.29868-1-chanudete@ainfosec.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] policycorutils: package files in base_sbindir.
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
X-List-Received-Date: Sun, 09 Sep 2018 20:03:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks Eric.  Unfortunate oversight from a last minute change to
handle some other changes around policycorutils.

-J.

[[yocto] [meta-selinux][PATCH] policycorutils: package files in base_sbindi=
r.] On 18.09.09 (Sun 19:25) Eric Chanudet wrote:

> SBINDIR was changed to ${base_sbindir} in commit:
> 8cc9c17 policycoreutils: fix installed-but-not-shipped on updated recipes
>=20
> FILES_${PN}-* must now capture files installed in ${base_sbindir}
> accordingly.
>=20
> Signed-off-by: Eric Chanudet <chanudete@ainfosec.com>
> ---
>  recipes-security/selinux/policycoreutils.inc | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>=20
> diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-secur=
ity/selinux/policycoreutils.inc
> index 98000de..85ff164 100644
> --- a/recipes-security/selinux/policycoreutils.inc
> +++ b/recipes-security/selinux/policycoreutils.inc
> @@ -79,26 +79,25 @@ PACKAGES =3D+ "\
>  	${PN}-setsebool \
>  "
>  FILES_${PN}-fixfiles +=3D "${base_sbindir}/fixfiles"
> -FILES_${PN}-genhomedircon +=3D "${sbindir}/genhomedircon"
> +FILES_${PN}-genhomedircon +=3D "${base_sbindir}/genhomedircon"
>  FILES_${PN}-loadpolicy +=3D "\
>  	${base_sbindir}/load_policy \
> -	${sbindir}/load_policy \
>  "
>  FILES_${PN}-newrole +=3D "\
>  	${bindir}/newrole \
>  	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/new=
role', '', d)} \
>  "
>  FILES_${PN}-runinit +=3D "\
> -	${sbindir}/run_init \
> -	${sbindir}/open_init_pty \
> +	${base_sbindir}/run_init \
> +	${base_sbindir}/open_init_pty \
>  	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run=
_init', '', d)} \
>  "
>  FILES_${PN}-dbg +=3D "${prefix}/libexec/selinux/hll/.debug"
>  FILES_${PN}-secon +=3D "${bindir}/secon"
> -FILES_${PN}-semodule +=3D "${sbindir}/semodule"
> +FILES_${PN}-semodule +=3D "${base_sbindir}/semodule"
>  FILES_${PN}-hll +=3D "${prefix}/libexec/selinux/hll/*"
>  FILES_${PN}-sestatus +=3D "\
> -	${sbindir}/sestatus \
> +	${base_sbindir}/sestatus \
>  	${sysconfdir}/sestatus.conf \
>  "
>  FILES_${PN}-setfiles +=3D "\
> @@ -106,7 +105,7 @@ FILES_${PN}-setfiles +=3D "\
>  	${base_sbindir}/setfiles \
>  "
>  FILES_${PN}-setsebool +=3D "\
> -	${sbindir}/setsebool \
> +	${base_sbindir}/setsebool \
>  	${datadir}/bash-completion/completions/setsebool \
>  "
> =20
> --=20
> 2.18.0
--=20
-Joe MacDonald.
:wq

