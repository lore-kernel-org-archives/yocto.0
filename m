Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A120C61CE7
	for <webhook@archiver.kernel.org>; Fri,  6 Jun 2025 21:10:26 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.5736.1749244220313649973
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Jun 2025 14:10:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MpOi7Div;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: fntoth@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ad93ff9f714so432152366b.2
        for <yocto@lists.yoctoproject.org>; Fri, 06 Jun 2025 14:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749244218; x=1749849018; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oq+TOmLjxXwRsHyvqj/8WWY3Uv9kkn+Vs1f1h8Z0k9I=;
        b=MpOi7DivEY2X+zOvxK7HMPcqpHyLpukfbvfvXTFuqSqL50Z9eKY3fSO7OiuZqEWlgo
         vqAEfxfxUm76t+sA23Z3YHHqy5ctrPYICqdBUirNtwMu7XHtc3a5ZoNKdC2mpQgv8ZcA
         PYRSLklCA1bTlv5Mxgjx4/UF4oLd2NeEw4whwpqqVfOMtcuEcp5HBEMcjstD5grqjBwb
         xm8p075F3I9KGIfx3eMJ/O+DDHezJ08mnkDIT7iKbgU+qHR7FiB/zk4NLh0sOpJ9GrYN
         z/2Q9FUNgGgJy8mefeFVvyjajpA9l10OTL8oV1e0Vts/4JsK5clrMASUwaZ3aScqLOJA
         1F5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749244218; x=1749849018;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Oq+TOmLjxXwRsHyvqj/8WWY3Uv9kkn+Vs1f1h8Z0k9I=;
        b=iutGB5gdsrHsmElVsuRmbxzTgLJz6szRKGfuow7cruShHrGjJ9eoSWZudtV2kQCyIe
         utVv9uPfQN7VcjsUKdQaA08ryMP0QYYc34rKk232ZLkiNieOozus0tzOJsT+lVGpUUi6
         c0MNd8VzDjcioPBUYxdwLXZZNXA/h6J1taOK2k1XMZePGzJBVmkODpZ7JIFif5VLw6YF
         U6oUu/6NMjp+VdX2hhdhs2JlArutXhYk/KbClqeRvSEvr/ZMTwfpLkguSyimN3VniKml
         8IHU1mYsLR7aNRZw4N/k6C3iZQCf+vlTq9eo66Of9H7fztDpdaqxXr95bOdHZtcpzV22
         7ZoQ==
X-Gm-Message-State: AOJu0YxMAcOAXcWfAy/MtcDkrgNDLGqyvLICddJt9oaASxPret4Fww9C
	o/7FsUOi7p+ob3R+j4ehuQXulTOyWI7wTSLNZ98wkOZAWYQHTOhSErhylk1ToUmg
X-Gm-Gg: ASbGncvhPniurPzbKltvMHrS2u0/+UYCWENoD9NIj4aqSJ4ZzDRlSM33NayyJc1T9Re
	jLaUv7caJlIbn2CLSDvIrfbCKas8tYR30vPlQp/pHQuHaEpBnlfPV/EZq0U/1Ko30Z+f6i7xJYH
	Q9tQzG01odjcSEH3AybvNb3enVePKLIx6aa1OcP+Lb2JMVsxVAkK/xOslQ2AVN7K4ruztXyHlIl
	Qm+ZgJl0LXOis1QyUelS4wtRpRgaj8HR6BMjwvViKpGxJaS3UBisHN5q6cZCz93zJDMQkraWOE0
	T5k/c/8eDA9MWWxyvYiSTpAptLf2I4qbwSKlGfSzeTY90G30ED8dAJKm0IWiqOgymZo37438/dm
	YMWRHNazvkzEkIGevYlyCZJnQd1SQUcE0Gmqp0MXCQtHLJnDWUlKzMPhp2hdBGpTljj/O7/wy3k
	XUmg5DxJQ=
X-Google-Smtp-Source: AGHT+IF7WMj8cwlvpztDMNUbA1eQrQYxxsFV/zxyAXHFytyZVqX4CcYXe2+uh4BDbGt1lzHAR35s8g==
X-Received: by 2002:a17:907:961a:b0:ad2:2fdd:fef2 with SMTP id a640c23a62f3a-ade1ab325e8mr454464966b.53.1749244218236;
        Fri, 06 Jun 2025 14:10:18 -0700 (PDT)
Received: from ?IPV6:2a02:a466:68ed:1:55a3:23a6:5d04:5098? (2a02-a466-68ed-1-55a3-23a6-5d04-5098.fixed6.kpn.net. [2a02:a466:68ed:1:55a3:23a6:5d04:5098])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38cf2sm172265366b.121.2025.06.06.14.10.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jun 2025 14:10:17 -0700 (PDT)
Message-ID: <9c260d52-2ec2-428c-8684-89c4677dac06@gmail.com>
Date: Fri, 6 Jun 2025 23:10:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
X-Mozilla-News-Host: news://nntp.lore.kernel.org:119
Content-Language: en-US
To: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>
From: Ferry Toth <fntoth@gmail.com>
Subject: [yocto] NOT split a group kernel modules in separate packages
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Jun 2025 21:10:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65486

Hi,
I read the earlier post on how to disable package splitting entirely. 
But that is not what I want to do.

Some modules need to be packaged separate as they go into the initrd as 
well as the image. But there is a large group (800) in particular under 
kernel/drivers/iio/ that I would like in a single package as updating 
these on btrfs is very slow.

I already have a kernel recipe and was thinking to add something 
(without understanding what I am doing exactly here, just copied stuff 
from elsewhere and modified a bit) like:

python split_kernel_module_packages:prepend () {
     kernel_package_name = d.getVar("KERNEL_PACKAGE_NAME") or "kernel"
     kernel_version = d.getVar("KERNEL_VERSION")

     metapkg = d.getVar('KERNEL_MODULES_META_PACKAGE')
     splitmods = d.getVar('KERNEL_SPLIT_MODULES')
     postinst = d.getVar('pkg_postinst:modules')
     postrm = d.getVar('pkg_postrm:modules')

     if splitmods != '1':
         d.appendVar('FILES:' + metapkg, '%s %s %s/modules' %
             (d.getVar('modulesloaddir'), d.getVar('modprobedir'), 
d.getVar("nonarch_base_libdir")))
         d.appendVar('pkg_postinst:%s' % metapkg, postinst)
         d.prependVar('pkg_postrm:%s' % metapkg, postrm);
         return

     module_pattern_prefix = d.getVar('KERNEL_MODULE_PACKAGE_PREFIX')
     module_pattern_suffix = d.getVar('KERNEL_MODULE_PACKAGE_SUFFIX')
     module_pattern = module_pattern_prefix + kernel_package_name + 
'-module-iio' + module_pattern_suffix

     modules = do_split_packages(d, 
root='${nonarch_base_libdir}/modules', file_regex=r'.*/iio(/.*)?$', 
output_pattern=module_pattern, description='iio kernel modules', 
postinst=postinst, postrm=postrm, recursive=True, allow_dirs=True, 
extra_depends='')
     if modules:
         d.appendVar('RDEPENDS:' + metapkg, ' '+' '.join(modules))
}

I was hoping this would just magically match all modules with */iio/** 
and place them in a single package. But alas.

Is it at all possible what I'm trying do?

Ideally there would of course be just 2 packages, "essential" and 
"extra" or so, similar to what Ubuntu does.

