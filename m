Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1647.1593466330303347273
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jun 2020 14:32:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=QgnUBPUG;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB008E01DBE; Mon, 29 Jun 2020 14:32:09 -0700 (PDT)
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
	*      (robert.berger.yocto.user[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 288C9E01D76
	for <yocto@yoctoproject.org>; Mon, 29 Jun 2020 14:32:08 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id o11so18071282wrv.9
        for <yocto@yoctoproject.org>; Mon, 29 Jun 2020 14:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=l9I2oNLcaeX0EtzAvwGMG8eT5OxbqHqwvXaQN3L8pKQ=;
        b=QgnUBPUGRrQqfD2TDI+N5UwOwl/bx+IU52qGWW9TMawyQpupq0dqByD58WzscfKChE
         mkc8fCY3MzFiGdPySPQBp7is6/b+DXA8o2E86KcIT2QUtEvi3E9ShEEzfPZb1/7y+3HL
         2rm3UTLat2bI3JULmjAm33/xdVQAzY2cevG9AN7f7JPp40r0WlJUKMXSK37HU1RHrgy5
         c+AaL0qMMPZVROCHFKxSwHe/s8+QtcvIJW3dlP2SijC7CrvMMYPsVIH5M8TWw5ckvwiO
         RkRl2dM/9kZCaV8M8j/pEvTJxe0UMyi8si65hfns/4+Uo1fMqaelSZwYAvZkroEyl5Pe
         eEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=l9I2oNLcaeX0EtzAvwGMG8eT5OxbqHqwvXaQN3L8pKQ=;
        b=DlUJm3ex92uzkC/EK8sHFoLtn7CznN4HRsbeLIwHNkUgSGZVzq3PT2kmDrBLI1rjsd
         WqH9rUkZ8QaR2E2XgU7I+qdzc6i5LSOGQQfAy35TmKhdp26VlkaBlVZBk3H3rhABZvuv
         sh5LbwShZ5CAwwPxsPr/8FjxhsKnShLzFMPhcrxKyn/H0EbkVVxSrb7hUeTGBmV47YBg
         0ASmSim2HKkQuOogvO4s0cr7sHNzMbRzEKtNm1ngqSVtUJYvPCpWTvhIPd/grBK4ENp7
         KmzMeRYhH4SU6hj+HsVdYYTjCUFyv8f8fgTy/E0pHtk3SxLdPb4icFDemC2RZ0h1xdLZ
         14nA==
X-Gm-Message-State: AOAM531XaX4tRd393JZ5f2RjhpR0kY1uNVQbczI4ZZL9BYVjvb8m1xyY
	CNkNL6jqpHBQ7L8eylWwWDwEdjS/
X-Google-Smtp-Source: ABdhPJzC/AORVWPNrm+K0Qcl2wC/2vkSJH1qzdUTzyWUXh501/O9OuiIhkWzWr8Ug3nOB7Z7SqELYw==
X-Received: by 2002:adf:f542:: with SMTP id j2mr18975848wrp.61.1593466327382;
        Mon, 29 Jun 2020 14:32:07 -0700 (PDT)
Received: from [192.168.42.52] (ppp-2-86-138-91.home.otenet.gr. [2.86.138.91])
        by smtp.gmail.com with ESMTPSA id v18sm1250645wrv.49.2020.06.29.14.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 14:32:06 -0700 (PDT)
Subject: Re: [yocto] License reporting for golang (and rust)
To: Irving ST <irving@ssfivy.com>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <CAN--ZaUr1C_rKY05_yWuD=A-S7deSvd5gFSYc2ZE-V7vDTkZxw@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <4bafc350-fa80-c4e9-a13f-579484cc389e@gmail.com>
Date: Tue, 30 Jun 2020 00:32:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAN--ZaUr1C_rKY05_yWuD=A-S7deSvd5gFSYc2ZE-V7vDTkZxw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

My comments are in-line

On 22/06/2020 11:53, Irving ST wrote:
> Hello,
>=20
> I am building a device that uses some Go (and Rust) dependencies. This
> is on Yocto 2.7 / Warrior.
>=20
> I noticed that after building an image, the generated license.manifest
> and package.manifest (in tmp/deploy/licenses/) does not contain any
> mention of go packages or rust crates. The go packages seem to
> generate directories in tmp/deploy/licenses/ but they do not seem to
> be reported in the final image.

On dunfell 3.1.1 I see this:

licenses/
=E2=94=94=E2=94=80=E2=94=80 github.com-influxdata-influxdb
     =E2=94=9C=E2=94=80=E2=94=80 generic_MIT
     =E2=94=9C=E2=94=80=E2=94=80 LICENSE
     =E2=94=94=E2=94=80=E2=94=80 recipeinfo

which is wrong, since I would need to add all the licenses of all the=20
dependencies golang pulls in as well to the recipe. It's shows only the=20
top level license.

In my license manifest I do have the influxdb:

tmp/deploy/licenses/image-influxdb-from-source-container-x86-64-202006292=
05620/license.manifest

PACKAGE NAME: github.com-influxdata-influxdb
PACKAGE VERSION: 1.8.0
RECIPE NAME: github.com-influxdata-influxdb
LICENSE: MIT

Regards,

Robert



