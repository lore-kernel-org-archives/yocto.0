Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A518C433EF
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 16:32:47 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web12.11791.1647621166549659479
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:32:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iSUGHf3W;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id q8so1081049wrc.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=NEQPfHkCmK6/U5iGzgSZi40qlVEvYVeY6+LFDI2Bn/c=;
        b=iSUGHf3WC4znb8beFZKNQ5L2vPpKMFEn7EMzK+hiQ3BdTQi9aufRRbnHZr0kzwwDYa
         M65LJV2NfjL4pDimyffQIWO4Lj5eUhHsfmBDi+kJy9EakBw0WXnjRdWXfzfxGrxqYEIn
         cMY+9Wxcpq6VF+eiQh1dBTsOBkBvR7To4taLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=NEQPfHkCmK6/U5iGzgSZi40qlVEvYVeY6+LFDI2Bn/c=;
        b=UsxQwMHPvvD9f80ODs0lgnb6hkPmcoydYbVBQMNMJ7LfHsv2hyNbjX+uA5hD4/HLiI
         Z740+6LqnEanMwqEsytydGjLIe6OV0q/oeimsFIjp47L1F8kqRJP383wlbm/AvoCNK9F
         LxkI2bH1wy/AcPXCOLKOxVhzr7pgOpqhsmH/RSj26zEjvHfCiXB9p77DLZNTB2Oyzhaw
         ukBZHrdaeDTPC1QdlnWvzxdJx9udp0zFIzEVksBwVymMZtrQ5S71ggrVQW5Cw80DdirL
         I0DlJ7tebXuchd7mAuOkfyk2ivSoMptNssfRDXRNvLeMx/cl3ajc56Or2yaHQVPw8534
         gAqw==
X-Gm-Message-State: AOAM531pYFehdabPjHcjVxoe0Zkaar4mPtPNdqJgCB4g2Yhqur7A3hV2
	rVcf1Jk0szaj6okB/z9u3B8z18RmC2IXsaPM
X-Google-Smtp-Source: 
 ABdhPJzhkaJ8/ytqf4sWU7eiOAGvnk/sujgywe23/oNeOB0WJxCThtuuVHEBNxFek0IB4lB/H+XHNw==
X-Received: by 2002:a5d:47a1:0:b0:1f1:d733:ea8d with SMTP id
 1-20020a5d47a1000000b001f1d733ea8dmr8485371wrb.557.1647621165003;
        Fri, 18 Mar 2022 09:32:45 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:ac92:797e:3dcd:ed37?
 ([2001:8b0:aba:5f3c:ac92:797e:3dcd:ed37])
        by smtp.gmail.com with ESMTPSA id
 d11-20020a056000186b00b00203d45bfbc7sm7398117wri.7.2022.03.18.09.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 09:32:44 -0700 (PDT)
Message-ID: 
 <d39ac8a3684a237a2aebb7d1571519f236d119b9.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-security][PATCH] python3-privacyidea_3.6.2:
 remove more py3 that got dropped
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 18 Mar 2022 16:32:43 +0000
In-Reply-To: <20220318163015.3734400-1-akuster808@gmail.com>
References: <20220318163015.3734400-1-akuster808@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 16:32:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56488

On Fri, 2022-03-18 at 09:30 -0700, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/mfa/python3-privacyidea_3.6.2.bb | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/recipes-security/mfa/python3-privacyidea_3.6.2.bb b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
> index 40f6d15..3a09b80 100644
> --- a/recipes-security/mfa/python3-privacyidea_3.6.2.bb
> +++ b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
> @@ -24,7 +24,7 @@ FILES:${PN} += " ${prefix}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
>  RDEPENDS:${PN} += " bash perl freeradius-mysql freeradius-utils"
>  
>  RDEPENDS:${PN} += "python3 python3-alembic python3-babel python3-bcrypt"
> -RDEPENDS:${PN} += "python3-beautifulsoup4 python3-cbor2 python3-certifi python3-cffi python3-chardet"
> +RDEPENDS:${PN} += "python3-beautifulsoup4 python3-cbor2 python3-certifi python3-cffi"
>  RDEPENDS:${PN} += "python3-click python3-configobj python3-croniter python3-cryptography python3-defusedxml"
>  RDEPENDS:${PN} += "python3-ecdsa  python3-flask python3-flask-babel python3-flask-migrate"
>  RDEPENDS:${PN} += "python3-flask-script python3-flask-sqlalchemy python3-flask-versioned"
> @@ -33,6 +33,6 @@ RDEPENDS:${PN} += "python3-itsdangerous python3-jinja2 python3-ldap python3-lxml
>  RDEPENDS:${PN} += "python3-markupsafe python3-netaddr python3-oauth2client python3-passlib python3-pillow"
>  RDEPENDS:${PN} += "python3-pyasn1 python3-pyasn1-modules python3-pycparser python3-pyjwt python3-pymysql"
>  RDEPENDS:${PN} += "python3-pyopenssl python3-pyrad python3-dateutil python3-editor python3-gnupg"
> -RDEPENDS:${PN} += "python3-pytz python3-pyyaml python3-qrcode python3-redis python3-requests python3-rsa"
> -RDEPENDS:${PN} += "python3-six python3-smpplib python3-soupsieve python3-soupsieve "
> +RDEPENDS:${PN} += "python3-pytz python3-pyyaml python3-qrcode python3-redis python3-rsa"
> +RDEPENDS:${PN} += "python3-six python3-soupsieve python3-soupsieve "
>  RDEPENDS:${PN} += "python3-sqlalchemy python3-sqlsoup python3-urllib3 python3-werkzeug"

I'd hold off that, these just moved to core?

Cheers,

Richard


