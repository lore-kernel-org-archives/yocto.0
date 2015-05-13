Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43C48E00820; Wed, 13 May 2015 06:22:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02911E0027F
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:22:15 -0700 (PDT)
Received: by iebpz10 with SMTP id pz10so31617846ieb.2
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:22:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Z0oPG34kVk1Iyk1L9aj4j6UIVs4zFBDdqAk79CWWBU8=;
	b=bK9Y0euYA2VpmtNPTCjjgO6Jq8AtMqSytB4SaEdQ/z56HrV56DiPW5rIbTQE0vpr/W
	motbAxbjjYtpFUHdT4wsVMiAFsnLVvtMO8OYK47bdsTi3BRuvX2/XOMH2pKwPPhQyqWq
	OVq5jXVj3J//T0QW8Ar2mG16Fw+n2PSPvMB0Cu7nZm0vNDQLm661R3iXARvhkPHOMhTx
	cicuDe8WXkD4V7ZzkGouW93lD2VeCiJz7ob3EGvIHT0sbD5PeKfUz5h4hvOl71RpwX6a
	iFuVoWRKgKNBafd0GgMPEw2M29Ihal5lmwJn1vBxTcb77ants5UKqY80VlwuQ9kI1wZI
	3rVw==
X-Gm-Message-State: ALoCoQmntLClTsBYCiWDIvw35T4ZHm9wfsKuFfIc8JsDHfjZSClUbhp3INq9UdpVLki6oS8N4u2J
MIME-Version: 1.0
X-Received: by 10.42.235.83 with SMTP id kf19mr8827294icb.41.1431523335056;
	Wed, 13 May 2015 06:22:15 -0700 (PDT)
Received: by 10.36.57.134 with HTTP; Wed, 13 May 2015 06:22:15 -0700 (PDT)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
References: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
Date: Wed, 13 May 2015 15:22:15 +0200
Message-ID: <CAFicg85wB+c=884wS3yM-7mc4uwGLKw19Gsas4PKuRc5dwB4iQ@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Mario Domenech Goulart <mario@ossystems.com.br>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH 1/6] oracle-jse-jdk: split recipe into per-architecture recipes
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
X-List-Received-Date: Wed, 13 May 2015 13:22:18 -0000
Content-Type: text/plain; charset=UTF-8

Hi Mario,

On Tue, May 12, 2015 at 10:56 PM, Mario Domenech Goulart
<mario@ossystems.com.br> wrote:
> Due the way BitBake parses recipes, including architecture-specific
> include files was happening too late, causing native variants to pick
> wrong include files, thus ending up generating broken content.
>
> Setting COMPATIBLE_HOST guarantees that native installations will be
> consistent.
>
> Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
> ---
>  ...acle-jse-jdk-i586.inc => oracle-jse-jdk-i586_1.7.0.bb} |  2 ++
>  ...-jse-jdk-x86-64.inc => oracle-jse-jdk-x86-64_1.7.0.bb} |  2 ++
>  recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb      | 15 ---------------
>  3 files changed, 4 insertions(+), 15 deletions(-)
>  rename recipes-devtools/oracle-java/{oracle-jse-jdk-i586.inc => oracle-jse-jdk-i586_1.7.0.bb} (90%)
>  rename recipes-devtools/oracle-java/{oracle-jse-jdk-x86-64.inc => oracle-jse-jdk-x86-64_1.7.0.bb} (90%)
>  delete mode 100644 recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586.inc b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> similarity index 90%
> rename from recipes-devtools/oracle-java/oracle-jse-jdk-i586.inc
> rename to recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> index 0667161..9fb2188 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
> @@ -7,3 +7,5 @@ SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_N
>
>  SRC_URI[md5sum] = "715b0e8ba2a06bded75f6a92427e2701"
>  SRC_URI[sha256sum] = "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e4348b9a01e9ebaa85c"
> +
> +COMPATIBLE_HOST = "(i586-linux)"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64.inc b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> similarity index 90%
> rename from recipes-devtools/oracle-java/oracle-jse-jdk-x86-64.inc
> rename to recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> index f18ce55..a6d0bc7 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
> @@ -7,3 +7,5 @@ SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_N
>
>  SRC_URI[md5sum] = "81e3e2df33e13781e5fac5756ed90e67"
>  SRC_URI[sha256sum] = "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f4538c863049e346335"
> +
> +COMPATIBLE_HOST = "(x86_64-linux)"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
> deleted file mode 100644
> index 56d84b6..0000000
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -# Automatically choose java package based on target architecture
> -def get_java_pkg(d):
> -       TA = d.getVar('TARGET_ARCH', True)
> -       if TA == "i586":
> -               javaPkg = "oracle-jse-jdk-i586"
> -       elif TA == "x86_64":
> -               javaPkg = "oracle-jse-jdk-x86-64"
> -       else:
> -               raise bb.parse.SkipPackage("The target architecture '%s' is not supported by the meta-oracle-java layer" %TA)
> -
> -       return javaPkg
> -
> -JAVA_PKG = "${@get_java_pkg(d)}"
> -
> -require ${JAVA_PKG}.inc


This change results in the below listed error:

# bitbake oracle-jse-jdk-x86-64

ERROR: Nothing PROVIDES 'oracle-jse-jdk-x86-64'
ERROR: oracle-jse-jdk-x86-64 was skipped: incompatible with host
x86_64-poky-linux (not in COMPATIBLE_HOST)

Summary: There was 1 ERROR message shown, returning a non-zero exit code.

The COMPATIBLE_HOST should be "x86_64.*-linux". Please fix it.

Best Regards,
Maxin

