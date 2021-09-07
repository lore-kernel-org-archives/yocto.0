Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web09.3239.1631050628850086351
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Sep 2021 14:37:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=guminQH/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id d6so80746wrc.11
        for <yocto@lists.yoctoproject.org>; Tue, 07 Sep 2021 14:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=2u3uFBGR60z07n/ZOTHsFOqC0fGVVLtbacnjj3Zlc+I=;
        b=guminQH/+kOatFvwfRSFHOWV8PTEOrM40R+zFrnp85r74JMkb+tBuLEDwel5CQPi4/
         iKg0gwVSHdvVNBYh1vw2l9+me66JOdL+Wc75GXyWg5T23f0266nuDGBnuP+Gz73wo1QX
         /j2GwHRT6ykAQs1sC0ig8Fo6xbCi5LbM/wzUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2u3uFBGR60z07n/ZOTHsFOqC0fGVVLtbacnjj3Zlc+I=;
        b=M0ZJGwcsMnyG6zpo2qXwwC15UtBtpvTrFTLQbhaRxkC+lnkGGhlYQikkAiqD8orhRn
         TEtdT48KEit9Ev/6OkL2KOxb8uEt6VcFLgcRpPyrbI5MAX+zjlJRalfyVsSokyL+h71Z
         T9psrOQ+AQV8ybPedZm1v+du4BU+lYR9UvjVcTtxvbup4CrN3FF4CVj4ye8n85+0KWuK
         noNcnUFkAo+PMbf7N4Uc/iJ+/F2Houx4reo0spZ65zNv83J2Lp7BFf+5wh4fVFM5QqKG
         njc83H2lC/dDMCbrotlKYONz1lZWAwC2a78n8tCKoBCIF93A43qJhX9rcy0qp6HDuLJ+
         wQpA==
X-Gm-Message-State: AOAM530RxYSWR6X3mH5VM4VYTKf5fF6ZHy7dqx6KuiG4nXTvC5Yw7oo4
	XCV2a8qauIVMGdxefzwUHP9a2g==
X-Google-Smtp-Source: ABdhPJxK5MHTL+GHKQRsMid7ALA/fW5zWrqv1DOfEegDPsLgQzfP4pI0MJ+h0jCbpqWwbUKO8iuEzA==
X-Received: by 2002:adf:e481:: with SMTP id i1mr419867wrm.127.1631050627206;
        Tue, 07 Sep 2021 14:37:07 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:2cf4:2068:e5af:caee? ([2001:8b0:aba:5f3c:2cf4:2068:e5af:caee])
        by smtp.gmail.com with ESMTPSA id f18sm179672wmc.6.2021.09.07.14.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 14:37:07 -0700 (PDT)
Message-ID: <e289c2057b8aebe627a550c8281cb12cf36664f9.camel@linuxfoundation.org>
Subject: Re: [poky] Poky:dunfell: SDK install issue (sed: -e expression #1, char 0: no previous regular expression)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Groeting, Claus" <claus.groeting@gigaset.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 07 Sep 2021 22:37:03 +0100
In-Reply-To: <e48ded7ae4cd4736bcac4ce1e2ae53c25ddc6e8d0f084367b98e4d196cc806e381079d404ed14d61a2bb8e4e180bed02b228edd049a84e0abdaee720e167e675AM0PR09MB23856154D0AACBCFF49AE3AA92D39@AM0PR09MB2385.eurprd09.prod.outlook.com>
References: 
	<e48ded7ae4cd4736bcac4ce1e2ae53c25ddc6e8d0f084367b98e4d196cc806e381079d404ed14d61a2bb8e4e180bed02b228edd049a84e0abdaee720e167e675AM0PR09MB23856154D0AACBCFF49AE3AA92D39@AM0PR09MB2385.eurprd09.prod.outlook.com>
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-09-07 at 06:10 +0000, Groeting, Claus wrote:
> Hi all!
> 
> I have a problem with this commit, applied in poky:dunfell on file toolchain-
> shar-relocate.sh.
> sha1: d6f40be29bf56a835f5825692a22365f04aeb6c3
> 
> Author: hongxu <hongxu.jia@windriver.com>  2021-08-10 15:33:56
> Committer: Richard Purdie <richard.purdie@linuxfoundation.org>  2021-08-26
> 09:32:18
> Parent: dad6dd12fd6e2512f3bd5591327ee35ee22b913e (toolchain-shar-relocate.sh:
> Fix handling files with colons)
> Branches: dunfell, remotes/origin/dunfell
> Follows: dunfell-23.0.10, yocto-3.1.10
> Precedes: 
> 
>     sdk: fix relocate symlink failed
>     
>    
>     (From OE-Core rev: a155c4d4ca841ef492213a5f0b9121703c62e2b4)
>     
>     Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
>     Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>     (cherry picked from commit 942c06a7348070b92f722fa5c439c8c4404485b7)
>     Signed-off-by: Steve Sakoman <steve@sakoman.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> -------------------- meta/files/toolchain-shar-relocate.sh --------------------
> index 5433741296..ba873373e2 100644
> @@ -72,7 +72,7 @@ fi
>  
>  # change all symlinks pointing to @SDKPATH@
>  for l in $($SUDO_EXEC find $native_sysroot -type l); do
> - $SUDO_EXEC ln -sfn $(readlink $l|$SUDO_EXEC sed -e
> "s:$DEFAULT_INSTALL_DIR:$target_sdk_dir:") $l
> + $SUDO_EXEC ln -sfn $(readlink $l|$SUDO_EXEC sed -e
> "s:$SDK_BUILD_PATH:$target_sdk_dir:") $l
>   if [ $? -ne 0 ]; then
>   echo "Failed to setup symlinks. Relocate script failed. Abort!"
>   exit 1
> 
> it looks to me that SDK_BUILD_PATH is not defined in the sed instruction. When
> installing the generated SDK shell script, we see a lot of:
> sed: -e expression #1, char 0: no previous regular expression
> sed: -e expression #1, char 0: no previous regular expression
> sed: -e expression #1, char 0: no previous regular expression
> sed: -e expression #1, char 0: no previous regular expression
> sed: -e expression #1, char 0: no previous regular expression
> sed: -e expression #1, char 0: no previous regular expression
> 
> Without that commit, everything looks ok. On master-branch SDK_BUILD_PATH is
> preset with "@SDKPATH@" but not on dunfell-branch this is missing in the
> file toolchain-shar-relocate.sh.

Hi,

I think there is a patch queued in the testing branch for dunfell:

http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stable/dunfell-nut


http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=stable/dunfell-nut&id=ed0f6236ceb6a127903241f783a526bcdefc66ce

that should address this.

Cheers,

Richard


