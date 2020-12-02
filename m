Received: from sonic317-21.consmr.mail.gq1.yahoo.com (sonic317-21.consmr.mail.gq1.yahoo.com [98.137.66.147])
 by mx.groups.io with SMTP id smtpd.web11.487.1606870222929606578
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Dec 2020 16:50:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=fXKgBGCq;
 spf=neutral (domain: yahoo.com, ip: 98.137.66.147, mailfrom: chuckkamas@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1606870222; bh=5M3Tbw6caD4drCXyb60MdGNRugiJchOVpG4VtrieLHg=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject; b=fXKgBGCqYQSukao1kgo6xdG14I3Se3Q/fAisqOSGvppUmiU5TIYWF0MdjUZqKDCDGgcbJ8J+Cj4TiqVVYoBkty5QAIU5Tr5gJddtYUwUdkpdTwKA2PCUH/kdMRErA3iLAaH+DpYRivO4HPs+v8Zu9QINJzFJ5YkLd/dfwPeY0afToR2PGqNhwFKuTZeUqVy4QJODKUJAwkd0XH/wMZ3xScyGA57RZEEY9L8J8qEFBsFueGTrC3o0rOiYSMroOeJBNSMU/DedwURKhEe0kmVsy31pqi1muIPaXmx0XUoeR5YWBABf6d5ch3b2aRCgUNjzqHvJMm8UXeyXaZTUsE/9dw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1606870222; bh=Bbp0qXe8mHgWFyx/ZLPOwDxi3D9RuH32g9NRKQWvKtJ=; h=Subject:To:From:Date:From:Subject; b=An5leQEEIs7UzdhKbfq8EatOFRr0rNO9xoIJllhz3h96MxPnuZbX8XCqhx9hY66pAPQMb6Z6xvP34UzOGyyxmf0fSKyHd2zeKOzyRI0B1CBapCLRkqqwapy8aV0aNBNnWcCSnvsCwxJwUQE/bIhiwj7nqQoa9C3u+kCHw/c9DVDbtPfJZybCDjpg29gZrD+7pUPmdJJaI56N9K3SvaAixU2wrWsT904NRaDw2PrrgxcOHCaCdmQKu2540Oen2bFcHT8Sy1tbELNK52+MB/dzH8K+aicjPkIQjdvfL5p8zJEsry0CxyZ7VeFdEW3cATF7uMliOMCVRaoP6GBQH6fIgQ==
X-YMail-OSG: fESXl.YVM1nEiWdwZ3Yw4LC5LT0U2B9CPNzvqsgw.U0EIFBJNNE0JN.0XjCfa9V
 uw71dRIP0Asng0PH8GrXCsZpuq_dtKQBcjCkdeQ0b_HaxFeOjkhpe7cO3cb1PEzlLs9.gIRzEVlk
 mH6G9YtSciwu3932ZxFsAn0avjSFHzGLM3QPUNKJpiTqxCjrm5RqJ8XNXIISfvnlsGYKoSClqzwh
 U_mqPBLS7poOM_2Tq3RJCpLJMydnk9szxqKwdqfFVagOIDZ_.jKyvjEzmdThtUNHRLSi4fFJ1PST
 A9vksvPKJhYNwv2rm0gyoc9tml1xFyN61..q_w1VSu9sa7zl2fnUziuDD.tfMQTh.WcDn0ge146x
 nhXr9Iu_Dd4fhdsJbzfDi7NHoSNHlU8EVPHuLjSkkKFKDcevbFHA5nlWX3yLnLHliRo4XGFN_1u2
 yLBF3A1Y6iNCGYbBf4kyj2e996H0ru9x3J1B.LBI1oIOeeKve7prQ6WgU57oDXK0t31Mvn1XrsNV
 STiu.LsrEPnSyFF9HMYL7aChEim5oIA582mVFNoUnHB2YDr5osHhsGHmze47TXMdgK4zB2ER7JIg
 sUPb5WdJ7nf6HU_erdljwx5djeHgmmZLcI8Ntk9MXDOZ5.r8Bbse0xPzy4xpLijrGR5Oa5aEkCzD
 zp.8w6YuoX2Q3yF0acSho5JpPefX7UId0D2vQ_R_lso5YOvnjBF_A2JMSFk4p9r8IfutsxMB5DXw
 0cILkHhNMMmHv.mip2.HMHhTEf2jYoGmKUAIoH9HdNKi9Xo8iBvPTUH.Engow7f3nlrfrnzEZ_Du
 P1e4rxl1JJSp4D6G7XGpd9nJ.LJ5bcAwq2OSAdoqtLsQs7u_QOB0FIWBJEmqaNPJ3DdaZO5fJjue
 Qptx8mAl26Ltit6XiOyFTrOC_MS5JtysNo_vBJrI.VrRAIIGzr7NfnDVfH8ZYHAtYWML.tAjDX.V
 IOVBL9rfGWWqoLnrLLAaMpJ.nfJrHZK4AynCa2kqmXFcO5PIK64lb5BfBwTiv1Y90vSrQhRl9aNa
 BtRRs8A1Fid66w9SBsXJ.6KVWEdGY6qqEnlxDN0tzpM4MaJUMNfIysbc8LAzVt94H0PPtPrZHdur
 msxE7sFgLHUK0VTmLY1wkE9w_Guw9e3urnm9kjoRXjGDUfnUZnNrhdFC3u8xvfzZlureqSQagrmK
 2uQCCTbqDfH7BtWQ.YWAjrK7YpHAjmWXRVGFgIblD7bn4NvGaqYwGrWcw.PR6mybhU3K6j2ZwGoU
 btJdVl0Z5YgGfrNjRlcsNrpssL3URVPQWCQuII78b7eo6oIVQNXt9Xmh.ryn.SLTpWBrkcqweLPH
 YbB__tszcFhZWd9mVcsFdodR0uQgHgi5SPVMf6p8iHdcRdiDJo8zgym7Vg9kY.4vTEYUEQ.H4KrK
 5b_Wef6LDUBWWVlV06gr70PyN9O4fuU4pCRPFOsvkQ0y3VtcAAGzsZ2UPBI8yxfl_RW9GjPR.eGK
 T8I2slDnAFvt6bIfdDDw8rgkeReKZEetggWhAdCmsEOtS1.wJPOxmToV5oZRBbsDmcgOVX_Mt2as
 sB05PsObHU0N4zivRv1e5rS18c0zMLDpn4bDp3B7d4c0ty7rH5S932NSM56bfatqwoXpqz0d5GF3
 f59_ujz6.LTky2lQedi2Dot7FnBFbQ6vll4QHbtZ4b9sK4QqhqORPqVToW4RGSW4VdfBNyMeV4b3
 k1ufJF5_QxHv.lABaqo4xzQ1fVqDJcBXtHsYR9_0NTTGS2cURryIF.tV0Z6Ykaces27EbF._ljt0
 CQ4OpGYVWNJE_fANIFzIKvzi20FNWU0cAW9vtb9_r02wihCJ.9yVzQby0PpalxXgq8n13aJmD067
 lhaUDi7NI_Xz8Pl94BEabU0hMoDJOnl5pNTHB4ndmWBNHW0uDbI.cD5bmeujBIYwg63olU42T3kk
 P_4YVIs7m8o4FaT44V2PfOP3twlchGe1oBzM3keZkiy_M9b2njPwSM6YZ5l.cCsCH4Eep2mnhzlm
 1gVAE_h06PXrZAB9OFVVH1rT_OaotOZAwQ0wAKv8tbE9Qz5l2yA.02_ijkFX7SW7UbgSubfEs852
 n2ogFDY_P3ORij2Rw_R66S2tpaZM3HmBbWtwxAQQ1ldHxpz73IKYvmEadiOpzcTn5D90Mld8oGOe
 UUemCO6xjBt_5lyc_T.Mgb6eofnwArjUibYsM0LZICgD4GKKkmX04UilE7H7Gdi0XZ9d8FkHAD92
 dZsHHzq3o3EZkmx9EMmQYBLz5oDwWx8UOH.j5Fkz67b8893SdjwOlYOwxTP_CvdsxtTjLvfV8Cnc
 NFKT3Re4VGm0teT58tTtmt21pc1m4jW7mII1e6V2nTz2AAbtYe4JgXOsBL2HTlEUyRwAQd4gQCZS
 .mMEqWBm.7G5xKZI45XL8qoJ_6G81MO9yNoOZkz3c3MIO7dZQPvGo8c6zOmVeYO5RM5vFb5wdx4d
 yzdiPCGTo_REll4yHp3pZj_38aj7B5zaexBajreiqC0SRZvm9kGwC3nvLnmwSjiVet_azKUvKELJ
 cvnWvGm4G4Er45xwO5rGoRP0q8AkvqdSSCKZYy8Dz9QdXKFoDaMbHnuXLhFyE09Mir39dyOPa2Kj
 cvDUvFOcGyKF.foG12HxgA6M-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.gq1.yahoo.com with HTTP; Wed, 2 Dec 2020 00:50:22 +0000
Received: by smtp419.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID e31e377ea33cccd2cd779c5c1c4454b7;
          Wed, 02 Dec 2020 00:50:21 +0000 (UTC)
Subject: Re: [yocto] Raspberry PI enabling MMC1
To: yocto@lists.yoctoproject.org
References: <61df164e-fa3a-7517-33e8-db8ef0c8af92.ref@yahoo.com>
 <61df164e-fa3a-7517-33e8-db8ef0c8af92@yahoo.com>
 <CAMKF1sq=my8uXJwO93BwhEMiEZRyYGOCvv9BMuMCG8=DuGV-Ww@mail.gmail.com>
 <16488BC657DA2093.23836@lists.yoctoproject.org>
 <1648CCC040C7B594.8629@lists.yoctoproject.org>
 <6cbee24058e04c0d9f21fb9077fe94e9@Exchange.sewerin.de>
 <358d88c9958141799b9cc48ba8fa2843@Exchange.sewerin.de>
From: "chuck kamas" <chuckkamas@yahoo.com>
Message-ID: <efc37c6c-cd16-997c-33ac-61c4a33be6a4@yahoo.com>
Date: Tue, 1 Dec 2020 16:50:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <358d88c9958141799b9cc48ba8fa2843@Exchange.sewerin.de>
X-Mailer: WebService/1.1.17111 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Content-Type: multipart/alternative;
 boundary="------------A42F0BACABCBA8D610E67E13"
Content-Language: en-US

--------------A42F0BACABCBA8D610E67E13
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thank you all. That is good information to know! However, I already had 
a custom machine config that I was able to drop the overlay into. Once I 
had the correct overlay enabling the sdio, the SD card works!


Thanks again for all of your help.



On 11/20/20 4:22 AM, Erik Boto wrote:
> On Thu, Nov 19, 2020 at 7:21 PM chuck kamas via lists.yoctoproject.org
> <chuckkamas=yahoo.com@lists.yoctoproject.org> wrote:
>> Making some progress here!
>>
>>
>> I added a compiled version of the attached device tree and now the mmc1 shows up in my yocto image! Yes! Now I need to find out the secret magic in that tree that I need to add...
> If I'm not mistaken that should be done by appending
> RPI_KERNEL_DEVICETREE_OVERLAYS. If you don't have your own custom
> machine configuration where this could be added, try adding the
> following to local.conf:
>
> RPI_KERNEL_DEVICETREE_OVERLAYS_append = " overlays/sdio.dtbo "
>
> Cheers,
> Erik
>>
>> Chuck
>>
>>
>> On 11/18/20 7:59 PM, chuck kamas via lists.yoctoproject.org wrote:
>>
>> Raj,
>>
>>
>> I found out how to debug the boot process of the PI from:
>>
>> https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md
>>
>> by turning on the boot code debug.
>>
>> sed -i -e "s/BOOT_UART=0/BOOT_UART=1/" bootcode.bin
>>
>>
>> I found out that the sdio overlay does not exist!
>>
>> MESS:00:00:07.868162:0: dtdebug: Failed to open overlay file 'overlays/sdio.dtbo'
>> MESS:00:00:07.874093:0: Failed to load overlay 'sdio'
>> MESS:00:00:07.878881:0: brfs: File read: /mfs/sd/overlays/sdio.dtbo
>> MESS:00:00:07.891322:0: brfs: File read: /mfs/sd/cmdline.txt
>>
>>
>> So what am I missing on how to turn on the sdio on GPIO22-27? Is it not an overlay and instead a driver/other code/linux config that needs to be set?
>>
>>
>> Chuck
>>
>>
>> On 11/17/20 4:29 PM, chuck kamas via lists.yoctoproject.org wrote:
>>
>> Raj,
>>
>>
>> Thanks for taking the time to respond. I thought of that too. My custom Yocto build has the line to turn on the sdio in it:
>>
>> dtoverlay=sdio,poll_once=off
>>
>>
>> I have attached the entire file: config.txt.yocto
>>
>> However, the Rasbian image does not have any mention of the dtoverlay for the sdio.  Curious. See config.txt attached.
>>
>>
>> Thanks for the help!
>>
>> Chuck
>>
>>
>> On 11/17/20 12:08 AM, Khem Raj wrote:
>>
>> On Mon, Nov 16, 2020 at 11:43 PM chuck kamas via
>> lists.yoctoproject.org <chuckkamas=yahoo.com@lists.yoctoproject.org>
>> wrote:
>>
>> Hi all,
>>
>>
>> I have been spinning my wheels for two days trying to discover how to
>> enable MMC1 on a CM3. This is the one on GPIO22-27. I can boot Rasbian
>> on the CM3 and it inits the MMC1 and its pins just fine. I can
>> read/write to my SD card from it etc. However, when I build yocto it
>> leaves the GPIOS22-27 in gpio mode and does not set them to MMC1 mode.
>> I have tried changing the device tree as described here:
>>
>> https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto
>>
>> That compiles and add the .dtbo to my build, but still the GPIOS are not
>> set to MMC1 mode.
>>
>> cat /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins
>> Pinmux settings per pin
>> Format: pin (name): mux_owner gpio_owner hog?
>> ....
>>
>> pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>> pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>> pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>> pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>> pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>> pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>
>> .....
>>
>> I have looked at:
>>
>> https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/
>>
>>
>> Any ideas of where to look next to turn on the sdio would be appreciated!
>>
>>
>> what does /boot/config.txt look like on raspbian and yocto built images
>>
>> Chuck
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>
>
>
> 
>

--------------A42F0BACABCBA8D610E67E13
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Thank you all. That is good information to know! However, I
      already had a custom machine config that I was able to drop the
      overlay into. Once I had the correct overlay enabling the sdio,
      the SD card works!</p>
    <p><br>
    </p>
    <p>Thanks again for all of your help.</p>
    <br>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/20/20 4:22 AM, Erik Boto wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:358d88c9958141799b9cc48ba8fa2843@Exchange.sewerin.de">
      <pre class="moz-quote-pre" wrap="">On Thu, Nov 19, 2020 at 7:21 PM chuck kamas via lists.yoctoproject.org
<a class="moz-txt-link-rfc2396E" href="mailto:chuckkamas=yahoo.com@lists.yoctoproject.org">&lt;chuckkamas=yahoo.com@lists.yoctoproject.org&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Making some progress here!


I added a compiled version of the attached device tree and now the mmc1 shows up in my yocto image! Yes! Now I need to find out the secret magic in that tree that I need to add...
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
If I'm not mistaken that should be done by appending
RPI_KERNEL_DEVICETREE_OVERLAYS. If you don't have your own custom
machine configuration where this could be added, try adding the
following to local.conf:

RPI_KERNEL_DEVICETREE_OVERLAYS_append = " overlays/sdio.dtbo "

Cheers,
Erik
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">

Chuck


On 11/18/20 7:59 PM, chuck kamas via lists.yoctoproject.org wrote:

Raj,


I found out how to debug the boot process of the PI from:

<a class="moz-txt-link-freetext" href="https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md">https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md</a>

by turning on the boot code debug.

sed -i -e "s/BOOT_UART=0/BOOT_UART=1/" bootcode.bin


I found out that the sdio overlay does not exist!

MESS:00:00:07.868162:0: dtdebug: Failed to open overlay file 'overlays/sdio.dtbo'
MESS:00:00:07.874093:0: Failed to load overlay 'sdio'
MESS:00:00:07.878881:0: brfs: File read: /mfs/sd/overlays/sdio.dtbo
MESS:00:00:07.891322:0: brfs: File read: /mfs/sd/cmdline.txt


So what am I missing on how to turn on the sdio on GPIO22-27? Is it not an overlay and instead a driver/other code/linux config that needs to be set?


Chuck


On 11/17/20 4:29 PM, chuck kamas via lists.yoctoproject.org wrote:

Raj,


Thanks for taking the time to respond. I thought of that too. My custom Yocto build has the line to turn on the sdio in it:

dtoverlay=sdio,poll_once=off


I have attached the entire file: config.txt.yocto

However, the Rasbian image does not have any mention of the dtoverlay for the sdio.  Curious. See config.txt attached.


Thanks for the help!

Chuck


On 11/17/20 12:08 AM, Khem Raj wrote:

On Mon, Nov 16, 2020 at 11:43 PM chuck kamas via
lists.yoctoproject.org <a class="moz-txt-link-rfc2396E" href="mailto:chuckkamas=yahoo.com@lists.yoctoproject.org">&lt;chuckkamas=yahoo.com@lists.yoctoproject.org&gt;</a>
wrote:

Hi all,


I have been spinning my wheels for two days trying to discover how to
enable MMC1 on a CM3. This is the one on GPIO22-27. I can boot Rasbian
on the CM3 and it inits the MMC1 and its pins just fine. I can
read/write to my SD card from it etc. However, when I build yocto it
leaves the GPIOS22-27 in gpio mode and does not set them to MMC1 mode.
I have tried changing the device tree as described here:

<a class="moz-txt-link-freetext" href="https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto">https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto</a>

That compiles and add the .dtbo to my build, but still the GPIOS are not
set to MMC1 mode.

cat /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins
Pinmux settings per pin
Format: pin (name): mux_owner gpio_owner hog?
....

pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED)
pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED)

.....

I have looked at:

<a class="moz-txt-link-freetext" href="https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/">https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/</a>


Any ideas of where to look next to turn on the sdio would be appreciated!


what does /boot/config.txt look like on raspbian and yocto built images

Chuck















</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">


</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------A42F0BACABCBA8D610E67E13--
