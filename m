Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4079EC369A2
	for <webhook@archiver.kernel.org>; Mon, 14 Apr 2025 18:41:18 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web10.2515.1744656071376938186
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Apr 2025 11:41:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DAP63eXF;
 spf=pass (domain: gmail.com, ip: 209.85.208.46, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5e5c7d6b96fso8654700a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 14 Apr 2025 11:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744656070; x=1745260870; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=utb4MMs/Ic1axVljErdf/64+uvD0HbJzzWRsjW98JLw=;
        b=DAP63eXFyXa/+tHBwd+DtRqinND8O6JUx4QM/FxesRI01IGne1MdtmyP2xybn5cxDR
         2gqI7Ka7vSsbsXz73uZxar++jgTrSIBMB0ARjc5ZTYFbPpMC0Sw1ixrGFEam+/wthtHJ
         spE/voN0N8i8Beq2SMAdBA02tJ3dEheJ5B7cHSRwKQ9AxXqj3sZgZtpwx+15yzW57cvK
         8aosXMpq3QOMHc/fJeML49Vm4LBVwnen22mJAT11kOspdgwyrhI+5HfzpNHi8VTWdWOI
         5748kpsq8+Vu+s13sPRvxGX0zEFdWsRV+J9onkE1gXOvrcP4+J1HGUT5A8oa5DGXnich
         WwYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744656070; x=1745260870;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=utb4MMs/Ic1axVljErdf/64+uvD0HbJzzWRsjW98JLw=;
        b=s0RhO5rqofgJ2cxVdTUaEUZYouRjXmmUfYcGsDQcuwm7onAGGG/TiaZ4JDAf05TY+6
         WHHnMR4jK/j/1PDUvBf4M37Sdbwext7DUdXmcAhMbV2ZLiGl5apGh11ZZoNYE1oNOhnh
         l2IZIPw7LEl4ZEUlJtZyxE1IE/jMARS+Q8VBIl9cCNzwK6nY2GbLS5MvKXdU/zsapHym
         WpifvldXZwpzJYm4jb1DN0sqH0Xa1LaLzrZrRzqvTmoh0eOl6zyJnQ9Eh/xZx/uv4hF0
         uG04Hd9vP4Wa5OEVLxdy9ajxT9sZtzDUyZcbhl+DdhhS0A5eKLjQgY2u4zEDgyrFb6Hd
         gdhQ==
X-Gm-Message-State: AOJu0Yzj7ygOJe8CbD2ci9Wdk7DFUmP0q0ckfKqDN47FiLiT9Bo7OU/R
	TB71rzi2zGHz1CdNKBqj8myONZXysv0bXhJP0Uq0VN4+/Qh9G4vrUF1i1g==
X-Gm-Gg: ASbGncvF8LoPDkVBVFpXwq6AFG9xQAPoD87/DG0UkuQ5nF5kkEWCutDxhZgjFgxkNVa
	quXU3CNyIEg0Qs4HtygRHQCAgmRXhLriKrI7+li5MUYuJWpQhhImhm9Uoi7GiTjRMvcPU+rEkUY
	zMEpSYqJJ7bupMF4AjV2qTcoSsM0wZKBUzZPwPJuYzXe8T1vcZfQfiQoJnHPILZnHK9J8IWPUMz
	8YE6UKUzPGGOf5WlbTwDrfcIte1Y0+R+j770ItcuaSxzv8ivjUMDSale+T6rGcTSoJmvjehPf1U
	3YNG37zBSToCVVdm7bFoGGHckxVuUn0G8FNEir5AARCMe8AX
X-Google-Smtp-Source: AGHT+IELVaDYKWkpV1btoAkDN/Jux1/6BzZ/jbyyQyUqcsXmfQfEjrNt8fex8E7dwCdymxPslJrZrA==
X-Received: by 2002:a05:6402:1ec9:b0:5f3:8171:a4e2 with SMTP id 4fb4d7f45d1cf-5f38171a75amr11868520a12.18.1744656069155;
        Mon, 14 Apr 2025 11:41:09 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ee5541fsm5309236a12.14.2025.04.14.11.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 11:41:08 -0700 (PDT)
Message-ID: <24f550a2-1e74-4d17-8032-cb9412f0ece3@gmail.com>
Date: Mon, 14 Apr 2025 20:41:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] sdktest.bbclass does not find custom sdk tests
To: yocto@lists.yoctoproject.org, kasper.sloth99@gmail.com
References: <Pnq3.1744354339757137128.EBko@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <Pnq3.1744354339757137128.EBko@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Apr 2025 18:41:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65161

On 4/11/25 08:52, kasper.sloth99 via lists.yoctoproject.org wrote:
> Hi,
> I'm currently trying to create some tests for my sdk, using
> sdktest.bbclass, but i'm having issues with bitbake locating my tests.
> In my layer, i have this setup:
> ├── meta-custom
> ...
> │   ├── conf
> │   │   └── layer.conf
> │   ├── lib
> │   │   └── oeqa
> │   │       ├── controllers
> │   │       │   └── __init__.py
> │   │       └── sdk
> │   │           ├── cases
> │   │           │   ├── mytest.py
> │   │           ├── __init__.py
> ...
>
> In the __init__.py files i have added:
> frompkgutilimportextend_path
> __path__=extend_path(__path__,__name__)
>  
> And in layer.conf:
>  
> addpylib${LAYERDIR}/liboeqa
>  
> And in my image i have:
> inherittestsdk
>  
> mytest.py is quite simple:
> fromoeqa.sdk.caseimportOESDKTestCase
> classCustomTestSuite(OESDKTestCase):
> deftest_failure(self):
> self._run("false")
> deftest_success(self):
> self._run("true")
>  
> But when i run bitbake custom-image -c testsdk after bitbake
> custom-image -c populate_sdk, the following is only run:
> |SDK testing environment: armv8a-poky-linux ||GalculatorTest class:
> SDK don't support gtk+3 ||No python3-maturin package in the SDK ||No
> python3-maturin package in the SDK ||RustCompileTest class: SDK
> doesn't contain a Rust cross-canadian toolchain ||RustCompileTest
> class: SDK doesn't contain a Rust cross-canadian toolchain ||RESULTS:
> ||RESULTS - assimp.BuildAssimp.test_assimp: PASSED (89.13s) ||RESULTS
> - buildcpio.BuildCpioTest.test_cpio: PASSED (23.24s) ||RESULTS -
> buildepoxy.EpoxyTest.test_epoxy: PASSED (11.51s) ||RESULTS -
> buildlzip.BuildLzipTest.test_lzip: PASSED (1.31s) ||RESULTS -
> gcc.GccCompileTest.test_gcc_compile: PASSED (0.07s) ||RESULTS -
> gcc.GccCompileTest.test_gpp2_compile: PASSED (0.07s) ||RESULTS -
> gcc.GccCompileTest.test_gpp_compile: PASSED (0.17s) ||RESULTS -
> gcc.GccCompileTest.test_make: PASSED (0.08s) ||RESULTS -
> perl.PerlTest.test_perl: PASSED (0.02s) ||RESULTS -
> python.Python3Test.test_python3: PASSED (0.03s) ||RESULTS -
> buildgalculator.GalculatorTest.test_galculator: SKIPPED (0.00s)
> ||RESULTS - maturin.MaturinDevelopTest.test_maturin_develop: SKIPPED
> (0.00s) ||RESULTS - maturin.MaturinTest.test_maturin_list_python:
> SKIPPED (0.00s) ||RESULTS - rust.RustCompileTest.test_cargo_build:
> SKIPPED (0.00s) ||RESULTS - rust.RustHostCompileTest.test_cargo_build:
> SKIPPED (0.00s)|
> |SUMMARY: ||custom-image sdk - Ran 15 tests in 125.628s ||custom-image
> sdk - OK - All required tests passed (successes=10, skipped=5,
> failures=0, errors=0) ||NOTE: Tasks Summary: Attempted 1 tasks of
> which 0 didn't need to be rerun and all succeeded.|
>  
> Where i would expect:
> mytest.CustomTestSuite.test_failure: FAILURE (or ERROR)
> mytest.CustomTestSuite.test_success: PASSED
>  
> Any help or pointers is appreciated :)


Until you get better answers, here is one, which might not be the most
optimal...


This is what seems to be happening:
1. testsdk.bbclass[1] runs the class from TESTSDK_CLASS_NAME to run the
tests.
2. The default class pulls[2] the tests from OESDKTestContextExecutor
3. Which in turn loads testcases only from the current folder[3]

This seems to be different from the self-test mechanism, which collects
the tests from all layers[4].

At least for me, that function looks too big to monkeypatch it in a way
that I would understand half a day later. (It's a matter of taste also I
guess, I don't want to discourage anyone)

The maybe-better-than-nothing-until-someone-else-replies workaround:
1. In your layer, instead of calling the module oeqa, rename it to myqa
(or whatever)
2. From oe-core, lib/oeqa/sdk folder copy testsdk.py and context.py to
lib/myqa/sdk folder in your layer
3. In your layer edit testsdk.py, edit the import at the top to load
myqa module instead of oeqa
4. To run your tests set 'TESTSDK_CLASS_NAME =
"myqa.sdk.testsdk.TestSDK"' in your preferred way. To run the original
tests, don't touch that variable.

[1]:
https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/testsdk.bbclass#n17
[2]:
https://git.openembedded.org/openembedded-core/tree/meta/lib/oeqa/sdk/testsdk.py#n117
[3]:
https://git.openembedded.org/openembedded-core/tree/meta/lib/oeqa/sdk/context.py#n61
[4]:
https://git.openembedded.org/openembedded-core/tree/meta/lib/oeqa/selftest/context.py#n242


