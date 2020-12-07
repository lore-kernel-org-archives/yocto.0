Received: from sonic312-26.consmr.mail.ir2.yahoo.com (sonic312-26.consmr.mail.ir2.yahoo.com [77.238.178.97])
 by mx.groups.io with SMTP id smtpd.web09.405.1607378721306730857
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 14:05:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.co.uk header.s=s2048 header.b=XBWtYQeQ;
 spf=neutral (domain: yahoo.co.uk, ip: 77.238.178.97, mailfrom: ajellisuk@yahoo.co.uk)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.uk; s=s2048; t=1607378719; bh=X43IKWeAMDSLBPtzoZB+hVON1uu8xSYc6lJdfInImmw=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject; b=XBWtYQeQ+Gan1sg0sHec/IYUYrUaCPeJxsx1ZnKGol/udFDD0BieDhRwbx341ca/6o+X1AJT2LvVAcBnG3aVn2JEv5dDYM0IpgEDykdJVzPommNr2+rescSiwZjlMYgn6ZE4Pv4VIOpkPRdiNvOW0nkzY7OCgrLFr++7vrK0fVjDMjMKejCBvdkAwMlGHkqPLb33KVggx5d6AcBpEH7ZfDP6od8J0dTJ+SooKAuOse56N9HsANcZPQL0fQkAZ0E7O1Kw0xSzSInrcXRsROP6i+SY4r3BcKBdOvJiAohnQuSHZjDanAKfr4T+isRg+GNdn/GyLwoknRMQ1J40XwGavw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1607378719; bh=DgOFKeJJ/J61yca5Bfp4l2F2Y3IbAGhTpLE+xqhCwWV=; h=Subject:To:From:Date:From:Subject; b=cTuTjLCzrDV2vbKacT3/gZxoWnRaKqXYfEpy0encP5RKscE7TlsS6nA84AVOJHPVZDoIYvMxgdi99PuQUpm7nk6ls5STJyHtcvX/A/VEA/QcI0yHs8d/XVpVq/fO3cvUpnrIj+yoYk+ggg9RabCnUsnVCBmPxTN7qExu2BaFPIiSNKgNJ5hVVjRnzksIJjJoDoHnCGGm8Z6178NiK1M4nP3iMwAIKaII+yiop7dNu21W3Lj44XItZJbRrVqVFbU3eQ3FqXoMyjSs+eIWzlzj/0nVeOdB9JClCNm4VLmHlSSzAcF4jaD8UeURSNEaDvQa46/LKCmVtaprWmNTGaeOBg==
X-YMail-OSG: xq_a1UgVM1kQNlrRkcx3xCt1b5aeTbo1AMhcH0bU5S9PbnsFo_pOPp.UoBMUwzH
 M0.yTa34_1DXWvxFPnDDjyDEMRxnXsox468nuXR_TIt1OcX1NnE0GkKv0dBSb1GKfZqyGe3A9Cop
 oGkuyNRnXx_QH4kcFON4LEH8dB47nlmF0NNRafJP8ba5bNTeV3FD1pw6gT7H7dLdyTBVX39yUG3s
 grbPMYGFT7nN.rQ4Wxr8NrL3K0HHXRvvG.StboMgYnCYJAaJyuT6uBXBx7Z1p2yZ_Heek_0MpcGq
 kLzni1aMmJ4dJIzKmJd66_R6ltQH6v90j9SgCGxFrE92hvstmDVoytfue_XbDeSQHemI9GoXb32s
 XCiaLSBHXemkZh.li8.xs4jh51tgbIPsYYQRhU2U5M30G.44agy0hL3PiG_06CGKh4fXTo.9bU6G
 IWeYzY_x5myZHLIrWTs1tAfGne5PI920V69kqatFUUYykMtdK8SJb63DbpVFx9yLV8xWUzsp1B9l
 xdkwJSYcisf537lXN1qmc4jQsx0aXwRYOEGtbzcmeem6_ib2Am4FYoBCWW5X8g5GIbF9SCndjkQi
 vPqMOugj3FPJoitAjj8M7OEZ_ClxydOThl3q_pxd5HDbCmspsuUwRX3X3SSSDIZQJnR465jb7pbV
 TDTU1WiGlpYKr.RcmTO4L6i1Ru3ngU1dTj5_ekXdiazTIGd.I0nQGBRNDHhZXOfXWbdTbGqhuJYw
 CG8APBtJmeTbUlzvHVcciC0J.iaqDfdSk.W6E34vjWXwmWnGKvzAWkOoZEhNw0CJ0IwdWymM3Z3N
 7QFxKwieIB4JRQ4.aCotg1HVLhLjrIHFkjwzZCpOutthLG.KqABYPnpln1d2P8vgTp0LBVedRFoV
 EBuB6WAjCKJ0LZT9.EKNMCTnheU6n_qgocicKvBkm7sFnM96NoOz9C.rQniQASC3P6rMrEEA97n0
 qaEa_GgZEQwrP2v0rxvDYo1xGFYni.6WfBKcFXzv5hyJOVcHWGUGmb.R5QtsH4DilYZONfB7jwRc
 q3g4NS_IxgQ5ii_71bnMCr3bDr_9FUxzO0rQDAjvhsrENJTMSb0Y0Gzca5oA4hjcU_tfNOgYgaxR
 IJM3DF3HFuyjUR88LWIO8QWzwQRLRRGLhRbU3UT.9bqOpmyP9wl88Z6KD7s.zzXY3oXzM0yawJtI
 47CezPesNy9nL6T7cEYVDrbMjDUDHtBdo.fRgl0.StJx0Nq3s6Z0xGahPDsbyX3K8s10O5P1c3ct
 p0nDj1yrzeVe6Hmv5arygxA92bEmxHrZ.zLUu5aryLgXvd6JpKrCAugacoT7S3Ts1zcS_9aV6lWL
 Zj2lm3o8ixnn2azgIsK5cwM2J.4LfHqdSn9uqO8miFX_oNnLYEwrB8ukB9B5B9_uKBC_EIyvrJqr
 4WRKl7CjzGTAlOPKazkh3h_6kQ6767JELJ7tvkcyJOUspY.7vVGJ7AffQpr29KxkPnoPwBfIhrP2
 C1hGjxgly0JAcwysSIwx9qLoTry2JVskQRnmMcodhjwtBv7w3XqsTqNV_7cXBxmQeNNw5ubpJEbI
 rwtSQMXYwGe6xPLhPfsVNjQ23I2P75AqAKZNYczfFnQyhAWlUV4Vbd6AqKo9G4zJFvJ4d57gsD81
 U8PwBeUuLdaywziz5gPTKQc1R8_WjfuMeaZTq1pVix4HePsk2Z8vL7KyugfOxp1OV_6yhycuigsA
 VpmJy_xg9859dl1VqGORWUSy0NMxpSpJ2Wa_jJtTZIScBLZTthKkruxQ0Qc99xLfi4PQ9SFKNHxy
 yP7kWDpTpWeouHsHycrOddzj8IUGXbiBmdLnFkloPF1ME9t_zaY1iLvz8.UNE9PGE8Xgpmo71ct_
 Of8o8Iudh.s5wKSghNfdWcbjVKJ.6RkFyd0WuyVHAFOO7jOIBWUfj0kUZInMaAW.ytEEMWOgRtvW
 sPBnrFJBzrB6PmJw01UvEFvRKLcfNv4yLdMtLwArU_WlfgQ3y6w7N_KXsy5GBqiR4twnV3g38j7x
 ckc6ukwMVHIsLVFFgLwG_guqaEvKm3oJaWzjqw5H6scbBHwzuRckz74cMTRGWNbvG0iuTcWXn7Bo
 20CEOgWIhy1N1CNNODsHxgqq7Oh_Crs1TwG7Y90V8iioDoqoFnz2LECT6HyAOpxnpgzReh6lZnj5
 gqYZRfWQowcmx7CFe6bG6NAejPLwAzh3mlaXYf7Fe_zl0KOg7sid.3Qtnpf9nJrcQ2..oey6XBeE
 1N9uQgr8n47FHpFsBe1FVrQy.yG1Z8amJRumc.zer6DyWKH7wmDBVzAnWGZLU8qryhscamRQkSw_
 tmNwOj.GiUTjS.8n642d.YPnA1IvkqwoDSEQJV.YSKNBJhYkYd3b8Ltl7qi_ehZ9.nQ1SZP69nCS
 WRkshi32Ad.e7sJnSvqbCimTH_KawWkaKH2RR4mX290PepFmx1tKaFcEdbomKpohvZ2rW2xAl4IC
 HQccFYUf2WVEqAskGAoSItw--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.ir2.yahoo.com with HTTP; Mon, 7 Dec 2020 22:05:19 +0000
Received: by smtp412.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 128595d3192783b7f95f250affe934ba;
          Mon, 07 Dec 2020 22:05:14 +0000 (UTC)
Subject: Re: [yocto] #uboot Problem compiling u-boot with bitbake
To: yocto@lists.yoctoproject.org
References: <9sNV.1607126926460437364.UjE6@lists.yoctoproject.org>
 <c8629755-2fb3-2567-4daa-bac16faa074e@windriver.com>
 <cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk>
 <93d905af-b0cc-77d7-07f1-53386e535834@windriver.com>
 <03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk>
 <265bba7c-bf36-12cb-4a6e-f867c59af35b@windriver.com>
From: "Andrew Ellis" <ajellisuk@yahoo.co.uk>
Message-ID: <826dcce0-1ad5-fc9f-01f7-d3f889b5cc06@yahoo.co.uk>
Date: Mon, 7 Dec 2020 22:05:11 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <265bba7c-bf36-12cb-4a6e-f867c59af35b@windriver.com>
X-Mailer: WebService/1.1.17111 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Content-Type: multipart/alternative;
 boundary="------------E59F6C313291389F22E00550"
Content-Language: en-GB

--------------E59F6C313291389F22E00550
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Randy

Thanks again for you help.

I upgraded my build system to Ubuntu 16.04, and this resolved the build 
errors I was having. There were historical reasons for the build drive 
being installed with 14.04, but that is no longer necessary. Upgrading 
to 16.04 cured the build problem.

Kind regards

Andrew

On 06/12/2020 16:56, Randy MacLeod wrote:
> On 2020-12-05 6:20 p.m., Andrew Ellis wrote:
>> Hi Randy
>>
>> Thank you for your reply.
>>
>> Doing, "sudo apt install --reinstall coreutils" fixed the problem 
>> with test not being found. I'm not sure why it was not on the system, 
>> but that error is fixed.
>
> Ah, good.
>
>
>>
>> Unfortunately I've run into another problem when I try and run 
>> bitbake, the process fails witht he following error:
>>
>> / ports/linux/pseudo_wrappers.c:68:16: error: ‘__NR_renameat2’ 
>> undeclared (first use in this function)/
>> /
>> /
>>
>> I'll take another look at that issue in the morning.
>>
>
> You'll need to upgrade to a newer yocto release or cherry-pick:
>
> $ cd ../oe-core.git
>
> $ git log -1 --stat 0fb257121b68f38b40c078150db8f7d0979b7ea5
> commit 0fb257121b68f38b40c078150db8f7d0979b7ea5
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Wed Apr 10 19:07:02 2019
>
>     pseudo: Update to gain key bugfixes
>
>     Newer distros are using new versions of glibc and coreutils which 
> use the new glibc
>     renameat2 function. We need to intercept this for correct 
> functioning of pseudo. This
>     is essential to ensure new distros continue to work with the project.
>
>     Also, this version has a fix for path/inode cross corruption 
> problems which
>     may explain our mysterious locale permissions issues.
>
>     Many thanks to Otavio and Peter Seebach for the help in figuring 
> this out and
>     fixing it.
>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
>  meta/recipes-devtools/pseudo/pseudo_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
>
> $ git tag --contains 0fb257121b68f38b40c078150db8f7d0979b7ea5
> 2019-04
> 2019-04-warrior
> 2019-04.2-warrior
> 2019-04.3-warrior
> 2019-04.4-warrior
> 2019-10
> 2019-10-zeus
> 2019-10.1-zeus
> 2019-10.2-zeus
> 2019-10.3-zeus
> 2019-10.4-zeus
> 2020-04
> 2020-04-dunfell
> 2020-04.1-dunfell
> 2020-04.2-dunfell
> 2020-04.3-dunfell
> 2020-10
> 2020-10-gatesgarth
> uninative-2.5
> uninative-2.6
> uninative-2.7
> uninative-2.8
> uninative-2.9
> yocto-2.7
> yocto-3.0
> yocto-3.1
> yocto-3.2
>
>
> ../Randy
>
>
>>
>> Andrew
>>
>>
>> On 05/12/2020 20:27, Randy MacLeod wrote:
>>> On 2020-12-05 2:59 p.m., Andrew Ellis wrote:
>>>> Hi Randy
>>>>
>>>> Thank you for your reply.
>>>>
>>>> I'm using Ubuntu 14.04 .
>>>>
>>>> After reading what you said about coreutils in your last message, I 
>>>> tried installing coreutils and got a message saying the latest 
>>>> version is installed. Doing "which test" doesn't yield anything. 
>>>> I've looked in /usr/bin/ and there is no sign of test in there.
>>>>
>>>> The version of Yocto Project I'm using is 2.5 "poky"
>>>>
>>>> Andrew
>>>
>>> Andrew,
>>>
>>> Thanks for the info about your distro and YP version.
>>>
>>> It's odd that 'test' isn't part of your coreutils install.
>>> https://launchpad.net/ubuntu/trusty/+package/coreutils
>>>
>>> Is it possible that you have removed it somehow?
>>> If so you could try:
>>>
>>> $ sudo apt install --reinstall coreutils
>>> or
>>> $ sudo apt-get install --reinstall coreutils
>>>
>>> ../Randy
>>>
>>> ||
>>>>
>>>> On 05/12/2020 18:54, Randy MacLeod wrote:
>>>>> On 2020-12-04 7:08 p.m., ajellisuk via lists.yoctoproject.org wrote:
>>>>>> Hi
>>>>>>
>>>>>> I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus from 
>>>>>> MSC technologies), but the compile process fails with the 
>>>>>> following output:
>>>>>>
>>>>>>     ERROR: Unable to start bitbake server
>>>>>>     ERROR: Last 10 lines of server log for this session
>>>>>> (/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.log): 
>>>>>>
>>>>>>          self.cooker = bb.cooker.BBCooker(self.configuration,
>>>>>>     self.featureset)
>>>>>>        File
>>>>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py", 
>>>>>>
>>>>>>     line 197, in __init__
>>>>>>          self.initConfigurationData()
>>>>>>        File
>>>>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py", 
>>>>>>
>>>>>>     line 356, in initConfigurationData
>>>>>>          self.databuilder.parseBaseConfiguration()
>>>>>>        File
>>>>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cookerdata.py", 
>>>>>>
>>>>>>     line 317, in parseBaseConfiguration
>>>>>>          raise bb.BBHandledException
>>>>>>     bb.BBHandledException
>>>>>>     ERROR: The following required tools (as specified by HOSTTOOLS)
>>>>>>     appear to be unavailable in PATH, please install them in 
>>>>>> order to
>>>>>>     proceed:
>>>>>>        test
>>>>>>
>>>>>>     ERROR: bitbake u-boot-imx -c compile –f
>>>>>>
>>>>>> I have had errors like this before, and have been to resolve by 
>>>>>> installing the missing tools indicated. The problem that I've got 
>>>>>> here is that I'm not sure what "test" is referring to. using, 
>>>>>> "sudo apt-get install test", doesn't work.
>>>>>>
>>>>>> Can someone please give me a hint as to what the problem is here.
>>>>>
>>>>> Hi Andrew,
>>>>>
>>>>> It seems odd that you don't have coreutils/test already...
>>>>> Test is part of coreutils on Ubuntu-20.04:
>>>>>
>>>>> $ which test
>>>>> /usr/bin/test
>>>>> $ dpkg -S /usr/bin/test
>>>>> coreutils: /usr/bin/test
>>>>>
>>>>> What distro are you using for your build machine and
>>>>> have you installed the suggested packages?
>>>>> See the quick start guide and links therein:
>>>>>
>>>>> https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html 
>>>>>
>>>>>
>>>>> https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions 
>>>>>
>>>>>
>>>>> Also, if you could mention the layers and version of YP code
>>>>> that you are using that could be helpful in general although
>>>>> for this issue it shouldn't matter.
>>>>>
>>>>>
>>>>> ../Randy
>>>>>
>>>>>
>>>>>>
>>>>>> Thanks in advance
>>>>>>
>>>>>> Andrew
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>>
>>>>
>>>
>>> -- 
>>> # Randy MacLeod
>>> # Wind River Linux
>>
>>
>
> -- 
> # Randy MacLeod
> # Wind River Linux
>
> 
>


--------------E59F6C313291389F22E00550
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Hi Randy</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Thanks again for you help.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">I upgraded my build system to Ubuntu
      16.04, and this resolved the build errors I was having. There were
      historical reasons for the build drive being installed with 14.04,
      but that is no longer necessary. Upgrading to 16.04 cured the
      build problem.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Kind regards</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Andrew<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 06/12/2020 16:56, Randy MacLeod
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:265bba7c-bf36-12cb-4a6e-f867c59af35b@windriver.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div class="moz-cite-prefix">On 2020-12-05 6:20 p.m., Andrew Ellis
        wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk">
        <div class="moz-cite-prefix">Hi Randy</div>
        <div class="moz-cite-prefix"><br>
        </div>
        <div class="moz-cite-prefix">Thank you for your reply.</div>
        <div class="moz-cite-prefix"><br>
        </div>
        <div class="moz-cite-prefix">Doing, "sudo apt install
          --reinstall coreutils" fixed the problem with test not being
          found. I'm not sure why it was not on the system, but that
          error is fixed.</div>
      </blockquote>
      <p>Ah, good.</p>
      <p><br>
      </p>
      <blockquote type="cite"
        cite="mid:03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk">
        <div class="moz-cite-prefix"><br>
        </div>
        <div class="moz-cite-prefix">Unfortunately I've run into another
          problem when I try and run bitbake, the process fails witht he
          following error:</div>
        <div class="moz-cite-prefix"><br>
        </div>
        <div class="moz-cite-prefix"><i> ports/linux/pseudo_wrappers.c:68:16:
            error: ‘__NR_renameat2’ undeclared (first use in this
            function)</i></div>
        <div class="moz-cite-prefix"><i><br>
          </i></div>
        <p>I'll take another look at that issue in the morning.</p>
      </blockquote>
      <p><br>
      </p>
      <p>You'll need to upgrade to a newer yocto release or cherry-pick:</p>
      <p>$ cd ../oe-core.git</p>
      <p>$ git log -1 --stat 0fb257121b68f38b40c078150db8f7d0979b7ea5<br>
        commit 0fb257121b68f38b40c078150db8f7d0979b7ea5<br>
        Author: Richard Purdie <a class="moz-txt-link-rfc2396E"
          href="mailto:richard.purdie@linuxfoundation.org"
          moz-do-not-send="true">&lt;richard.purdie@linuxfoundation.org&gt;</a><br>
        Date:   Wed Apr 10 19:07:02 2019<br>
        <br>
            pseudo: Update to gain key bugfixes<br>
            <br>
            Newer distros are using new versions of glibc and coreutils
        which use the new glibc<br>
            renameat2 function. We need to intercept this for correct
        functioning of pseudo. This<br>
            is essential to ensure new distros continue to work with the
        project.<br>
            <br>
            Also, this version has a fix for path/inode cross corruption
        problems which<br>
            may explain our mysterious locale permissions issues.<br>
            <br>
            Many thanks to Otavio and Peter Seebach for the help in
        figuring this out and<br>
            fixing it.<br>
            <br>
            Signed-off-by: Richard Purdie <a
          class="moz-txt-link-rfc2396E"
          href="mailto:richard.purdie@linuxfoundation.org"
          moz-do-not-send="true">&lt;richard.purdie@linuxfoundation.org&gt;</a><br>
        <br>
         meta/recipes-devtools/pseudo/pseudo_git.bb | 2 +-<br>
         1 file changed, 1 insertion(+), 1 deletion(-)<br>
        <br>
      </p>
      <p><br>
      </p>
      <p>$ git tag --contains 0fb257121b68f38b40c078150db8f7d0979b7ea5<br>
        2019-04<br>
        2019-04-warrior<br>
        2019-04.2-warrior<br>
        2019-04.3-warrior<br>
        2019-04.4-warrior<br>
        2019-10<br>
        2019-10-zeus<br>
        2019-10.1-zeus<br>
        2019-10.2-zeus<br>
        2019-10.3-zeus<br>
        2019-10.4-zeus<br>
        2020-04<br>
        2020-04-dunfell<br>
        2020-04.1-dunfell<br>
        2020-04.2-dunfell<br>
        2020-04.3-dunfell<br>
        2020-10<br>
        2020-10-gatesgarth<br>
        uninative-2.5<br>
        uninative-2.6<br>
        uninative-2.7<br>
        uninative-2.8<br>
        uninative-2.9<br>
        yocto-2.7<br>
        yocto-3.0<br>
        yocto-3.1<br>
        yocto-3.2</p>
      <p><br>
      </p>
      <p>../Randy</p>
      <p><br>
      </p>
      <blockquote type="cite"
        cite="mid:03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk">
        <p><br>
        </p>
        <p>Andrew<br>
        </p>
        <div class="moz-cite-prefix"><br>
        </div>
        <div class="moz-cite-prefix">On 05/12/2020 20:27, Randy MacLeod
          wrote:<br>
        </div>
        <blockquote type="cite"
          cite="mid:93d905af-b0cc-77d7-07f1-53386e535834@windriver.com">
          <div class="moz-cite-prefix">On 2020-12-05 2:59 p.m., Andrew
            Ellis wrote:<br>
          </div>
          <blockquote type="cite"
            cite="mid:cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk">Hi
            Randy <br>
            <br>
            Thank you for your reply. <br>
            <br>
            I'm using Ubuntu 14.04 . <br>
            <br>
            After reading what you said about coreutils in your last
            message, I tried installing coreutils and got a message
            saying the latest version is installed. Doing "which test"
            doesn't yield anything. I've looked in /usr/bin/ and there
            is no sign of test in there. <br>
            <br>
            The version of Yocto Project I'm using is 2.5 "poky" <br>
            <br>
            Andrew <br>
          </blockquote>
          <p>Andrew,</p>
          <p>Thanks for the info about your distro and YP version. <br>
          </p>
          <p>It's odd that 'test' isn't part of your coreutils install.<br>
               <a class="moz-txt-link-freetext"
              href="https://launchpad.net/ubuntu/trusty/+package/coreutils"
              moz-do-not-send="true">https://launchpad.net/ubuntu/trusty/+package/coreutils</a>
            <br>
          </p>
          <p>Is it possible that you have removed it somehow? <br>
            If so you could try:<br>
          </p>
          <p>$ sudo apt install --reinstall coreutils<br>
            or<br>
            $ sudo apt-get install --reinstall coreutils</p>
          <p>../Randy</p>
          <pre><code>

</code></pre>
          <blockquote type="cite"
            cite="mid:cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk">
            <br>
            On 05/12/2020 18:54, Randy MacLeod wrote: <br>
            <blockquote type="cite">On 2020-12-04 7:08 p.m., ajellisuk
              via lists.yoctoproject.org wrote: <br>
              <blockquote type="cite">Hi <br>
                <br>
                I'm trying to compile u-boot for an iMX6 board
                (iMX6-Q7_Plus from MSC technologies), but the compile
                process fails with the following output: <br>
                <br>
                    ERROR: Unable to start bitbake server <br>
                    ERROR: Last 10 lines of server log for this session
                <br>
(/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.log):
                <br>
                         self.cooker =
                bb.cooker.BBCooker(self.configuration, <br>
                    self.featureset) <br>
                       File <br>
"/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py",
                <br>
                    line 197, in __init__ <br>
                         self.initConfigurationData() <br>
                       File <br>
"/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py",
                <br>
                    line 356, in initConfigurationData <br>
                         self.databuilder.parseBaseConfiguration() <br>
                       File <br>
"/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cookerdata.py",
                <br>
                    line 317, in parseBaseConfiguration <br>
                         raise bb.BBHandledException <br>
                    bb.BBHandledException <br>
                    ERROR: The following required tools (as specified by
                HOSTTOOLS) <br>
                    appear to be unavailable in PATH, please install
                them in order to <br>
                    proceed: <br>
                       test <br>
                <br>
                    ERROR: bitbake u-boot-imx -c compile –f <br>
                <br>
                I have had errors like this before, and have been to
                resolve by installing the missing tools indicated. The
                problem that I've got here is that I'm not sure what
                "test" is referring to. using, "sudo apt-get install
                test", doesn't work. <br>
                <br>
                Can someone please give me a hint as to what the problem
                is here. <br>
              </blockquote>
              <br>
              Hi Andrew, <br>
              <br>
              It seems odd that you don't have coreutils/test already...
              <br>
              Test is part of coreutils on Ubuntu-20.04: <br>
              <br>
              $ which test <br>
              /usr/bin/test <br>
              $ dpkg -S /usr/bin/test <br>
              coreutils: /usr/bin/test <br>
              <br>
              What distro are you using for your build machine and <br>
              have you installed the suggested packages? <br>
              See the quick start guide and links therein: <br>
              <br>
              <a class="moz-txt-link-freetext"
href="https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html"
                moz-do-not-send="true">https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html</a>
              <br>
              <br>
              <a class="moz-txt-link-freetext"
href="https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions"
                moz-do-not-send="true">https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions</a>
              <br>
              <br>
              Also, if you could mention the layers and version of YP
              code <br>
              that you are using that could be helpful in general
              although <br>
              for this issue it shouldn't matter. <br>
              <br>
              <br>
              ../Randy <br>
              <br>
              <br>
              <blockquote type="cite"> <br>
                Thanks in advance <br>
                <br>
                Andrew <br>
                <br>
                <br>
                <br>
                <br>
              </blockquote>
              <br>
              <br>
            </blockquote>
            <br>
          </blockquote>
          <p><br>
          </p>
          <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
        </blockquote>
        <p><br>
        </p>
      </blockquote>
      <p><br>
      </p>
      <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------E59F6C313291389F22E00550--
