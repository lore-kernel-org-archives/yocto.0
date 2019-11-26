Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7369.1574743794295345143
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 20:49:54 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=qWIONEY+;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 140.211.169.56, mailfrom: akuster@mvista.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCEE3E00FCC; Mon, 25 Nov 2019 20:49:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF42E00E4C
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 20:49:49 -0800 (PST)
Received: by mail-pg1-f195.google.com with SMTP id k1so8307740pgg.12
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 20:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=/EF5T9kRcFPboVPWvEEYsvxqbUcRiFgNkVQrbC9BoAQ=;
        b=qWIONEY+hQ1FPBbMDH2bFAjvYJx8kc0mT4FclbyFYJCkMSMBonKCfsz+8DcA5hnh5U
         Od2avPOs5IWuOoHTidLMikpXG7X8pIawLYr7sOvh/PNA7afLxfv4hTjBjiQiVGKdCQJ9
         0Ops8i8xZTOaoLh5aDEivGmqrpolF98+jaWa80QjIpMzXrnGYpcmEIDYOhpNW8BUOG1H
         LEhFMiGHkFawnE1ZEFsLx9FnpNqXy9dXGl+D9W4V93zNEu3ZsCEaw5VCCOdIRPOOBsUR
         6zRxpcunn6+5jfYKWQMG6i5XnQh32H7CZFzLVx7VfmpnZVCQ7zWly5WRDazKMLRBu9s2
         SIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=/EF5T9kRcFPboVPWvEEYsvxqbUcRiFgNkVQrbC9BoAQ=;
        b=YA4wgVOh1l/rD0ecIJOdP0RsmgnNWEgAp/dAgMmf6gSfr8LrF33QUVeNOmvEcZFYWM
         snmZjSUptqMq9DMlVOOHnCfn1bCoPcsp1yYEWwCkm1qnWT/5lqhIEEZ75gW5zUIwJ69G
         o6c03Zy10bRyczDoL5dIG7Fhqw+710ZoFvfO1JntsOemfIfbrnR39wqSyoi1/cjCv0BO
         96Z2YEER4RkSDUVLztFEh6+RBew8SOcRxB+857TYqMoJHdT6HCTHctBAbgVKb/+NmkGt
         y59KjmrmZcxEoXgp+X727IXPDLYpYa7Z1cN1Qeijzt04AV5PhKUTxkmIrCpmjZIAPGnG
         OmRg==
X-Gm-Message-State: APjAAAWSFRFPqh1+DwgW0GYA9n7DTK4fB6LykyfN58ZSSGp0vNjG4QXt
	Ybf13YgH0/HlKNWT9DA7DS052w==
X-Google-Smtp-Source: APXvYqxmdLvPl4hiFrC2yqvMEhs39JYMH9DI552AVk5Do1M9XAHD0899Lf/Rbv84smeXfyeUQSGATA==
X-Received: by 2002:a63:f40e:: with SMTP id g14mr19373299pgi.132.1574743789164;
        Mon, 25 Nov 2019 20:49:49 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:4070:35fc:4101:33f5? ([2601:202:4180:a5c0:4070:35fc:4101:33f5])
        by smtp.gmail.com with ESMTPSA id 76sm10273154pfw.128.2019.11.25.20.49.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Nov 2019 20:49:48 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH 1/3] checksecurity: use more portable find args
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Christopher Larson <kergoth@gmail.com>, yocto@yoctoproject.org,
 Christopher Larson <chris_larson@mentor.com>
References: <20191125164112.7063-1-kergoth@gmail.com>
From: "Armin Kuster" <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 mQINBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABtCFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT6JAj0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
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
 oRoyDxC5Ag0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAGJAiUEGAEI
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
Message-ID: <5e4cfad6-87b7-de26-6040-66018d7bc135@mvista.com>
Date: Mon, 25 Nov 2019 20:49:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125164112.7063-1-kergoth@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------C05456A73212CA8B4E1CA990"
Content-Language: en-US

--------------C05456A73212CA8B4E1CA990
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Micheal,

On 11/25/19 8:41 AM, Christopher Larson wrote:

These patches did not land in patchwork. maybe something to do with the
mailing list change??

They are in the yocto archives.

- armin
> From: Christopher Larson <chris_larson@mentor.com>
>
> Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> ---
>  .../checksecurity/checksecurity_2.0.15.bb          |  3 ++-
>  .../check-setuid-use-more-portable-find-args.patch | 23 ++++++++++++++=
++++++++
>  2 files changed, 25 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-security/checksecurity/files/check-setuid-u=
se-more-portable-find-args.patch
>
> diff --git a/recipes-security/checksecurity/checksecurity_2.0.15.bb b/r=
ecipes-security/checksecurity/checksecurity_2.0.15.bb
> index a9616911..030bf251 100644
> --- a/recipes-security/checksecurity/checksecurity_2.0.15.bb
> +++ b/recipes-security/checksecurity/checksecurity_2.0.15.bb
> @@ -5,7 +5,8 @@ LICENSE =3D "GPL-2.0"
>  LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=3D801f8=
0980d171dd6425610833a22dbe6"
> =20
>  SRC_URI =3D "http://ftp.de.debian.org/debian/pool/main/c/checksecurity=
/checksecurity_${PV}.tar.gz \
> -           file://setuid-log-folder.patch"
> +           file://setuid-log-folder.patch \
> +           file://check-setuid-use-more-portable-find-args.patch"
> =20
>  SRC_URI[md5sum] =3D "a30161c3e24d3be710b2fd13fcd1f32f"
>  SRC_URI[sha256sum] =3D "67abe3d6391c96146e96f376d3fd6eb7a9418b0f7fe205=
b465219889791dba32"
> diff --git a/recipes-security/checksecurity/files/check-setuid-use-more=
-portable-find-args.patch b/recipes-security/checksecurity/files/check-se=
tuid-use-more-portable-find-args.patch
> new file mode 100644
> index 00000000..f1fe8edc
> --- /dev/null
> +++ b/recipes-security/checksecurity/files/check-setuid-use-more-portab=
le-find-args.patch
> @@ -0,0 +1,23 @@
> +From f3073b8e06a607677d47ad9a19533b2e33408a4f Mon Sep 17 00:00:00 2001=

> +From: Christopher Larson <chris_larson@mentor.com>
> +Date: Wed, 5 Sep 2018 23:21:43 +0500
> +Subject: [PATCH] check-setuid: use more portable find args
> +
> +Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> +---
> + plugins/check-setuid | 6 +++---
> + 1 file changed, 3 insertions(+), 3 deletions(-)
> +
> +Index: checksecurity-2.0.15/plugins/check-setuid
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- checksecurity-2.0.15.orig/plugins/check-setuid	2018-09-06 00:49:23=
=2E930934294 +0500
> ++++ checksecurity-2.0.15/plugins/check-setuid	2018-09-06 00:49:49.6949=
34757 +0500
> +@@ -99,7 +99,7 @@
> + ionice -t -c3 \
> + find `mount | grep -vE "$CHECKSECURITY_FILTER" | cut -d ' ' -f 3` \
> + 	-xdev $PATHCHK \
> +-	\( -type f -perm +06000 -o \( \( -type b -o -type c \) \
> ++	\( -type f \( -perm -4000 -o -perm -2000 \) -o \( \( -type b -o -typ=
e c \) \
> + 	$DEVCHK \) \) \
> +         -ignore_readdir_race  \
> + 	-printf "%8i %5m %3n %-10u %-10g %9s %t %h/%f\n" |
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47410): https://lists.yoctoproject.org/g/yocto/mess=
age/47410
> Mute This Topic: https://lists.yoctoproject.org/mt/61943622/1024635
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvi=
sta.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--------------C05456A73212CA8B4E1CA990
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    Micheal,<br>
    <br>
    On 11/25/19 8:41 AM, Christopher Larson wrote:<br>
    <div class=3D"moz-cite-prefix"><br>
      These patches did not land in patchwork. maybe something to do
      with the mailing list change??<br>
      <br>
      They are in the yocto archives.<br>
      <br>
      - armin<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20191125164112.7063-1-kergoth@gmail.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">From: Christopher Larson <a =
class=3D"moz-txt-link-rfc2396E" href=3D"mailto:chris_larson@mentor.com">&=
lt;chris_larson@mentor.com&gt;</a>

Signed-off-by: Christopher Larson <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:chris_larson@mentor.com">&lt;chris_larson@mentor.com&gt;</a>
---
 .../checksecurity/checksecurity_2.0.15.bb          |  3 ++-
 .../check-setuid-use-more-portable-find-args.patch | 23 ++++++++++++++++=
++++++
 2 files changed, 25 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/checksecurity/files/check-setuid-use=
-more-portable-find-args.patch

diff --git a/recipes-security/checksecurity/checksecurity_2.0.15.bb b/rec=
ipes-security/checksecurity/checksecurity_2.0.15.bb
index a9616911..030bf251 100644
--- a/recipes-security/checksecurity/checksecurity_2.0.15.bb
+++ b/recipes-security/checksecurity/checksecurity_2.0.15.bb
@@ -5,7 +5,8 @@ LICENSE =3D "GPL-2.0"
 LIC_FILES_CHKSUM =3D <a class=3D"moz-txt-link-rfc2396E" href=3D"file://$=
{COMMON_LICENSE_DIR}/GPL-2.0;md5=3D801f80980d171dd6425610833a22dbe6">"fil=
e://${COMMON_LICENSE_DIR}/GPL-2.0;md5=3D801f80980d171dd6425610833a22dbe6"=
</a>
=20
 SRC_URI =3D <a class=3D"moz-txt-link-rfc2396E" href=3D"http://ftp.de.deb=
ian.org/debian/pool/main/c/checksecurity/checksecurity_${PV}.tar.gz\-file=
://setuid-log-folder.patch">"http://ftp.de.debian.org/debian/pool/main/c/=
checksecurity/checksecurity_${PV}.tar.gz \
-           file://setuid-log-folder.patch"</a>
+           <a class=3D"moz-txt-link-freetext" href=3D"file://setuid-log-=
folder.patch">file://setuid-log-folder.patch</a> \
+           <a class=3D"moz-txt-link-freetext" href=3D"file://check-setui=
d-use-more-portable-find-args.patch">file://check-setuid-use-more-portabl=
e-find-args.patch</a>"
=20
 SRC_URI[md5sum] =3D "a30161c3e24d3be710b2fd13fcd1f32f"
 SRC_URI[sha256sum] =3D "67abe3d6391c96146e96f376d3fd6eb7a9418b0f7fe205b4=
65219889791dba32"
diff --git a/recipes-security/checksecurity/files/check-setuid-use-more-p=
ortable-find-args.patch b/recipes-security/checksecurity/files/check-setu=
id-use-more-portable-find-args.patch
new file mode 100644
index 00000000..f1fe8edc
--- /dev/null
+++ b/recipes-security/checksecurity/files/check-setuid-use-more-portable=
-find-args.patch
@@ -0,0 +1,23 @@
+From f3073b8e06a607677d47ad9a19533b2e33408a4f Mon Sep 17 00:00:00 2001
+From: Christopher Larson <a class=3D"moz-txt-link-rfc2396E" href=3D"mail=
to:chris_larson@mentor.com">&lt;chris_larson@mentor.com&gt;</a>
+Date: Wed, 5 Sep 2018 23:21:43 +0500
+Subject: [PATCH] check-setuid: use more portable find args
+
+Signed-off-by: Christopher Larson <a class=3D"moz-txt-link-rfc2396E" hre=
f=3D"mailto:chris_larson@mentor.com">&lt;chris_larson@mentor.com&gt;</a>
+---
+ plugins/check-setuid | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+Index: checksecurity-2.0.15/plugins/check-setuid
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+--- checksecurity-2.0.15.orig/plugins/check-setuid	2018-09-06 00:49:23.9=
30934294 +0500
++++ checksecurity-2.0.15/plugins/check-setuid	2018-09-06 00:49:49.694934=
757 +0500
+@@ -99,7 +99,7 @@
+ ionice -t -c3 \
+ find `mount | grep -vE "$CHECKSECURITY_FILTER" | cut -d ' ' -f 3` \
+ 	-xdev $PATHCHK \
+-	\( -type f -perm +06000 -o \( \( -type b -o -type c \) \
++	\( -type f \( -perm -4000 -o -perm -2000 \) -o \( \( -type b -o -type =
c \) \
+ 	$DEVCHK \) \) \
+         -ignore_readdir_race  \
+ 	-printf "%8i %5m %3n %-10u %-10g %9s %t %h/%f\n" |
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47410): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47410">https://lists.yoctopr=
oject.org/g/yocto/message/47410</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/61943622/1024635">https://lists.yoctoproject.org/mt/=
61943622/1024635</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a>  [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:akuster@mvist=
a.com">akuster@mvista.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------C05456A73212CA8B4E1CA990--
