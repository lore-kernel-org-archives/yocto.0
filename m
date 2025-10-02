Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 748EFCAC5B8
	for <webhook@archiver.kernel.org>; Thu,  2 Oct 2025 11:38:56 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web11.6528.1759405131518471433
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Oct 2025 04:38:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=m0KAZIx3;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-637dbabdb32so1594955a12.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Oct 2025 04:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759405130; x=1760009930; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OQmdu3IWpVSBpCZlVGyXsA9LOZflJ0CxYcTxwuw9qa8=;
        b=m0KAZIx3FCFTAlT2L/Yzq+FJcf8IDIYlN5DOrWJljT9wLggzBD6AFMZpw+12Y1uolf
         SYVqLrK646LLt+yyRIQp/KIwVygPYqq2GBSOLp+94TiM4XucI2DNprJkWmb83MQpnDOp
         cfpLqdzwQgXU12hMbYp3aGsOv50612XY5hR9zYwu2fgjPTS5v89o35UtE2p5tfKlpbvm
         Ws0ZpdcLKQTbDdmgxiEE/jcCzmmueusjCYG51pf532qSQMkhQQz/sD4kZO4AYuxccqDT
         Qqcyb/wy00A1n9ljqZDLqdIZzEsQZkKVkATMKeoo03UbTeshDOEHflOVfuejWeROi9dh
         Gnwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759405130; x=1760009930;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OQmdu3IWpVSBpCZlVGyXsA9LOZflJ0CxYcTxwuw9qa8=;
        b=apxxBqrhIkfn0gDMPNuMVHzRG3Uoi0nCU/SFqD05R/fc0QZ2Fxx1twW3NsJMyzf8mr
         Al9oCqSp0QcJpcuHo10gFnUtuBj0PlZ5s8huQK4I9xKkXICV+Vt/0afxpWcbcZDlLIY0
         PA3/yyvfFRXoZ97/UJb5mW4j0bd1pxZkM1a8ZQ3lfx7w8RnbeXw7maSJUvYHpTzuo+wL
         OUxdgmy5Wy+Era4AORQxWE2EVIkcfeHjRLGoVa8PskWGmNSXdYQF4w7+mSs3Q3MlMERl
         r9D0DeN8f0W1VNCDwR3E8pf6SSHQXwx4c9n5cMIsT3e+R4seSzB2YQvNwkPcPPx/H6fQ
         1vtA==
X-Gm-Message-State: AOJu0YwOIywqPGMjC1J41Um+0OsGM/jEQqKEQxvG6WUqzWMumCRlArfY
	53uhqvSMpK4TWMDzjEZGctgpeIR1kuHxeNzFVflyaNU291YHV6tBt6PpuwPQpw==
X-Gm-Gg: ASbGncsDf71lhWBTX8b/iG8QCxcLihrMCzBFJJUGDT3X4j4O9E9vE9iO3ybU9xM6fsX
	WZ2NlbyIwhIN93h8nRVu/tHin7Boi7XE7/rC0xWpI2jbQg3Gul3AR28jlkd/aklLwsa6CA+2b2X
	rrvD/fPxivNGt5K5c+HnBBLYTU373lHEprHRBC4PdmOtzKbBsRMFr2sBAQR7aWLijXKRXc57lw2
	K+bLiOzx2VE9lk8mmeGDcqkROS1qp7cNoUL3uOhI338KkTZS9nLTfoa2fXU8Dcg9/zJpJY0qKLq
	SqFgRBHDCyL8g4PQXB9duV/Jc4nMwlCUhOa+d0yIGtgU/nU6rbllNXG96o7OGITYzpFsobX7aSh
	CEa/g5eyOFUkKXkt84ReFFr3qJ6P2KDf8MW/K9msedFb7Kj1Bil5LLRuwE1dOeuam5Q==
X-Google-Smtp-Source: AGHT+IFZIst2zO9GhYm4bGQLY/pNEc5Y/vH7kjmOs+2XUbNxIvdoky/bcAEyF5f7hFbk1oPmRMWfLA==
X-Received: by 2002:a05:6402:1d51:b0:634:cb54:8115 with SMTP id 4fb4d7f45d1cf-63678ba9b40mr7968986a12.7.1759405129723;
        Thu, 02 Oct 2025 04:38:49 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-637881011e9sm1643249a12.25.2025.10.02.04.38.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 04:38:49 -0700 (PDT)
Message-ID: <0d99c39c-1f0d-436d-9f63-dc27f02c95c2@gmail.com>
Date: Thu, 2 Oct 2025 13:38:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Writing custom hardware tests
To: yocto@lists.yoctoproject.org, rustyhowell@gmail.com
References: <CAE+BM3mF4Gn8YdwbN_kYZYBngMBc36fpFhGZzUFYCgc2eSHrkQ@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAE+BM3mF4Gn8YdwbN_kYZYBngMBc36fpFhGZzUFYCgc2eSHrkQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Oct 2025 11:38:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65901

On 10/1/25 18:09, Rusty Howell via lists.yoctoproject.org wrote:
> Hi all,
>
> I am trying to write some automated hardware tests for my device. I'm
> following the instructions
> in https://docs.yoctoproject.org/5.0.12/test-manual/runtime-testing.html#performing-automated-runtime-testing
>
> In local.conf I have the following:
>
> DISTRO_FEATURES:append = " ptest"
> EXTRA_IMAGE_FEATURES += "ptest-pkgs"
> TEST_SERIALCONTROL_CMD = "microcom -s 115200 -p /dev/ttyUSB0"
> IMAGE_CLASSES += "testimage"
> #INHERIT += "testexport"
> TEST_TARGET = "MyTarget"
>
> In my layer I have a custom target 
> meta-my-layer/lib/oeqa/controllers/mytarget.py  (copied from
> meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py and modified for
> MyTarget class)
>
> When I run bitbake -c testimage my-image I get this error
>
>      0182:    @staticmethod
>      0183:    def _loadControllerFromModule(target, modulename):
> Exception: AttributeError: Unable to load MyTarget from available
> modules: ['oeqa.controllers.controllerimage',
> 'oeqa.controllers.testtargetloader', 'oeqa.controllers.fvp']
>
> If I add  addpylib${LAYERDIR}/lib oeqa to my layer.conf (like other
> layers have) I get this new error
>
> File:
> '/workspaces/my-distro/sources/poky/meta/classes-recipe/testimage.bbclass',
> lineno: 181, function: testimage_main
>      0177:    import logging
>      0178:    import shutil
>      0179:
>      0180:    from bb.utils import export_proxies
>  *** 0181:    from oeqa.runtime.context import OERuntimeTestContext
>      0182:    from oeqa.runtime.context import
> OERuntimeTestContextExecutor
>      0183:    from oeqa.core.target.qemu import supported_fstypes
>      0184:    from oeqa.core.utils.test import getSuiteCases
>      0185:    from oeqa.utils import make_logger_bitbake_compatible
> Exception: ModuleNotFoundError: No module named 'oeqa.runtime.context'
>
> Any help is appreciated.
>

I believe unfortunately that this part has been without too much
attention lately. addpylib directive is not needed for this.

There are two things:

1. For runtime tests controllers are searched in PATH[1], instead of
BBPATH - that's why it can't find your test controller. You can work
around by adding this to your image recipe:

python __anonymous () {
    import sys
    sys.path.append("<start_of_path>/meta-my-layer/lib")
}

(Alternatively you can also extend path with d.getVar("BBPATH").split(":")) 
It's may not be nice, but it gets you to the next step for now.

2. Some time ago there was some refactoring[2] done in the testimage
bbclass (instead of passing "d" to init the controller a bunch of kwargs
are sent), however these example hw controllers were not refactored
apparently from meta-yocto-bsp layer. You could try to adapt the grub
example (and its ancestor) to the new format or, if other classes are
also usable for you, you could give them a try too (SSHTarget for example).


[1]:
https://git.openembedded.org/openembedded-core/tree/meta/lib/oeqa/runtime/context.py#n161
[2]:
https://git.yoctoproject.org/poky/commit/meta/classes/testimage.bbclass?id=3857e5c91da678d7bdc07712a1df9daa14354986
(search for "robot dance")

