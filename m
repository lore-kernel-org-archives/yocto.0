Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
 by mx.groups.io with SMTP id smtpd.web10.9244.1581100560344028763
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2020 10:36:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SKKPvarA;
 spf=pass (domain: gmail.com, ip: 209.85.215.195, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f195.google.com with SMTP id 6so226480pgk.0
        for <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2020 10:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=MqbLE9kyw/nnOGWhl+ck8vWsZwxDbA55rIm78v2/3mY=;
        b=SKKPvarArldHfEiXa50bBlFjwchSvXxeE66FX2bQSQTgqH1pNUThvq1O5dyzEpPVDO
         SFM/DbqoFVYMNoj2l4dtbCnbghBYBmHDf/rJEgc/827DCYTgKv3pBAwHCzx0maqJXqBH
         +ctGLCyarmsmVTFvMm8tlLBEEnw4y1fSrkQUtIXal7VK/L2FULgkXX4YWI0vObxQp3Ef
         Dv9T5r8wFvo8DLyJ48X7uFUKjnXWWzHwGCqeCYiOyNSGkh0FGPUcoTG1pMut79Gzz9AS
         D/d+nt5Bb/tUZnKpCYLGPuUVKObqgegHMkYg1IfG/NsFBYmuep1nGdLlH/XipBVWfB6t
         saig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=MqbLE9kyw/nnOGWhl+ck8vWsZwxDbA55rIm78v2/3mY=;
        b=kH4qDWDCc5kHpuRsEBwI/C/7hAv++zq049UYCDV4PXv7DLdj9IbO5Mccq+5FN9lXDN
         0kWcgtdUPl3KHfQPQ4lTERkZGZta9cqO8LGcIWUgMejB83J28/rwJJJ3JN+tUuCMh0pZ
         3LTlBQmM/hcP4HmIPKvWPk+8fyXByTXijiPYICR8G78dMBFeEJfT7+Dl9cAeWG5Sh0Bo
         6X+87fTHZyVzYV7+oB3SBteaR9YGfkEzYVZzBv/ZmgN1Oj1czvqFvY/5T8OPiAe5xYX4
         zzyUAxzSTp2AmoyJVrrOzBHrXbPQ8uLLmwboGIQLnucJv8916/KOesxL8gIyIamnJBH8
         RioA==
X-Gm-Message-State: APjAAAU8tSrmzDTcVs4p2AZfS7kBt7H5FdxjLnBafvKRoN3QMXudY7wm
	vejFD8zWEUfYh3ASawK/SbqhFE44
X-Google-Smtp-Source: APXvYqwz4xC8rvb6JufejsUCZMNIfCbzBZ4ARQbOEXbSrc54tbpWldyu3ZGguIMrWZdHslefTLE2Mg==
X-Received: by 2002:a63:3802:: with SMTP id f2mr517294pga.395.1581100558710;
        Fri, 07 Feb 2020 10:35:58 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:64e0:39eb:f6ec:ba3e? ([2601:202:4180:a5c0:64e0:39eb:f6ec:ba3e])
        by smtp.gmail.com with ESMTPSA id d26sm3628829pgv.66.2020.02.07.10.35.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 10:35:58 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH] tpm2-tools: update to 4.1.1
To: Denys Dmytriyenko <denis@denix.org>, akuster <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20200207164752.11942-1-akuster808@gmail.com>
 <20200207182459.GT4735@denix.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
 FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
 vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
 ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
 IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
 g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
 rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
 FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
 wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
 t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
 aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
 oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
 AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
 mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
 ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
 vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
 JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
 EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
 dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
 /mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
 PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
 ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
 8CS2NxU=
Message-ID: <babf599e-ade1-cbda-70bb-88f4a1e74b86@gmail.com>
Date: Fri, 7 Feb 2020 10:35:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200207182459.GT4735@denix.org>
Content-Type: multipart/alternative;
 boundary="------------7CA7754290D599102AB14E3E"
Content-Language: en-US

--------------7CA7754290D599102AB14E3E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 2/7/20 10:24 AM, Denys Dmytriyenko wrote:
> format-patch -M?
good idea.


>
> On Fri, Feb 07, 2020 at 08:47:52AM -0800, akuster wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  .../recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb | 14 --------------
>>  .../recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb | 17 +++++++++++++++++
>>  2 files changed, 17 insertions(+), 14 deletions(-)
>>  delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
>>  create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
>>
>> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
>> deleted file mode 100644
>> index 8f94972..0000000
>> --- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
>> +++ /dev/null
>> @@ -1,14 +0,0 @@
>> -SUMMARY = "Tools for TPM2."
>> -DESCRIPTION = "tpm2-tools"
>> -LICENSE = "BSD"
>> -LIC_FILES_CHKSUM = "file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"
>> -SECTION = "tpm"
>> -
>> -DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
>> -
>> -SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
>> -
>> -SRC_URI[md5sum] = "071aa40bc8721700ea4ed19cc2fdeabf"
>> -SRC_URI[sha256sum] = "ccec3fca6370341a102c5c2ef1ddb4e5cd242bf1bbc6c51d969f77fc78ca67d1"
>> -
>> -inherit autotools pkgconfig bash-completion
>> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
>> new file mode 100644
>> index 0000000..e90dcfe
>> --- /dev/null
>> +++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
>> @@ -0,0 +1,17 @@
>> +SUMMARY = "Tools for TPM2."
>> +DESCRIPTION = "tpm2-tools"
>> +LICENSE = "BSD"
>> +LIC_FILES_CHKSUM = "file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"
>> +SECTION = "tpm"
>> +
>> +DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
>> +
>> +SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
>> +
>> +SRC_URI[md5sum] = "701ae9e8c8cbdd37d89c8ad774f55395"
>> +SRC_URI[sha256sum] = "40b9263d8b949bd2bc03a3cd60fa242e27116727467f9bbdd0b5f2539a25a7b1"
>> +SRC_URI[sha1sum] = "d097d321237983435f05c974533ad90e6f20acef"
>> +SRC_URI[sha384sum] = "396547f400e4f5626d7741d77ec543f312d94e6697899f4c36260d15fab3f4f971ad2c0487e6eaa2d60256f3cf68f85f"
>> +SRC_URI[sha512sum] = "25952cf947f0acd16b1a8dbd3ac8573bce85ff970a7e24c290c4f9cd29418e77a3e48ac82c932fbd250887a9303ab301ff92db594c2fffaba47b873382444d26"
>> +
>> +inherit autotools pkgconfig bash-completion
>> -- 
>> 2.17.1
>>
>
> 


--------------7CA7754290D599102AB14E3E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/7/20 10:24 AM, Denys Dmytriyenko
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20200207182459.GT4735@denix.org">
      <pre class="moz-quote-pre" wrap="">format-patch -M?</pre>
    </blockquote>
    good idea.<br>
    <br>
    <br>
    <blockquote type="cite" cite="mid:20200207182459.GT4735@denix.org">
      <pre class="moz-quote-pre" wrap="">

On Fri, Feb 07, 2020 at 08:47:52AM -0800, akuster wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
 .../recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb | 14 --------------
 .../recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb | 17 +++++++++++++++++
 2 files changed, 17 insertions(+), 14 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
deleted file mode 100644
index 8f94972..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-SUMMARY = "Tools for TPM2."
-DESCRIPTION = "tpm2-tools"
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc">"file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"</a>
-SECTION = "tpm"
-
-DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
-
-SRC_URI = <a class="moz-txt-link-rfc2396E" href="https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz">"https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"</a>
-
-SRC_URI[md5sum] = "071aa40bc8721700ea4ed19cc2fdeabf"
-SRC_URI[sha256sum] = "ccec3fca6370341a102c5c2ef1ddb4e5cd242bf1bbc6c51d969f77fc78ca67d1"
-
-inherit autotools pkgconfig bash-completion
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
new file mode 100644
index 0000000..e90dcfe
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
@@ -0,0 +1,17 @@
+SUMMARY = "Tools for TPM2."
+DESCRIPTION = "tpm2-tools"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc">"file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"</a>
+SECTION = "tpm"
+
+DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
+
+SRC_URI = <a class="moz-txt-link-rfc2396E" href="https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz">"https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"</a>
+
+SRC_URI[md5sum] = "701ae9e8c8cbdd37d89c8ad774f55395"
+SRC_URI[sha256sum] = "40b9263d8b949bd2bc03a3cd60fa242e27116727467f9bbdd0b5f2539a25a7b1"
+SRC_URI[sha1sum] = "d097d321237983435f05c974533ad90e6f20acef"
+SRC_URI[sha384sum] = "396547f400e4f5626d7741d77ec543f312d94e6697899f4c36260d15fab3f4f971ad2c0487e6eaa2d60256f3cf68f85f"
+SRC_URI[sha512sum] = "25952cf947f0acd16b1a8dbd3ac8573bce85ff970a7e24c290c4f9cd29418e77a3e48ac82c932fbd250887a9303ab301ff92db594c2fffaba47b873382444d26"
+
+inherit autotools pkgconfig bash-completion
-- 
2.17.1

</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------7CA7754290D599102AB14E3E--
