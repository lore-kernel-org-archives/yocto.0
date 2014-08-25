Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADD95E00809; Sun, 24 Aug 2014 23:37:10 -0700 (PDT)
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
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E8FAE00769
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 23:36:59 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id rd3so20389431pab.14
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 23:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=KdpkR5FV+D7kyYWoEOJlgPhIxak0tWOQZUH0OeiDfQs=;
	b=oAnc7lq5OQxcqKPOUeZECWA4ZTtR5Zz8lyexQOHcFxA1guN2ZY+tyxF7KWNWZpv5yH
	9CWeBIlwLnzoG6JD0ctLA8aNxPH/VuxBivVWmM58D057Ve7qHPy0kDGMmfa9F/y5SxBg
	1UAKZHK0wesnPYqui0t4D0SU0Z/8lkd3ZEbyEcuNl88k5ad0D8NOK3DeVNlPehyAnyIb
	OZUwTrZNtSuokiPWKx/M2t2EsgKDGHAQATR1kVTteLmoIioiKodiT66VfCqQel3WSANq
	lr3ms92Wc5vxIM7tib2MOc2Og8mp9h19RY5WaS71BEhfB6iAuH+kFR5EhLf+KJqX1lb7
	lZXA==
X-Received: by 10.68.173.98 with SMTP id bj2mr1894049pbc.157.1408948619713;
	Sun, 24 Aug 2014 23:36:59 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id jz9sm8018296pbc.48.2014.08.24.23.36.58
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 24 Aug 2014 23:36:59 -0700 (PDT)
Date: Sun, 24 Aug 2014 23:40:46 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Message-ID: <20140825064046.GF1014@haswell>
References: <35e32346a105465791b484fe34a2a011@EPBYMINSA0001.epam.com>
MIME-Version: 1.0
In-Reply-To: <35e32346a105465791b484fe34a2a011@EPBYMINSA0001.epam.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH] update jdk and jre to version 67
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
X-List-Received-Date: Mon, 25 Aug 2014 06:37:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-21 17:01:47, Vladimir Redzhepov wrote:
> From f0305398a51435f407e41a8f0eaf83f8bdd13cca Mon Sep 17 00:00:00 2001
> From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> Date: Thu, 21 Aug 2014 19:43:29 +0300
> Subject: [PATCH] update jdk and jre to version 67
> 
> Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> ---
> recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb   | 10 +++++-----
> recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb | 10 +++++-----
> recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb   | 10 +++++-----
> recipes-devtools/oracle-java/oracle-jse-jre-x86-64_1.7.0.bb | 10 +++++-----
> recipes-devtools/oracle-java/oracle-jse.inc                 |  4 ++--
> 5 files changed, 22 insertions(+), 22 deletions(-)
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
> index 3a4e20d..38ceef0 100644
> --- a/recipes-devtools/oracle-java/oracle-jse.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse.inc
> @@ -2,8 +2,8 @@ LICENSE_FLAGS = "oracle_java"
> LICENSE = "Oracle_Binary_Code_License_Agreement"
> LIC_FILES_CHKSUM = "\
>                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=98f46ab6481d87c4d77e0e91a6dbc15f \
> -              file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3a11238025bf13b87f04753183ffeb90 \
> -                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=c339b34e3da6673d2c5950d0f8808f8c \
> +             file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
> +                file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb \
>                "

what changed in these files that ensues change in checksums ?

