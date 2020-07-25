Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web12.12345.1595692929815802749
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jul 2020 09:02:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XA/n6WBw;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id q17so6038069pls.9
        for <yocto@lists.yoctoproject.org>; Sat, 25 Jul 2020 09:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=d9XbpCgNQzwUr8jL/zKRagOoEkX47PY+DqfC7AZYYKE=;
        b=XA/n6WBwQla6pCQPqjrPBI5aBFXM/FFYh8rGISqnat3/ts1+Nk+Nkyrvx1H6CNzNLb
         sGsISv1rHIECioZps7xdpol+9TC/pkF1Ffq6ovU+01tT4J3uuQAReiLf+VJzDoXdmJKN
         f3BfANERdALJPj1wAV4Hnj1TqpqLIKk/TJbwIrIkeDCoD3c9StUFvDVL1uZDpbkZMZM+
         hE9XHZRcJRgegXBFWM8BzqdLlfEfeJxpqWoOGJbJemptc3u6LxVOD/V+S6hydspJKcvM
         aQS33iFQE5vnuicsTVpVSK0nQxc7eTL8RQtP/lVHT25C7hNfupQHSFkz4s+k42m+EqSw
         vyWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=d9XbpCgNQzwUr8jL/zKRagOoEkX47PY+DqfC7AZYYKE=;
        b=e4yVrF7jTIeBiaNi+qWyIJ6iX04EPL0Lfq+V3a86SCx+zo8LMG4cEDcfQnRfml3xrx
         OE1Y5nyveBsioU3KxqZd+TkwKHSoYbx74M1p1T/2G23UCITSwZsROJh8dOMPzYbsjNXX
         q/FeJbnjTtxKhB7S49sPnmpYpbXWJO+wEI0WrNGG2Ev2frPG6D/wDCC6t7IWkYIQyCx3
         gugRdUXYC88sdUhumanyMCajb9Rd9jVh63fsZeI31Myvu5CP1ULwoIih0gZ1pFaSf2tB
         IGNa2wumcIhaZConWLsXQGPK/9EJvDtPlgIIqh30r2Q+NfKoGayy+p2CcEi0B6kAiPOJ
         l0rA==
X-Gm-Message-State: AOAM530yxJPVJ5/lKSMK43NKEE5llrMFRmxFNW96vwJe/+96hgCzHtVH
	qS81dEI9g5aLpIx1TcTDWyDyMev/+UA=
X-Google-Smtp-Source: ABdhPJzGNJlSrmaT3Zcll/iF79MjGnLf7sBL49l5uyZzA7nBrmWNIMPDHpQA9CojPRtoITkLBPzkUQ==
X-Received: by 2002:a17:90a:c094:: with SMTP id o20mr10206144pjs.12.1595692928843;
        Sat, 25 Jul 2020 09:02:08 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:40e5:a0a0:80e8:2308? ([2601:202:4180:a5c0:40e5:a0a0:80e8:2308])
        by smtp.gmail.com with ESMTPSA id y9sm9292997pja.13.2020.07.25.09.02.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jul 2020 09:02:08 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] ibmswtpm2: upgrade 1563 -> 1628
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20200722032447.2798-1-yi.zhao@windriver.com>
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
Message-ID: <d0974568-e7ef-cfa1-1c32-8a5e628041ad@gmail.com>
Date: Sat, 25 Jul 2020 09:02:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200722032447.2798-1-yi.zhao@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------F2A42BDC2891DD1973B23038"
Content-Language: en-US

--------------F2A42BDC2891DD1973B23038
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 7/21/20 8:24 PM, Yi Zhao wrote:
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb  | 27 -------------------
>  .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb  | 26 ++++++++++++++++++
>  2 files changed, 26 insertions(+), 27 deletions(-)
>  delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
>  create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb

merged.

thanks
-armin
>
> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
> deleted file mode 100644
> index 8054226..0000000
> --- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -SUMMARY = "IBM's Software TPM 2.0"
> -LICENSE = "BSD"
> -SECTION = "securty/tpm"
> -LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
> -
> -DEPENDS = "openssl"
> -
> -SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
> -           file://remove_optimization.patch \
> -           "
> -SRC_URI[md5sum] = "13013612b3a13dc935fefe1a5684179c"
> -SRC_URI[sha256sum] = "fc3a17f8315c1f47670764f2384943afc0d3ba1e9a0422dacb08d455733bd1e9"
> -SRC_URI[sha1sum] = "a2a5335024a2edc1739f08b99e716fa355be627d"
> -SRC_URI[sha384sum] = "b1f278acabe2198aa79c0fe8aa0182733fe701336cbf54a88058be0b574cab768f59f9315882d0e689e634678d05b79f"
> -SRC_URI[sha512sum] = "ff0b9e5f0d0070eb572b23641f7a0e70a8bc65cbf4b59dca1778be3bb014124011221a492147d4c492584e87af23e2f842ca6307641b3919f67a3f27f09312c0"
> -
> -S = "${WORKDIR}/src"
> -
> -do_compile () {
> -   make CC='${CC}'
> -}
> -
> -do_install () {
> -   install -d ${D}/${bindir}
> -   install -m 0755 tpm_server  ${D}/${bindir}
> -}
> -
> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
> new file mode 100644
> index 0000000..3373a30
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
> @@ -0,0 +1,26 @@
> +SUMMARY = "IBM's Software TPM 2.0"
> +LICENSE = "BSD"
> +SECTION = "securty/tpm"
> +LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
> +
> +DEPENDS = "openssl"
> +
> +SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
> +           file://remove_optimization.patch \
> +           "
> +SRC_URI[md5sum] = "bfd3eca2411915f24de628b9ec36f259"
> +SRC_URI[sha256sum] = "a8e874e7a1ae13a1290d7679d846281f72d0eb6a5e4cfbafca5297dbf4e29ea3"
> +SRC_URI[sha1sum] = "7c8241a4e97a801eace9f0eea8cdda7c58114f7f"
> +SRC_URI[sha384sum] = "eec25cc8ba0e3cb27d41ba4fa4c71d8158699953ccb61bb6d440236dcbd8f52b6954eaae9d640a713186e0b99311fd91"
> +SRC_URI[sha512sum] = "ab47caa4406ba57c0afc6fadae304fc9ef5e3e125be0f2fb1955a419cf93cd5e9176e103f0b566825abc16cca00b795f98d2b407f0a2bf7b141ef4b025d907d0"
> +
> +S = "${WORKDIR}/src"
> +
> +do_compile () {
> +   make CC='${CC}'
> +}
> +
> +do_install () {
> +   install -d ${D}/${bindir}
> +   install -m 0755 tpm_server  ${D}/${bindir}
> +}
>
> 


--------------F2A42BDC2891DD1973B23038
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/21/20 8:24 PM, Yi Zhao wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200722032447.2798-1-yi.zhao@windriver.com">
      <pre class="moz-quote-pre" wrap="">Signed-off-by: Yi Zhao <a class="moz-txt-link-rfc2396E" href="mailto:yi.zhao@windriver.com">&lt;yi.zhao@windriver.com&gt;</a>
---
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb  | 27 -------------------
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb  | 26 ++++++++++++++++++
 2 files changed, 26 insertions(+), 27 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb</pre>
    </blockquote>
    <br>
    merged.<br>
    <br>
    thanks<br>
    -armin<br>
    <blockquote type="cite"
      cite="mid:20200722032447.2798-1-yi.zhao@windriver.com">
      <pre class="moz-quote-pre" wrap="">

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
deleted file mode 100644
index 8054226..0000000
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
+++ /dev/null
@@ -1,27 +0,0 @@
-SUMMARY = "IBM's Software TPM 2.0"
-LICENSE = "BSD"
-SECTION = "securty/tpm"
-LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f">"file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"</a>
-
-DEPENDS = "openssl"
-
-SRC_URI = <a class="moz-txt-link-rfc2396E" href="https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz\-file://remove_optimization.patch\-">"https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
-           file://remove_optimization.patch \
-           "</a>
-SRC_URI[md5sum] = "13013612b3a13dc935fefe1a5684179c"
-SRC_URI[sha256sum] = "fc3a17f8315c1f47670764f2384943afc0d3ba1e9a0422dacb08d455733bd1e9"
-SRC_URI[sha1sum] = "a2a5335024a2edc1739f08b99e716fa355be627d"
-SRC_URI[sha384sum] = "b1f278acabe2198aa79c0fe8aa0182733fe701336cbf54a88058be0b574cab768f59f9315882d0e689e634678d05b79f"
-SRC_URI[sha512sum] = "ff0b9e5f0d0070eb572b23641f7a0e70a8bc65cbf4b59dca1778be3bb014124011221a492147d4c492584e87af23e2f842ca6307641b3919f67a3f27f09312c0"
-
-S = "${WORKDIR}/src"
-
-do_compile () {
-   make CC='${CC}'
-}
-
-do_install () {
-   install -d ${D}/${bindir}
-   install -m 0755 tpm_server  ${D}/${bindir}
-}
-
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
new file mode 100644
index 0000000..3373a30
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
@@ -0,0 +1,26 @@
+SUMMARY = "IBM's Software TPM 2.0"
+LICENSE = "BSD"
+SECTION = "securty/tpm"
+LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f">"file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"</a>
+
+DEPENDS = "openssl"
+
+SRC_URI = <a class="moz-txt-link-rfc2396E" href="https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz\+file://remove_optimization.patch\+">"https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
+           file://remove_optimization.patch \
+           "</a>
+SRC_URI[md5sum] = "bfd3eca2411915f24de628b9ec36f259"
+SRC_URI[sha256sum] = "a8e874e7a1ae13a1290d7679d846281f72d0eb6a5e4cfbafca5297dbf4e29ea3"
+SRC_URI[sha1sum] = "7c8241a4e97a801eace9f0eea8cdda7c58114f7f"
+SRC_URI[sha384sum] = "eec25cc8ba0e3cb27d41ba4fa4c71d8158699953ccb61bb6d440236dcbd8f52b6954eaae9d640a713186e0b99311fd91"
+SRC_URI[sha512sum] = "ab47caa4406ba57c0afc6fadae304fc9ef5e3e125be0f2fb1955a419cf93cd5e9176e103f0b566825abc16cca00b795f98d2b407f0a2bf7b141ef4b025d907d0"
+
+S = "${WORKDIR}/src"
+
+do_compile () {
+   make CC='${CC}'
+}
+
+do_install () {
+   install -d ${D}/${bindir}
+   install -m 0755 tpm_server  ${D}/${bindir}
+}
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------F2A42BDC2891DD1973B23038--
