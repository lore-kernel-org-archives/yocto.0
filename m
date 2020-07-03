Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
 by mx.groups.io with SMTP id smtpd.web10.577.1593735257611318335
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 17:14:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XpCQ7x8e;
 spf=pass (domain: gmail.com, ip: 209.85.216.66, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f66.google.com with SMTP id u8so12813441pje.4
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 17:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=1AaKNfqKfg8uPtKrfgQe3AuotxzJP4eJCg+n0FjVtGg=;
        b=XpCQ7x8e9tpvFvK9H+Vx3/+yWK3gUy57qXNCCJAazMG5Trk7KSGk17vXpyLA5TMU9h
         khf9jC+lg0mEvSfr3MSRkFtREs0uKljBan21UK6QB7TMOq7tuMK2EPby4uj8tcfiqba1
         NDneEA7vuttDXXJZgyQb2EPndBETWIzrjlBBMaoV0sG+dWS55BySBzlqm/HA/0pxE/7J
         GV+jVSg0r47r6/Q24lcQ60Eu6mFiHcjWdDRO844ySVMtYR234AUc2EF1XZnyqOiR+iVO
         KQzho4yVSHcVVHGztF1iI26mED7N5kx8O37xfVc9diJ2M5bKhcGcA0GUdn6h6JiUD4nv
         q+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=1AaKNfqKfg8uPtKrfgQe3AuotxzJP4eJCg+n0FjVtGg=;
        b=iNbgiwPnJqAe8drHO7vhpBLD2EIkeW2Y7LvaNRrTEpaANgpQ3rXIqO6in/EYDY70yH
         yoH9VCiL6iF7zKRpHVOqwIfy1LqUCCYMLme+t5qX+8DjGWfus28Zb6cgeDt2tluENQdt
         +UBJ2AJTQtnaqiyK6UfwHo1WPC+btAcGf5umovLc4N2NKGQyXzOp6q85tygbkK+L0yhM
         SrjHrmFRW9z65U2fk3EcSsefF9ss37drrQjBQAN/v/6lOKPvPLMau5moYnd+ntshPSZz
         wkPQRQeFx3eOlRrjEjOtB1Agjy7IYzv3RbCrVgxcioPKvJrRNM/kuNr06ij1BfuL5udP
         +PsQ==
X-Gm-Message-State: AOAM531e5T8/HqwcnOk90OYh+jOrdk+ynTGRjKrDUmB+HVU6M5idc1y9
	MU7I1i0NS5cIJNxwok2vT2I=
X-Google-Smtp-Source: ABdhPJwr3jKwOjy03m+ZQJ05DQy7s/gx2eS+wgJ8XxOd+waqXiY7qe3HRiQHvYPrkOFWhSPdW0j9qg==
X-Received: by 2002:a17:902:10e:: with SMTP id 14mr28697779plb.12.1593735257141;
        Thu, 02 Jul 2020 17:14:17 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0::afc? ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id 137sm9824899pgg.72.2020.07.02.17.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 17:14:16 -0700 (PDT)
Subject: Re: [yocto] [meta-security][master|dunfell][PATCH 1/2] apparmor: pull in coreutils/findutils only when not using systemd as init manager
To: Jeremy Puhlman <jpuhlman@mvista.com>, yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Armin Kuster <akuster808@gmail.com>
References: <20200703000043.9774-1-jpuhlman@mvista.com>
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
Message-ID: <e47106a4-ca73-8c91-2081-f204bb348d9a@gmail.com>
Date: Thu, 2 Jul 2020 17:14:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200703000043.9774-1-jpuhlman@mvista.com>
Content-Type: multipart/alternative;
 boundary="------------4C1BD5E4AA65A0236112274D"
Content-Language: en-US

--------------4C1BD5E4AA65A0236112274D
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 7/2/20 5:00 PM, Jeremy Puhlman wrote:
> From: Alexander Kanavin <alex.kanavin@gmail.com>
>
> The utilities from those packages (xargs, comm) are only used in sysvinit
> scripts, and so there is no need to pull them in when systemd is in use.
> Both are gpl3 licensed, so this is beneficial for builds where gpl3 is not
> allowed.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>

If I am not mistaken, this is in both master and dunfell.

http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=3018714159686e0ab2e4e5e6323a76b92aedc4ca
http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?h=dunfell&id=217fadb03da925757b236cb91ba9807e3b2bbd6e

- armin
> ---
>  recipes-mac/AppArmor/apparmor_2.13.4.bb | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
> index d6f61b3..552cac7 100644
> --- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
> +++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
> @@ -191,7 +191,8 @@ PACKAGES += "mod-${PN}"
>  FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
>  FILES_mod-${PN} = "${libdir}/apache2/modules/*"
>  
> -RDEPENDS_${PN} +=  "coreutils findutils ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
> +# Add coreutils and findutils only if sysvinit scripts are in use
> +RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
>  RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
>  RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
>  
>
> 


--------------4C1BD5E4AA65A0236112274D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/2/20 5:00 PM, Jeremy Puhlman
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200703000043.9774-1-jpuhlman@mvista.com">
      <pre class="moz-quote-pre" wrap="">From: Alexander Kanavin <a class="moz-txt-link-rfc2396E" href="mailto:alex.kanavin@gmail.com">&lt;alex.kanavin@gmail.com&gt;</a>

The utilities from those packages (xargs, comm) are only used in sysvinit
scripts, and so there is no need to pull them in when systemd is in use.
Both are gpl3 licensed, so this is beneficial for builds where gpl3 is not
allowed.

Signed-off-by: Alexander Kanavin <a class="moz-txt-link-rfc2396E" href="mailto:alex.kanavin@gmail.com">&lt;alex.kanavin@gmail.com&gt;</a>
Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a></pre>
    </blockquote>
    <br>
    If I am not mistaken, this is in both master and dunfell.<br>
    <br>
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=3018714159686e0ab2e4e5e6323a76b92aedc4ca">http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=3018714159686e0ab2e4e5e6323a76b92aedc4ca</a><br>
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?h=dunfell&amp;id=217fadb03da925757b236cb91ba9807e3b2bbd6e">http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?h=dunfell&amp;id=217fadb03da925757b236cb91ba9807e3b2bbd6e</a><br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:20200703000043.9774-1-jpuhlman@mvista.com">
      <pre class="moz-quote-pre" wrap="">
---
 recipes-mac/AppArmor/apparmor_2.13.4.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
index d6f61b3..552cac7 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -191,7 +191,8 @@ PACKAGES += "mod-${PN}"
 FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
-RDEPENDS_${PN} +=  "coreutils findutils ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
+# Add coreutils and findutils only if sysvinit scripts are in use
+RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('PACKAGECONFIG','perl','','perl',d)}">"${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"</a>
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
 
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------4C1BD5E4AA65A0236112274D--
