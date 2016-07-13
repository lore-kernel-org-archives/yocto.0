Return-Path: <christian.fuchs@fos4x.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49112E00D05; Wed, 13 Jul 2016 00:37:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6278E00CFF
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 00:37:38 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id q132so31690346lfe.3
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 00:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fos4x.de; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=M2G98Uive95cQQIcObkTMtl0NfZm/KHA+lRQG1RX/Kc=;
	b=EY/2JgMOtOd0F3+pOTFt32A4q9VVH+InROW60H+3E003rjDdSXF8HM8jkMyNVe1R4a
	FVueOQtXWsqCwUCl8iTUJ5tbdTamGpvNgIGqpd0+C8bdh3Q4MMfLug7uM59KVMaAPWBH
	rwPOLWs8vmrd2xhLtJb+ZjF5W97G7eveMcDOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=M2G98Uive95cQQIcObkTMtl0NfZm/KHA+lRQG1RX/Kc=;
	b=Cdm91MzqyoVj3rq+Zr7pIa8NpxK/LrY/fKIIQQEfWWWHG0njAOBc1EqVPYYPHRSQKB
	HSS3Kh9UagRnWZGeAiNLDJOy6nscW475HC9yA6WwDXuDIK2daFcu5SJwmY2AG50RtbUx
	iUswYkT/WZ8H87Y4EoFhc3TlYBnKzSRlHZIKFGpJ5Xi5GIezpRxECwq5BWksu6bLCBD7
	U9eUHR82KZsE99ImI83AA1yklPe0LyWOunkPzUi6jcBBRtfiE5rgyZFCbDJFqa2L0VW4
	qpz+7J1HBh8PNmYz7JXaDQuOqEf5Mo+J5rh+fAVYPisP2DD3DyIYEuNSeIQkMHWvGFUh
	bxtQ==
X-Gm-Message-State: ALyK8tI00FmmJwAK23m2mshLGB075HmS2F0+RfitA5bfU3ScUiAqWGNwMVcjkT4evB9iZw==
X-Received: by 10.25.146.209 with SMTP id u200mr3559527lfd.224.1468395456559; 
	Wed, 13 Jul 2016 00:37:36 -0700 (PDT)
Received: from [10.0.102.17] (pd907f7af.dip0.t-ipconnect.de. [217.7.247.175])
	by smtp.googlemail.com with ESMTPSA id
	d142sm95007lfb.22.2016.07.13.00.37.35 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jul 2016 00:37:35 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Christian Fuchs <christian.fuchs@fos4x.de>
Message-ID: <7d83b2b9-98e1-c612-9e52-df5674fa9ff5@fos4x.de>
Date: Wed, 13 Jul 2016 09:37:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
Subject: Adding dependency for rrdtool-perl to recipe
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
X-List-Received-Date: Wed, 13 Jul 2016 07:37:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I want to create a recipe for a tool called SmokePing.

My recipe so far looks like this:
> SUMMARY = "SmokePing keeps track of your network latency"
> HOMEPAGE = "oss.oetiker.ch/smokeping"
> SECTION = "console/network"
> LICENSE = "GPL-2.0"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=09d77789fe32be35acde9637a5ee39b1"
>
> SRC_URI = "http://oss.oetiker.ch/smokeping/pub/smokeping-2.6.11.tar.gz \
>            file://0001-Hardcoded-version-number.patch \
>            "
> SRC_URI[md5sum] = "702392f5f3599f7eb1cc47eb2d192cb9"
> SRC_URI[sha256sum] = 
> "f2b3c386e95a74af2b1e7aec6410d0a58852339f00e9963f3c770cfd85ba30dd"
>
> S = "${WORKDIR}/smokeping-${PV}"
>
> RDEPENDS_${PN} = "fping"
> DEPENDS = "rrdtool perl"
>
> inherit autotools

With the following patch file:
> Subject: [PATCH] Hardcoded version number
>
> ---
>  configure.ac | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/configure.ac b/configure.ac
> index 7b7cd51..3f95e86 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -17,7 +17,7 @@
>  #
>
>
> -AC_INIT([smokeping],m4_esyscmd([tr -d '\n' < VERSION]),[tobi@oetiker.ch])
> +AC_INIT([smokeping],[2.6.11],[tobi@oetiker.ch])
>  AC_PREREQ([2.59])
>  AC_CONFIG_AUX_DIR(conftools)
>
> -- 
> 1.9.1
>

Trying to build the recipe like this yields the following error:

> checking checking for perl module 'RRDs'... Can't locate RRDs.pm in 
> @INC (you may need to install the RRDs module) (@INC contains: 
> /usr/thirdparty/lib/perl5 /etc/perl /usr/local/lib/perl/5.18.2 
> /usr/local/share/perl/5.18.2 /usr/lib/perl5 /usr/share/perl5 
> /usr/lib/perl/5.18 /usr/share/perl/5.18 /usr/local/lib/site_perl .) at 
> -e line 1.
> | BEGIN failed--compilation aborted at -e line 1.
> | Failed
> |
> | ** Aborting Configure ******************************

 From the error message I guess that the perl library for RRD is missing 
in sysroot. The library is built as part of the rrdtool recipe, but it 
is moved to a separate package called "rrdtool-perl". How can I tell 
bitbake to install this package before building my recipe?

Kind regards,
Christian

-- 
Christian Fuchs, M.Sc. - Software-Developer
fos4X GmbH - www.fos4x.de - T +49 89 999 542 15 - F +49 89 999 542 01
Thalkirchner Str. 210, Geb. 6 - D-81371 München; AG München HRB 189 218
Managing Directors: Dr. Lars Hoffmann, Dr. Mathias Müller


