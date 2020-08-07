Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.531.1596778613909251806
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 22:36:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ujLKyWIP;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8243BE01FA5; Thu,  6 Aug 2020 22:36:53 -0700 (PDT)
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
	*      [209.85.160.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89969E01FA3
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2020 22:36:51 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id 6so527728qtt.0
        for <yocto@yoctoproject.org>; Thu, 06 Aug 2020 22:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zrO7S3uXlf/AhrNwf495JUx9sre9vXz7lWKROWCCRJU=;
        b=ujLKyWIPY2sMsA13OOs5DxeSTg3KZnAJ0fW4RwsD+qgDiAyBvcx+mDKr7yF/lQmOei
         mrumMpaeepKkQgH2BhMmj4Gb5SDr/kTlMSPBGYmjXtII/LaA1AaMsj8rXJfupw5NRkjZ
         6khm3F2iQUVucM38bNxzMBpvE3lharsQp5FstuFwuEITDG/HBz7VPX+YaUFMFDsb0ZJ4
         0IhUDZh2Zq1AX2pBUPTybydIhJDJWb34ZnlaLoz8V3imzUAwFKwvcxu2jJl54xanRoTa
         O3vi8HNGWun45ErNRWCg5b+bkzJ3AzSvewZbBHaOE31e24zQueFjn4+q1h4wBfiCUYLN
         dWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zrO7S3uXlf/AhrNwf495JUx9sre9vXz7lWKROWCCRJU=;
        b=qi2ZKNftgx2PP8WKxuiR/D3yniYmi0NXHAt6d3IK47UvUQumcB17md3Al4ji4oxXQR
         R/YD0xhrfvS0llIOxiX5egKi2vCSrFwhhsuxfnKCLDv7UlSuBLMQeunAyrvLOGISCzbp
         9z7pgyW/U6zVvEbbCoOz7jfZn/Bncxnv2bUSI+eTE7/iHBjDVKciwR6birl65wm0rlCf
         Xl0ug3ZcxXHfOSwo9/127z2EmVrABmsZy89+FcacWJoxQbOCYH37Fc8xSkZPVZ2W+DOX
         GKwNL9zd9gi15/6ya0qOoZIh/ujlTLcH4PRQTcJ4LtVLdZ/SSxP8KP+tIJErT7KLL9n8
         CJ5Q==
X-Gm-Message-State: AOAM533hSuLIp6YfdfwYnhQ57JN7Yichx8bZmP7M4UMYwZ1Enl0c+Jai
	UfE2puP2jT1BMMDPYHalefFxZROhDN7VOTbGgTQ5EQHonMw=
X-Google-Smtp-Source: ABdhPJw9XHgyyTBgeuWTE107XpsE37vUNaN82ap4M+w1grpn3B+3Z2q4Nr4E7o37gDZtyzcRg8xaTfczj37+mC+aJa0=
X-Received: by 2002:ac8:1344:: with SMTP id f4mr12490680qtj.285.1596778610733;
 Thu, 06 Aug 2020 22:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <cb154246-04c9-d47e-e28f-d848f7d8baca@faresoftware.it>
In-Reply-To: <cb154246-04c9-d47e-e28f-d848f7d8baca@faresoftware.it>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 6 Aug 2020 22:36:24 -0700
Message-ID: <CAMKF1sqWQ0u1U8NXBQ_ks4rOzRmDyW5R9gY26NhCQKCSSgwSpA@mail.gmail.com>
Subject: Re: [yocto] psplash and mountpoint -q
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto Project <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 5, 2020 at 2:19 AM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> I'm working woth Zeus on intel platform
>
> When the script is run in shutdown I get the error at line 28
>
> 26: export TMPDIR=/mnt/.psplash
> 27: [ -d $TMPDIR ] || mkdir -p $TMPDIR
> 28: if [ ! mountpoint -q $TMPDIR ]; then
> 29:     mount tmpfs -t tmpfs $TMPDIR -o,size=40k
> 30: fi
>
> So I change the line so
>
> 28: if [ ! `mountpoint -q $TMPDIR` ]; then
>
>
> Is this ok?

checking for the return value of mountpount to be non-zero is the
right thing to do here maybe more explicit check like

mountpoint -q $TMPDIR
if [ $? -ne 0 ]; then

might do the trick as well.
>
>
> MZ
>
> 
