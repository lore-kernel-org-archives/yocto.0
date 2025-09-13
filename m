Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D98CAC587
	for <webhook@archiver.kernel.org>; Sat, 13 Sep 2025 17:47:28 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.3031.1757785639915102399
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Sep 2025 10:47:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QcD613MM;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b0aaa7ea90fso61601766b.1
        for <yocto@lists.yoctoproject.org>; Sat, 13 Sep 2025 10:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757785638; x=1758390438; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HuRMgnwzPaCYhG7fJKzMBzQnwJRcLVyqZUdgbhXOe90=;
        b=QcD613MMecpg5BTjyugH952cy2OdL4qflzPewQUesinC3Q1lBKYYXxuWeY07uX4Ss/
         pP4hYmR1qyJBhCapdMs/UIAc76hPX8+Ox5YpYlL0pBdDkb/ahS0C3HV0pExmh0NTKOCS
         pSnhtlAWIB4aLjIYwCqtn5jz0a6vt0pQSt8upv3upGYBiPNCoWaFcb1cLhJB2eWnMyK9
         0NWU9vXi5PnugMhjas/PTSeiEhhi7UqqdpP+Ouxk3vXt7XdN/pUZH1Np+3+iCr5HVlIo
         EX/ofd0urk4doTEGtG9r3X7WOLqFbavI8Tvx47icYFze7NNkzAeTmOkQF+hjPCoFfJ5D
         8VYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757785638; x=1758390438;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HuRMgnwzPaCYhG7fJKzMBzQnwJRcLVyqZUdgbhXOe90=;
        b=bWXGLZaugtlX5mypPp3t+zO2kJHbgMlfP+4Y8A+I+kbG1r9UwMxamivco8k5RaM2Ht
         247Q9Tw5+mElk5FuN7H2kfvKC/Li3+M3t5rRIH72Mm4KGf1J0339lWntzSkswmy1gBW0
         5Z0mfvqc6saQa6YiLw4p9EiLzHEt+03gJN6dY9lbwPIOEybjKCLhZXuUOqLdVfU8C/c3
         LkUwt+JrLrQTl1qY87h0dBsPqRBMooAIwLOkDwHHuH1Y+MFfmopz0XxyAVdDxBgWhMAG
         PTzbWP4CWPEfUj0caPJjK3sG/8HUdCo9ZkiynKxaGx+ivHgdU8G8BnusauKyFqGWYOwX
         XMyQ==
X-Gm-Message-State: AOJu0YwptX/HXj97SRXJkPKB1FfyeVHXAZcLyir15Lc6MfGPAcU/j9us
	B+Tdi2QiyIeENXL90H01vsvUYErd7XnVikWXVzEXkbcMUNMr0/8BSHmppm2HVA==
X-Gm-Gg: ASbGncsRqkrenk+Jo+KI771pchLFG7KbMEHNehQ19xhWq+yaDBTv28V+VsaSnSckHyF
	vltaUK/jhs4y1wrT12X2YuArGZ8aWldZ+HIswz56fXGrdd8kOtVz2QIC+Tem1Un2dgxstuimHRq
	dVW4YllDFY4N+WvJ+OWGWsEniqDswm1DuvogzWlfquWIZB9vgBBXMku445r8SKtA/KXEz66cZe2
	ueLNEZ5H5KTmpcPdCPozw16ZU9NC8xHt4qEfxayBrZ9zkbgdKXoY+TTj12goZoLiqdUsqJM4JFb
	6Tt597fSRKZYSG8Ikm3Q81xjlHEg1qTSC+SzHM049022GjV6YMgDXQk0sV33A/w3XJQjkbIOHAD
	hH9jIOrLkqpMFeIMRCmNQuwEs5UfsoIRX1V9Nupw35A==
X-Google-Smtp-Source: AGHT+IGc4rOzxahsNm4x0Vboxqgxhmr/S0r325tVOPYaf885dke1YJrdI8fJQuskKn6muVm0b8dqRw==
X-Received: by 2002:a17:907:1b1d:b0:b04:a780:4673 with SMTP id a640c23a62f3a-b07c38292a0mr683301566b.31.1757785638194;
        Sat, 13 Sep 2025 10:47:18 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b334e599sm596488566b.108.2025.09.13.10.47.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Sep 2025 10:47:17 -0700 (PDT)
Message-ID: <0990cea5-1a65-4c61-a627-cd1b7f9875b9@gmail.com>
Date: Sat, 13 Sep 2025 19:47:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] do_package error after building meta-tensorflow and
 libcamera-apps does not detect tensorflow-lite
To: yocto@lists.yoctoproject.org, ashish.shrikhande@gmail.com
References: <22886.1757740136423273518@lists.yoctoproject.org>
 <1274.1757747029393560621@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <1274.1757747029393560621@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Sep 2025 17:47:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65834

On 9/13/25 09:03, ashish shrikhande6 via lists.yoctoproject.org wrote:
> ok I was able to solve the issue by replacing 
>  
>     install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
>     ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v \
>         -t ${D}/${PYTHON_SITEPACKAGES_DIR} --no-cache-dir --no-deps \
>        
> ${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/dist/tflite_runtime-${PV}*cp313*.whl
>  
>  
> with 
>  
>     install -d ${D}/${PYTHON_SITEPACKAGES_DIR}
>     ${STAGING_BINDIR_NATIVE}/pip3 install --disable-pip-version-check -v \
>         --user --no-cache-dir --no-deps \
>        
> ${S}/tensorflow/lite/tools/pip_package/gen/tflite_pip/python3/dist/tflite_runtime-${PV}*cp313*.whl
>  
>  
> I removed -t and replaced it with --user. Is this correct way?

I have just tried compiling tensorflow-lite from master, and it was
successful. Before digging any further, have you tried a "bitbake -c
cleanall tensorflow-lite" and then try to build again, without changing
the recipe?

>  
> Also now libcamera-apps does not detect tflite?
>

Regarding libcamera-apps, that's a bit more involved. Meson is trying to
find tflite by cmake and pkg-config, but the tflite recipe has neither.
As a good news, libcamera-apps devs have added an option to find tflite
without cmake and pkg-config file just lately, however...

1. It needs to be added to meta-rpi. This feature was added in 1.9.0,
but the layer ships 1.4.2-ish. PR: [1]
2. Updated libcamera-apps need a newer libcamera, which needs to be
updated in meta-oe. Patch: [2]
3. Beside the above, it looks like that tensorflow-lite recipe doesn't
package headers. Patch: [3]
4. libcamera-apps is looking for "libtensorflow-lite.so", but
meta-tensorflow installs "libtensorflowlite.so" (without a hyphen). This
needs some investigation who is right, who is wrong - maybe no one is
wrong, but I have no idea at this moment. As an quick and ugly "just
make it hekin' work" solution you can work around it locally by adding a
bbappend to tflite, with the following content:

do_install:append(){
  ln -s libtensorflowlite.so ${D}${libdir}/libtensorflow-lite.so
}

If you apply the linked patches, I believe you should be able to compile
libcamera-apps with tensorflow lite. Though before working on
libcamera-apps, you should get to the bottom of your issue with
tensorflow-lite itself.

HTH.

[1]: https://github.com/agherzan/meta-raspberrypi/pull/1522
[2]:
https://patchwork.yoctoproject.org/project/oe/patch/20250913172226.3215251-1-skandigraun@gmail.com/
[3]:
https://patchwork.yoctoproject.org/project/yocto/patch/20250913173840.3216545-1-skandigraun@gmail.com/


