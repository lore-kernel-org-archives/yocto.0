Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C14FCE00A38; Fri, 15 Sep 2017 00:30:23 -0700 (PDT)
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
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F780E00851
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:30:22 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id l15so6293036iol.8
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SpfuQJWNtt7MMG2vnsK0C+ykqOxm9KN4pOrcvFwwQtk=;
	b=vNnkBVbVRH/6es3kNJflI4dHH8vmJdUX6nWof3kkVP9Be8hMmoJfllMyzZRh/iewUM
	kW6sj0jdUUgxykUpHOoGxIyY/OE7Wmh5dWT0J6hVI9rnqxWy+9yBOS37Pnegv16TJgE6
	uI+QUW+seBWWtgyAp1HgyMeNcZYhycTXkRbFI3T8FS6Md8IFpjJcN+BcMa9l6sdNYN2w
	OF4US1TYs3wIXDu72lcNG5+GBX41L6hMeGDOR8/AKDS+9/ryk7TeIP1EzCV1Zrt7aERs
	+wSOzrdR0STgr02j3/XGfQSeMyW1kZnpG6QHCtVLjmLCZIqJ3Qp1Q4iVM2i4rhaIjof9
	DwTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SpfuQJWNtt7MMG2vnsK0C+ykqOxm9KN4pOrcvFwwQtk=;
	b=KBAyQYdbxRppkYLbebKVoPjhGERPjYoUdSp47shD1S8PlqIGgIX38jogsRpR5wWLe7
	jonMBWN1DL+q2Ln93KdZtHFRcG4ArOfKNvQLisxN7hU0vJLSCWw+5QYGX0Ha+IczjJ1I
	K5Yb/QTywp7TixmRT/MymRM9JabFeNkUytvsG5lwFjeJ6JYeKv9Iy3vK72OEFcAMLRjS
	yo9awrYD3TgkbE+6lXsWN0flYpO9jlhS96Vvhnsy2AxgCybFUrqsJaUaDtsp2OArI5Hs
	Fi03/RoJGJvmnrWg/UMbRYE33Skem6rDEr6STkbOY7ElGqNII5XRame+eaQhNrvarkoD
	k6mw==
X-Gm-Message-State: AHPjjUixVZkmb3jiF10PmlGZF1vfOKVfVvzQCnw/JT5iDd/7cpdumsj8
	NOvkJQdPXjBryIk3+7zQKaooyZv3RfbMl70m3HASLQ==
X-Google-Smtp-Source: AOwi7QDrxYeuVig1B0xqy3JQ7ZYhYS4s+w9nN0u4hRlDdG0J+n+wvx5wZ1CufHFrKNWDg1divRjcn2WzBzUhtT6RPo4=
X-Received: by 10.107.22.65 with SMTP id 62mr6961699iow.304.1505460622267;
	Fri, 15 Sep 2017 00:30:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.148.8 with HTTP; Fri, 15 Sep 2017 00:30:01 -0700 (PDT)
In-Reply-To: <20170914202119.6624-2-fabio.berton@ossystems.com.br>
References: <20170914202119.6624-1-fabio.berton@ossystems.com.br>
	<20170914202119.6624-2-fabio.berton@ossystems.com.br>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Fri, 15 Sep 2017 09:30:01 +0200
Message-ID: <CAB2nKc8z9itYz55VYa+Xd-uygpnJfctnjTpF=yvXHBtwHbGywQ@mail.gmail.com>
To: Fabio Berton <fabio.berton@ossystems.com.br>
Cc: yocto@yoctoproject.org
Subject: Re: [pyro][meta-oracle-java][PATCH 2/2] oracle-java: create directory before creating links
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
X-List-Received-Date: Fri, 15 Sep 2017 07:30:23 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Fabio,

I have a non fatal-error on link creation on pyro:

ERROR: oracle-jse-jdk-x86-64-native-1.8.0-u131r0 do_populate_sysroot:
sstate found an absolute path symlink
/home/build/tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-u131r0/sysroot-destdir/home/build/tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-u131r0/recipe-sysroot-native/usr/bin/java
pointing at /home/build/tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-u131r0/recipe-sysroot-native/usr/lib/jvm/java-8-oracle/bin/java.
Please replace this with a relative link.

I suspect that those lines are concerned:
        ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
        ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}

Am I wrong?

Best Regards,
Vincent

2017-09-14 22:21 GMT+02:00 Fabio Berton <fabio.berton@ossystems.com.br>:
> From: Jan Remmet <j.remmet@phytec.de>
>
> if bindir directory doesn't exists the link is created wrongly:
>
> file -b tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-u131r0/image/home/yocto/build/tmp/sysroots/x86_64-linux/usr/bin
> symbolic link to
> `/home/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/jvm/java-8-oracle/bin/javac'
>
> tested on morty
>
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> Signed-off-by: Maxin B. John <maxin.john@intel.com>
> (cherry picked from commit 731d3d2cf7e7d65954991e79b9918575e06081c8)
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index 935ad9b..a7210d9 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -12,11 +12,14 @@ JDK_JRE = "jdk"
>  require oracle-jse.inc
>
>  do_install_class-native() {
> -       install -d -m 0755                      ${D}${libdir_jvm}
> +       install -d                              ${D}${libdir_jvm}
>         cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
>
> +       install -d                              ${D}${bindir}
>         ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
>         ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
> +
> +       install -d                              ${D}${JDK_HOME}/bin
>         ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
>         ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
>  }
> --
> 2.14.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

