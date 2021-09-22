Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web10.1829.1632324487576240602
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 08:28:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LRBTYX1N;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id t4so2047460plo.0
        for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 08:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=lzKWWYZzy+FLdweWZMnsTj7kxDM8OtgNzFeRlh6yL+U=;
        b=LRBTYX1NU+tTnWloRvHvNbmB/NpnLO7iYTKo6NC0VqVC5EkZkZB/EgpjAFrHYnYcbt
         m2DqTEEbbGumrnSpYiQCaHpKA99c+trylEFYWl0vQfQL4FxcABTLDfJK0q4XpGBo/8pa
         6AKjtTuSXbIXvqhDhM1xE5yKEAyESHo7F3UKwDOD5QaPiKNYFZdol1/yOLEx1FuO4sJi
         AYR/C0JjCXcjhup9QGZ9x1vVI7Bo/ggm3uzcTmiW+WaWLziO+6dvHJxynqjdziqC/u5N
         9AbXHj03qH6fU89Ksj3IGE2THcKCQbQnEpqD9T0dJ8efajW3oXqb9dg4fW/YnxiO/Yec
         paJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=lzKWWYZzy+FLdweWZMnsTj7kxDM8OtgNzFeRlh6yL+U=;
        b=hyqLwtTtp8E1Buk4BLL6n0Z32IqgQqGTY4zR/C0S5ZuWS5CVObdvi1MXoRdTQdLPMM
         jrrApSkVHf+cz3YzYwnfOv21mdMu6iZ1F6fZdW8fwoOVrMMyxIINhqG4DlERwTLiW/gO
         vgwYNsXQaHxYMz30LDGKJP6EJS9cwsKkhdSwAfGkPus3etrRGo2BKXgxqdSvZYCquS3N
         vvixUuJsi5id4DxBsinmTcw09bCFHmdK+sn5+ev9UJY7qay25nN2lqB2pwvXpGny0KmK
         SnZZ3apR4BHOxcQpz7i/+V21S9HsWGgrKgygHOsJU8vkgNLUPFHKsApjweJRv9W/MkQR
         YuMw==
X-Gm-Message-State: AOAM5315oAJh1puVlt2peaGMkNVefjS20LMJgiej72+4sUgZ+663gUYt
	eY3VgFf8wLbceFd8fOyilq2qHdKai3vPwg==
X-Google-Smtp-Source: ABdhPJxP4qX1b4255m1GCRqTCRu40wq+6Ej233+tQXXsWuY2IzAvNK9yazMqLJJWia5WWhJ5aL4KLw==
X-Received: by 2002:a17:90b:3810:: with SMTP id mq16mr11973959pjb.0.1632324487025;
        Wed, 22 Sep 2021 08:28:07 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:39b5:4763:76fc:1c6? ([2601:646:9200:a0f0:39b5:4763:76fc:1c6])
        by smtp.gmail.com with ESMTPSA id v3sm2830885pfc.193.2021.09.22.08.28.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 08:28:06 -0700 (PDT)
Message-ID: <4440837f-5f69-28c4-7d8b-57653935790c@gmail.com>
Date: Wed, 22 Sep 2021 08:28:05 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.1
Subject: Re: [yocto] googletest shared library
To: Lijun Chen <lijchen@blackberry.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
 <AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
 <16A6EE364B338B15.22723@lists.yoctoproject.org>
 <15166f538f2144adabe2299deb3b2a3c@blackberry.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <15166f538f2144adabe2299deb3b2a3c@blackberry.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

The .h files will be in dev pkg in this case googletest-dev
what happens if you add googletest to TOOLCHAIN_TARGET_TASK

On 9/22/21 6:18 AM, Lijun Chen wrote:
> Hi,
> 
> 
> Now I included googletest to the IMAGE_INSTALL in my image file, and 
> built both board image and SDK image. I can see libgtest.so is available 
> in both images. However, gtest/gtest.h is a not present in SDK. How do I 
> add the header files to the SDK image? Looks the following lines affect 
> that?
> 
> SOLIBS = ".so"
> FILES_SOLIBSDEV = ""
> 
> Thanks,
> Lijun
> 
> ------------------------------------------------------------------------
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on 
> behalf of Lijun Chen <lijchen@blackberry.com>
> *Sent:* Tuesday, September 21, 2021 3:50 PM
> *To:* Konrad Weihmann; yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] googletest shared library
> 
> Thanks Konrad. That worked.
> 
> ------------------------------------------------------------------------
> *From:* Konrad Weihmann <kweihmann@outlook.com>
> *Sent:* Tuesday, September 21, 2021 10:26:19 AM
> *To:* Lijun Chen; yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] googletest shared library
> 
> On 21.09.21 16:18, Lijun Chen wrote:
>> Hi,
>> 
>> I would like to include libgtest.so into my Yocto image. I added 
>> googletest to IMAGE_INSTALL and added the following line to 
>> sources/meta-openembedded/meta-oe/recipes-test/googletest/googletest_git.bb:
>> 
>> EXTRA_OECMAKE = "-DBUILD_SHARED_LIBS=ON "
>> 
>> 
>> The shared libraries were built successfully. However, there are errors 
>> in do_package_qc as following:
>> 
>> 
>> ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package 
>> googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'
>> -dev package googletest-dev contains non-symlink .so 
>> '/usr/lib/libgtest_main.so'
>> -dev package googletest-dev contains non-symlink .so 
>> '/usr/lib/libgmock_main.so'
>> -dev package googletest-dev contains non-symlink .so 
>> '/usr/lib/libgtest.so' [dev-elf]
>> ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors. 
>> Please consider fixing them.
> 
> https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$ 
> <https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$> 
> 
> (and the next lines) might give you a hint what to do in this case.
> Although one could also consider that's something that needs to be fixed
> in the installation script of googletest, as versioned libraries are the
> expected default
> 
>> 
>> 
>> Any idea to fix this?
>> 
>> 
>> Thanks,
>> 
>> Lijun
>> 
>> 
>> ------------------------------------------------------------------------
>> This transmission (including any attachments) may contain confidential 
>> information, privileged material (including material protected by the 
>> solicitor-client or other applicable privileges), or constitute 
>> non-public information. Any use of this information by anyone other than 
>> the intended recipient is prohibited. If you have received this 
>> transmission in error, please immediately reply to the sender and delete 
>> this information from your system. Use, dissemination, distribution, or 
>> reproduction of this transmission by unintended recipients is not 
>> authorized and may be unlawful.
>> 
>> 
>> 
>> 
> ------------------------------------------------------------------------
> This transmission (including any attachments) may contain confidential 
> information, privileged material (including material protected by the 
> solicitor-client or other applicable privileges), or constitute 
> non-public information. Any use of this information by anyone other than 
> the intended recipient is prohibited. If you have received this 
> transmission in error, please immediately reply to the sender and delete 
> this information from your system. Use, dissemination, distribution, or 
> reproduction of this transmission by unintended recipients is not 
> authorized and may be unlawful.
> ------------------------------------------------------------------------
> This transmission (including any attachments) may contain confidential 
> information, privileged material (including material protected by the 
> solicitor-client or other applicable privileges), or constitute 
> non-public information. Any use of this information by anyone other than 
> the intended recipient is prohibited. If you have received this 
> transmission in error, please immediately reply to the sender and delete 
> this information from your system. Use, dissemination, distribution, or 
> reproduction of this transmission by unintended recipients is not 
> authorized and may be unlawful.
> 
> 
> 
> 
