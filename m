Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A8E1E00D4D; Fri, 27 Oct 2017 11:11:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E63A3E00D47
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 11:11:35 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id k7so5867534pga.3
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 11:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YIoI/gWgZUSLhS90LjxCNy2nhYuEaQgTjyB2K7kPWQI=;
	b=qk78qQRgHUcUUtGI1Wss1VSpz3Hvmb5IXHp4FhYcOA8h7zkAUPw70C1/CQ3RGazWAw
	tyYjEc1BnlbPhyhlWw0NcOtqG076D8AkEuYWbsL0WgF550+qBAMa8K6NIay7f1/Zwrub
	JV7PpGM4cW2MxjQi2bcFMHMVm0BVUmSpkMOtfWCJ8XWcSTTCqidlJ3Iny3y2jVIhkgLD
	8FvjiQPD/yofM1xGzcYK8bJGr6ubFwr7Lj3qefQlREtNU7aLgZUc3y8qqO/SGrPFzvW5
	crzwJOIIBOGDTPNhnMOA094b45gH86S9ZTzwzAxMMzLupqBG6yk8/D7N9de2LeSlRo0C
	A5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YIoI/gWgZUSLhS90LjxCNy2nhYuEaQgTjyB2K7kPWQI=;
	b=q2fL8c9AzrKv+Yl+wl8I70TcT74g8+K7JjT/A2UtAyniXFfpM24uAs69UuIbCIhApY
	KfoTJqJzD6nyIGID38aGAta9EEjO6vD5cup+5uRIWjQeksrpTnYQ01jO9oxpt8vJgc/Y
	qNqLhrIYmAwQUysMXQgc1Q+fccW1UItqL6e+l4EmCZ4Ykrr0EAk4wnsLhR2RKHPkltRC
	N4mtSl1s6ugidvsXItxM/1sTyveUMzpw36rPyVJM2SZLKuYg4QgxTtiyT1VWo0ygn4VC
	2VIIGN9Vtj1NriHEQOAoK8DJT6QJA6vh4MvuPbogrllOVKLvyMBvzERrhG8FOQZ0A9W0
	8pkQ==
X-Gm-Message-State: AMCzsaVtJS1NC1NOhBAIDOip7ySF8FlcisA4YDD+Xe7ImAqTYNVcz8d0
	BHocl1uc5Z7XLNO7W5Z3BY3feCbG4zgl7nIDbsk=
X-Google-Smtp-Source: ABhQp+Rce//f2GTZ+mLwnSrld6fQjWu5tqVpEJsgZG1aOq+DRedqwCFGbImsdIN9u/O04zTP7FEOuzIx+xxYD9jLttc=
X-Received: by 10.84.128.97 with SMTP id 88mr988644pla.161.1509127895020; Fri,
	27 Oct 2017 11:11:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Fri, 27 Oct 2017 11:11:04 -0700 (PDT)
In-Reply-To: <CAB2nKc80rA51Fi45BSM0GZrpwV7TV3OTXJB3i+nZnaKEEm7N5A@mail.gmail.com>
References: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
	<CAB2nKc80rA51Fi45BSM0GZrpwV7TV3OTXJB3i+nZnaKEEm7N5A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 27 Oct 2017 11:11:04 -0700
Message-ID: <CAMKF1srYn25ZEjJz3_sxKMU-G+wKKm7iadd43Q5euj60HNHwVw@mail.gmail.com>
To: Vincent Prince <vincent.prince.fr@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH 1/2] Fix do_populate_sysroot: sstate found an absolute path symlink
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
X-List-Received-Date: Fri, 27 Oct 2017 18:11:36 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 27, 2017 at 9:47 AM, Vincent Prince
<vincent.prince.fr@gmail.com> wrote:
> I was mistaken, following patch fixes it for real
>
> Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index a7210d9..1092a34 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -12,16 +12,16 @@ JDK_JRE = "jdk"
>  require oracle-jse.inc
>
>  do_install_class-native() {
> -       install -d                              ${D}${libdir_jvm}
> +       install -d                              ${D}${libdir_jvm}

This change is not relevant here I think.

>         cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
>
> -       install -d                              ${D}${bindir}
> -       ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
> -       ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
> +       install -d                              ${D}${bindir}
> +       ln -sf ../lib/jvm/${JDK_DIR}/bin/java   ${D}${bindir}
> +       ln -sf ../lib/jvm/${JDK_DIR}/bin/javac  ${D}${bindir}
>
> -       install -d                              ${D}${JDK_HOME}/bin
> -       ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
> -       ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
> +       install -d                              ${D}${JDK_HOME}/bin
> +       ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
> +       ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
>  }
>
>  BBCLASSEXTEND = "native"
> --
> 2.7.4
>
> 2017-10-27 14:18 GMT+02:00 Vincent Prince <vincent.prince.fr@gmail.com>:
>> Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
>> ---
>>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 16 ++++++++--------
>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>> index a7210d9..11fe17b 100644
>> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>> @@ -12,16 +12,16 @@ JDK_JRE = "jdk"
>>  require oracle-jse.inc
>>
>>  do_install_class-native() {
>> -       install -d                              ${D}${libdir_jvm}
>> -       cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
>> +       install -d ${D}${libdir_jvm}
>> +       cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
>>
>> -       install -d                              ${D}${bindir}
>> -       ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
>> -       ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
>> +       install -d ${D}${bindir}
>> +       ln -sf ${D}${JDK_HOME}/bin/java ${D}${bindir}
>> +       ln -sf ${D}${JDK_HOME}/bin/javac ${D}${bindir}
>>
>> -       install -d                              ${D}${JDK_HOME}/bin
>> -       ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
>> -       ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
>> +       install -d ${D}${JDK_HOME}/bin
>> +       ln -sf javah ${D}${JDK_HOME}/bin/gjavah
>> +       ln -sf jar ${D}${JDK_HOME}/bin/fastjar
>>  }
>>
>>  BBCLASSEXTEND = "native"
>> --
>> 2.7.4
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

