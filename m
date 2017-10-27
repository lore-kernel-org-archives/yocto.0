Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2B98E00D48; Fri, 27 Oct 2017 09:47:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 430D4E00D46
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 09:47:57 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id p186so13965804ioe.12
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 09:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/KKgoYn6jRZyPOQHFLKwX0zUv7IRywY6nW6GDmDhBDk=;
	b=B7jp6P/PAnWDikDAosS9EwxgYYeydDegxtvrHHXzawBIzVgH0ThJ5Io6QyUWM0HZcV
	WW+FwZikNJleCElKY44XbxztTWGC92AayvopV6P4Z/Xkb0l++XUaQm8VLhpa17e6ommp
	L+h7R3DZaykNUXE/Tl6lJArkLjScV5r2MiurAOFicKsz2Rvy6fOZjIMx+oQHa5E+2dgr
	Vifz6feEDJpkBx3dyjkMgBbA6vf4gleDjoDNyJiaw0TQetVvfD42uqf1/kYoui+JCpYx
	+I9tpYG6Mu9o+/YgPb5DiMZcY39WCzaVsE65baBVuqEJ4suQDxDL05HODDHMJXna9bnU
	Tmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/KKgoYn6jRZyPOQHFLKwX0zUv7IRywY6nW6GDmDhBDk=;
	b=fl4Z619fA0QmpbQ+pIR3h/LLYTM5a/L4iScEb4zJwELS3rHIXFmmt/z/OlTwpUEnMO
	Iq6DyquIjzMFQ/3XoY7/OS2twaOATwIaffjNCTc1bxdbv6PrFa4e6ITHc/+d0y2xxtDn
	wRUt4cI0F9v6JiiGEWJrDP+413wKGcKpT/PfPdqTimY6zuE5CWZ1t8s1kDa8Au1XsdEj
	YKnQYSxwcil/Lxkjq4wqacmKZIXgyG8GYv6sHqKW4hyjBV4/fH8ejGoXl60jPaj8QCe0
	+RTUeOQi3y5hYyB/PSV8riqoErEgRVd2Lxru4H4cl4dotebu9BFWa0OFeeyDk6nEFMv6
	sdsw==
X-Gm-Message-State: AMCzsaWTb0DmVvtgvillTYVVaPvLx4RMKKtol7WJ3v1dTMmbtg9nqBcj
	e8k8s6BGwOFiPq00rTrF4xaKAKTm2gD+q3ef74nihA==
X-Google-Smtp-Source: ABhQp+TqhpH4CHpsh5dzUsgTeZPWyyIE1pmFfVRnqsOsgcBUH80kOiwR0YHQ5QquYIchbAzzZt/oT7OdI3wI5neRPvI=
X-Received: by 10.36.138.1 with SMTP id v1mr1392899itd.124.1509122876853; Fri,
	27 Oct 2017 09:47:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.167.15 with HTTP; Fri, 27 Oct 2017 09:47:36 -0700 (PDT)
In-Reply-To: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
References: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Fri, 27 Oct 2017 18:47:36 +0200
Message-ID: <CAB2nKc80rA51Fi45BSM0GZrpwV7TV3OTXJB3i+nZnaKEEm7N5A@mail.gmail.com>
To: yocto@yoctoproject.org, maxin.john@intel.com
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
X-List-Received-Date: Fri, 27 Oct 2017 16:47:58 -0000
Content-Type: text/plain; charset="UTF-8"

I was mistaken, following patch fixes it for real

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index a7210d9..1092a34 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -12,16 +12,16 @@ JDK_JRE = "jdk"
 require oracle-jse.inc

 do_install_class-native() {
-       install -d                              ${D}${libdir_jvm}
+       install -d                              ${D}${libdir_jvm}
        cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}

-       install -d                              ${D}${bindir}
-       ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
-       ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
+       install -d                              ${D}${bindir}
+       ln -sf ../lib/jvm/${JDK_DIR}/bin/java   ${D}${bindir}
+       ln -sf ../lib/jvm/${JDK_DIR}/bin/javac  ${D}${bindir}

-       install -d                              ${D}${JDK_HOME}/bin
-       ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
-       ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
+       install -d                              ${D}${JDK_HOME}/bin
+       ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
+       ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
 }

 BBCLASSEXTEND = "native"
-- 
2.7.4

2017-10-27 14:18 GMT+02:00 Vincent Prince <vincent.prince.fr@gmail.com>:
> Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index a7210d9..11fe17b 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -12,16 +12,16 @@ JDK_JRE = "jdk"
>  require oracle-jse.inc
>
>  do_install_class-native() {
> -       install -d                              ${D}${libdir_jvm}
> -       cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
> +       install -d ${D}${libdir_jvm}
> +       cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
>
> -       install -d                              ${D}${bindir}
> -       ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
> -       ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
> +       install -d ${D}${bindir}
> +       ln -sf ${D}${JDK_HOME}/bin/java ${D}${bindir}
> +       ln -sf ${D}${JDK_HOME}/bin/javac ${D}${bindir}
>
> -       install -d                              ${D}${JDK_HOME}/bin
> -       ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
> -       ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
> +       install -d ${D}${JDK_HOME}/bin
> +       ln -sf javah ${D}${JDK_HOME}/bin/gjavah
> +       ln -sf jar ${D}${JDK_HOME}/bin/fastjar
>  }
>
>  BBCLASSEXTEND = "native"
> --
> 2.7.4
>

