Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D8E9C38142
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 18:28:46 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web10.31720.1675276125305703502
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 10:28:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aRcZ/hq9;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id z5so8376481qtn.8
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 10:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zsVU61Rk8TjL75ynpZrAfNCBqqiqbG4Zd4Pro21i9YU=;
        b=aRcZ/hq9AdIIYzX8vY65GrBaPGIeXisnBd3BvGA68G94CLBjwLjmDN/kmf6Ddb9Fyb
         5B9VO/HxTyYCiw5jSkKfJaNzLWLJ/Shj87z4gDSmD0nSZXTgtYjf8t8QvY/x9BwnYEvn
         bNvGWGNVsDLQUCM1JFksk1iYKgTLyJXv4YPzjvBZhFLLh/YB5K4yrCpMZ8uznIGgdHQQ
         O9mM3Ur4jHQutkK+o8In84CwjnQmoGRW9Bx92PRQRv9+RbD7AkBBhh2DL9GDvjf9VXWi
         3eLRiY4Qv3VYMc52StEVSYpHYWSuUPZYM8oaSbqw1mEq7CawSQWQRgyo9lshQ0njn20E
         2rRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zsVU61Rk8TjL75ynpZrAfNCBqqiqbG4Zd4Pro21i9YU=;
        b=PLhJEgDXc20dDJxbwHWRL5WhW1r12zlU+Q7iQyEB8MCR7rUBwnw3WFx3c4AJnBfiKm
         IyawH/4PvDuyW6uKP0wYIiAK2ba2XK1tnSMI5ZMGr322wYD+xqJGY8OSK7d6W2C7ioCa
         Q84R0KoL6K5v49fw6uxB3XszoNbY84OE0WUZzblgzJZnEXRKg6sCEmaivYP0V8Pth2t5
         Toex0V7+WnPvdAPIQmeiWDdjnvRxUQ3RTeocvWdLkKpYkNNl6p1SivzjXAbNpOxrCMEJ
         NGlTe5R9fmfVEPZ+vFz3diHg2s/K2T8+BNSFaGv45epUUbu7WLe84Ln0fFUkL/YshHyg
         r8+Q==
X-Gm-Message-State: AO0yUKV9Wve+/9ThXMo4U8tbjlD9omu3MFbD46x95cGfqo7Fyhi4VYEK
	0CljzlOATSZejBCeZdo9u7s=
X-Google-Smtp-Source: AK7set+Hsa36YnKsQPJ7WlY4eplEsT5eiODSgsPIMAxZ0nuvobVnOf7F+kF0jyJ/IOMswijJCT0Uog==
X-Received: by 2002:ac8:5ac6:0:b0:3b9:b7c9:f0d1 with SMTP id d6-20020ac85ac6000000b003b9b7c9f0d1mr6374054qtd.39.1675276124368;
        Wed, 01 Feb 2023 10:28:44 -0800 (PST)
Received: from ?IPV6:2600:1700:9190:ba10:7fef:553c:2dc6:747b? ([2600:1700:9190:ba10:7fef:553c:2dc6:747b])
        by smtp.gmail.com with ESMTPSA id e11-20020ac8010b000000b003b630ea0ea1sm12169075qtg.19.2023.02.01.10.28.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 10:28:43 -0800 (PST)
Message-ID: <4df108f9-0248-e419-de53-406b7217ee9d@gmail.com>
Date: Wed, 1 Feb 2023 13:28:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] [kirkstone][meta-tpm][PATCH 1/3] oeqa/swtpm: add swtpm
 runtime
Content-Language: en-US
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: yocto@lists.yoctoproject.org
References: <20230201132614.2840970-1-akuster808@gmail.com>
 <Y9qC/rwhVKP/clbd@nuoska>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <Y9qC/rwhVKP/clbd@nuoska>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 18:28:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59137



On 2/1/23 10:19 AM, Mikko Rapeli wrote:
> Hi,
>
> I don't mind but is the meta-security policy to accept new features in
> stable branches?

You are correct. I forgot about this one.

Nice catch.

thanks,
Armin
>
> FWIW, meta-security meta-tpm master branch does work on kirkstone too.
>
> On Wed, Feb 01, 2023 at 08:26:12AM -0500, Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> (cherry picked from commit 50eff83d428598630d5277904eeeb4b668c31c22)
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   meta-tpm/lib/oeqa/runtime/cases/swtpm.py | 24 ++++++++++++++++++++++++
>>   1 file changed, 24 insertions(+)
>>   create mode 100644 meta-tpm/lib/oeqa/runtime/cases/swtpm.py
>>
>> diff --git a/meta-tpm/lib/oeqa/runtime/cases/swtpm.py b/meta-tpm/lib/oeqa/runtime/cases/swtpm.py
>> new file mode 100644
>> index 0000000..df47b35
>> --- /dev/null
>> +++ b/meta-tpm/lib/oeqa/runtime/cases/swtpm.py
>> @@ -0,0 +1,24 @@
>> +# Copyright (C) 2022 Armin Kuster <akuster808@gmail.com>
>> +#
>> +from oeqa.runtime.case import OERuntimeTestCase
>> +from oeqa.core.decorator.depends import OETestDepends
>> +from oeqa.runtime.decorator.package import OEHasPackage
>> +from oeqa.core.decorator.data import skipIfNotFeature
> While this test is great to see, it only tests the case where TPM device
> is only visible for the userspace of the Linux system. Exposing the TPM
> device to bootloader etc requires starting it outside of qemu and
> configuring qemu to expose the char device.
>
> With poky master branch with QB_SETUP_CMD support, this can be done
> in machine config with:
>
> # setup SW based TPM for testing, note socket file path has 107 character
> # length limitations from sockaddr_un
> QB_SETUP_CMD = " \
>     set -ex; pwd; which swtpm; swtpm --version; which swtpm_setup; \
>     test -d '${IMAGE_BASENAME}_swtpm' || ( mkdir -p '${IMAGE_BASENAME}_swtpm' && \
>         swtpm_setup --reconfigure --tpmstate '${IMAGE_BASENAME}_swtpm' --tpm2 --pcr-banks sha256 --config $(dirname $( which swtpm ) )/../../etc/swtpm_setup.conf ) && \
>     test -f '${IMAGE_BASENAME}_swtpm/tpm2-00.permall' && \
>     swtpm socket --tpmstate dir='${IMAGE_BASENAME}_swtpm' \
>           --ctrl type=unixio,path='${IMAGE_BASENAME}_swtpm/swtpm-sock' \
>           --flags startup-clear \
>           --log level=30 --tpm2 -t -d \
> "
> QB_OPT_APPEND += "-chardev socket,id=chrtpm,path='${IMAGE_BASENAME}_swtpm/swtpm-sock' -tpmdev emulator,id=tpm0,chardev=chrtpm -device tpm-tis-device,tpmdev=tpm0"
>
> In normal cases swtpm exits when client qemu machine exits. If the qemu
> machines exits before it connects to the swtpm device, the swtpm process
> is leaked but I haven't fixed this yet.
>
> Cheers,
>
> -Mikko
>
>> +class SwTpmTest(OERuntimeTestCase):
>> +    @classmethod
>> +    def setUpClass(cls):
>> +        cls.tc.target.run('mkdir /tmp/myvtpm2')
>> +        cls.tc.target.run('chown tss:root /tmp/myvtpm2')
>> +
>> +    @classmethod
>> +    def tearDownClass(cls):
>> +        cls.tc.target.run('rm -fr /tmp/myvtpm2')
>> +
>> +    @skipIfNotFeature('tpm2','Test tpm2_swtpm_socket requires tpm2 to be in DISTRO_FEATURES')
>> +    @OETestDepends(['ssh.SSHTest.test_ssh'])
>> +    @OEHasPackage(['swtpm'])
>> +    def test_swtpm2_ek_cert(self):
>> +            cmd = 'swtpm_setup --tpmstate /tmp/myvtpm2 --create-ek-cert --create-platform-cert --tpm2',
>> +            status, output = self.target.run(cmd)
>> +            self.assertEqual(status, 0, msg="swtpm create-ek-cert failed: %s" % output)
>> -- 
>> 2.37.3
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59129): https://lists.yoctoproject.org/g/yocto/message/59129
>> Mute This Topic: https://lists.yoctoproject.org/mt/96675158/7159507
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mikko.rapeli@linaro.org]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>


