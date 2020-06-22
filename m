Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.13216.1592816009342260541
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jun 2020 01:53:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ssfivy-com.20150623.gappssmtp.com header.s=20150623 header.b=KMXmuRDc;
 spf=temperror, err=temporary DNS error (domain: irving-st.id.au, ip: 140.211.169.56, mailfrom: irving@irving-st.id.au)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C4C2E01D63; Mon, 22 Jun 2020 01:53:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51109E01D0F
	for <yocto@yoctoproject.org>; Mon, 22 Jun 2020 01:53:26 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id 17so318281wmo.1
        for <yocto@yoctoproject.org>; Mon, 22 Jun 2020 01:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ssfivy-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=eY7HkLOUs0Vfa8E9vBL5l3CGA9ogFHo1x45xNQe1Y64=;
        b=KMXmuRDcGGNtsM8DPLn885rjERV7EfLV3a8RGv8ZaftTLPDyMugoFY4bvpcwT7Y7bI
         89Uc9OzEQ5M2mXYjwvuSsgWsiLUHRXdit2xDIsFuUR4wRxh2a5xfK9wznKJYc+Hn/Py/
         kCmc8KR8nxzTEs/JL29MyQfbV2EFFCCPD5U9gg8gS6dJczsGWP/LutWppUJMAnqXpb0Y
         3GC/J/XbKDms6mRsYhLSIdFqptX0SOjK8z2AVKtUJCj9alFS3WqDPldTrRStNp7U7Jt0
         u8IdvME3xEdOntlITQ+XLKEW7QEKK3dygVBHjNZvms4cDgg6Q+QdjrSolTK3/m8gOk46
         OgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eY7HkLOUs0Vfa8E9vBL5l3CGA9ogFHo1x45xNQe1Y64=;
        b=b0oLzh8kxGwDgSHIDCQkzSJOR129Ua/6cgYB8BMMpOw+S0D5DNrEMQEOwj1FkZk9aK
         ntVCTexcFoRwLMzW3Shs5wFlV559Ci2tEuV5rfu1G6fe5NTH9NSAHL3kHIpXtfeeyZ6G
         h9UhGSrkpmAMp0MYmT6hc4lrGuyVAyOfDsyoZpzhEQwjkDqymjRC+SUv4YqA+Jh0vQkX
         7Ya5zovUqYzyHxg4HkAz+DWr9ZS52j2XzxOEqQGPBvaP4Mxib2ceUeo105XAYwJMji3m
         l9Lx+lbcsO7+HoimIrmU/KGhJiuAvU/CKIN1/Jn1CoSG04cecnycVX5OznnHsuYdZATJ
         CVFA==
X-Gm-Message-State: AOAM531T1G1fD7HlFwGbNHe/YoOcgpekG/tXBPzCt+C0020JphzwqCVn
	5G6Iq1g6TNMc3S6Z+1Q1VPm1rcGKS8YQSO3pB6qZgt1b/qg=
X-Google-Smtp-Source: ABdhPJzaAY7/45SfHQqkN6BcyX0MvlOuVg6LLP1Cv9F/VJ16inhtStWq/9eBU7WmAkloCi1s7tY/x1roEguMK6ITBtc=
X-Received: by 2002:a05:600c:4152:: with SMTP id h18mr18261294wmm.189.1592816005454;
 Mon, 22 Jun 2020 01:53:25 -0700 (PDT)
MIME-Version: 1.0
From: "Irving ST" <irving@ssfivy.com>
Date: Mon, 22 Jun 2020 18:53:14 +1000
Message-ID: <CAN--ZaUr1C_rKY05_yWuD=A-S7deSvd5gFSYc2ZE-V7vDTkZxw@mail.gmail.com>
Subject: License reporting for golang (and rust)
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello,

I am building a device that uses some Go (and Rust) dependencies. This
is on Yocto 2.7 / Warrior.

I noticed that after building an image, the generated license.manifest
and package.manifest (in tmp/deploy/licenses/) does not contain any
mention of go packages or rust crates. The go packages seem to
generate directories in tmp/deploy/licenses/ but they do not seem to
be reported in the final image.

For example, an image that contains docker (from meta-virtualization
layer) has build dependencies on, say, go-cli (also from
meta-virtualization layer). This is specified in the docker recipe
having DEPENDS on go-cli recipe. I saw tmp/deploy/licenses/go-cli
directory exists with licensing information, but
tmp/deploy/licenses//license.manifest does not contain any reference
to go-cli.

My best *guess* at the moment is because go packages are build
dependencies (DEPENDS instead of RDEPENDS), they are not considered
shipped packages by bitbake (because they are not shipped, the final
docker package is) and are not listed in the manifest files. This
makes licensing compliance more difficult since I still need to show
the copyright notices even for permissive licenses like MIT - but I
can't show it if I don't know that it has been shipped with the image
(since it's not in the manifest).

Is there a way to get a manifest of go packages shipped into the image?
This issue seems to happen with rust crates as well, so a solution /
explanation for rust would be greatly appreciated too.

Sorry if this has been resolved somewhere, I'm not exactly super
familiar with the golang build system or its integration with Yocto.

Best regards,
Irving Tjiptowarsono
