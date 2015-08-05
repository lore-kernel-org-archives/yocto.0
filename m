Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 572EBE00A38; Wed,  5 Aug 2015 12:47:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA4FEE009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 12:47:06 -0700 (PDT)
Received: by qgj62 with SMTP id 62so12850093qgj.2
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 12:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=K/zWfRzJd8JFCJMi+/V7kxc4u6VZioEDT/Pt4giq0JA=;
	b=W3UY52VucEmJcAstrfup8QXMYF+xG6ZQVWC+Dp7r61uuloAUAbgEHRD5kXjIdNW7NO
	DDuUDWJcZQsQfTi1eQG+G5ajxnq4DopBLVvwaHdu1eAwybJXSGeBuNEFAVIQh+wZ2qir
	vpqbqRmFC+ZJqkjOYGtVB5zG5bWGLIYb16PlHSGjLsu1pxdG/ZkZTxN4g4yx/BhC1RS+
	zxvLI3VZpL6zOEaL1IHRuS1zlOavxkSdWY0wFyHsh0Sej6gXDNS3KPtiyJF8XB6SLaZz
	jMQnkWGR00IM+ldQZsy0qMyNFOXvqZIrGORcQY+ykJkHKV9oR/wJk21uIpH+JTOP7jZu
	Unrg==
X-Received: by 10.140.194.198 with SMTP id p189mr21144819qha.42.1438804026144; 
	Wed, 05 Aug 2015 12:47:06 -0700 (PDT)
Received: from email.parenteses.org.gmail.com (email.parenteses.org.
	[198.199.72.94]) by smtp.gmail.com with ESMTPSA id
	h49sm1918879qgd.24.2015.08.05.12.47.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Aug 2015 12:47:05 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: John Davis <jfdavis@anuvainnovations.com>
References: <87vbd0xxhj.fsf@email.parenteses.org>
	<CAPTvctUQOCU_5v7jOBqSpZpOs_BCGL=5aqijGiSuQOWGRO3weg@mail.gmail.com>
	<CAPTvctWPkXA2_1Y2hiVEUFQMReOFxKiiz2H4He2LGALPWUbnAQ@mail.gmail.com>
Date: Wed, 05 Aug 2015 19:47:04 +0000
In-Reply-To: <CAPTvctWPkXA2_1Y2hiVEUFQMReOFxKiiz2H4He2LGALPWUbnAQ@mail.gmail.com>
	(John Davis's message of "Fri, 31 Jul 2015 14:34:24 -0400")
Message-ID: <87d1z1v7pj.fsf@email.parenteses.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java] oracle-jse-jre fetch issue
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
X-List-Received-Date: Wed, 05 Aug 2015 19:47:08 -0000
Content-Type: text/plain

Hi John,

On Fri, 31 Jul 2015 14:34:24 -0400 John Davis <jfdavis@anuvainnovations.com> wrote:

> fwiw, I am trying to fix it like so:
>
> diff --git
> a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> index bfa8011..13918d8 100644
> ---
> a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> +++
> b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> @@ -1,9 +1,16 @@
> -PV_UPDATE = "60"
> -BUILD_NUMBER = "19"
> +#PV_UPDATE = "60"
> +#BUILD_NUMBER = "19"
> +PV_UPDATE = "75"
> +BUILD_NUMBER = "13"
> require oracle-jse-ejre.inc
> -SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b$
> {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> +#SRC_URI = "http://download.oracle.com/otn/java/ejre/7u$
> {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> +SRC_URI = "http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b$
> {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz"
> +
> +#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> +#SRC_URI[sha256sum] =
> "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> +
> +SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
> +SRC_URI[sha256sum] =
> "29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"
> -SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> davis@yoshi:~/progs/meta-oracle-java/recipes-devtools/oracle-java$ git
> diff
> diff --git
> a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> index bfa8011..13918d8 100644
> ---
> a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> +++
> b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> @@ -1,9 +1,16 @@
> -PV_UPDATE = "60"
> -BUILD_NUMBER = "19"
> +#PV_UPDATE = "60"
> +#BUILD_NUMBER = "19"
> +PV_UPDATE = "75"
> +BUILD_NUMBER = "13"
> require oracle-jse-ejre.inc
> -SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b$
> {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> +#SRC_URI = "http://download.oracle.com/otn/java/ejre/7u$
> {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> +SRC_URI = "http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b$
> {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz"
> +
> +#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> +#SRC_URI[sha256sum] =
> "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> +
> +SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
> +SRC_URI[sha256sum] =
> "29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"
> -SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> -SRC_URI[sha256sum] =
> "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> index 9a1fdfe..4dc2fe9 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> @@ -8,10 +8,16 @@ DESCRIPTION = "This is the proprietary JRE from
> Sun/Oracle, with the Hotspot JVM
> The JRE (Java Runtime Environment) is needed on a system to run Java\
> applications and applets"
> -JDK_JRE = "ejre"
> +#JDK_JRE = "ejre"
> +JDK_JRE = "jdk"
> require oracle-jse.inc
> LIC_FILES_CHKSUM = "\
> - file://${WORKDIR}/${JDK_JRE}${PV}_$
> {PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
> + file://${WORKDIR}/${JDK_JRE}${PV}_$
> {PV_UPDATE}/COPYRIGHT;md5=0b204bd2921accd6ef4a02f9c0001823 \
> file://${WORKDIR}/${JDK_JRE}${PV}_$
> {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb
> \
> "
> +
> +#LIC_FILES_CHKSUM = "\
> +# file://${WORKDIR}/${JDK_JRE}${PV}_$
> {PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
> +# file://${WORKDIR}/${JDK_JRE}${PV}_$
> {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01
> \
> +# "

Thanks for sharing your changes.  Would you mind sending a proper git
patch?  I'm having a hard time applying your diff.  I suppose some lines
got broken by the e-mail editor.

Best wishes.
Mario
-- 
http://www.ossystems.com.br

