Received: from exchange.sewerin.com (exchange.sewerin.com [])
 by mx.groups.io with SMTP id smtpd.web12.5217.1605961599249201788
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:26:40 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=fJ5tfY5K;
 spf=softfail (domain: lists.yoctoproject.org, ip: <nil>, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 01:09:23 +0000
X-Sender: bounce+53643+51488+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 10783
X-Received: by 127.0.0.2 with SMTP id MVIEYY3619394xhd1WALudMn; Thu, 19 Nov 2020 17:08:18 -0800
X-Received: from gateway36.websitewelcome.com (gateway36.websitewelcome.com [192.185.193.119])
 by mx.groups.io with SMTP id smtpd.web11.18842.1605832897034578311 for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 16:41:37 -0800
X-Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])by gateway36.websitewelcome.com
 (Postfix) with ESMTP id 7E4A2400DFA91for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 18:41:36 -0600 (CST)
X-Received: from gator3290.hostgator.com ([198.57.247.254])by cmsmtp with SMTPid fuUakHTuLiQiZfuUakxp6B; Thu, 19 Nov 2020 18:41:36 -0600
X-Authority-Reason: nr=8
X-Received: from 75-15-4-89.uvs.iplsin.sbcglobal.net ([75.15.4.89]:54087 helo=[192.168.0.118])by
 gator3290.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256(Exim
 4.93)(envelope-from <david.novak@dajac.com>)id 1kfuUZ-0002vN-Osfor yocto@lists.yoctoproject.org; Thu, 19 Nov 2020 18:41:35 -0600
Subject: Re: [yocto] U-Boot sama5d3 xplained issue
To: yocto@lists.yoctoproject.org
References: <080574f8-ae94-3283-0653-631dc7563b49@dajac.com>
From: "David Novak" <david.novak@dajac.com>
X-OldMsgId: <1004f359-43e4-4291-b777-862a32d40d4c@dajac.com>
Date: Thu, 19 Nov 2020 19:41:34 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <080574f8-ae94-3283-0653-631dc7563b49@dajac.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3290.hostgator.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dajac.com
X-BWhitelist: no
X-Source-IP: 75.15.4.89
X-Source-L: No
X-Exim-ID: 1kfuUZ-0002vN-Os
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 75-15-4-89.uvs.iplsin.sbcglobal.net ([192.168.0.118]) [75.15.4.89]:54087
X-Source-Auth: david.novak@dajac.com
X-Email-Count: 2
X-Source-Cap: ZGFqYWNpbmM7ZGFqYWNpbmM7Z2F0b3IzMjkwLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
X-Gm-Message-State: KiNlanV6KCd8Tn32SHKwZMm1x3618059AA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605834498; bh=Q4BQXEKl/q5A6B2vMR/aqA4W77GMxpywdMDkc3zppK8=; h=Content-Type:Date:From:Subject:To;
 b=fJ5tfY5KTadaRd7cSGvpAAmoXA/Okqkk2HR0VzBrJqyYEyz76DdLeXGbWG9qmI2Vx4w dEnhFE7J9KTvuTWnMyDATuxKD5RhablJONSw71sfDQqc+T5xvswsE3RhuXGpDFOyCm/kY QieJ7YJ0Mqob2T+AOx+MVUaLEFnTajnEvmY=
Return-Path: bounce+53643+51488+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <5a531881d6504e5880577ce692b1d35b@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="Pey44CXJ5U6GGfUJsEdI"

--Pey44CXJ5U6GGfUJsEdI
Content-Type: multipart/alternative; boundary="------------CC5AC403E8296FAC66A8042E"
Content-Language: en-US

--------------CC5AC403E8296FAC66A8042E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {21BA396D-A3C1-4763-B053-061FAEDF7F3B}

I'm working on this project with Pratham. Let me provide a few more details=
.

We've defined

UBOOT_MACHINE ?=3D "sama5d3_xplained_nandflash_config"

Inside

u-boot-at91/sama5d3_xplained_nandflash_config

we change CONFIG_BOOTDELAY, but it has no effect on the newly built
image. The boot delay remains the same as it was before we changed it.

Based on the UBOOT_MACHINE, can we be certain we are changing the
correct file?

How do we get the build process to include our changes?

Thanks,
David



On 11/19/2020 5:37 PM, Prathamesh Ovalekar wrote:
> Hello everyone,
>
> System: sama5d3_xplained board
>
> I have a question regarding the configuration and build of u-boot.
> We have a build that was implemented earlier. I am trying to make some
> changes to it.
>
> Change 1: Change the auto boot delay to 1 second.
> Change 2: Add an auto boot command to set a gpio.
>
> I am aware of the environment variables:=C2=A0 CONFIG_BOOTDELAY and
> CONFIG_BOOTCOMMAND (needed for the changes above.)
> I tried modifying the=C2=A0 " configs/sama5d3_xplained_nandflash_defconf=
ig "
>
> Question 1: Do I need to create an *.config file using the make
> menuconfig?
>
> Question 2: How do I create the u-boot.bin . Does this=C2=A0 depend on t=
he
> Linux build?
> =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=
=A0 =C2=A0=C2=A0=C2=A0 I know that there is an environment variable:
> CONFIG_BOOTARGS that needs to be populated.
> --
> Pratham Ovalekar
>
>
>




--------------CC5AC403E8296FAC66A8042E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {70EBD0CB-868A-468D-A4C7-7E41CD4A28BA}

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"=
>
  </head>
  <body>
    <p><span style=3D"font-style: italic; font-size: 6pt;"></span>I'm
      working on this project with Pratham. Let me provide a few more
      details.</p>
    <p>We've defined</p>
    <p>UBOOT_MACHINE ?=3D "sama5d3_xplained_nandflash_config"</p>
    <p>Inside <br>
    </p>
    <p>u-boot-at91/sama5d3_xplained_nandflash_config</p>
    <p>we change CONFIG_BOOTDELAY, but it has no effect on the newly
      built image. The boot delay remains the same as it was before we
      changed it.</p>
    <p>Based on the UBOOT_MACHINE, can we be certain we are changing the
      correct file?</p>
    <p>How do we get the build process to include our changes?</p>
    <p>Thanks,<br>
      David<br>
    </p>
    <div class=3D"moz-signature"><br>
      <br>
    </div>
    <div class=3D"moz-cite-prefix">On 11/19/2020 5:37 PM, Prathamesh
      Ovalekar wrote:<br>
    </div>
    <blockquote>
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-=
8">
      Hello everyone,<br>
      <br>
      System: sama5d3_xplained board<br>
      <br>
      I have a question regarding the configuration and build of u-boot.<br>=

      We have a build that was implemented earlier. I am trying to make
      some changes to it.<br>
      <br>
      Change 1: Change the <span style=3D"color: rgb(36, 39, 41);
        font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica,
        sans-serif; font-size: 15px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: left; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">auto boot
        delay to 1 second.<br>
        Change 2: Add an auto boot command to set a gpio.<br>
        <br>
        I am aware of the environment variables:=C2=A0 CONFIG_BOOTDELAY and =
</span>CONFIG_BOOTCOMMAND
      (needed for the changes above.)<br>
      I tried modifying the=C2=A0 "
      configs/sama5d3_xplained_nandflash_defconfig "<br>
      <br>
      Question 1: Do I need to create an *.config file using the make
      menuconfig?<br>
      <br>
      Question 2: How do I create the u-boot.bin . Does this=C2=A0 depend on=

      the Linux build?<br>
      =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 I know that there is an environment variable:
      CONFIG_BOOTARGS that needs to be populated.<br>
      <pre class=3D"moz-signature">-- 
Pratham Ovalekar
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap>


</pre>
    </blockquote>
  </body>
</html>

--------------CC5AC403E8296FAC66A8042E--

--Pey44CXJ5U6GGfUJsEdI--
