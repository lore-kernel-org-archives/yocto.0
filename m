Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B8D5C77B73
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 11:41:10 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.126610.1683027664746237924
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 04:41:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=c+FV6Iy9;
 spf=pass (domain: gmail.com, ip: 209.85.219.176, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-b9a6eec8611so24362234276.0
        for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 04:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683027664; x=1685619664;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/uwOxrf+cXzYnaMXIS5RF1PJ7yfF8j+tjStgqHSY3V8=;
        b=c+FV6Iy9P745GeM/FPCUdZvKtGbcHKga2rJikoj2nYWMHXiWn9TKaOb9Ca15RilnLe
         oNiNC9CSCkyBqsTLkF8efOcGayrx2HbfJrRbO9OYxPOwM+Wi/KnWCEkcaE//eeROqpp2
         4ojICTY/L/xa4nUmuz7OoB6ne+sxq4RMWn2ZMdDOUoQ3mZBo+EVHEax66O1Iw8t3p/Ns
         Ye4Wripwc5kFycoDFGk0/hkRemg4yD2fs2oXWFDzgZ47CLaeMFOcMXMn4mF49g71xz0k
         c57GfvAMclWTJlec4sF3FtiWK1ECq1rEdbbn5QOUfXZwAM9jnBQZFR29POriur+Mhh3v
         JnNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683027664; x=1685619664;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/uwOxrf+cXzYnaMXIS5RF1PJ7yfF8j+tjStgqHSY3V8=;
        b=atbvifSOJZTAudZ3+VG34CzojDA8zF+/rqR2/onrqjhQnbnnr4Ccr/C8mnTKPn5duH
         RKo7LHUs0pcvl8kCP9Z2grBuBkWt4VWrkZlqY/HUrRejCNEYZlVMinzrSs6TKC00sBPd
         /XuMjoHOQf9nfj5iKxhSJA91j9ubNpXwwENABWAvR/q1A5qXBibtj7UydjqvQdrweQwt
         X2RKdyj/mqzQU45FHZmhJFbIcSTQZaaMWTUWnDuRvFadoB6HRxkbOuiBJtwEy5AMZZl9
         UwnHAOqEvzjjarynTdFeYd1uIsHgsl4yDus568mSDXQX6RW/AXuFyNEULyIb0QWoqMgI
         BpJw==
X-Gm-Message-State: AC+VfDycJ143lyaTh4aHZizf/qbgj673YMSo87rel+HpoP42hdU2zxuA
	Yz0EiZ2ywzAiqIpv1W8YjuSO/ILkg/M=
X-Google-Smtp-Source: ACHHUZ6ryrXMdwgP2Wzd/zWxauIHtAoz42/HGZ/Si9p4x8Knbl6Rpwdb1o1QS1+sYBTbeO+oBJaFfA==
X-Received: by 2002:a25:2491:0:b0:b8f:722b:3570 with SMTP id k139-20020a252491000000b00b8f722b3570mr15703964ybk.3.1683027663691;
        Tue, 02 May 2023 04:41:03 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:aa99:c4d5:88d7:f86c? ([2600:1700:9190:ba10:aa99:c4d5:88d7:f86c])
        by smtp.gmail.com with ESMTPSA id 82-20020a251855000000b00b7d2204cd4bsm7253257yby.21.2023.05.02.04.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 04:41:03 -0700 (PDT)
Message-ID: <4de09ee5-1152-19e9-07e8-b1eceafd7e67@gmail.com>
Date: Tue, 2 May 2023 07:41:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [meta-security][PATCH 0/8] Fix IMA and EVM support
Content-Language: en-US
To: Stefan Berger <stefanb@linux.ibm.com>, yocto@lists.yoctoproject.org
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <f206bfe3-8cf0-d08f-8c24-77e0689baac1@gmail.com>
 <695c5d85-3948-43d6-7a87-8b56404edb4b@linux.ibm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <695c5d85-3948-43d6-7a87-8b56404edb4b@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 11:41:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59839



On 4/30/23 8:33 PM, Stefan Berger wrote:
>
>
> On 4/30/23 10:16, Armin Kuster wrote:
>>
>> Stefan,
>>
>> On 4/28/23 8:23 AM, Stefan Berger wrote:
>>> This series of patches fixes the current support for IMA and EVM
>>> by removing outdated patches for example and adding kernel config
>>> options. I have tried out these patches with OpenBMC where the
>>> appraisal policy now enforces signed executables and libraries.
>>>
>>>     Stefan
>>
>> Thanks for the patches. Its nice to have a Content expert contribute.
>>
>> There is a test suite I am using to double check things and its not 
>> passing. I think it needs to be adapted to some of these changes.
>>
>> see: meta-integrity/lib/oeqa/runtime/cases/ima.py
>
> How does one run the test suite? 

There is an image unique to most the  meta-security sub layers used to 
building & testing. In this IMA case its "integrity-image-minimal"

To run the test suite, add to your local.conf:

#####################

DISTRO_FEATURES:append = " systemd integrity ima "

TEST_SUITES = "ssh ping ima"

IMAGE_CLASSES += "testimage"
#####################

Then build and test:

bitbake integrity-image-minimal; bitbake integrity-image-minimal -c 
testimage


It will print the test results when completed, looking like this.

RESULTS:
RESULTS - ping.PingTest.test_ping: PASSED (0.05s)
RESULTS - ssh.SSHTest.test_ssh: PASSED (2.85s)
RESULTS - ima.IMACheck.test_ima_before_systemd: PASSED (2.56s)
RESULTS - ima.IMACheck.test_ima_enabled: PASSED (1.38s)
RESULTS - ima.IMACheck.test_ima_hash: PASSED (5.65s)
RESULTS - ima.IMACheck.test_ima_overwrite: PASSED (267.05s)
RESULTS - ima.IMACheck.test_ima_signature: PASSED (145.66s)
SUMMARY:
integrity-image-minimal () - Ran 7 tests in 427.742s
integrity-image-minimal - OK - All required tests passed (successes=7, 
skipped=0, failures=0, errors=0)


I just posted the changes needed to get the tests passing again.


> I have so far only used the changes with a build of OpenBMC.
> I had seen the tests, though, and saw they assumed IMA was going to 
> start before systemd.
> In the OpenBMC log I see this here:
>
> [    0.984195] ima: No TPM chip found, activating TPM-bypass!
> [    0.985167] ima: Allocated hash algorithm: sha256
> [    0.991810] ima: No architecture policies found
>
> These are easy...
>
> This one is due to me adding IMA policy load support into an init script:
>
> Activated EVM: 2 [ activated with 0x80000002 ]
> [    2.248222] ima: policy update completed
>
> My patches for OpenBMC are here:
>
> https://gerrit.openbmc.org/c/openbmc/openbmc/+/62933
>
> This one has the init script changes: 
> https://gerrit.openbmc.org/c/openbmc/openbmc/+/62929/1

Thanks for the links, I will take a look.
>
>>
>>
>> This is adding a delay on merging until I get the test sorted out on 
>> my end.
>>
>> I do have a question regarding the Kernel config changes. Do we 
>> really need "CONFIG_SQUASHFS_XATTR=y" ?
>
> I added this because of OpenBMC using squashfs and we need the xattr 
> support for security.ima and .evm.

ok,

BR,
Armin
>
>
>
> Regards,
>    Stefan
>
>>
>> BR,
>> Armin
>>
>>
>>>
>>> Stefan Berger (8):
>>>    ima: Document and replace keys and adapt scripts for EC keys
>>>    ima: Fix the ima_policy_appraise_all to appraise executables &
>>>      libraries
>>>    ima: Fix the IMA kernel feature
>>>    ima: Rename IMA_EVM_POLICY_SYSTEMD to IMA_EVM_POLICY
>>>    ima: Sign all executables and the ima-policy in the root filesystem
>>>    integrity: Update the README for IMA support
>>>    linux: overlayfs: Add kernel patch resolving a file change
>>>      notification issue
>>>    ima-evm-utils: Update ima-evm-utils to v1.5 and add a patch
>>>
>>>   meta-integrity/README.md                      |  22 +--
>>>   meta-integrity/classes/ima-evm-rootfs.bbclass |  34 ++++-
>>>   meta-integrity/data/debug-keys/README.md      |  17 +++
>>>   .../data/debug-keys/ima-local-ca.pem          |  15 ++
>>>   .../data/debug-keys/ima-local-ca.priv         |   7 +
>>>   .../data/debug-keys/privkey_ima.pem           |  17 +--
>>>   meta-integrity/data/debug-keys/x509_ima.der   | Bin 707 -> 620 bytes
>>>   .../0001-ima-fix-ima_inode_post_setattr.patch |  51 -------
>>>   ...Increment-iversion-upon-file-changes.patch |  42 ++++++
>>>   ...for-creating-files-using-the-mknodat.patch | 138 
>>> ------------------
>>>   ...-file-hash-setting-by-user-to-fix-an.patch |  60 --------
>>>   .../recipes-kernel/linux/linux/ima.cfg        |  46 ++++++
>>>   .../recipes-kernel/linux/linux/ima.scc        |   4 +
>>>   .../recipes-kernel/linux/linux_ima.inc        |  11 +-
>>>   ...ation-using-ioctl-when-evm_portable-.patch |  35 +++++
>>>   ...-evm-utils_1.4.bb => ima-evm-utils_1.5.bb} |   9 +-
>>>   .../files/ima_policy_appraise_all             |   9 +-
>>>   meta-integrity/scripts/ima-gen-CA-signed.sh   |   9 +-
>>>   meta-integrity/scripts/ima-gen-local-ca.sh    |   6 +-
>>>   meta-integrity/scripts/ima-gen-self-signed.sh |  41 ------
>>>   20 files changed, 240 insertions(+), 333 deletions(-)
>>>   create mode 100644 meta-integrity/data/debug-keys/README.md
>>>   create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.pem
>>>   create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.priv
>>>   delete mode 100644 
>>> meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
>>>   create mode 100644 
>>> meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch
>>>   delete mode 100644 
>>> meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
>>>   delete mode 100644 
>>> meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
>>>   create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.cfg
>>>   create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.scc
>>>   create mode 100644 
>>> meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch
>>>   rename 
>>> meta-integrity/recipes-security/ima-evm-utils/{ima-evm-utils_1.4.bb 
>>> => ima-evm-utils_1.5.bb} (71%)
>>>   delete mode 100755 meta-integrity/scripts/ima-gen-self-signed.sh
>>>
>>
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59823): 
>> https://lists.yoctoproject.org/g/yocto/message/59823
>> Mute This Topic: https://lists.yoctoproject.org/mt/98557294/1792208
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub 
>> [stefanb@linux.ibm.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>


