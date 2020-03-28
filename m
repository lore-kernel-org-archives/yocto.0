Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.1569.1585353903336745974
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 17:05:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fnz71yEx;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id v13so4548152pjb.0
        for <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2020 17:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=j0KuDet6SlY9rIhDuS4nYX5vysCsuCM6KNQ+CEy7o7A=;
        b=Fnz71yExV0AbKFsge72ci0BeM4is6PQhm7TYxMjaKCX2sMO4ZOkhSnPBZ0GDGMHFUt
         OzHxqC6Q+MHUnOdfo+V/Goap8iQDZdjn2JgJ23tAbtAsEZbSaCEX7O1d1EZno+VylhCz
         h6T4q71JgptqBSuSRWI/ZZSeu20dm3rwORDMnX4boSc0RSqykf68lIrcOYo78apMSQ17
         ukaBsq+MsKKkt1xmDjn72aEc1+xQNR+KBNyudxFUYLaVg7oT4WKhZ/JmI+lVqxWKOi1/
         sb7tKpCKyalVZzdBpxEInY71S30l4/wLK9UzYP9Xa8ebrbLYbSIUa7qnKC2swg2HTcY0
         m+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=j0KuDet6SlY9rIhDuS4nYX5vysCsuCM6KNQ+CEy7o7A=;
        b=FpHeu3INqrWwZ/b9gK0VfIp2NY05HpaOTztdu8GVQPt0mZF3TRTn3MnM3W0QBHrYuh
         fNT7m35l4zH6Crm6IYyR65vixCWEXl0zysdgv8HE1KtUFm1kD+/4geM09WZnA/6Iz70D
         3703h75ukb3lulN2J4DLp4SfZr51hF7+nagxexejv708jsHzn58CXNqJ3gGzKyMg029s
         0qAaDsnIqwYcIdko82QORzjO8h/3uckPDg6DTJ+7Fmk3EvIayLL31Abb5DjgRBKDhQeT
         weRIXM+8+mw/Cd+C2NDznIXnyKv/tMw1/wMxBKcYsMflq0fiQ4Gnp5TMX5vY/BDN89PD
         lCOA==
X-Gm-Message-State: ANhLgQ2JrjV/q6FoafUW4uMflv6QJcBuNT/St7li6IHPMfJnDP8WUisB
	5USwQBfZJ0Pf0KwZiYcZ88ymV9mPjxY=
X-Google-Smtp-Source: ADFU+vtAzMpczxvf4g2VqxeE4vXUog0WjzJ+tdKKZIM0xVTNh5Nnu+4Sn2Ncf6vNUHMuZqz4zkfmvg==
X-Received: by 2002:a17:902:aa4c:: with SMTP id c12mr1618577plr.168.1585353902520;
        Fri, 27 Mar 2020 17:05:02 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:84d1:5d33:be2f:3f17? ([2601:202:4180:a5c0:84d1:5d33:be2f:3f17])
        by smtp.gmail.com with ESMTPSA id i197sm4994376pfe.137.2020.03.27.17.05.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 17:05:02 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 1/6] sssd: Sort PACKAGECONFIG entries
To: =?UTF-8?Q?Jonatan_P=c3=a5lsson?= <jonatan.p@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20200325114319.2115155-1-jonatan.p@gmail.com>
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
Message-ID: <d40a8d01-72b0-d64a-77d9-1b42f70444de@gmail.com>
Date: Fri, 27 Mar 2020 17:05:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325114319.2115155-1-jonatan.p@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------FD97C5A0F15244782A39002A"
Content-Language: en-US

--------------FD97C5A0F15244782A39002A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 3/25/20 4:43 AM, Jonatan Pålsson wrote:
> Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>

series merged.

thanks
Armin
> ---
>  recipes-security/sssd/sssd_1.16.4.bb | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
> index c5ddd5c..b0b7038 100644
> --- a/recipes-security/sssd/sssd_1.16.4.bb
> +++ b/recipes-security/sssd/sssd_1.16.4.bb
> @@ -37,18 +37,18 @@ PACKAGECONFIG ?="nss nscd"
>  PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
>  PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
>  
> -PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
> -PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
> -PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
> -PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
> -PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
> -PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
>  PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
> -PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
> +PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
> +PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
> +PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
>  PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
> +PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
> +PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
> +PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
> +PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
> +PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
> +PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
>  PACKAGECONFIG[systemd] = "--with-initscript=systemd,--with-initscript=sysv"
> -PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
> -PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
>  
>  EXTRA_OECONF += " \
>      --disable-cifs-idmap-plugin \


>
> 


--------------FD97C5A0F15244782A39002A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/25/20 4:43 AM, Jonatan Pålsson
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200325114319.2115155-1-jonatan.p@gmail.com">
      <pre class="moz-quote-pre" wrap="">Signed-off-by: Jonatan Pålsson <a class="moz-txt-link-rfc2396E" href="mailto:jonatan.p@gmail.com">&lt;jonatan.p@gmail.com&gt;</a></pre>
    </blockquote>
    <br>
    series merged.<br>
    <br>
    thanks<br>
    Armin<br>
    <blockquote type="cite"
      cite="mid:20200325114319.2115155-1-jonatan.p@gmail.com">
      <pre class="moz-quote-pre" wrap="">
---
 recipes-security/sssd/sssd_1.16.4.bb | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index c5ddd5c..b0b7038 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -37,18 +37,18 @@ PACKAGECONFIG ?="nss nscd"
 PACKAGECONFIG += <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('DISTRO_FEATURES','selinux','selinux','',d)}">"${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"</a>
 PACKAGECONFIG += <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd','',d)}">"${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"</a>
 
-PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
-PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
-PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
-PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
-PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
-PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
 PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
-PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
+PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
+PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
+PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
+PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
+PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
+PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
+PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
+PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
+PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
 PACKAGECONFIG[systemd] = "--with-initscript=systemd,--with-initscript=sysv"
-PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
-PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
 
 EXTRA_OECONF += " \
     --disable-cifs-idmap-plugin \</pre>
    </blockquote>
    <br>
    <br>
    <blockquote type="cite"
      cite="mid:20200325114319.2115155-1-jonatan.p@gmail.com">
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

--------------FD97C5A0F15244782A39002A--
