Return-Path: <uvv.mail@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAA30C636A1
	for <webhook@archiver.kernel.org>; Sun, 22 Feb 2026 13:50:28 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.13514.1771768223057343447
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Feb 2026 05:50:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RRbIHy8P;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: uvv.mail@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b8871718b00so558144666b.3
        for <yocto@lists.yoctoproject.org>; Sun, 22 Feb 2026 05:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771768221; x=1772373021; darn=lists.yoctoproject.org;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+ZipwqLKwra+0nI+JAF4wo67bbxS1Eup77TIJCxOvZo=;
        b=RRbIHy8PkyJnDY8ub0qzU7L0M+7t8PwE40XZVNR7dgA/gf2WFtChrMN97QYSTdMfvw
         q5yGYZPcpMDKJO+fl3vsp54baNh5L/yzLJALXtguic0rgBtD7TLgGTIfIfvTeGlwjmTM
         vQRcBBH0d4s2kCeW6nJel0ZVbRVLqgvIyTRXkR1KRqwehPEVmjNyqftTWBHhNSQmhy/p
         UNu1jGmoxsCfeSDxS92+ewRfRFISAGCnLFFHyXwjeBmBlSP/WC0So7yfP+W2c/3NvsfI
         5TraBLvFUqSo6PNcI3lij8chFTQB7GoG/rg0y+D2e2Pgrpk6NRyU8c/dc3/j7/OigBQ1
         8IMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771768221; x=1772373021;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ZipwqLKwra+0nI+JAF4wo67bbxS1Eup77TIJCxOvZo=;
        b=t8Tgjx49D80uBNlyzVTUZqVl4Gja0Y9MBQXYclhPKlQT7D+4WUBXUOnWcYTMvu4mpQ
         ym+stvlkOTPz2BrKmaKccFZ23f/1HDJXiD8qb3zOFKfdzDpKyhLLDJZCxCvLwQCVL2ec
         XQwBLw1PVIEe9ROhGdr9IBPO1N1jxgmIe6HgU61zeBo0w9273chhVwAktxO/r02VFQmh
         wEuLEDK7Ga53RQkAguI3xZyoMRF18B61jcZiKVbcijadzp8DbHCt482f3n559+5BrL3x
         v2hhEkfiLtGzMqJc+opusGj46wmAxoIJNty8Qp6bKURuqwmpebgZg4Q7EvPzk6+0CX3Q
         BKsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbrMXuacrBTA0i0Mz9pDpnRIebYmcVhJawK6qDF35ceLQaaH5hVbVDb+z2jXP38O1hzJWzcw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzSESMrT98HA1wpJ2n4mvqvHcgr81TcHe9gYshrIXdGS9owTOtM
	vQ6kVOqd9NhbMJQ0eO7QNRMrtZ/kAQa5njpK7ilKvZ9IdMa1xdp/90BY
X-Gm-Gg: AZuq6aJfjm42sc58FCCSsRaYvXijd1/cuibpnn1qjcWO2sAgixH1a9+E3EpuCaVgFlf
	uvDAeo4UQp4W3wwg3BMDia92z4+wCLtJhHdXfgNdGL59CE2LhT09m7dy61vM8ZK5M4nngCw0i9u
	F7DzZfRIV6x3ih63c1+S0U1uyjykpScRFyZlWEPM/qQ8XxFVMNtHuSRbTVPOEUfFK30kUPeHQbS
	SsxvKGybwEwY/wNfdGzq7Pz522pk9jILLBRZsmCipmJGmTYBXMZfp2alyulXtZ+ZIp1sN21ePvi
	lMn9KOhF3Ey05o/vf71oow7vkBWv2OSnOgUWx+xHc3xaSesUjCGxZNAvItBFCAe2Up2wNGu1XYk
	5/cUiUg82m+kW+12/jPYsZgy5EIFboA1elB34U6ivPyXGA/2u38qyh4ftn04wybnDkQtB7JHprt
	hrQqiEtMRZodTP7S9LwuDwZwz8x1wbCJ4TiECFXAMouN9Xkjhy
X-Received: by 2002:a17:907:d08:b0:b8f:b082:e26c with SMTP id a640c23a62f3a-b9081b8a96cmr362046166b.40.1771768220836;
        Sun, 22 Feb 2026 05:50:20 -0800 (PST)
Received: from [10.55.61.194] ([149.50.217.2])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084c60b9dsm222619066b.4.2026.02.22.05.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Feb 2026 05:50:20 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------BJuElvpvFYwnMqzr0Gb8Z1d8"
Message-ID: <2c7cc712-18e6-4b8d-825c-35dec015166f@gmail.com>
Date: Sun, 22 Feb 2026 14:50:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: FIT image verification not working on imx8mm
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 yocto@lists.yoctoproject.org
References: <caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com>
Content-Language: en-US
From: Vyacheslav Yurkov <uvv.mail@gmail.com>
In-Reply-To: <caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 22 Feb 2026 13:50:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66266

This is a multi-part message in MIME format.
--------------BJuElvpvFYwnMqzr0Gb8Z1d8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Michael,
I believe the message is correct:

 > Verifying Hash Integrity ... sha256+ OK

The "+" sign means the signature verification succeeded. The "-" would 
mean otherwise.

I've just tried again to boot a fit image built without 
UBOOT_SIGN_ENABLE and got:

 > No 'signature' subnode found for '<NULL>' hash node in 'conf-my-dtb' 
config node

Do you use the u-boot as SPL by any chance?

Slava

On 21.02.2026 11:39, Michael Opdenacker wrote:
>
> Greetings,
>
> For a secure boot project on Toradex Verdin with imx8mm, I'm trying to 
> enable FIT image signature verification in U-Boot.
>
> Slava's "Generation of FIT images" presentation at the recent OE 
> workshop has been very useful:
> https://pretalx.com/media/openembedded-workshop-2026-2025/submissions/R8KJQZ/resources/_LJtpFTR.pdf
>
> I generated a temporary local RSA 2048 key, and I'm using it to sign a 
> FIT image.
>
> I also set the UBOOT_SIGN_KEYDIR, UBOOT_SIGN_KEYNAME and 
> UBOOT_SIGN_ENABLE variables to add the public key to U-Boot's DTB.
>
> The signature indeed appears in the generated u-boot.dtb file, in a 
> "/signature" node:
>
>     signature {
>
>         key-imx8mmsb {
>             required = "conf";
>             algo = "sha256,rsa2048";
>             rsa,r-squared = <0x56bb2a2b 0xc6b322cc 0x2f828666 
> 0x75c8bc46 0xd13093af 0xc2244c35 0xb6420649 0x478d7ed3 0xeb7a0399 
> 0x3b1d49a9 0xc106169d 0x7328dbb4 0x2140c49b 0x111732a1 0xb3286fed 
> 0x53937163 0x8c28f85c 0xe272b1ee 0x5e009a53 0x13883205 0xcda0fbc7 
> 0xd7ed4e75 0x9ed065c1 0xb6ca1e69 0xf2c9dce2 0xcf8ebf7b 0x59a72b94 
> 0x501d2751 0x437e3355 0xcba6b07a 0x9b13feea 0x1032d715 0xab3cdd83 
> 0x319b6bb0 0xfc31ff93 0xb7fabbb6 0x79d5d0fa 0x9c0f76e0 0x3528c22e 
> 0xbbec6d6c 0x7981362f 0x528848a9 0xb57aa235 0x462ed577 0x4ccc8b9d 
> 0xeb4ce969 0x5fb085b3 0x3fced511 0xfd98edfe 0xf3a4ca51 0x1bb74370 
> 0x3a11c748 0xbbd5be95 0x946f8b3f 0x3d8c98b6 0x3b0e00a8 0xeca87fc6 
> 0x7331981e 0xaaee80df 0x476816f2 0x509aaab1 0xa5f50e1a 0x474d0de8 
> 0xc551ac97>;
>             rsa,modulus = <0xb3ade247 0x4b8d0aef 0x4581e5e9 0x6084f135 
> 0x778847c7 0xaf23976f 0x81b6eb84 0xa2406db4 0x2b89e624 0x81f913c9 
> 0xd6ebef10 0x3e30adee 0xbca06cbe 0x5693b23b 0xc6b211f1 0xfea7a90d 
> 0x2767ca7c 0xaa8b2ddb 0xcf8a63ea 0x66fe8c59 0x43b34a2f 0x720009d8 
> 0xa2a61281 0x2f7fe049 0xfc3d10e5 0x1b52409 0xdeb52a16 0xa4e5fa78 
> 0x7116d181 0xc0c2f39e 0x24a626b4 0x7e59438b 0x6680b1f4 0xc4b1184c 
> 0x8bb65f34 0x92038fd7 0x3901c347 0xc2095158 0x3159031a 0xaa4bb76c 
> 0xc53f2009 0x9f4941f8 0x736ca84a 0xd83bd011 0x3685d02c 0x6f4cb5e7 
> 0xd07e8566 0x173819f 0x8f41366d 0x8b0f82fd 0x54c01fc0 0xc216cbd5 
> 0x2fc4a666 0x426ff669 0x880428ca 0x7c7615c 0xcdc97895 0x8c936a3c 
> 0xd6d7e82e 0x5bf63d9d 0x9fcd83a2 0xb131015f 0xc530c031 0x8446f707>;
>             rsa,exponent = <0x00 0x10001>;
>             rsa,n0-inverse = <0x93653949>;
>             rsa,num-bits = <0x800>;
>             key-name-hint = "imx8mmsb";
>         };
>     };
>
> I also compiled U-Boot with
> |CONFIG_FIT_SIGNATURE=y
> |
> However, when U-Boot loads the FIT image, it only checks the integrity 
> of the sha256 hash of the FIT image parts:
>    Verifying Hash Integrity ... sha256+ OK
>
> No signature checking happens. I can also load an unsigned FIT image 
> which is accepted too. Indeed, when I open the generated "imx-boot" 
> file (or "flash.bin", linking to the same file) that is used to boot 
> the board, I can see a DTB for my board, but it doesn't contain any 
> "signature" node, unlike in "u-boot.dtb".
>
> What could I be missing? My layer, along with a kas file to generate 
> the image, is available on 
> https://gitlab.com/rootcommit/meta-imx8mm-secureboot. I'm using the 
> Toradex Easy Installer (Tezi) to flash the image on eMMC. My layer is 
> relies on the "master" branches of the required layers, but I have the 
> same problem on Scarthgap too.
>
> Any suggestions are appreciated.
> Thanks in advance
> Michael.
>
> -- 
> Root Commit
> Embedded Linux Training and Consulting
> https://rootcommit.com

--------------BJuElvpvFYwnMqzr0Gb8Z1d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Hi Michael,<br>
      I believe the message is correct:<br>
      <br>
      &gt; Verifying Hash Integrity ... sha256+ OK<br>
      <br>
      The "+" sign means the signature verification succeeded. The "-"
      would mean otherwise.<br>
      <br>
      I've just tried again to boot a fit image built without
      UBOOT_SIGN_ENABLE and got:<br>
      <br>
      &gt; No 'signature' subnode found for '&lt;NULL&gt;' hash node in
      'conf-my-dtb' config node<br>
      <br>
      Do you use the u-boot as SPL by any chance?<br>
      <br>
      Slava<br>
      <br>
      On 21.02.2026 11:39, Michael Opdenacker wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Greetings,</p>
      <p>For a secure boot project on Toradex Verdin with imx8mm, I'm
        trying to enable FIT image signature verification in U-Boot.</p>
      <p>Slava's "Generation of FIT images" presentation at the recent
        OE workshop has been very useful:<br>
        <a data-from-md=""
title="https://pretalx.com/media/openembedded-workshop-2026-2025/submissions/R8KJQZ/resources/_LJtpFTR.pdf"
href="https://pretalx.com/media/openembedded-workshop-2026-2025/submissions/R8KJQZ/resources/_LJtpFTR.pdf"
          class="moz-txt-link-freetext" moz-do-not-send="true">https://pretalx.com/media/openembedded-workshop-2026-2025/submissions/R8KJQZ/resources/_LJtpFTR.pdf</a></p>
      <p>I generated a temporary local RSA 2048 key, and I'm using it to
        sign a FIT image. <br>
        <br>
        I also set the UBOOT_SIGN_KEYDIR, UBOOT_SIGN_KEYNAME and
        UBOOT_SIGN_ENABLE variables to add the public key to U-Boot's
        DTB.</p>
      <p>The signature indeed appears in the generated u-boot.dtb file,
        in a "/signature" node:<br>
        <br>
            signature {<br>
        <br>
                key-imx8mmsb {<br>
                    required = "conf";<br>
                    algo = "sha256,rsa2048";<br>
                    rsa,r-squared = &lt;0x56bb2a2b 0xc6b322cc 0x2f828666
        0x75c8bc46 0xd13093af 0xc2244c35 0xb6420649 0x478d7ed3
        0xeb7a0399 0x3b1d49a9 0xc106169d 0x7328dbb4 0x2140c49b
        0x111732a1 0xb3286fed 0x53937163 0x8c28f85c 0xe272b1ee
        0x5e009a53 0x13883205 0xcda0fbc7 0xd7ed4e75 0x9ed065c1
        0xb6ca1e69 0xf2c9dce2 0xcf8ebf7b 0x59a72b94 0x501d2751
        0x437e3355 0xcba6b07a 0x9b13feea 0x1032d715 0xab3cdd83
        0x319b6bb0 0xfc31ff93 0xb7fabbb6 0x79d5d0fa 0x9c0f76e0
        0x3528c22e 0xbbec6d6c 0x7981362f 0x528848a9 0xb57aa235
        0x462ed577 0x4ccc8b9d 0xeb4ce969 0x5fb085b3 0x3fced511
        0xfd98edfe 0xf3a4ca51 0x1bb74370 0x3a11c748 0xbbd5be95
        0x946f8b3f 0x3d8c98b6 0x3b0e00a8 0xeca87fc6 0x7331981e
        0xaaee80df 0x476816f2 0x509aaab1 0xa5f50e1a 0x474d0de8
        0xc551ac97&gt;;<br>
                    rsa,modulus = &lt;0xb3ade247 0x4b8d0aef 0x4581e5e9
        0x6084f135 0x778847c7 0xaf23976f 0x81b6eb84 0xa2406db4
        0x2b89e624 0x81f913c9 0xd6ebef10 0x3e30adee 0xbca06cbe
        0x5693b23b 0xc6b211f1 0xfea7a90d 0x2767ca7c 0xaa8b2ddb
        0xcf8a63ea 0x66fe8c59 0x43b34a2f 0x720009d8 0xa2a61281
        0x2f7fe049 0xfc3d10e5 0x1b52409 0xdeb52a16 0xa4e5fa78 0x7116d181
        0xc0c2f39e 0x24a626b4 0x7e59438b 0x6680b1f4 0xc4b1184c
        0x8bb65f34 0x92038fd7 0x3901c347 0xc2095158 0x3159031a
        0xaa4bb76c 0xc53f2009 0x9f4941f8 0x736ca84a 0xd83bd011
        0x3685d02c 0x6f4cb5e7 0xd07e8566 0x173819f 0x8f41366d 0x8b0f82fd
        0x54c01fc0 0xc216cbd5 0x2fc4a666 0x426ff669 0x880428ca 0x7c7615c
        0xcdc97895 0x8c936a3c 0xd6d7e82e 0x5bf63d9d 0x9fcd83a2
        0xb131015f 0xc530c031 0x8446f707&gt;;<br>
                    rsa,exponent = &lt;0x00 0x10001&gt;;<br>
                    rsa,n0-inverse = &lt;0x93653949&gt;;<br>
                    rsa,num-bits = &lt;0x800&gt;;<br>
                    key-name-hint = "imx8mmsb";<br>
                };<br>
            };<br>
      </p>
      <p>I also compiled U-Boot with<br>
        <code><span class="hljs-attr">CONFIG_FIT_SIGNATURE</span><span
            class="">=y<br>
          </span></code><br>
        However, when U-Boot loads the FIT image, it only checks the
        integrity of the sha256 hash of the FIT image parts:<br>
           Verifying Hash Integrity ... sha256+ OK</p>
      <p>No signature checking happens. I can also load an unsigned FIT
        image which is accepted too. Indeed, when I open the generated
        "imx-boot" file (or "flash.bin", linking to the same file) that
        is used to boot the board, I can see a DTB for my board, but it
        doesn't contain any "signature" node, unlike in "u-boot.dtb".<br>
        <br>
        What could I be missing? My layer, along with a kas file to
        generate the image, is available on <a
          class="moz-txt-link-freetext"
          href="https://gitlab.com/rootcommit/meta-imx8mm-secureboot"
          moz-do-not-send="true">https://gitlab.com/rootcommit/meta-imx8mm-secureboot</a>.
        I'm using the Toradex Easy Installer (Tezi) to flash the image
        on eMMC. My layer is relies on the "master" branches of the
        required layers, but I have the same problem on Scarthgap too.<br>
        <br>
        Any suggestions are appreciated.<br>
        Thanks in advance<br>
        Michael.</p>
      <pre class="moz-signature" cols="72">-- 
Root Commit
Embedded Linux Training and Consulting
<a class="moz-txt-link-freetext" href="https://rootcommit.com"
      moz-do-not-send="true">https://rootcommit.com</a></pre>
    </blockquote>
    <br>
  </body>
</html>

--------------BJuElvpvFYwnMqzr0Gb8Z1d8--

