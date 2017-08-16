Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 336FFE00D6D; Wed, 16 Aug 2017 10:18:26 -0700 (PDT)
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
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91067E00B67
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 10:18:25 -0700 (PDT)
Received: by mail-pf0-f182.google.com with SMTP id h68so8599440pfk.0
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 10:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eS2nSt440wJuVYyImFSGe6lOuOswJB9U1dglrFRikBk=;
	b=aKcA21YWcJvI/U8VJHepjDiACjmitUDz+xeKlZaOjptFCPaRHVgs4HZ/SIeNvgZWbp
	P5vca0PjrxbwtjVCMkXn2GnW/R49kl8z8ytdXjOLa57dAhGyYPNpvtixtb40wUm54Vbl
	/nsqptHL7YwfUMiz0BgE6tJKTuIXLt3O8xZGGV7SQ8px/Btmy/i2lozMVgsPZmWPGERL
	btGRMt39J7hsRaQMmhkghLw2EkHNXGh2qxuwYdQ7L6QoneeQ9Kr4RfKr+1b86OL9AFNP
	Fe7Qe8EBBR8s7NjNwLoFkGCGstEoGI4hwVPdjPS8h6nS30RcEVpOwjna9KnQpUj/XYxn
	cAPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eS2nSt440wJuVYyImFSGe6lOuOswJB9U1dglrFRikBk=;
	b=tuXw63FIg1NuIMTAAga9kLBe+qJa8xXUplxLwE9PNb7eiSXqHzTN0yv2yY3SNJ4sFV
	Lz7EtjCqDiKrL3PY0s+0o8a4iRCIwYTy1MTsmoc0sUCfdb6D9+kIYHkE1xlTERKq4URT
	mmEzmEblhHN8qLofjrPA5FSfq/4n90ZfE9QRNvH7ozI05zGoikory4dE6S8WFHPIDbLJ
	zfp9qh0jj8wGFnAPSchNnj1v8IsemtB6qAZJiCGlrydbZXk0p+x67L/ZPFhOGDgR7v8O
	/1K/C+6gUWmtnl5falCdv4Wz2WpcykBxHZJNdqOlp9s0ev+pi8HPNN6pTGitpXJmbzk7
	bK6w==
X-Gm-Message-State: AHYfb5iGngySDwd7agGAFhbPOS2FyqZvSFfLevBnvSJ8kTgcdMi+4wqy
	JBJ/LdDe2dSTUcTG1woeynS0r6J3+Q==
X-Received: by 10.98.152.155 with SMTP id d27mr2310342pfk.245.1502903904814;
	Wed, 16 Aug 2017 10:18:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Wed, 16 Aug 2017 10:17:54 -0700 (PDT)
In-Reply-To: <1502888089-13686-1-git-send-email-j.remmet@phytec.de>
References: <1502888089-13686-1-git-send-email-j.remmet@phytec.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 16 Aug 2017 10:17:54 -0700
Message-ID: <CAMKF1sp=SHsQeqObSCHM4CVJEd6L6Qfgimsg8fQAJnTHSkBcHg@mail.gmail.com>
To: Jan Remmet <j.remmet@phytec.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH] oracle-java: create directory before creating links
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
X-List-Received-Date: Wed, 16 Aug 2017 17:18:26 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 16, 2017 at 5:54 AM, Jan Remmet <j.remmet@phytec.de> wrote:
> if bindir directory doesn't exists the link is created wrongly:
>
> file -b tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-u131r0/image/home/yocto/build/tmp/sysroots/x86_64-linux/usr/bin
> symbolic link to
> `/home/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/jvm/java-8-oracle/bin/javac'
>
> tested on morty
>
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index 935ad9bc2d9f..a5723879862b 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -15,8 +15,11 @@ do_install_class-native() {
>         install -d -m 0755                      ${D}${libdir_jvm}
>         cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
>
> +       install -d -m 0755                      ${D}${bindir}

I think -m 0755 is redundant here

>         ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
>         ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
> +
> +       install -d -m 0755                      ${D}${JDK_HOME}/bin
>         ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
>         ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
>  }
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

