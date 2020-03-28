Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.1554.1585353964430020256
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 17:06:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=umvNxyqI;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id b1so5373118pgm.8
        for <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2020 17:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=cdeknVegTilQM7hSr8HfIdpBC99JzgHppam8JtR2RL0=;
        b=umvNxyqI8GX0b1FypPdUJiuejTRw+Zt2XmCb4JNS9KX+pu6yN8VfE+kuMHzzfNKdmG
         0rNoxqP4GM8ChRgF0Nl/GBhRthE58rA4OKZxl/ZH/Ufm6i3S5bVccSQQwUUa5+mL4Gam
         /JCZEDeBxOTb5XyoRKlG4YLwRnbHKh+FuhyKVDSDHFx6xiFrQrbbJ/9Yc/RIKBddcV8t
         THPNLHoErt/8qtLwL20f9s9Qq9X09kDhB3QIEZ4KE7sOBWpi1t1/hiH1vKqF/qBWbiWz
         Dn21uct/I74u6RnMmKdDs6Dp6ZXzWUW8IK+Zh6E6/noSFtMBAaJm9X5jYAfodc8rLLDd
         v5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=cdeknVegTilQM7hSr8HfIdpBC99JzgHppam8JtR2RL0=;
        b=QWKbgcN3yad71SxNuv6XSFYRena4g/5BIbwKrAY+klGQ6UJELF9rwHOAF26s3j0dpw
         Kc8GF40mvAteg2d4TKXP1tCH+KjaRu99CKWNj3Ravw2NtFSdR/0W50BCHhdtYxbbmRI6
         jnO/5dtfBhLLmtwbakyEMwtx/gl+lH04XGI2QDrPhjKXpqie0tFt6KfnwEfRr5cSIqda
         f5g6UdLoAbnA12Nsv+mCjJGRtV0T9yDP0/59gJAqrNMZ6n3m+G5cT0GvEoIsfLWvU2eu
         OI5OB5QgUpZelHvs0U+OqrWaardkk+8vyRc91Ya65agWr+21WbIbA2N8ZUiszsAUbxrm
         3nPg==
X-Gm-Message-State: ANhLgQ3pZPylje72HLxBy2h8GgGSSzw3rZEqQjHYG6bzoBAnlmyfetsv
	/kkRzCMlDzgeMqwjojgwzlV02jzRpW8=
X-Google-Smtp-Source: ADFU+vsv6r4a7Ns0ALSHSmhrpH46OsGX2obKpm7vI4mp2gAzvUOZKln88C29E8bHFQ4c4GkuF14GKg==
X-Received: by 2002:aa7:85c4:: with SMTP id z4mr1805979pfn.121.1585353963695;
        Fri, 27 Mar 2020 17:06:03 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:84d1:5d33:be2f:3f17? ([2601:202:4180:a5c0:84d1:5d33:be2f:3f17])
        by smtp.gmail.com with ESMTPSA id m7sm457906pjb.7.2020.03.27.17.06.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 17:06:03 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] openscap-daemon: add missing runtime dependencies
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20200309124516.25548-1-yi.zhao@windriver.com>
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
Message-ID: <557ed8a5-be1f-da4b-8c61-9cb69ec042db@gmail.com>
Date: Fri, 27 Mar 2020 17:06:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200309124516.25548-1-yi.zhao@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------71CC8FA86D46090FDD8FB11A"
Content-Language: en-US

--------------71CC8FA86D46090FDD8FB11A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 3/9/20 5:45 AM, Yi Zhao wrote:
> Add missing runtime dependencies otherwise /usr/bin/oscapd can not
> startup.
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
merged.

thanks,
Armin
> ---
>  .../openscap-daemon/openscap-daemon_0.1.10.bb                | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
> index ca6e030..a775021 100644
> --- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
> +++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
> @@ -17,4 +17,7 @@ inherit setuptools3
>  
>  S = "${WORKDIR}/git"
>  
> -RDEPENDS_${PN} = "python"
> +RDEPENDS_${PN} = "openscap scap-security-guide \
> +                  python3-core python3-dbus \
> +                  python3-pygobject \
> +                 "
>
> 


--------------71CC8FA86D46090FDD8FB11A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/9/20 5:45 AM, Yi Zhao wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200309124516.25548-1-yi.zhao@windriver.com">
      <pre class="moz-quote-pre" wrap="">Add missing runtime dependencies otherwise /usr/bin/oscapd can not
startup.

Signed-off-by: Yi Zhao <a class="moz-txt-link-rfc2396E" href="mailto:yi.zhao@windriver.com">&lt;yi.zhao@windriver.com&gt;</a></pre>
    </blockquote>
    merged.<br>
    <br>
    thanks,<br>
    Armin<br>
    <blockquote type="cite"
      cite="mid:20200309124516.25548-1-yi.zhao@windriver.com">
      <pre class="moz-quote-pre" wrap="">
---
 .../openscap-daemon/openscap-daemon_0.1.10.bb                | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
index ca6e030..a775021 100644
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
@@ -17,4 +17,7 @@ inherit setuptools3
 
 S = "${WORKDIR}/git"
 
-RDEPENDS_${PN} = "python"
+RDEPENDS_${PN} = "openscap scap-security-guide \
+                  python3-core python3-dbus \
+                  python3-pygobject \
+                 "
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------71CC8FA86D46090FDD8FB11A--
