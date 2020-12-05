Received: from sonic305-21.consmr.mail.ir2.yahoo.com (sonic305-21.consmr.mail.ir2.yahoo.com [77.238.177.83])
 by mx.groups.io with SMTP id smtpd.web10.11653.1607210408905239513
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Dec 2020 15:20:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.co.uk header.s=s2048 header.b=i32cS7vn;
 spf=neutral (domain: yahoo.co.uk, ip: 77.238.177.83, mailfrom: ajellisuk@yahoo.co.uk)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.uk; s=s2048; t=1607210404; bh=Y4oeygXDrEmIXfxt5yl8h6mmzUST18W0CmmoXegYK+0=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject; b=i32cS7vn4eSrviJY+vx9Y5VSesl3vveaVDSTlioc3fVZPavMjuIxDpxjOLeBbMXmQZvh3ncLn0O4Ch57dRsAeNdUVT2bfJ2ubLVA7dUuSlxc3qGCwyRk+cCYskwtqpenW2ge9wvKyVrceF7rCSk84vnw5iFL4WyyyPCWn1GR4J1AkyGYpK6An39MuUxuJdaP92lKRP8MgHpJKKR11lVE1f5goZXB2bFTEp7Ro0mU6mSCRIoQ4JbxMMdy3PxB8rT+let99fip8qnpSSMPlXHev+iDsHoateao38t75foSUPc1xmrO/lDI1N7nxqEjNIIaPnk0cBw+MYMRau8DaQm+kg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1607210404; bh=KX6oF4UeIYJxYzSbCJ1DvFxvmjbSqA/1Ij29TOzWVJq=; h=Subject:To:From:Date:From:Subject; b=eOiixl44s1JILeQOawjp6joj74TEirACwek7vqcwh4dq/wcMrlmZyL+WaHFuSpJ7SuVzRx3iVxyWFHYMb3pw/6dzXJBWn3zlq4yftlgaAXogegD6kFCfMkZToZbAgo4KsTQHWbAaPmycyoggvti+ST64D4eVYKZzaUSjn5wJ3VuKc7bz7g8eAI8u3tn7EsxwU9OiivRFRC8p7oikl+JoyhLbAY1XZ62r0TXR0iwYD58luN5keFAKyZVET67v6mrHPqS/I4I1SOAw3OR4wiVdbIbpQrcB4rMMpg6OKWVHdP4y8AgmUCYIDIzRrCAPwA1UsesL5wPpZscvpwjNkapzlQ==
X-YMail-OSG: 6cN3E64VM1miJlYkTy63_5._n3Sa_VV8Zkj8WVGaYbL2m6p._X2iLFJPtXPhoN4
 fQv13YfyBo.SVUkX6AIoRcESp_CbPCOyeK_Bpx7cWEfVAxq_Z9h0VpldgXcKOFpFCh2LTfaUEhjZ
 neZZ1YJynCdiS.IpwI.Qj3aljjAVaIp3bT3VMrVnQ5Y16qegEGAKpCdD1duQGqVvZRGqABm8sEcj
 sX5n8FnlC5fxtM21qWdDKJUhyoWNHNCpG8Tx6P48bSqIsaMA.81XJ7KKbkatF9Qz40jzu34F2y3x
 .upUf1uFe4Pa7N6JeHW_xKjAl8ENVXQ2JzZYp1Mp5_c3PiDOzbTodl8dtVoeF5_KYT6gazfclDhU
 GcKlBocO0nSiEBGWDMMFqDqE0HmR2QnI7u9wwsGHkPNqdBqYq5iJk3LjpIz_v09tOhDAOZoYUN_z
 eTb7J.O2Q0dc1A8Ra5CTp0jIBiQrDnj3CTDSy.LQnLQf_vWmeBNh9RDX5PAWozJPZxqQq3rUvVmu
 6QDFgWEUrCBaNwEGVUJ8vmRcesbDTvFh91UKtxIqgETLS2LTPsRJeLE72Pz6.MYrasU9nJ1MEYlk
 XkVUi_oXr5zPPZCeRw4FmoL3mFPpQM1S6mPW1bABuuRXFt8jzmusoIXLeFT_pJWo1veZCMMuMFVL
 NpV8Ri1_SRmqdAw0OFETp8hkH9bnuDcYUvB2r7LKifR.v5hwesViRmcGKbQ0Hb_RZEqjK.Ufp7o8
 zH.7Yc_.DhuNOpsVKWDJ65lB98I8aS0eWbPHwvTMu4wYKGt3hGslXe6XFZwbuUi9FgVRqeExvCYv
 pOROHRw4B2kFa.kQLQCc1XafXLYsIt_Syr8YcuTdSuXJU8IWf7dAAeeFimrgatJUP2CXSBRUIRTC
 8IYdfUb_6CSqqSTdhxvFAtfJmQa0hY7Oy0YlznhP0Xr7eRqtCf.vmGW5lkCcu8msGTNBVQkDXTp2
 bxnbjwyAltNjJ3dkQKwk1bHdrUo5Rt9XFbGmW8dbkf0wqLeeI.9CJbDS0l164.Eu2zqcqOeusnfW
 wUmWi3jwruQWJEB0rwRO5V9KYZjBcxA3BMCK.MX1xhd6pHZej1TkEZUpwPBQfppr.yMSaZBPOWKu
 LmmHNb96aqeibmFeiAWyX1vMUAZBH_0DOrPAesDF_UqYRM2Uo1yf4ppZn3VGTTOayfIp0XVwAKx8
 1Uivv7cDDinLevvSOwoz6Zxx7mHYzeNEE6CTijfaDdIOeq_K_dvpfknAJt_F6GbF.cy.wH.q4_jr
 ._94b536MsD0X2HYLqrVgsNXz9W8nbtsf3AzJebP5kO5B2q5C557WLEbtac_7_YXXswApOgNipxZ
 myqMooBg2QWYd.wZgfPgpIEXxb21D2caeGVK3ORGDa4EowIRWNlVb5hre58wd3l8e6w0JwNP4j4.
 UGgjQTCiR1Sj7SJfHeQfm6p9CQ92jcy7BcYjADJAEk_kbg1TCjubLwKBNHS1kO2G7hIITpYVPyU7
 UwDc_VO8JwKoy6XKGGc2_HRUQQUKY9CJuW0aa9E5Pyz0eTLPxu1R6j_NikQEyY0D7hmYRfhcZ1CG
 KyzxF_Bo9OUFojVik6Wv6Cr6TflvgFDsxZVMSEP.SHLuy.jb_4EZNCNMSZtkr4AUUcQom.octIjY
 iCj_6Q8EzKqZSfXrQyxFpMLbWNgWmuC3MVlz_DY6wq9EN8gOAIbf_CONYF7WFTatjLtHdnmr07Or
 2.sOzOxDWSM51UKrYLm1iuyuObLJ5g7gChsdklDkjj24oSskXWK2_3dm_U4M_lDxeFi7.QnLMqA.
 0kmdfcSXeVCdeYUcvN_c.bxewb0gOmq9yexu6s33Mg90CjUok3Ozpi16k_O9ZxS94yzxOCHGliBY
 jMxToDu89j.QHBOX10Q60MykHehfJxyK1JtJOnTTctCl4oqFKfFY.IPZJvA63yeCXPdUIYuPuanq
 keGks3VY_4YwXAWZsLsC5SqUk3RILiBNRLsbfqtLwwRbB3QmGlymDYoiEvh_hOk_aYDq751m0Im8
 9_D7NM9YXHjSnFCWepukEd.pFmMdg7gxvmpkdrgBGaZHn3D60XOLaVPQk4.3DKFaZK8f4O_xAAM7
 7yiplGjWVvnmvmn8OamW7ER43EgS7uJGcl1syxBnZoXtxrQfiXR_mO0rKyMnvWwXKv.URZEod6lo
 UyiMOm5LDH9hcEKxMKj9HkMxVZfO5r.hrH4yH1htaUkEqcjcAGtCQNesPKUUaiAvXJpWLF7jkOoQ
 j3Rd5g66YN.mrWQkb8Trps1vWUCtE1ltlEcuBIpDD4HfIgVC2vzDElKR788Nse8VQ_.bNw8vAda7
 z0QJwJYBMAOluNyaWQ2OA.GmsOMI7tGClG7YCWejPdrcZ15_8YUaZmxA4cpyPPhu6Ut0Ocm14nu9
 jSgqsqh8dv6a.MaRKJIXFhvq_p4cnqQSNcBxUqyBtnZ.Qze95mR2Xv.2chrBFM92X9HUCU7zUw27
 U0ecaceucaHJ23NNzlHImCOoOigC0u2n1T.7hRJMiJTYuhlrOQrUYcQJdGFjxWZeOWF0-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.ir2.yahoo.com with HTTP; Sat, 5 Dec 2020 23:20:04 +0000
Received: by smtp411.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 9b89955b9229cd1e77277c76f7558abe;
          Sat, 05 Dec 2020 23:20:03 +0000 (UTC)
Subject: Re: [yocto] #uboot Problem compiling u-boot with bitbake
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@lists.yoctoproject.org
References: <9sNV.1607126926460437364.UjE6@lists.yoctoproject.org>
 <c8629755-2fb3-2567-4daa-bac16faa074e@windriver.com>
 <cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk>
 <93d905af-b0cc-77d7-07f1-53386e535834@windriver.com>
From: "Andrew Ellis" <ajellisuk@yahoo.co.uk>
Message-ID: <03736a6d-5161-6031-34b0-795d5eee9a8a@yahoo.co.uk>
Date: Sat, 5 Dec 2020 23:20:02 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <93d905af-b0cc-77d7-07f1-53386e535834@windriver.com>
X-Mailer: WebService/1.1.17111 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Content-Type: multipart/alternative;
 boundary="------------CE3B19F34C0B21F890D93589"
Content-Language: en-GB

--------------CE3B19F34C0B21F890D93589
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Randy

Thank you for your reply.

Doing, "sudo apt install --reinstall coreutils" fixed the problem with 
test not being found. I'm not sure why it was not on the system, but 
that error is fixed.

Unfortunately I've run into another problem when I try and run bitbake, 
the process fails witht he following error:

/ ports/linux/pseudo_wrappers.c:68:16: error: ‘__NR_renameat2’ 
undeclared (first use in this function)/
/
/

I'll take another look at that issue in the morning.


Andrew


On 05/12/2020 20:27, Randy MacLeod wrote:
> On 2020-12-05 2:59 p.m., Andrew Ellis wrote:
>> Hi Randy
>>
>> Thank you for your reply.
>>
>> I'm using Ubuntu 14.04 .
>>
>> After reading what you said about coreutils in your last message, I 
>> tried installing coreutils and got a message saying the latest 
>> version is installed. Doing "which test" doesn't yield anything. I've 
>> looked in /usr/bin/ and there is no sign of test in there.
>>
>> The version of Yocto Project I'm using is 2.5 "poky"
>>
>> Andrew
>
> Andrew,
>
> Thanks for the info about your distro and YP version.
>
> It's odd that 'test' isn't part of your coreutils install.
> https://launchpad.net/ubuntu/trusty/+package/coreutils
>
> Is it possible that you have removed it somehow?
> If so you could try:
>
> $ sudo apt install --reinstall coreutils
> or
> $ sudo apt-get install --reinstall coreutils
>
> ../Randy
>
> ||
>>
>> On 05/12/2020 18:54, Randy MacLeod wrote:
>>> On 2020-12-04 7:08 p.m., ajellisuk via lists.yoctoproject.org wrote:
>>>> Hi
>>>>
>>>> I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus from 
>>>> MSC technologies), but the compile process fails with the following 
>>>> output:
>>>>
>>>>     ERROR: Unable to start bitbake server
>>>>     ERROR: Last 10 lines of server log for this session
>>>> (/home/user/msc-yocto-140/msc-ldk/build/1006/bitbake-cookerdaemon.log): 
>>>>
>>>>          self.cooker = bb.cooker.BBCooker(self.configuration,
>>>>     self.featureset)
>>>>        File
>>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py", 
>>>>
>>>>     line 197, in __init__
>>>>          self.initConfigurationData()
>>>>        File
>>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cooker.py", 
>>>>
>>>>     line 356, in initConfigurationData
>>>>          self.databuilder.parseBaseConfiguration()
>>>>        File
>>>> "/home/user/msc-yocto-140/msc-ldk/sources/yocto.git/bitbake/lib/bb/cookerdata.py", 
>>>>
>>>>     line 317, in parseBaseConfiguration
>>>>          raise bb.BBHandledException
>>>>     bb.BBHandledException
>>>>     ERROR: The following required tools (as specified by HOSTTOOLS)
>>>>     appear to be unavailable in PATH, please install them in order to
>>>>     proceed:
>>>>        test
>>>>
>>>>     ERROR: bitbake u-boot-imx -c compile –f
>>>>
>>>> I have had errors like this before, and have been to resolve by 
>>>> installing the missing tools indicated. The problem that I've got 
>>>> here is that I'm not sure what "test" is referring to. using, "sudo 
>>>> apt-get install test", doesn't work.
>>>>
>>>> Can someone please give me a hint as to what the problem is here.
>>>
>>> Hi Andrew,
>>>
>>> It seems odd that you don't have coreutils/test already...
>>> Test is part of coreutils on Ubuntu-20.04:
>>>
>>> $ which test
>>> /usr/bin/test
>>> $ dpkg -S /usr/bin/test
>>> coreutils: /usr/bin/test
>>>
>>> What distro are you using for your build machine and
>>> have you installed the suggested packages?
>>> See the quick start guide and links therein:
>>>
>>> https://docs.yoctoproject.org/brief-yoctoprojectqs/brief-yoctoprojectqs.html 
>>>
>>>
>>> https://docs.yoctoproject.org/ref-manual/ref-system-requirements.html#supported-linux-distributions 
>>>
>>>
>>> Also, if you could mention the layers and version of YP code
>>> that you are using that could be helpful in general although
>>> for this issue it shouldn't matter.
>>>
>>>
>>> ../Randy
>>>
>>>
>>>>
>>>> Thanks in advance
>>>>
>>>> Andrew
>>>>
>>>>
>>>> 
>>>>
>>>
>>>
>>
>
> -- 
> # Randy MacLeod
> # Wind River Linux



--------------CE3B19F34C0B21F890D93589
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
    <div class="moz-cite-prefix">Thank you for your reply.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Doing, "sudo apt install --reinstall
      coreutils" fixed the problem with test not being found. I'm not
      sure why it was not on the system, but that error is fixed.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Unfortunately I've run into another
      problem when I try and run bitbake, the process fails witht he
      following error:</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix"><i> ports/linux/pseudo_wrappers.c:68:16:
        error: ‘__NR_renameat2’ undeclared (first use in this function)</i></div>
    <div class="moz-cite-prefix"><i><br>
      </i></div>
    <p>I'll take another look at that issue in the morning.</p>
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
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div class="moz-cite-prefix">On 2020-12-05 2:59 p.m., Andrew Ellis
        wrote:<br>
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
        message, I tried installing coreutils and got a message saying
        the latest version is installed. Doing "which test" doesn't
        yield anything. I've looked in /usr/bin/ and there is no sign of
        test in there. <br>
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
        cite="mid:cf0ed566-6d17-f441-529f-d5354519b892@yahoo.co.uk"> <br>
        On 05/12/2020 18:54, Randy MacLeod wrote: <br>
        <blockquote type="cite">On 2020-12-04 7:08 p.m., ajellisuk via
          lists.yoctoproject.org wrote: <br>
          <blockquote type="cite">Hi <br>
            <br>
            I'm trying to compile u-boot for an iMX6 board (iMX6-Q7_Plus
            from MSC technologies), but the compile process fails with
            the following output: <br>
            <br>
                ERROR: Unable to start bitbake server <br>
                ERROR: Last 10 lines of server log for this session <br>
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
                appear to be unavailable in PATH, please install them in
            order to <br>
                proceed: <br>
                   test <br>
            <br>
                ERROR: bitbake u-boot-imx -c compile –f <br>
            <br>
            I have had errors like this before, and have been to resolve
            by installing the missing tools indicated. The problem that
            I've got here is that I'm not sure what "test" is referring
            to. using, "sudo apt-get install test", doesn't work. <br>
            <br>
            Can someone please give me a hint as to what the problem is
            here. <br>
          </blockquote>
          <br>
          Hi Andrew, <br>
          <br>
          It seems odd that you don't have coreutils/test already... <br>
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
          Also, if you could mention the layers and version of YP code <br>
          that you are using that could be helpful in general although <br>
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
  </body>
</html>

--------------CE3B19F34C0B21F890D93589--
