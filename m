Received: from sonic316-8.consmr.mail.gq1.yahoo.com (sonic316-8.consmr.mail.gq1.yahoo.com [98.137.69.32])
 by mx.groups.io with SMTP id smtpd.web08.4838.1605760358608666137
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 20:32:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Vg0nazOI;
 spf=neutral (domain: yahoo.com, ip: 98.137.69.32, mailfrom: chuckkamas@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1605760357; bh=FAaBu6tNFvWY2WE2D7rPbOio4M1PzI90BvU4f4zuYOk=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject; b=Vg0nazOILgFmeQ70vHPwtqnNAPgTbH25FVr2A7hT6RqC3noIZNw+R+jK74+VWRoNhrOsb84d7JgeY2vzY71q226V9+j4p1yEoZCW+0Zn5h9Saw/t5gJ2ij53Z7jojQ81xzFNYu4ZP5lnQBjHwdnyEvmNLT4o80gc4qXCqoannBH+deDUebiyPmZZ+P8nWazktGo81UlTchbpxZ7j5bzuvKQUYQxyZN2bogN6/mf5oR6AKA1eTjKYb+viqhG24GG7LlRZhl3dSsSmk7z40RJ9KCze2h7m7BAuvcGpUgSidsZZI2qMHD2j42k2EAy9fL1+eID84A4l0HDRXLUJOSzBGw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1605760357; bh=ElWH27I9yRXi+X3j2/Q7ck8pQv1oEbII1mIDdPVQFLj=; h=Subject:To:From:Date:From:Subject; b=g42v6nPWi//qHqrEn/ZTb0qK9NyX5sqOchLZ4QzgfxnKqwkimP7joHE6sP8luu1ervYwecXJXNin1TuqrULXiEYoVbmSfljhcC8muBVwgUXqa39n6xz9MRVAjwUq2KvK9SPy8qWC8KOaQWYuEbEJNuKoNiWt/gecRxSu/e6F2+baMDrBlwv03/1936K5zHuIYnZyWVyegalMpz/kdDOctD2jly52GzhZZZeuUAxyemb7lNXzM13+yhQUS0ReE0WB1tYNo96D7oMcRmwz0Nvb6vatiT2677cAvCwP1BkzSg8NdIFJjFmBQgalxoffIhhW4dpmEcWz4o7Hou3nUguDcg==
X-YMail-OSG: 6HsFt6YVM1leF0g0OgRk8CrBtikIno_42RMu6ACPfVgR9uWVzs.RQGYzhnbrJeA
 sFgr9p6Sv02H6Ov3oLzngUZfbyMWdtBkBZHIJ3EQyxw77gcf3mBDuNBOuUFua9cudrX29UZ56dqp
 ci2vlKBQiYtg_CzEmX3uTK3D87OM1Vn5EAeoeNo56z1dVf3vsQEb5mixMwHMovopxM1GjM4HVsWg
 LS42Bu9Lmk1Lf_EKWh6S6axXTzvCBX_Tl9CLaunzEhPiV0sPpWYZpjJ_9aBF8w7tRcZ4UkaHz_SI
 zwYIb87MsWF4zi1EMNhydO9uBiMCuimOruE2l8LIQSeAy29azwbq6HJHI0rYk7aaN_CEpLZdqrJd
 cW.ilcA5a_TTSDk8s9sFlwP3H7NmCzoI0kGrbSy_gERTRG03bLe0QrlmbGFn5_rN.fh6Muik5WT3
 jKLPEzuaCUDQQqYpFB0SB4g4kM4M_tI5Eo8eELhRB6WlJWV_A6vAFKw623L4P2G0ZEZK8buBMdb7
 rX4NiSf3K.f24gHo7J7U_spdq.Or6pWlHu_WjOLzvUN0Uq46cZ85lC0IEm4xYBprwrJXC1HY6tD6
 25GIsl2mamFBfExhaZ6HWdh0VpwKOdNkip_HYwYXfikDbbUBkqid4Wgm3l5aCr4rzt8mEy6lhTKb
 IxAww3gt_c25INhIhZZs9uEhTD4p1j2fqmgQttaWt3KRyKXZqS8TfsDmD0_t2i9IL4Kn2JmX4Dso
 2oIjT7pLDPONUb95Lgb8BGu.9lr_uxYWM2zLd93PB5WLH8u7Xh.fbyBxO3FBDu.D9AAu8f1wR6ae
 84HPaj.TH3ZRUEWCLYD6S8CusIdAhBcGSp1h70WQsfCyVOMZ9iVHzEoytnsBSh0pjmy_xaqSnhML
 IW.GcJ.UtiRMv9efn2Ie.JS1bo3brBpnuUnwqf3glviNIiddHp.f3qovjNF_1k8m16f35_QFvXbC
 I2MkpVuTkmRS5t7aoItdAOeFoE6MiL6cVcEoHvXqdFJKvpSKrlxx84J3sWZFcrUZMn0CSrSR5fKo
 ywIPiGqheq6nL45t9nEVYCNZEiUKWhdupfqlEK4TFHiRzP7wC5tPMoQ478R1jdq7Te6drBwckBQX
 iq3HlKWnAZE.puf4lsx_kwLagx4gLCSQUXvJ46_UbHM_2xveK9BThe3bwh92c6mbvMCazsmqytne
 dodxICUhL8V86rD7jKWw1Q8aBoqkGrJJ84h_qWtPdI2G7KaZRAfOTO1wqT7gTQdFrA_oVTQYMXio
 m2YCjZEodqUWgCwpW4teRsppBCvZ21wmc3DlTA9e5Jwop4GvJyUi6dea7mgt75pfkAzwfdPwneZV
 MGLMgPYQXLI_DanT.r3iie4vdE2ZrfsANI0cnq1PntDTJvS9CYgeNkh39xh_a3KZUtV5ff8AWZoQ
 a6MyFM89B1rUctNAOQQ15w.AJBXW2b6rg9M61haarDQGjvoQa28u6KTDq0Gsg3105b01ZaujuSk2
 8MYvccB856pSd6nELIIYROh4ZIUP9Bv9EHVbPPrhlTyA4m60PtzXd5VrJk5tZUoGESFBJKSaTiha
 zHNmW9FGD0HLxdS_n.WDPCoUnuxKr5H08j88hTvM.aAvTCHDAlbVrE_MLv.IvZFAOhucOIl7adrw
 WGsIcRy.P03v4vZAxtxzCCdXB95AHqZlPDYSoa16hKPfC1aU50bNNbpDmi6JpLxEHV740.dTx63a
 5m0AVoNZNu9IVARsMOHix7RXOtkFLflbQA.AD69GN5O3_riSFsAD3KY0qKUqLixPeBm.vEEDvofo
 Zfn_tOiYr.VJOC89QSJ834vRSnoRc9xbB3th6l9iNcZLfCnmIw3Ko78CFpHUSikt1QQhXbXA0Xlg
 X15rjF86ZXVNpHXgVDqqbi1zaGBKLi5yOGzvrL8yf8xHWLTHsFKfmFbpBq6nm9qVcquU5vU4vqmH
 2HbjT61pGnt2ZS5AAC21pRWlX8xjzjQg6wMswpLvQyItWDmSVIFdU1twOqtEruhwUTFoeGeSLkmo
 TnMBEXuHa.imjkezTjGNL1nfr_IuBJHnfT0xjiXreMjmgb_SOieZ1Sw_XP2phffMu4ctpmEhGHAn
 uMGIRMls3R20Fo4VaeFe4CONyNXRNcQO556ykct24si5xdNKgQRrgPQKN9RGGNWrmsn7NGp.mbe9
 J.v_BcChko2D4IYdHH.YoVLZQvy1rEstl8hsuCiOjGXi.6_mH8OBsqBxddhDHQz2jNion0nUaODf
 d16TRnOFa5jvo1OljrARUP19PZWuDY7JBzajVOY_NfTWesEhDkDOdoyaYzRgetj3OtzVHA2634rK
 klNA9AKbnjnAIrOIXKan1lpMinieZnCEWZRJAuP8Kzib0zyBWZm_9sqzhvQXfM7_vGmz9PCJNZR3
 lzMOxUiYMF.s.WZuM82bn_TkCtdVawwaZVyL67oL38e4HfvKvMMg9ZYk3fHt5u_kyx.FPZAZLViH
 Emsxl_8oidVWGwgKfwY_9O0FvzgFwVlS1lE2chYVGRLncWJxjIQagoJRbElXL61sohxpNZSHy1bj
 3w5p1QG7pU8R2p6Sv3Psl8if_36l.xAHuedbJC1rDgjgqQfG2G2SG8uZP1_uzmDi6MFkiTjpxzwN
 RLQDnHii1oxtNG_OT.w--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.gq1.yahoo.com with HTTP; Thu, 19 Nov 2020 04:32:37 +0000
Received: by smtp407.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID c5bf173687cf4238f952a648f82fd533;
          Thu, 19 Nov 2020 04:32:32 +0000 (UTC)
Subject: Re: [yocto] Raspberry PI enabling MMC1
To: yocto@lists.yoctoproject.org
References: <61df164e-fa3a-7517-33e8-db8ef0c8af92.ref@yahoo.com>
 <61df164e-fa3a-7517-33e8-db8ef0c8af92@yahoo.com>
 <CAMKF1sq=my8uXJwO93BwhEMiEZRyYGOCvv9BMuMCG8=DuGV-Ww@mail.gmail.com>
 <16488BC657DA2093.23836@lists.yoctoproject.org>
 <1648CCC040C7B594.8629@lists.yoctoproject.org>
From: "chuck kamas" <chuckkamas@yahoo.com>
Message-ID: <4d878e2d-ff0c-3fed-75e2-46670c3bbfde@yahoo.com>
Date: Wed, 18 Nov 2020 20:32:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1648CCC040C7B594.8629@lists.yoctoproject.org>
X-Mailer: WebService/1.1.16944 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
X-Groupsio-MsgNum: 51426
Content-Type: multipart/mixed;
 boundary="------------2AE9C8630FE2B66A3C2345A5"
Content-Language: en-US

--------------2AE9C8630FE2B66A3C2345A5
Content-Type: multipart/alternative;
 boundary="------------BA1C0816FDE07CED2619FE7C"

--------------BA1C0816FDE07CED2619FE7C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Making some progress here!


I added a compiled version of the attached device tree and now the mmc1 
shows up in my yocto image! Yes! Now I need to find out the secret magic 
in that tree that I need to add...


Chuck


On 11/18/20 7:59 PM, chuck kamas via lists.yoctoproject.org wrote:
>
> Raj,
>
>
> I found out how to debug the boot process of the PI from:
>
> https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md
>
> by turning on the boot code debug.
>
> sed -i -e "s/BOOT_UART=0/BOOT_UART=1/" bootcode.bin
>
>
> I found out that the sdio overlay does not exist!
>
>> MESS:00:00:07.868162:0: dtdebug: Failed to open overlay file 
>> 'overlays/sdio.dtbo'
>> MESS:00:00:07.874093:0: Failed to load overlay 'sdio'
>> MESS:00:00:07.878881:0: brfs: File read: /mfs/sd/overlays/sdio.dtbo
>> MESS:00:00:07.891322:0: brfs: File read: /mfs/sd/cmdline.txt
>>
>
> So what am I missing on how to turn on the sdio on GPIO22-27? Is it 
> not an overlay and instead a driver/other code/linux config that needs 
> to be set?
>
>
> Chuck
>
>
> On 11/17/20 4:29 PM, chuck kamas via lists.yoctoproject.org wrote:
>> Raj,
>>
>>
>> Thanks for taking the time to respond. I thought of that too. My 
>> custom Yocto build has the line to turn on the sdio in it:
>>
>>> dtoverlay=sdio,poll_once=off
>>
>> I have attached the entire file: config.txt.yocto
>>
>> However, the Rasbian image does not have any mention of the dtoverlay 
>> for the sdio.  Curious. See config.txt attached.
>>
>>
>> Thanks for the help!
>>
>> Chuck
>>
>>
>> On 11/17/20 12:08 AM, Khem Raj wrote:
>>> On Mon, Nov 16, 2020 at 11:43 PM chuck kamas via
>>> lists.yoctoproject.org <chuckkamas=yahoo.com@lists.yoctoproject.org>
>>> wrote:
>>>> Hi all,
>>>>
>>>>
>>>> I have been spinning my wheels for two days trying to discover how to
>>>> enable MMC1 on a CM3. This is the one on GPIO22-27. I can boot Rasbian
>>>> on the CM3 and it inits the MMC1 and its pins just fine. I can
>>>> read/write to my SD card from it etc. However, when I build yocto it
>>>> leaves the GPIOS22-27 in gpio mode and does not set them to MMC1 mode.
>>>> I have tried changing the device tree as described here:
>>>>
>>>> https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto 
>>>>
>>>>
>>>> That compiles and add the .dtbo to my build, but still the GPIOS 
>>>> are not
>>>> set to MMC1 mode.
>>>>
>>>>> cat /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins
>>>>> Pinmux settings per pin
>>>>> Format: pin (name): mux_owner gpio_owner hog?
>>>>> ....
>>>>>
>>>>> pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>>> pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>>> pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>>> pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>>> pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>>> pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>>>>>
>>>>> .....
>>>>>
>>>> I have looked at:
>>>>
>>>> https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/ 
>>>>
>>>>
>>>>
>>>> Any ideas of where to look next to turn on the sdio would be 
>>>> appreciated!
>>>>
>>>>
>>> what does /boot/config.txt look like on raspbian and yocto built images
>>>
>>>> Chuck
>>>>
>>>>
>>>>
>>>>
>>>>
>>
>>
>>
>>
>
> 
>

--------------BA1C0816FDE07CED2619FE7C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Making some progress here! <br>
    </p>
    <p><br>
    </p>
    <p>I added a compiled version of the attached device tree and now
      the mmc1 shows up in my yocto image! Yes! Now I need to find out
      the secret magic in that tree that I need to add...</p>
    <p><br>
    </p>
    <p>Chuck</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/18/20 7:59 PM, chuck kamas via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1648CCC040C7B594.8629@lists.yoctoproject.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p>Raj,</p>
      <p><br>
      </p>
      <p>I found out how to debug the boot process of the PI from:</p>
      <p><a class="moz-txt-link-freetext"
href="https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md"
          moz-do-not-send="true">https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md</a></p>
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
      <p>So what am I missing on how to turn on the sdio on GPIO22-27?
        Is it not an overlay and instead a driver/other code/linux
        config that needs to be set?<br>
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
        cite="mid:16488BC657DA2093.23836@lists.yoctoproject.org">Raj, <br>
        <br>
        <br>
        Thanks for taking the time to respond. I thought of that too. My
        custom Yocto build has the line to turn on the sdio in it: <br>
        <br>
        <blockquote type="cite">dtoverlay=sdio,poll_once=off <br>
        </blockquote>
        <br>
        I have attached the entire file: config.txt.yocto <br>
        <br>
        However, the Rasbian image does not have any mention of the
        dtoverlay for the sdio.  Curious. See config.txt attached. <br>
        <br>
        <br>
        Thanks for the help! <br>
        <br>
        Chuck <br>
        <br>
        <br>
        On 11/17/20 12:08 AM, Khem Raj wrote: <br>
        <blockquote type="cite">On Mon, Nov 16, 2020 at 11:43 PM chuck
          kamas via <br>
          lists.yoctoproject.org <a class="moz-txt-link-rfc2396E"
            href="mailto:chuckkamas=yahoo.com@lists.yoctoproject.org"
            moz-do-not-send="true">&lt;chuckkamas=yahoo.com@lists.yoctoproject.org&gt;</a>
          <br>
          wrote: <br>
          <blockquote type="cite">Hi all, <br>
            <br>
            <br>
            I have been spinning my wheels for two days trying to
            discover how to <br>
            enable MMC1 on a CM3. This is the one on GPIO22-27. I can
            boot Rasbian <br>
            on the CM3 and it inits the MMC1 and its pins just fine. I
            can <br>
            read/write to my SD card from it etc. However, when I build
            yocto it <br>
            leaves the GPIOS22-27 in gpio mode and does not set them to
            MMC1 mode. <br>
            I have tried changing the device tree as described here: <br>
            <br>
            <a class="moz-txt-link-freetext"
href="https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto"
              moz-do-not-send="true">https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto</a>
            <br>
            <br>
            That compiles and add the .dtbo to my build, but still the
            GPIOS are not <br>
            set to MMC1 mode. <br>
            <br>
            <blockquote type="cite">cat
              /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins <br>
              Pinmux settings per pin <br>
              Format: pin (name): mux_owner gpio_owner hog? <br>
              .... <br>
              <br>
              pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED) <br>
              pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED) <br>
              pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED) <br>
              pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED) <br>
              pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED) <br>
              pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED) <br>
              <br>
              ..... <br>
              <br>
            </blockquote>
            I have looked at: <br>
            <br>
            <a class="moz-txt-link-freetext"
href="https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/"
              moz-do-not-send="true">https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/</a>
            <br>
            <br>
            <br>
            Any ideas of where to look next to turn on the sdio would be
            appreciated! <br>
            <br>
            <br>
          </blockquote>
          what does /boot/config.txt look like on raspbian and yocto
          built images <br>
          <br>
          <blockquote type="cite">Chuck <br>
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
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------BA1C0816FDE07CED2619FE7C--

--------------2AE9C8630FE2B66A3C2345A5
Content-Type: audio/vnd.dts;
 name="devicetree-rpi_cm-overlay.dts"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="devicetree-rpi_cm-overlay.dts"

LyoKKiBDb3B5cmlnaHQgKEMpIDIwMjAgR3Vtc3RpeCwgSW5jLiAtIGh0dHBzOi8vd3d3Lmd1bXN0
aXguY29tLwoqCiogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0
cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKKiBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBH
ZW5lcmFsIFB1YmxpYyBMaWNlbnNlIHZlcnNpb24gMiBvcgoqIChhdCB5b3VyIG9wdGlvbikgYW55
IGxhdGVyIHZlcnNpb24gYXMgcHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlCiogRm91bmRh
dGlvbi4KKgoqIFRoaXMgcHJvZ3JhbSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0
IHdpbGwgYmUgdXNlZnVsLAoqIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVu
IHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mCiogTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9S
IEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQoqIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNl
bnNlIGZvciBtb3JlIGRldGFpbHMuCioKKi8KCi9kdHMtdjEvOwovcGx1Z2luLzsKI2RlZmluZSBH
UElPX0FDVElWRV9MT1cgMQojZGVmaW5lIEdQSU9fQUNUSVZFX0hJR0ggMAojZGVmaW5lIElSUV9U
WVBFX0xFVkVMX0xPVyA4CiNkZWZpbmUgSVJRX1RZUEVfTEVWRUxfSElHSCA0CgovIHsKICAgIGNv
bXBhdGlibGUgPSAiYnJjbSxiY20yNzA4IjsKCiAgICBmcmFnbWVudEAwIHsKICAgICAgICB0YXJn
ZXQtcGF0aCA9ICIvIjsKICAgICAgICBfX292ZXJsYXlfXyB7CiAgICAgICAgICAgIG1vZGVsID0g
IlJhc3BiZXJyeSBQaSB3aXRoIEd1bXN0aXggR2VwcGV0dG8gRXhwYW5zaW9uIC0gR3ggTGludXgg
QWdncmVnYXRvciAwMy0yNyAxIjsKICAgICAgICAgICAgYXV0b2JzcF9vdmVybGF5IHsKICAgICAg
ICAgICAgICAgIG1vZGVsID0gIkd1bXN0aXggR2VwcGV0dG8gR3ggTGludXggQWdncmVnYXRvciAw
My0yNyAxIjsKICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKICAgICAgICAgICAgfTsK
CiAgICAgICAgICAgIAogICAgICAgICAgICBjYW0wOiBjYW0wX2R1bW15X25vZGUgewogICAgICAg
ICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKICAgICAgICAgICAgfTsKICAgICAgICAgICAg
Y2FtMTogY2FtMV9kdW1teV9ub2RlIHsKICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxl
ZCI7CiAgICAgICAgICAgIH07CiAgICAgICAgfTsKICAgIH07CgoKCgogICAgZnJhZ21lbnRAMSB7
CiAgICAgICAgdGFyZ2V0LXBhdGggPSAiL3NvYyI7CiAgICAgICAgX19vdmVybGF5X18gewogICAg
ICAgICAgICByZWdfM3YzOnJlZ3VsYXRvckAwIHsKICAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAicmVndWxhdG9yLWZpeGVkIjsKICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gIlJF
R18zVjMiOwogICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAw
MD47CiAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsK
ICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247CiAgICAgICAgICAgIH07CgogICAg
ICAgICAgICByZWdfMXY4OnJlZ3VsYXRvckAxIHsKICAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAicmVndWxhdG9yLWZpeGVkIjsKICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gIlJF
R18xVjgiOwogICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAw
MD47CiAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsK
ICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247CiAgICAgICAgICAgIH07CiAgICAg
ICAgfTsKICAgIH07CiAgICBmcmFnbWVudEAyIHsKICAgICAgICB0YXJnZXQgPSA8JnNwaWRldjA+
OwogICAgICAgIF9fb3ZlcmxheV9fIHsKICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsK
ICAgICAgICB9OwogICAgfTsKCiAgICBmcmFnbWVudEAzIHsKICAgICAgICB0YXJnZXQgPSA8JnNw
aWRldjE+OwogICAgICAgIF9fb3ZlcmxheV9fIHsKICAgICAgICAgICAgc3RhdHVzID0gImRpc2Fi
bGVkIjsKICAgICAgICB9OwogICAgfTsKCi8vIHNwaV9idXNlcyBkZXZpY2VzCiAgICBmcmFnbWVu
dEA0IHsKICAgICAgICB0YXJnZXQgPSA8JnNwaTA+OwogICAgICAgIF9fb3ZlcmxheV9fIHsKICAg
ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwoKICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKICAgICAgICAgICAgcGluY3RybC0wID0gPCZzcGkwX2RlZmF1bHQ+OwoKICAgICAg
ICAgICAgICAgIAogICAgICAgIHNwaTBfc3BpMF8wMDogc3BpMF9zcGkwXzBAMCB7CiAgICAgICAg
c3RhdHVzID0gIm9rYXkiOwogICAgICAgIHR5cGUgPSAic3BpIjsKICAgICAgICBzcGktbWF4LWZy
ZXF1ZW5jeSA9IDwxNTAwMDAwMD47CiAgICAgICAgY29tcGF0aWJsZSA9ICJsaW51eCxzcGlkZXYi
OwogICAgICAgIHJlZyA9IDwwPjsKCiAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9IDwmZ3Bpbz47
CiAgICAgICAgaW50ZXJydXB0cyA9PDQzIDA+OwoKCiAgICB9OwogICAgICAgIH07CiAgICB9OwoK
Ly8gc2RpbzEgZGV2aWNlcwogICAgZnJhZ21lbnRANSB7CiAgICAgICAgdGFyZ2V0ID0gPCZtbWM+
OwogICAgICAgIF9fb3ZlcmxheV9fIHsKICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwoKICAg
ICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKICAgICAgICAgICAgcGluY3RybC0w
ID0gPCZzZGlvMV9kZWZhdWx0PjsKCiAgICAgICAgICAgIHR5cGUgPSAic2RtbWMiOwogICAgICAg
ICAgICBidXMtd2lkdGggPSA8ND47CiAgICAgICAgICAgIGJyb2tlbi1jZDsKICAgICAgICB9Owog
ICAgfTsKCi8vIGkyY19idXNlcyBkZXZpY2VzCiAgICBmcmFnbWVudEA2IHsKICAgICAgICB0YXJn
ZXQgPSA8JmkyYzA+OwogICAgICAgIF9fb3ZlcmxheV9fIHsKICAgICAgICAgICAgc3RhdHVzID0g
Im9rYXkiOwoKICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKICAgICAgICAg
ICAgcGluY3RybC0wID0gPCZpMmMwX2RlZmF1bHQ+OwoKICAgICAgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8MT47CiAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+OwogICAgICAgICAgICBjbG9j
ay1mcmVxdWVuY3kgPSA8NDAwMDAwPjsKICAgICAgICB9OwogICAgfTsKCiAgICBmcmFnbWVudEA3
IHsKICAgICAgICB0YXJnZXQgPSA8JmkyYzE+OwogICAgICAgIF9fb3ZlcmxheV9fIHsKICAgICAg
ICAgICAgc3RhdHVzID0gIm9rYXkiOwoKICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKICAgICAgICAgICAgcGluY3RybC0wID0gPCZpMmMxX2RlZmF1bHQ+OwoKICAgICAgICAg
ICAgY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47CiAgICAgICAgICAgICNhZGRyZXNzLWNlbGxz
ID0gPDE+OwogICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKICAgICAgICB9OwogICAgfTsK
Ci8vIHVhcnQxIGRldmljZXMKICAgIGZyYWdtZW50QDggewogICAgICAgIHRhcmdldCA9IDwmdWFy
dDE+OwogICAgICAgIF9fb3ZlcmxheV9fIHsKICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwoK
ICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKICAgICAgICAgICAgcGluY3Ry
bC0wID0gPCZ1YXJ0MV9kZWZhdWx0PjsKCiAgICAgICAgICAgIHR5cGUgPSAidWFydCI7CiAgICAg
ICAgfTsKICAgIH07CgovLyB1YXJ0MCBkZXZpY2VzCiAgICBmcmFnbWVudEA5IHsKICAgICAgICB0
YXJnZXQgPSA8JnVhcnQwPjsKICAgICAgICBfX292ZXJsYXlfXyB7CiAgICAgICAgICAgIHN0YXR1
cyA9ICJva2F5IjsKCiAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAgICAg
ICAgICAgIHBpbmN0cmwtMCA9IDwmdWFydDBfZGVmYXVsdD47CgogICAgICAgICAgICB0eXBlID0g
InVhcnQiOwogICAgICAgIH07CiAgICB9OwoKCiAgICBmcmFnbWVudEAxMCB7CiAgICAgICAgdGFy
Z2V0LXBhdGggPSAiL2Nob3NlbiI7CiAgICAgICAgX19vdmVybGF5X18gewogICAgICAgICAgICBi
b290YXJncyA9ICI4MjUwLm5yX3VhcnRzPTEiOwogICAgICAgIH07CiAgICB9OwoKICAgIGZyYWdt
ZW50QDExIHsKICAgICAgICB0YXJnZXQgPSA8JmdwaW8+OwogICAgICAgIF9fb3ZlcmxheV9fIHsK
ICAgICAgICAgICAgc3BpMF9kZWZhdWx0OiBwaW5tdXhfc3BpMF9kZWZhdWx0IHsKICAgICAgICAg
ICAgICAgIGJyY20scGlucyA9IDwKICAgICAgICAgICAgICAgICAgICA3IC8qIGdwaW83LmdwaW83
ICovCiAgICAgICAgICAgICAgICAgICAgOCAvKiBncGlvOC5ncGlvOCAqLwogICAgICAgICAgICAg
ICAgICAgIDExIC8qIGdwaW8xMS5zcGkwX3NjbGsgKi8KICAgICAgICAgICAgICAgICAgICA5IC8q
IGdwaW85LnNwaTBfbWlzbyAqLwogICAgICAgICAgICAgICAgICAgIDEwIC8qIGdwaW8xMC5zcGkw
X21vc2kgKi8KICAgICAgICAgICAgICAgICAgICA0MyAvKiBncGlvNDMuZ3BpbzQzICovCiAgICAg
ICAgICAgICAgICA+OwogICAgICAgICAgICBicmNtLGZ1bmN0aW9uID0gPCAgMSAgIDEgICA0ICAg
NCAgIDQgICAwICA+OwogICAgICAgICAgICB9OwoKICAgICAgICAgICAgaTJjMV9kZWZhdWx0OiBw
aW5tdXhfaTJjMV9kZWZhdWx0IHsKICAgICAgICAgICAgICAgIGJyY20scGlucyA9IDwKICAgICAg
ICAgICAgICAgICAgICAyIC8qIGdwaW8yLnNkYTEgKi8KICAgICAgICAgICAgICAgICAgICAzIC8q
IGdwaW8zLnNjbDEgKi8KICAgICAgICAgICAgICAgID47CiAgICAgICAgICAgIGJyY20sZnVuY3Rp
b24gPSA8ICA0ICAgNCAgPjsKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIHVhcnQxX2RlZmF1
bHQ6IHBpbm11eF91YXJ0MV9kZWZhdWx0IHsKICAgICAgICAgICAgICAgIGJyY20scGlucyA9IDwK
ICAgICAgICAgICAgICAgICAgICAzMyAvKiBncGlvMzMucnhkMSAqLwogICAgICAgICAgICAgICAg
ICAgIDMyIC8qIGdwaW8zMi50eGQxICovCiAgICAgICAgICAgICAgICA+OwogICAgICAgICAgICBi
cmNtLGZ1bmN0aW9uID0gPCAgMiAgIDIgID47CiAgICAgICAgICAgIGJyY20scHVsbCA9IDwgMiAw
ID47CgogICAgICAgICAgICB9OwoKICAgICAgICAgICAgc2RpbzFfZGVmYXVsdDogcGlubXV4X3Nk
aW8xX2RlZmF1bHQgewogICAgICAgICAgICAgICAgYnJjbSxwaW5zID0gPAogICAgICAgICAgICAg
ICAgICAgIDI1IC8qIGdwaW8yNS5zZDFfZGF0MSAqLwogICAgICAgICAgICAgICAgICAgIDI2IC8q
IGdwaW8yNi5zZDFfZGF0MiAqLwogICAgICAgICAgICAgICAgICAgIDI0IC8qIGdwaW8yNC5zZDFf
ZGF0MCAqLwogICAgICAgICAgICAgICAgICAgIDI3IC8qIGdwaW8yNy5zZDFfZGF0MyAqLwogICAg
ICAgICAgICAgICAgICAgIDIzIC8qIGdwaW8yMy5zZDFfY21kICovCiAgICAgICAgICAgICAgICAg
ICAgMjIgLyogZ3BpbzIyLnNkMV9jbGsgKi8KICAgICAgICAgICAgICAgID47CiAgICAgICAgICAg
IGJyY20sZnVuY3Rpb24gPSA8ICA3ICAgNyAgIDcgICA3ICAgNyAgIDcgID47CiAgICAgICAgICAg
IGJyY20scHVsbCA9IDwgMiAyIDIgMiAyIDAgPjsKCiAgICAgICAgICAgIH07CgogICAgICAgICAg
ICB1YXJ0MF9kZWZhdWx0OiBwaW5tdXhfdWFydDBfZGVmYXVsdCB7CiAgICAgICAgICAgICAgICBi
cmNtLHBpbnMgPSA8CiAgICAgICAgICAgICAgICAgICAgMTQgLyogZ3BpbzE0LnR4ZDAgKi8KICAg
ICAgICAgICAgICAgICAgICAxNSAvKiBncGlvMTUucnhkMCAqLwogICAgICAgICAgICAgICAgPjsK
ICAgICAgICAgICAgYnJjbSxmdW5jdGlvbiA9IDwgIDQgICA0ICA+OwogICAgICAgICAgICBicmNt
LHB1bGwgPSA8IDAgMiA+OwoKICAgICAgICAgICAgfTsKCiAgICAgICAgICAgIGkyYzBfZGVmYXVs
dDogcGlubXV4X2kyYzBfZGVmYXVsdCB7CiAgICAgICAgICAgICAgICBicmNtLHBpbnMgPSA8CiAg
ICAgICAgICAgICAgICAgICAgMSAvKiBncGlvMS5zY2wwICovCiAgICAgICAgICAgICAgICAgICAg
MCAvKiBncGlvMC5zZGEwICovCiAgICAgICAgICAgICAgICA+OwogICAgICAgICAgICBicmNtLGZ1
bmN0aW9uID0gPCAgNCAgIDQgID47CiAgICAgICAgICAgIH07CgogICAgICAgIH07CiAgICB9OwoK
fTs=

--------------2AE9C8630FE2B66A3C2345A5--
