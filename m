Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16739C282DE
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 08:21:39 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web11.9585.1741854089979086295
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Mar 2025 01:21:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QodmYhsv;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aaec111762bso139505466b.2
        for <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 01:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741854088; x=1742458888; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kKGQso08wsxxYgbc4oNazKsruxP5Lm+UGe4jkNHEN1Y=;
        b=QodmYhsvGknE1MDTqXHVHFLOHAWJ3FbQXKnbswSTh5mi0LxXe1sxQDrtnZiMutU+jN
         7qNdiHnnbqfbHohVuUicPByc9GTMMEuK56Ufoz+6k5yXm8PR5Br3geISisrbxzWaKxj1
         SZnEwugdJVdYTXI+DZY7n51qMEB2peMmizYPMeL7SiOw/dpCb3FuYnoVdnOiymaDQGFE
         eIKSaC3nRbbl0KugaylC87ExzW3TWyWjuNWu2VlhH+NHUdk3BY0a+ooWiVgOuQOIDLYB
         HdLKMMZYFbD8s4lPbIJMVaghCOQ6OOMlphTreFtuhz8oIy8oJKHqWvY5J0Aj2htA9cLl
         Ln7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741854088; x=1742458888;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kKGQso08wsxxYgbc4oNazKsruxP5Lm+UGe4jkNHEN1Y=;
        b=dR2VIKFS7V/yJIVjUodO2zJSgKbLcaxTe2ftGhcyNs9Eo0MR5SW0IFoWlrR5L592/m
         2viEx64sctDJcCd56T60YHdkD5gxp0ZZxJ/eMwwXvaj3S2pnys18kEzHDtr9pW/e4vn7
         hB2sj9+uwC1tCOMzVGUBdINn+WpoIczzwduuQOts3c8V89mL20qwEJyALbW9Zudc+eAS
         LiAd1miGQvejrhLGRgMDyVac6fvrsO+eEAgTcISjFaigIwngizKYdjL2U0mgIBIA0n2x
         SFAtoIKzauvMcciAtUDw1VUFJMQMxZjCeX1H77fB+d6cdGciFzbWFXYYMEIE5B6hQho5
         1/xg==
X-Gm-Message-State: AOJu0YxyjSvNj512pw5FiAI43PMMPXpp1X0t19tC8WyjAIw0hmiysrkl
	1LlcPI37woANLv3ue/DGgN4kgyJQ4nj2ymXhqB4t5rvZNCeR72tZ60TP7P+/
X-Gm-Gg: ASbGncsJ6/QsJegLT87oqjnf16UjG3okXzrDDm2U1sneXKXO923lbx/kereEc1gLxEf
	15UcKoDDbYZjMirHqd0zW5ALDCJEJjD+QuoR79ZjRJkaGjanCkxXuElGNZHQ0J7Qc2k79rqMmDp
	KtrEMSnWLcyUBKwhesv/HRT8XU/BnuIJlfRDNo5c2MrzzL0W19dqVxdFTBxQy6KqeuYSrALgs0j
	1i/Sx2d0C9ykhrr5gWN6ax8AxIdOxS/L4TagZaPdk7WwPVhldQrifrpg0r2rI2WuUAf5conM4wJ
	8FjrmFqvGvKwXXg0cGC0a88WkKJGVXCP/0aorLtQM6MA14RM50Xb
X-Google-Smtp-Source: AGHT+IELFoGWhmfToScV1eHKVQ0javD8veTzqv90yjACw9QEbt+5HX2jX9nLrTcFAzntygh8w0tPqg==
X-Received: by 2002:a17:907:3e17:b0:ac2:b0c5:64e6 with SMTP id a640c23a62f3a-ac2b0c567c8mr1937241666b.10.1741854087985;
        Thu, 13 Mar 2025 01:21:27 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e81697509csm456650a12.30.2025.03.13.01.21.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 01:21:27 -0700 (PDT)
Message-ID: <cb9c03cc-949d-468e-8a6f-d1f6f593537e@gmail.com>
Date: Thu, 13 Mar 2025 09:21:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Copy file from ZIP archive to image
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
References: <78350915.5121127.1741794175287@webmail.strato.de>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <78350915.5121127.1741794175287@webmail.strato.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 08:21:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64947

I have 2 thoughts which may or may not be worthless:

1. Are there any non-US-ASCII characters in any of the filenames in your
zip archive? If yes, can you change them, and try again?

2. If #1leads nowhere, try to add some print() statements to
meta/lib/oe/package.py, just before the failing subprocess call. Try to
capture the executed command and its output, and see if it sheds some
light at the issue.

On 12.03.25 16:42, Daniel Kampert via lists.yoctoproject.org wrote:
> I have a ZIP archive with some media, html and JSON files and I want
> to copy them with this recipe
>  
> SUMMARY = "Frontend application"
> LICENSE = "Proprietary"
> LIC_FILES_CHKSUM = " \
> file://${WORKDIR}/LICENSE;md5=03fe683ef28b9ddfe7f658a0f4b3b80e \
> "
> SRC_URI = " \
> file://LICENSE \
> file://frontend.zip \
> "
> do_install () {
>   install -d ${D}/opt/app/frontend
>   cp -r ${WORKDIR}/build/* ${D}/opt/app/frontend
> }
> FILES_${PN} += "/opt/app/frontend/*"
>  
> But I get these errors
>
> ERROR: frontend-1.0-r0 do_package: Fatal errors occurred in subprocesses:
> 'utf-8' codec can't decode byte 0x9a in position 619: invalid start
> byte: Traceback (most recent call last):
> File
> "/BSP5/os/build/../layers/openembedded-core/meta/lib/oe/utils.py",
> line 280, in run
> ret = self._target(*self._args, **self._kwargs)
> File
> "/BSP5/os/build/../layers/openembedded-core/meta/lib/oe/package.py",
> line 251, in filedeprunner
> output = subprocess.check_output(shlex.split(rpmdeps) + pkgfiles,
> stderr=subprocess.STDOUT).decode("utf-8")
> UnicodeDecodeError: 'utf-8' codec can't decode byte 0x9a in position
> 619: invalid start byte
>  
> How can I fix them?
>  
> Mit freundlichen Grüßen / With kind regards
>  
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenbüchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de <https://www.daniel-kampert.de>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64945): https://lists.yoctoproject.org/g/yocto/message/64945
> Mute This Topic: https://lists.yoctoproject.org/mt/111662118/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

