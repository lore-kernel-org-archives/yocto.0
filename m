Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.29946.1598564687812543464
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Aug 2020 14:44:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QPIuDNyK;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CF9EE020B5; Thu, 27 Aug 2020 14:44:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D43E020B1
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2020 14:44:43 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id k18so5878556qtm.10
        for <yocto@yoctoproject.org>; Thu, 27 Aug 2020 14:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AeDzNDl3XFUxH2HnAny62UxbebucSRF8o3PrLqMfjWE=;
        b=QPIuDNyKloKTKNzyD+T3mjOj8inpJu8qLyl1d5KEJql01Qo+U0vOO875OpqWqD7UfD
         09odsIG3Z/vCFZj8tlVMfuGCO0SBmHfZbKiiGMGF+xeZsVvaGIGJVfUE7+pIwszNodIp
         ipbDdYaklLAtfQXf5/J/Yyc+BSeSg01uIqht8xCmyFP+/WdfnUqQ+m43jI/lMJpvfvV6
         1Y5RUWDcJ9ds9g/PojFJdCGkYe0rHMdUuKQIkVcAOBhluFTKcb3l4zoWRCb1e9G6KcTm
         E3H4B6dPHxolfHMXiWoe++ycfUJg8ZNS+7WN3AOb+Al4I5Sovkk8ybbIFU/iS3wPAjvU
         1qYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AeDzNDl3XFUxH2HnAny62UxbebucSRF8o3PrLqMfjWE=;
        b=YO9aeGCCQcuvvYUlegBUA5fv3X4dLmQja6ojpkBafoJhhbJNmgt1iZ6PAdXuw0bBIr
         CmU8QdaI1G8hHR4z5BbkSaKu5Rw90nVyl7EPgwA+xC6fwt5Xn/kwPp39Uwa/l2EOzgDz
         +8W6ONpQd19tE9cY455kufDnzdsYNkTGN1QVyU8Vz3QP/sBLq0Z54jGW7KyCjDhm9TY7
         U4gsT7rGGy7TAFcXkn2ikfhtYTrGBAGADH7oi8q6CmVGYNCB6MYcL57wxOJIwy6FhO6V
         HVTWpilfFFAXJFm0rqyxnI+cfW0vXUebqoBImKCgDjdPp0ZsoinmCIC2YdKREMP+qgsr
         O7rA==
X-Gm-Message-State: AOAM533zkpDQ92yhvytNOHjiIVJYZfoT2ONBfzQugiC9JefKiJEbfwq1
	BtvXggET1B6CvWx1r/uU3zHvVLoQaREL3+AkbBSjzfYrc6o=
X-Google-Smtp-Source: ABdhPJxEeS6bGuz3ckX5jx8QY1lgjT1hnbjB3upQk3C8c7+5Nbov9fGttBw6bSCvmuCvDPpvQ6rlCW7MnTqMgx3XXMI=
X-Received: by 2002:ac8:4d0c:: with SMTP id w12mr20421444qtv.194.1598564683001;
 Thu, 27 Aug 2020 14:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200827085532.16174-1-jugurtha.belkalem@smile.fr>
In-Reply-To: <20200827085532.16174-1-jugurtha.belkalem@smile.fr>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 27 Aug 2020 14:44:17 -0700
Message-ID: <CAMKF1sqSHVjk+mQJZTyq26GzxAv9Gt6G8gOEM-OF5cfcyZYC-g@mail.gmail.com>
Subject: Re: [yocto] [PATCH 1/1] recipe/ettercap : new ettercap recipe
To: Jugurtha BELKALEM <jugurtha.belkalem@smile.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 27, 2020 at 1:55 AM Jugurtha BELKALEM
<jugurtha.belkalem@smile.fr> wrote:
>
> Ettercap is a comprehensive suite for man in the
> middle attacks. It features sniffing of live
> connections, content filtering on the fly and
> many other interesting tricks. It supports active
> and passive dissection of many protocols and includes
> many features for network and host analysis.
>
> To test ettercap :
> $ ettercap -T -i eth0 # Text mode
> or
> $ ettercap -C -i eth0 # console based mode
>

you might want to propose it for some of meta-openembedded layers

> Signed-off-by: Jugurtha BELKALEM <jugurtha.belkalem@smile.fr>
> ---
>  recipes-security/ettercap/ettercap_0.8.3.1.bb | 42 +++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 recipes-security/ettercap/ettercap_0.8.3.1.bb
>
> diff --git a/recipes-security/ettercap/ettercap_0.8.3.1.bb b/recipes-security/ettercap/ettercap_0.8.3.1.bb
> new file mode 100644
> index 0000000..c641c26
> --- /dev/null
> +++ b/recipes-security/ettercap/ettercap_0.8.3.1.bb
> @@ -0,0 +1,42 @@
> +SUMMARY = "A suite for man in the middle attacks"
> +HOMEPAGE = "https://github.com/Ettercap/ettercap"
> +LICENSE = "GPL-2.0+"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
> +
> +inherit cmake
> +
> +DEPENDS += "ethtool \
> +            geoip \
> +            librepo \
> +            libnet \
> +            libpcap \
> +            ncurses \
> +            openssl \
> +            zlib \
> +            bison-native \
> +            flex-native \
> +            "
> +
> +RDEPENDS_${PN} += "bash ethtool libgcc"
> +
> +SRC_URI = "gitsm://github.com/Ettercap/ettercap"
> +
> +SRCREV = "7281fbddb7da7478beb1d21e3cb105fff3778b31"
> +
> +S = "${WORKDIR}/git"
> +
> +EXTRA_OECMAKE = " \
> +    -DCMAKE_SKIP_RPATH=TRUE \
> +    -DBUNDLED_LIBS=ON \
> +    -DENABLE_IPV6=ON \
> +    -DENABLE_GTK=OFF \
> +"
> +
> +# Replaces default encoding set (ISO-8859-1) with UTF-8 in ettercap
> +# configuration file installed by the package.
> +# It ensures that all characters are properly decoded and avoids
> +# any fatal errors while running in text mode (-T).
> +do_install_append() {
> +        sed -i 's@utf8_encoding.*@utf8_encoding = "UTF-8"@g' \
> +               ${D}/etc/ettercap/etter.conf
> +}
> --
> 2.11.0
>
> 
