Received: from sonic303-21.consmr.mail.ir2.yahoo.com (sonic303-21.consmr.mail.ir2.yahoo.com [77.238.178.202])
 by mx.groups.io with SMTP id smtpd.web09.8969.1607198392002999961
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Dec 2020 11:59:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.co.uk header.s=s2048 header.b=rABF4kLZ;
 spf=neutral (domain: yahoo.co.uk, ip: 77.238.178.202, mailfrom: ajellisuk@yahoo.co.uk)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.uk; s=s2048; t=1607198380; bh=lLrGvqBmwoWrkRHdikFdyJigoTEEe+FkII4TCabBJxk=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject; b=rABF4kLZl2KcJsxVV1w0F/bRVbWnDbU+BeumRElokae4qFmg1WLZ+CLRHqo7aj+e60CFnZTgAGa7J16GuGKUjXIjRJXstAVdHekMofDA9ePXtLh/3nWtRBAT+2thrulimqx0trOTbyaVptNUi6fqea+uddyw8BpkaV7KItD24yTTqzGEyKP4MM2OneE2gB80SC42ejsbPwozn4/2ufAMfrVFPtize1PZL0WBNms/aIWnBL8DmUK+QauoyOd7UaPIxAGGPl5Q5dQ4l8ztMpLcmVEKU32ZO1O/Pixj6p/KqjD329jemxPJeoS+JdAuNJN42PnAyw5TcCiDxvRcEba4/Q==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1607198380; bh=T6hr2CEN/pEkHaoXQ1nDdFTlU8MC5w/G5377FQN+OYF=; h=Subject:To:From:Date:From:Subject; b=uFcsma6etMY2ycUnJYS2xmy8hxVlRAwYqclEPbTXx7Kcj/RsO5wDG5gdiBp4VltBKkY8wLronFYbJ5OGIWjdBmfl7TkLb+dmyP8SL3S2v54KQOlqVDjAk4yXDffuD0UsXNHc1wj0ZylHjYsMWE2GmaalBuYv2uF8O7oDKSIaSlo/2jbPbIdwGIX1LWJ0VxvxlaNrebsk27iwaMwrTpqZ+6VziK+gksVNCBHFpHd49DQYf+t8YXpnqrHHBKT/W4baPcOOuUXL2b3WTOBmpfWBYMcOzTTR6n6+6GPJcdvgzuAE/Lh/8kjhZ/6SNmD6rfYm/eKq/xtRNPL/g3zRt2zOcg==
X-YMail-OSG: Bp1GlbQVM1lx7KLg7m3OQpJf2zJAt09u8zS1My52s6k9JOU1zJuTkx0GXka_kH5
 H_VF8MyHAyvXQAIfgCutDUvV0Mw2AgSWD03aU23DMXJv2B6OCn6hHK5dtzzV4Xn840xJLLkSowfd
 BSXqfPUKyToJoZP8rzB0Ri.GBrjDYvlcIcJbAx.ND4L8cJO6GJUaQ419ofp..kVO3SMlDu61cgpG
 2uzZds27fTw_BndtoVDRu2LSlY9.hI5pzfUi5HlutPh9tDJmVHyZVh9rXOP9o28YZSMiSLq_2TLq
 ZePRJSA5tMEsWKe.nRgBioSD_fi64lYsxdwUpIb.II70LnBcxpkSJh.HnNrBp7WcNmkJNMV4Qie3
 wZmmJRzHCE3vN.4C1z9Jgbz_U.j.k5loVhmq6bQhUpvMXRLPtEkEcZcg3ZdpZD58gSGrnwzwRpro
 oImRhlER3MgxLaENjKvOGYr5n6YaUrld9k8.EIklDYvRappgEDc26sp1A6Guh_7QZYg2ssz8eTan
 sMDtJoQOv9osLNr1FCLLthT4lypLT35DyRopZ2j0VayRRJc4MUA0Y6CUEZm0ADAa7O96YVyi3vTs
 zZFNgUuUXGhzjBecrB.5n8.N7pM9_BUlWr_yPCUeNRtBUx_EGp5gnPMmxGxAHiWK.4Y93Gwq1Lu3
 81qcqOwi_vOwYtcOJ2_c1cFDF1iQxS3fntJ9HUrPsRTU8kZ9Gbg.gDfSKGmrpm8gWrslv5Lz29MQ
 gFrm3vto8bO2y87OYdtWI3J166aMIMPOtlFIKKiaYVNhO9MvcAILq_F0jmb4kNu7ZO9bTsJLKAeD
 AejRApqa4fw1NxenW.Xk41AFXpFjzdvif6bLzUkxJKsE9PWGNAUS8mLeKUTTa7orVLKfUUIUipmj
 CzP6fJxAgVtd0YK6ROJ4EeSkAeIe3edvx0DIPWptjKAr0y0iYLVphSjOKceGpa9b957mHJ1rjsXH
 IcSp_wB9W2rF0Qn0MiccrND4cbtJ3KUT.xd97p62sydFx0TvsihqYzpkHdQSwvMqW613aIqFfiaK
 CSUiiWOn0RVsBpQRmjwdNubVVF6pCbiQhZr599Wu.bIr2EBDP1PDeizop4_xAJO1MoDewpyq_eCF
 _9vaMdR1Mre7du_HIwnJM1HCziGINCJjZoqMKg.7Nz3xPgYHiTE9hBbdagN8QMDCDBXC1JGXJlwP
 uUxp4dvn8uBqZePvMBQlZ0NYO5.SV3kzAL8fm7ow.KMpTYNTG4wdafDnGeSNrt_Bhv8SY00URcLy
 vVukJeY9D1X3SgErYjEJRQkGbVAx0_9zlHRqhbAY2.rVcamV9gHqKCXLEqnZ_y9EoF6XiRH5H1cX
 ZxMCWZKmk_bAj6RrAs7imQ17q7C7vJYNmjgWLMJRqPhJk9GlZMqwmj9EcwGY21Y6vs6RHU8kKNfB
 azZ7045uMdjicLssa2VwsyC9LSvxWcL61.vviKJHBLQaA1p1vqNhz_6VX9t3ebPhCXFD48s7hTpz
 qfOJj0L3WibQzh73VkX8esRQqbE.H3Jc0Lnig11Hb2E6iu.L1pyJEbq1cRh4yntTrjX88uONJQIc
 P6Ruy1RWxv9E6U66MuwSlhmcOEIiIlksbtRk1t2QdQew8ltk166DIM4m.3Ic8N.0Q_HQdRmPqgsW
 IDrB2qq6YGkszv2wFKv6NTwlxYH5u9zFqxHKeVjO08bKFDZP5xRcA.h.9Nc0DwIysxH6Nx_tKEoB
 P7z29BNQxekfOEgPJEbzGGll3h1l9UV5wyaSyaZWnQeOWJgCmTTlpHKCWgUJmzvZyjZbVISegV9U
 iyEjVW2RYGgjumEm1faqT3TlL6g8mp_aQYFYHop9mBlJWg7oNBEBoremdQJtWdHzXnX7kCux_4fQ
 BQoIXgikI44BiBrNmQfjafu11qsqL52X5PvF.jeSbqXvsCsvOQoP2ajpDA_W8X9ZEg2a_Zx9_7go
 g_ocwYycGH4j410WOY3vsMX3clopLUZosqrK7xc2rY_aTSTeX9OIdJ2DpRUSGgblbsdh442poZLx
 .whYEDwrIO28hGOgnE30ZuP5tqYBIPLcHK72SdHhf74d2iytLLiZ_SF0e0C0k_HU90A3rMHm_fg.
 sCfPMFVvRViYq4Q26oCFAa1iaQGIQbdezU0amXtmKkS1f34_XA4t03EM8yHfCHkv.1DvbdSrsgx.
 2d_upmQh6NDjYB3T4q7bSNuWI94MKBUTcmrQnAfIIGh9hIIG.4weoZs51oj970XTIK8syHhcnlJV
 1kMMVxD0bjbbKHO66hRv7ju.Iu27W.MFjf6wNw1vktyDkFuAuvbxJ8NAPXX9d_pRLcHWG9ssZAoJ
 Yx31ZYDBkUoY7bInEnThW7vU78Dt_4aQ1moTAORHsNe9lUuUSZ.oIIOUpRrDbm83nbPVc3ALLRhD
 nTqfeEjq4gRhXBpR3f9WEhWMTvVhgt8_Xiy4XsZ0993DigPpaEkHerqLsb2tqCcdBrhtR.vyd_vT
 UidjX6dqlwAu0KnzgH9J8eAL_tFYB7.5u5L5BUjq61gRQPU4y1OAGnU4PakPbRuuwOg--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.ir2.yahoo.com with HTTP; Sat, 5 Dec 2020 19:59:40 +0000
Received: by smtp405.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID d84ff71d692bbcf18e4c0dbfca715367;
          Sat, 05 Dec 2020 19:59:35 +0000 (UTC)
Subject: Re: [yocto] #uboot Problem compiling u-boot with bitbake
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@lists.yoctoproject.org
References: <9sNV.1607126926460437364.UjE6@lists.yoctoproject.org>
 <c8629755-2fb3-2567-4daa-bac16faa074e@windriver.com>
From: ajellisuk@yahoo.co.uk
Message-ID: <cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk>
Date: Sat, 5 Dec 2020 19:59:35 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <c8629755-2fb3-2567-4daa-bac16faa074e@windriver.com>
X-Mailer: WebService/1.1.17111 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB

Hi Randy

Thank you for your reply.

I'm using Ubuntu 14.04 .

After reading what you said about coreutils in your last message, I 
tried installing coreutils and got a message saying the latest version 
is installed. Doing "which test" doesn't yield anything. I've looked in 
/usr/bin/ and there is no sign of test in there.

The version of Yocto Project I'm using is 2.5 "poky"

Andrew

On 05/12/2020 18:54, Randy MacLeod wrote:
> On 2020-12-04 7:08 p.m., ajellisuk via lists.yoctoproject.org wrote:
>> Hi
>>
>> I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus from MSC 
>> technologies), but the compile process fails with the following output:
>>
>>     ERROR: Unable to start bitbake server
>>     ERROR: Last 10 lines of server log for this session
>> (/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.log):
>>          self.cooker = bb.cooker.BBCooker(self.configuration,
>>     self.featureset)
>>        File
>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py",
>>     line 197, in __init__
>>          self.initConfigurationData()
>>        File
>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py",
>>     line 356, in initConfigurationData
>>          self.databuilder.parseBaseConfiguration()
>>        File
>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cookerdata.py",
>>     line 317, in parseBaseConfiguration
>>          raise bb.BBHandledException
>>     bb.BBHandledException
>>     ERROR: The following required tools (as specified by HOSTTOOLS)
>>     appear to be unavailable in PATH, please install them in order to
>>     proceed:
>>        test
>>
>>     ERROR: bitbake u-boot-imx -c compile –f
>>
>> I have had errors like this before, and have been to resolve by 
>> installing the missing tools indicated. The problem that I've got 
>> here is that I'm not sure what "test" is referring to. using, "sudo 
>> apt-get install test", doesn't work.
>>
>> Can someone please give me a hint as to what the problem is here.
>
> Hi Andrew,
>
> It seems odd that you don't have coreutils/test already...
> Test is part of coreutils on Ubuntu-20.04:
>
> $ which test
> /usr/bin/test
> $ dpkg -S /usr/bin/test
> coreutils: /usr/bin/test
>
> What distro are you using for your build machine and
> have you installed the suggested packages?
> See the quick start guide and links therein:
>
> https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html 
>
>
> https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions 
>
>
> Also, if you could mention the layers and version of YP code
> that you are using that could be helpful in general although
> for this issue it shouldn't matter.
>
>
> ../Randy
>
>
>>
>> Thanks in advance
>>
>> Andrew
>>
>>
>> 
>>
>
>

