Received: from sonic310-22.consmr.mail.gq1.yahoo.com (sonic310-22.consmr.mail.gq1.yahoo.com [98.137.69.148])
 by mx.groups.io with SMTP id smtpd.web12.4490.1605758393008944782
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 19:59:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=sN3L9hXE;
 spf=neutral (domain: yahoo.com, ip: 98.137.69.148, mailfrom: chuckkamas@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1605758392; bh=HJYbW5fQwfs/loM4JnPvj9qJnqVnjuC+Ghyu2bF4IWA=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject; b=sN3L9hXEFe1UliEE+2tjfntoJ+yajZ0i9BPDPC47KqQbp5RqW1p6oimP8Z4B2cCOc7u9oW4PrCTbZCMhdH1EiRGdokt5RABSA4IS+jNRQdMVJMkVJoy8EsUlI5qi3Ka1uqHMeIirIyaiZdEm7QGBm1HvOX3YJXTTE7CwWFy2PpUK9aYYTcE/ZjrX9RRboNE8UaqmnC7CC9zV3uBAVuhg9jyjdqmRhqYp6jvSeARREaIV4yRDIh/64vCF0hq3eZ9Gb9QlYBjxg7TK3EIfsW1KclZZ/fnfwtwUPySXUmDTgYQPi1QgA9QcZ7oaHgOlwJAMc79dtn2dOeNmksnSzTGMSg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1605758392; bh=PxtNVLGBfaxNJPSudvsiEFcMi4DAIryk85Q5ng+rS4k=; h=Subject:To:From:Date:From:Subject; b=GlnBjfJRxxSXrsDAHYbhZ1tOydsUkMsqsFgsJwsRZlhLmKw119SkbX7kX5vyzfg1wtAUXyhNXJjBbJRpA/IMU40o4DIiO1d3b/CUb/4ZP2dw3yiuIBDBqnEjFFoLrL9fkxsVNXRAJnOw3RiJIBYH4i95wdgTWw9D31kzCJYp+O2L4IXAC081qOjVME/l+vux4Dii4UEMKm6yFjBRAk2AvHgEpRYCjPRxbrIgJ5bkE82vfZ7l+IWpYh2uEKB03jRblqskkHgPgPKjWw9Y6iZo+xZWwtQS9PVhwQiYIyHI0SNlrt0kTW89cLFvsIyv7SmAx8AuPzcDObW6X/88+q1cSA==
X-YMail-OSG: RlaCHpIVM1mvLXLL3fPR8V8IgWoHuIFKzHcfAMrGtqYzjBzXqWtCFJZNYQYiex2
 7Yru6pSLai3oKxKcatLxsxvRF.icYv5HSf8RvMarJv7xQZcl2vZXOj15JrBST5NI8ZawPbYrAJ2J
 P3j2Xx5E_H8CKYqU0SjzoPbU8ZpZIb6fA9gJnCrvj4RDEn3RAbYga7koPSKZ_wb0vkAUkWFDA7E7
 iFMrrd_2a0j.XOxcqw5yqrZC5kc4IQEpPGB9VNsXf5Xj3F.BBBk2AL3PRP4D.J48cXsFfMHjxtjH
 SmU4UVHXLU1FTFlPJMyIASaZb1Ke4C6b9EpB2Y9lW5Ri_dI..rK7S7uIbPBvqPNYIK3pmdvyjyy4
 6hZLyJJzLZKhpEQ36OaZmkX1jTkqG7Hd9jrRSSoaBryx_fUVh1k_MHtWEX5eA1.jiKynNmq.swLv
 dgomx2JsIYbfRCJiGL6gFPe.KfA8MqO1DSgGY2nz1xjUe1Yzo87wckQOMJRHb2GkaW2.vawbcBds
 63BBKL.1id3bsvDYzIWp.l3CrNaP.l4wh7dyY5PzO1nQkLv47oEm1q4I.6jcRrFPiApTl7CNjKiq
 mdsyw.ivrWG2DdRoz0_c_vhyumRHCpEmpgLXnfmLb35wjNh8ed3ZQVn0vCdGN.SjP2jcwSww.OBx
 oiq1_FsL6v_0IsbmnFSwnOVeNSw44YMZhtIO7Ybfk5W54Mqe2x86lr_SlNqgH_oAYBHD4fdbP1eZ
 dglBj8LTTxmMTepfOg5yQ6iu2bxZs.ByDyrs_eZqNGmRf1J4t47g5ONZMxJ9eyFDjGm7OXmVIumx
 7ANty4Oq70BAlWpBO5fPJ3VomgCQ32tzIp6JRs.2ElvsMNhoRPog_uFSycJoHO8lUgCuj5B78PHI
 mmeHTVlaV749ipDbxygaRT3KxvSW2TRhixXXos9lYBufwI2.Djk0Vf4QYunj7bsNzb1ldDlIMmCF
 6cy6E7xbpQ1FFNNvGvl4zAzQQwEJuGVl6Wux6JbrPt3kPjbl9aLvoNIfNX3IykKx7.UdVz0IgOPN
 TjXV72uZlHwKcN_.SsxhIwO8A7sOvAykdq0AQ7R30.uBLniVZmRM4PwzBEqm_J.OhKCbupIOvTw4
 Qw5hcYKRU4gZfPsuU8sGLtqyn6s8VAI4wot0gMZIqfGCNdnrL54fbp5puHQcSbKdsgnGGZFKfbp4
 m4AWwJxsMD6tKJB7fpr1a.fUYrh6FXFeZ3qKN_6Dfu6gp4DVzvuJHmUF6OeT9MD_s_yZH.PrDtez
 0p0STEDabyGAoDWtrlBmOMF4Gs.2_Zd0cDwIIPHb1W4jW8pfJlJddg2sx_58OiUe8qxr01Ul7Zij
 KU6lBKxrF9QCs9WHIpOIa..eszfOe6WrAfhi2BwX7XLGRiQLGv7BEElN5E4zTkrq90Z3laS0cR.Q
 YG257LtVCDiBHwz1yRTwvdBwAAU_LIs6dxWQNg2aR.hUyAF.uLK02URXjuzqEjK8H8VbvUVO4fng
 Sj6rK3XfFnZfHa.z1TLIGC5SUK89OTrbU5h4kKePVEb.Q0ljr.sXKZYExLQ6NLJh_4b7xnCYLls3
 etaxLzRgCPJ6l0sl.Qb930Bw9qkC4DNw76epZCk_lYm9EvSaRfNvuKkvFOGVFdaSbtTvRlFq54bj
 ZlU0zoo34iZtRu0Xtt3erHRjE0RtTsqFQcL.9yPKBsPjWcQ9e3H37oRxADcKY6rBYkPt_OHKeVJi
 e2tKD12UfDUqOrtTaWoIM9tyUOX8MD8k2Mozt3IE7iGUotiLo9uTTakPnKz_s1mjn0xQSIOcyKua
 .Mq8xYPyaSZ81WFlYDdE8fs8tvPzcdTGwcAV8NxcC4axSd1mVSf5ZpaP_b5VKeW.q9DGPF5OlUmG
 jbrJO7nepup8ip5YSMdXTuqRDedyd9kqiAL_ymTMEiKulWtz7kGOFU2EFv.FQmVG3jDVFjXFteBb
 FSsqmr8ebWUrI1ytk1LB2wUSuHxyu2t9igPCt_9AxkGCZlZ5Q2BMEvj3Gxsc0dNQonhvLkDAwpqH
 537QgDTzT78.7dWh9tQM_ZopAy7OuNETCEy7HArL_8OJQidqB5EdpCAiFdYO2FC_80y72iGSN9sm
 7S7ipY0lp_wsLi7jt6ac85X3S7rRKEu8iSjg2v3vw60u68UoLBaYrRxUuvuKpp1_uztCsTh7.iNF
 FzssigU25eU_kwom1XDDRMft7MbgY7SMYxsBlZcACdVsCIHAEAKx35sb5FQSO5iYPpJKdbprOD47
 KwSNaZii0u5jIMZsv9FYgUXR.Wniv2w4R5MTavoh0huHmLHvwCEc8m1lrXSd2Y.S8EdKIzU4Xq7d
 chOJYssD2aYfVM0TSjr.IrxYXXAZhY2HJEl0S__QFDOh7i7VwoH197vix3H9_vSc3lLlg33nv0k6
 Kg9I4vHYlUwwBwefv4La6zf6dVFEXabR0Z08BXWhVK.ogAyzCO4leQKxHWh2h5MJGQtyUj0s20ag
 eMxLYH_d.3LQm67fcu6GKdTz16l93u8Zvtc3dCShV06e9FqeWPQjRqu3rMRtsnU6Wz7_YXkAHHuY
 DtGj3ADROzWgDlRF9Aw0gHsN5v.yObP5ZowSTvmusi_JNbu3t_ehPqtDvCzdDg5zyn_Bgb8GwMQ4
 BOMeyBhOWg7xSWQbS93pSiQUSzAunKFbUCCoX9zokYjJvZ.B_vnbiTXmmbrEtX5bJkdNL5mP0pXq
 NabsDkxLQR29qGAgpU9f9svk0Jl7z3Uj0Lik1DLhvsCU3DFGrKft1tNVUyHo_ei2UD1EbBw--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.gq1.yahoo.com with HTTP; Thu, 19 Nov 2020 03:59:52 +0000
Received: by smtp421.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 2c08141d4a6468c32c06bd5bb186bf8f;
          Thu, 19 Nov 2020 03:59:46 +0000 (UTC)
Subject: Re: [yocto] Raspberry PI enabling MMC1
To: yocto@lists.yoctoproject.org
References: <61df164e-fa3a-7517-33e8-db8ef0c8af92.ref@yahoo.com>
 <61df164e-fa3a-7517-33e8-db8ef0c8af92@yahoo.com>
 <CAMKF1sq=my8uXJwO93BwhEMiEZRyYGOCvv9BMuMCG8=DuGV-Ww@mail.gmail.com>
 <16488BC657DA2093.23836@lists.yoctoproject.org>
From: "chuck kamas" <chuckkamas@yahoo.com>
Message-ID: <97ca6687-fa2f-869b-b433-cbdfad852fa8@yahoo.com>
Date: Wed, 18 Nov 2020 19:59:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <16488BC657DA2093.23836@lists.yoctoproject.org>
X-Mailer: WebService/1.1.16944 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Content-Type: multipart/alternative;
 boundary="------------53CAA7F55E1117554566AD12"
Content-Language: en-US

--------------53CAA7F55E1117554566AD12
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Raj,


I found out how to debug the boot process of the PI from:

https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md

by turning on the boot code debug.

sed -i -e "s/BOOT_UART=0/BOOT_UART=1/" bootcode.bin


I found out that the sdio overlay does not exist!

> MESS:00:00:07.868162:0: dtdebug: Failed to open overlay file 
> 'overlays/sdio.dtbo'
> MESS:00:00:07.874093:0: Failed to load overlay 'sdio'
> MESS:00:00:07.878881:0: brfs: File read: /mfs/sd/overlays/sdio.dtbo
> MESS:00:00:07.891322:0: brfs: File read: /mfs/sd/cmdline.txt
>

So what am I missing on how to turn on the sdio on GPIO22-27? Is it not 
an overlay and instead a driver/other code/linux config that needs to be 
set?


Chuck


On 11/17/20 4:29 PM, chuck kamas via lists.yoctoproject.org wrote:
> Raj,
>
>
> Thanks for taking the time to respond. I thought of that too. My 
> custom Yocto build has the line to turn on the sdio in it:
>
>> dtoverlay=sdio,poll_once=off
>
> I have attached the entire file: config.txt.yocto
>
> However, the Rasbian image does not have any mention of the dtoverlay 
> for the sdio.  Curious. See config.txt attached.
>
>
> Thanks for the help!
>
> Chuck
>
>
> On 11/17/20 12:08 AM, Khem Raj wrote:
>> On Mon, Nov 16, 2020 at 11:43 PM chuck kamas via
>> lists.yoctoproject.org <chuckkamas=yahoo.com@lists.yoctoproject.org>
>> wrote:
>>> Hi all,
>>>
>>>
>>> I have been spinning my wheels for two days trying to discover how to
>>> enable MMC1 on a CM3. This is the one on GPIO22-27. I can boot Rasbian
>>> on the CM3 and it inits the MMC1 and its pins just fine. I can
>>> read/write to my SD card from it etc. However, when I build yocto it
>>> leaves the GPIOS22-27 in gpio mode and does not set them to MMC1 mode.
>>> I have tried changing the device tree as described here:
>>>
>>> https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto 
>>>
>>>
>>> That compiles and add the .dtbo to my build, but still the GPIOS are 
>>> not
>>> set to MMC1 mode.
>>>
>>>> cat /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins
>>>> Pinmux settings per pin
>>>> Format: pin (name): mux_owner gpio_owner hog?
>>>> ....
>>>>
>>>> pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>> pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>> pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>> pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>> pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>> pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>>
>>>> .....
>>>>
>>> I have looked at:
>>>
>>> https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/ 
>>>
>>>
>>>
>>> Any ideas of where to look next to turn on the sdio would be 
>>> appreciated!
>>>
>>>
>> what does /boot/config.txt look like on raspbian and yocto built images
>>
>>> Chuck
>>>
>>>
>>>
>>>
>>>
>
>
>
>
> 
>

--------------53CAA7F55E1117554566AD12
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Raj,</p>
    <p><br>
    </p>
    <p>I found out how to debug the boot process of the PI from:</p>
    <p><a class="moz-txt-link-freetext" href="https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md">https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md</a></p>
    <p>by turning on the boot code debug.</p>
    <p>sed -i -e "s/BOOT_UART=0/BOOT_UART=1/" bootcode.bin</p>
    <p><br>
    </p>
    <p>I found out that the sdio overlay does not exist!</p>
    <blockquote type="cite">
      <p>MESS:00:00:07.868162:0: dtdebug: Failed to open overlay file
        'overlays/sdio.dtbo'<br>
        MESS:00:00:07.874093:0: Failed to load overlay 'sdio'<br>
        MESS:00:00:07.878881:0: brfs: File read:
        /mfs/sd/overlays/sdio.dtbo<br>
        MESS:00:00:07.891322:0: brfs: File read: /mfs/sd/cmdline.txt<br>
      </p>
    </blockquote>
    <p><br>
    </p>
    <p>So what am I missing on how to turn on the sdio on GPIO22-27? Is
      it not an overlay and instead a driver/other code/linux config
      that needs to be set?<br>
    </p>
    <p><br>
    </p>
    <p>Chuck</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/17/20 4:29 PM, chuck kamas via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:16488BC657DA2093.23836@lists.yoctoproject.org">Raj,
      <br>
      <br>
      <br>
      Thanks for taking the time to respond. I thought of that too. My
      custom Yocto build has the line to turn on the sdio in it:
      <br>
      <br>
      <blockquote type="cite">dtoverlay=sdio,poll_once=off
        <br>
      </blockquote>
      <br>
      I have attached the entire file: config.txt.yocto
      <br>
      <br>
      However, the Rasbian image does not have any mention of the
      dtoverlay for the sdio.  Curious. See config.txt attached.
      <br>
      <br>
      <br>
      Thanks for the help!
      <br>
      <br>
      Chuck
      <br>
      <br>
      <br>
      On 11/17/20 12:08 AM, Khem Raj wrote:
      <br>
      <blockquote type="cite">On Mon, Nov 16, 2020 at 11:43 PM chuck
        kamas via
        <br>
        lists.yoctoproject.org
        <a class="moz-txt-link-rfc2396E" href="mailto:chuckkamas=yahoo.com@lists.yoctoproject.org">&lt;chuckkamas=yahoo.com@lists.yoctoproject.org&gt;</a>
        <br>
        wrote:
        <br>
        <blockquote type="cite">Hi all,
          <br>
          <br>
          <br>
          I have been spinning my wheels for two days trying to discover
          how to
          <br>
          enable MMC1 on a CM3. This is the one on GPIO22-27. I can boot
          Rasbian
          <br>
          on the CM3 and it inits the MMC1 and its pins just fine. I can
          <br>
          read/write to my SD card from it etc. However, when I build
          yocto it
          <br>
          leaves the GPIOS22-27 in gpio mode and does not set them to
          MMC1 mode.
          <br>
          I have tried changing the device tree as described here:
          <br>
          <br>
<a class="moz-txt-link-freetext" href="https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto">https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto</a>
          <br>
          <br>
          That compiles and add the .dtbo to my build, but still the
          GPIOS are not
          <br>
          set to MMC1 mode.
          <br>
          <br>
          <blockquote type="cite">cat
            /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins
            <br>
            Pinmux settings per pin
            <br>
            Format: pin (name): mux_owner gpio_owner hog?
            <br>
            ....
            <br>
            <br>
            pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED)
            <br>
            pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED)
            <br>
            pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED)
            <br>
            pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED)
            <br>
            pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED)
            <br>
            pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED)
            <br>
            <br>
            .....
            <br>
            <br>
          </blockquote>
          I have looked at:
          <br>
          <br>
<a class="moz-txt-link-freetext" href="https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/">https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/</a>
          <br>
          <br>
          <br>
          Any ideas of where to look next to turn on the sdio would be
          appreciated!
          <br>
          <br>
          <br>
        </blockquote>
        what does /boot/config.txt look like on raspbian and yocto built
        images
        <br>
        <br>
        <blockquote type="cite">Chuck
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
        </blockquote>
      </blockquote>
      <br>
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------53CAA7F55E1117554566AD12--
