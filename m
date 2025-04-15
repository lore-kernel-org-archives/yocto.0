Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 355FCC369AB
	for <webhook@archiver.kernel.org>; Tue, 15 Apr 2025 07:28:52 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.14560.1744702124871686603
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 00:28:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PoopslWn;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-abf3d64849dso980274466b.3
        for <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 00:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744702123; x=1745306923; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OLTP1sgF5fEkd+9WN3QSUppqgMOko+OFiiaIgYEIQAI=;
        b=PoopslWn4alLN7V9GpmIi0yP7I98gq/rOGGjXu9eGfSwaY3ii1uJ48sh5hR2OkPp8K
         GZB21TfikQ+1VANMUVAWPn4fgpUchjBpJsnzWGGv6gAgereGTupILdjUjmUoHpplMIXe
         UW1Bl7DsPkMNm4PIl4XPWCOLqIGthUcD1gz4XrZ4ubM3xdnZS+gT51UuOCJEgQUT9X4V
         n8zZTe9snedPtLqK1+FNzUf5ATW1M8Z81TJCOS8i1Ft4QYewW+7sRFMBV2hIZa46U9/f
         eiVRGlhykZXyJaa87o6wVSVc/r6OvEzX+r4yUCEx5imx+3cuDknVM6/hwS9u2kFUjpLX
         WDPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744702123; x=1745306923;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OLTP1sgF5fEkd+9WN3QSUppqgMOko+OFiiaIgYEIQAI=;
        b=uXmbolm5rxCfvBZf2v7x+QD/lWHqXIi9qmnpVxbj8+Z/xRWvL1rmzdKUIFMl0rbFSI
         VW2mLUtjGYHkuymHcy00OM44pl0m4CR5XKbsTic0MMBNCxPSpufrZ6RdA5F+/KtgkMNL
         U7qG+CM1TYCGkif+Scg0NUDY4tHt2n6TKAFvqNgQudXwEpMVPA4z8d6Gi7AkMjbuQMpw
         7+DW1aXFEta6HHk/3hihvAZgkzZWchdHcLwOh5nref1Ygxg+Xf/ZiQplCitEFdRqrhLr
         kpekGQERLrC2Nt9KGt9KAwiK8Ft5iadY8nUFGVBjAzH1okO9l8Gk9DaQ9C/54VqFBzYn
         fOMQ==
X-Gm-Message-State: AOJu0YyrfSwZ9ugtUWtk2zk+iJaNlEWvCPKQ0S8/NoZ+KwftZSrkzwac
	6agissYk+4EbftgmAxmxWe1IPS1dyrH+kYFNFgtsAgqKG7eCZaXPCtCJFw==
X-Gm-Gg: ASbGncuIP/AcylBpkEAI59tU6mO+G91/raCQEGiLDqMyuN0QDWq4c4tmLRE35gNjmtD
	YmJqFB3MCKk7WInd86ApkW1/4J2dfUGqRiojTf1O7FIUn7uUVvb52hOVdIEmun/PrcddHoUgjaO
	f5jhQ195N0oI9c7mJX6SFFx1MUsLwworb4suvvSqeSY5zlKfYov5d/gPPnr9l1d3WnEJPyUtsVx
	hnrslLcMtl/i0VB9XCzlTTSqKUPswxgbk2z3lvW+3+60jRXGHieWV5cCkWAHOUyN040bX8/+MR/
	yw9Y7aHJa91lxfuB1o/vWUN5bgHHfxCCKzCS0m92VFZ74pmq
X-Google-Smtp-Source: AGHT+IG2AWms8cR8aXhYVbLX8VX9UEinNj49FAM0i96Tizz8LV7PdB7SkkD91I/+fts2dKwf+BMi6g==
X-Received: by 2002:a17:906:f188:b0:aca:d6f2:5d5 with SMTP id a640c23a62f3a-acad6f205dcmr1066735766b.39.1744702122577;
        Tue, 15 Apr 2025 00:28:42 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb3172sm1034506766b.24.2025.04.15.00.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 00:28:42 -0700 (PDT)
Message-ID: <7f021913-4147-43bf-8718-fa253da664d7@gmail.com>
Date: Tue, 15 Apr 2025 09:28:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] sdktest.bbclass does not find custom sdk tests
To: yocto@lists.yoctoproject.org, kasper.sloth99@gmail.com
References: <Pnq3.1744354339757137128.EBko@lists.yoctoproject.org>
 <18364374250CC5A7.10767@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <18364374250CC5A7.10767@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 07:28:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65167

On 4/14/25 20:41, Gyorgy Sarvari via lists.yoctoproject.org wrote:
> On 4/11/25 08:52, kasper.sloth99 via lists.yoctoproject.org wrote:
>> Hi,
>> I'm currently trying to create some tests for my sdk, using
>> sdktest.bbclass, but i'm having issues with bitbake locating my tests.
>> In my layer, i have this setup:
>> ├── meta-custom
>> ...
>> │   ├── conf
>> │   │   └── layer.conf
>> │   ├── lib
>> │   │   └── oeqa
>> │   │       ├── controllers
>> │   │       │   └── __init__.py
>> │   │       └── sdk
>> │   │           ├── cases
>> │   │           │   ├── mytest.py
>> │   │           ├── __init__.py
>> ...
>>
>> In the __init__.py files i have added:
>> frompkgutilimportextend_path
>> __path__=extend_path(__path__,__name__)
>>  
>> And in layer.conf:
>>  
>> addpylib${LAYERDIR}/liboeqa
>>  
>> And in my image i have:
>> inherittestsdk
>>  
>> mytest.py is quite simple:
>> fromoeqa.sdk.caseimportOESDKTestCase
>> classCustomTestSuite(OESDKTestCase):
>> deftest_failure(self):
>> self._run("false")
>> deftest_success(self):
>> self._run("true")
>>  
>> But when i run bitbake custom-image -c testsdk after bitbake
>> custom-image -c populate_sdk, the following is only run:
>> |SDK testing environment: armv8a-poky-linux ||GalculatorTest class:
>> SDK don't support gtk+3 ||No python3-maturin package in the SDK ||No
>> python3-maturin package in the SDK ||RustCompileTest class: SDK
>> doesn't contain a Rust cross-canadian toolchain ||RustCompileTest
>> class: SDK doesn't contain a Rust cross-canadian toolchain ||RESULTS:
>> ||RESULTS - assimp.BuildAssimp.test_assimp: PASSED (89.13s) ||RESULTS
>> - buildcpio.BuildCpioTest.test_cpio: PASSED (23.24s) ||RESULTS -
>> buildepoxy.EpoxyTest.test_epoxy: PASSED (11.51s) ||RESULTS -
>> buildlzip.BuildLzipTest.test_lzip: PASSED (1.31s) ||RESULTS -
>> gcc.GccCompileTest.test_gcc_compile: PASSED (0.07s) ||RESULTS -
>> gcc.GccCompileTest.test_gpp2_compile: PASSED (0.07s) ||RESULTS -
>> gcc.GccCompileTest.test_gpp_compile: PASSED (0.17s) ||RESULTS -
>> gcc.GccCompileTest.test_make: PASSED (0.08s) ||RESULTS -
>> perl.PerlTest.test_perl: PASSED (0.02s) ||RESULTS -
>> python.Python3Test.test_python3: PASSED (0.03s) ||RESULTS -
>> buildgalculator.GalculatorTest.test_galculator: SKIPPED (0.00s)
>> ||RESULTS - maturin.MaturinDevelopTest.test_maturin_develop: SKIPPED
>> (0.00s) ||RESULTS - maturin.MaturinTest.test_maturin_list_python:
>> SKIPPED (0.00s) ||RESULTS - rust.RustCompileTest.test_cargo_build:
>> SKIPPED (0.00s) ||RESULTS - rust.RustHostCompileTest.test_cargo_build:
>> SKIPPED (0.00s)|
>> |SUMMARY: ||custom-image sdk - Ran 15 tests in 125.628s ||custom-image
>> sdk - OK - All required tests passed (successes=10, skipped=5,
>> failures=0, errors=0) ||NOTE: Tasks Summary: Attempted 1 tasks of
>> which 0 didn't need to be rerun and all succeeded.|
>>  
>> Where i would expect:
>> mytest.CustomTestSuite.test_failure: FAILURE (or ERROR)
>> mytest.CustomTestSuite.test_success: PASSED
>>  
>> Any help or pointers is appreciated :)
>
> Until you get better answers, here is one, which might not be the most
> optimal...
>
>
> This is what seems to be happening:
> 1. testsdk.bbclass[1] runs the class from TESTSDK_CLASS_NAME to run the
> tests.
> 2. The default class pulls[2] the tests from OESDKTestContextExecutor
> 3. Which in turn loads testcases only from the current folder[3]
>
> This seems to be different from the self-test mechanism, which collects
> the tests from all layers[4].
>
> At least for me, that function looks too big to monkeypatch it in a way
> that I would understand half a day later. (It's a matter of taste also I
> guess, I don't want to discourage anyone)
>
> The maybe-better-than-nothing-until-someone-else-replies workaround:
> 1. In your layer, instead of calling the module oeqa, rename it to myqa
> (or whatever)
> 2. From oe-core, lib/oeqa/sdk folder copy testsdk.py and context.py to
> lib/myqa/sdk folder in your layer
> 3. In your layer edit testsdk.py, edit the import at the top to load
> myqa module instead of oeqa
> 4. To run your tests set 'TESTSDK_CLASS_NAME =
> "myqa.sdk.testsdk.TestSDK"' in your preferred way. To run the original
> tests, don't touch that variable.
>
> [1]:
> https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/testsdk.bbclass#n17
> [2]:
> https://git.openembedded.org/openembedded-core/tree/meta/lib/oeqa/sdk/testsdk.py#n117
> [3]:
> https://git.openembedded.org/openembedded-core/tree/meta/lib/oeqa/sdk/context.py#n61
> [4]:
> https://git.openembedded.org/openembedded-core/tree/meta/lib/oeqa/selftest/context.py#n242


After having some sleep, the problem is still the same, but I realized
that it can be solved much easier.
Forget what I wrote in my previous email, and add the following to your
image recipe[1]:

```
def import_and_run(name, d):
    from oeqa.sdk.context import OESDKTestContextExecutor
    test_cases = []
    bbpath = d.getVar('BBPATH')

    for layer in bbpath.split(":"):
        cases = os.path.join(layer, 'lib', 'oeqa', 'sdk', 'cases')
        if os.path.isdir(cases):
            test_cases.append(cases)

    OESDKTestContextExecutor.default_cases = test_cases

    import importlib

    class_name = d.getVar(name)
    if class_name:
        module, cls = class_name.rsplit('.', 1)
        m = importlib.import_module(module)
        c = getattr(m, cls)()
        c.run(d)
    else:
        bb.warn('No tests were run because %s did not define a class' %
name)

```

This is a bit extended version of the "import_and_run" function defined
in the testsdk.bbclass, that first patches OESDKTestContextExecutor to
collect tests from all layers.
I believe this should execute all tests from all layers in one go,
without the messy tinkering I mentioned.

One thing: I haven't tested IMAGE_INHERIT specifically, but I believe
that it won't work with this. You need to add "inherit testsdk" in your
image recipe, and put this function *after* the inherit line.

Results on my end:

RESULTS - mytest.CustomTestSuite.test_success: PASSED (0.00s)
RESULTS - autotools.AutotoolsTest.test_cpio: PASSED (18.34s)
RESULTS - cmake.CMakeTest.test_assimp: PASSED (144.55s)
RESULTS - gcc.GccCompileTest.test_gcc_compile: PASSED (0.06s)
RESULTS - gcc.GccCompileTest.test_gpp2_compile: PASSED (0.06s)
RESULTS - gcc.GccCompileTest.test_gpp_compile: PASSED (0.20s)
RESULTS - gcc.GccCompileTest.test_make: PASSED (0.06s)
RESULTS - makefile.MakefileTest.test_lzip: PASSED (1.34s)
RESULTS - meson.MesonTest.test_epoxy: PASSED (11.65s)
RESULTS - perl.PerlTest.test_perl: PASSED (0.01s)
RESULTS - python.Python3Test.test_python3: PASSED (0.02s)
RESULTS - gtk3.GTK3Test.test_galculator: SKIPPED (0.00s)
RESULTS - kmod.KernelModuleTest.test_cryptodev: SKIPPED (0.00s)
RESULTS - maturin.MaturinDevelopTest.test_maturin_develop: SKIPPED (0.00s)
RESULTS - maturin.MaturinTest.test_maturin_list_python: SKIPPED (0.00s)
RESULTS - rust.RustCompileTest.test_cargo_build: SKIPPED (0.00s)
RESULTS - rust.RustHostCompileTest.test_cargo_build: SKIPPED (0.00s)
RESULTS - mytest.CustomTestSuite.test_failure: ERROR (0.01s)


[1]: In case indentation would be broken in the email:
https://gist.github.com/OldManYellsAtCloud/86fe110a3d1bdb26a28a724dd3ff6c52


