Return-Path: <akuster@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FE6EB64DA
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 14:10:07 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.12397.1687443004547478196
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 07:10:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@mvista.com header.s=google header.b=DifYA5pR;
 spf=pass (domain: mvista.com, ip: 209.85.219.176, mailfrom: akuster@mvista.com)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-be3e2d172cbso5699778276.3
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 07:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1687443003; x=1690035003;
        h=in-reply-to:cc:from:references:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+cFZyNBsZoPTGb6Dt+HhHi7CqqGtSjsI00NJK3BpHQw=;
        b=DifYA5pRTrqdYnOFwANHwqWTAvoL2APKMO+dk0W580j0vD1s6EAstScKPUY39cI4Ex
         e1L2XwpIm7eTUnQ1OdQPcPhOUSKb+wdtdkS+dwDMguyT+J2HbJBCMZz2Wd9UCMLeaJWN
         PO3iG8ZRb6Bu8/mVbdgHaYYn2xXKcV9PdPhDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687443003; x=1690035003;
        h=in-reply-to:cc:from:references:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cFZyNBsZoPTGb6Dt+HhHi7CqqGtSjsI00NJK3BpHQw=;
        b=kIJlXogkhxrWU5ffIhzhpmVpCPKEVYh8ubXI3K990E+rl4GGO8ZmYArz7ktovIUUHW
         zdhQlrydE4zDakiEaE6rAB9w9C3eOdBx0q49WGZZCLpNHZU1mfYMk6Ps7u1BgART42e2
         M78RfOgRwWmSNje/EbjkKlzZqznW8+x+nujTREdTWCEoLmvqsxC5jyojw/BLjoV2ehk1
         74RqYyl6qCaQyYOBRtsEqdTGke3gT3JbB4zzGBfz5Hxp084v2x5M7ByKbfRyFwQlY1WO
         onn+I19deqN9+5WrfCmRKYG1Nro6tIWUdUcc2YkTj6CDHk/qgL1fjZkRuVDQMBXUY0Xc
         S55Q==
X-Gm-Message-State: AC+VfDxb9D4sxZbqjH0+w5zIbSZgBRnrEkQZKfaOE4uxWwjU7ksOBv/h
	ClTzUlhq4HGGBsmJA9XlFL9/e/znCMnRrsWIzqleOA==
X-Google-Smtp-Source: ACHHUZ6aMcpMFgwvgilywzrlOGWjeu/Sk/+xkbnbHCDKzvpOD5ulCWxmqUwI5egjJhuYsEqx4CGGaA==
X-Received: by 2002:a25:dc4d:0:b0:bc7:de19:4dd1 with SMTP id y74-20020a25dc4d000000b00bc7de194dd1mr9606854ybe.45.1687443003626;
        Thu, 22 Jun 2023 07:10:03 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:80e:b8b0:6c85:7e? ([2600:1700:9190:ba10:80e:b8b0:6c85:7e])
        by smtp.gmail.com with ESMTPSA id v200-20020a252fd1000000b00be4f34d419asm1552219ybv.37.2023.06.22.07.10.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 07:10:02 -0700 (PDT)
Message-ID: <1ad13391-688b-e8e0-d810-77a9685c3c3b@mvista.com>
Date: Thu, 22 Jun 2023 10:10:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-selinux][dunfell][PATCH] audit: Add https protocol
 for clonning repository
To: yocto@lists.yoctoproject.org, Joe MacDonald <joe_macdonald@mentor.com>,
 Yi Zhao <yi.zhao@windriver.com>
References: <17664FCB3AD7151E.27841@lists.yoctoproject.org>
 <CAKzga+ya6z9Uerohpqs8nQoRROoRt5gkN7TuxfZwDBKK35LTxQ@mail.gmail.com>
From: akuster <akuster@mvista.com>
Cc: Shubham Kulkarni <skulkarni@mvista.com>
In-Reply-To: <CAKzga+ya6z9Uerohpqs8nQoRROoRt5gkN7TuxfZwDBKK35LTxQ@mail.gmail.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000d2f61005feb87045"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 14:10:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60398

--000000000000d2f61005feb87045
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Selinux Maintainers,

It is unclear if the Maintainers are up to supporting the Dunfell branch 
for the duration of the Poky LTS?  I don't recall if there was any 
statement regarding this. I don't want to assume anything as I 
understand the commitment needed.

BR,
Armin

On 6/21/23 3:18 AM, Shubham Kulkarni wrote:
> Hi Team,
>
> Is there any update for this patch? Can you pIs let me know, if 
> there's any issue with the patch.
>
> Thanks,
> Shubham
>
> On Wed, Jun 7, 2023 at 12:57 PM Shubham Kulkarni via 
> lists.yoctoproject.org <http://lists.yoctoproject.org> 
> <skulkarni=mvista.com@lists.yoctoproject.org> wrote:
>
>     From: Shubham Kulkarni <skulkarni@mvista.com>
>
>      audit repository clone failing with git protocol as
>     github.com <http://github.com> requires the https protocol to be used
>
>     Signed-off-by: Shubham Kulkarni <skulkarni@mvista.com>
>     ---
>      recipes-security/audit/audit_2.8.5.bb <http://audit_2.8.5.bb> | 2 +-
>      1 file changed, 1 insertion(+), 1 deletion(-)
>
>     diff --git a/recipes-security/audit/audit_2.8.5.bb
>     <http://audit_2.8.5.bb> b/recipes-security/audit/audit_2.8.5.bb
>     <http://audit_2.8.5.bb>
>     index af36ed5..e372f66 100644
>     --- a/recipes-security/audit/audit_2.8.5.bb <http://audit_2.8.5.bb>
>     +++ b/recipes-security/audit/audit_2.8.5.bb <http://audit_2.8.5.bb>
>     @@ -7,7 +7,7 @@ SECTION = "base"
>      LICENSE = "GPLv2+ & LGPLv2+"
>      LIC_FILES_CHKSUM =
>     "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
>
>     -SRC_URI =
>     "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintenance
>     <http://github.com/linux-audit/$%7BBPN%7D-userspace.git;branch=2.8_maintenance>
>     \
>     +SRC_URI =
>     "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintenance;protocol=https
>     <http://github.com/linux-audit/$%7BBPN%7D-userspace.git;branch=2.8_maintenance;protocol=https>
>     \
>     file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
>                 file://Fixed-swig-host-contamination-issue.patch \
>                 file://0001-lib-i386_table.h-add-new-syscall.patch \
>     -- 
>     2.24.4
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60369): https://lists.yoctoproject.org/g/yocto/message/60369
> Mute This Topic: https://lists.yoctoproject.org/mt/99380030/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


--000000000000d2f61005feb87045
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIR4QYJKoZIhvcNAQcCoIIR0jCCEc4CAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg8qMIIGTjCCBTagAwIBAgIQBK55YGZmkBq5xX+mbFvczTANBgkqhkiG9w0BAQsFADBlMQswCQYD
VQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29t
MSQwIgYDVQQDExtEaWdpQ2VydCBBc3N1cmVkIElEIFJvb3QgQ0EwHhcNMTMxMTA1MTIwMDAwWhcN
MjgxMTA1MTIwMDAwWjBlMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYD
VQQLExB3d3cuZGlnaWNlcnQuY29tMSQwIgYDVQQDExtEaWdpQ2VydCBTSEEyIEFzc3VyZWQgSUQg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDc+BEjP2q178AneRstBYeiEEMx3w7U
FRtPd6Qizj6McPC+B47dJyq8AR22LArK3WlYH0HtagUf2mN4WR4iLCv4un7JNTtW8R98Qn4lsCMZ
xkU41z1E+SB8YK4csFoYBL6PO/ep8JSapgxjSbZBF1NAMr1P5lB6UB8lRejxia/N/17/UPPwFxH/
vcWJ9b1iudj7jkUEhW2ZzcVITf0mqwI2Reo2119q4hqCQQrc6dn1kReOxiGtODwT5h5/ZpzVTdlG
2vbPUqd9OyTDtMFRNcab69TvfuR7A+FEvXoLN+BPy4KKDXEY5KbgiSwb87JzPMGwkp4Yfb2rfcV9
CKEswp9zAgMBAAGjggL4MIIC9DASBgNVHRMBAf8ECDAGAQH/AgEAMA4GA1UdDwEB/wQEAwIBhjA0
BggrBgEFBQcBAQQoMCYwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTCBgQYD
VR0fBHoweDA6oDigNoY0aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElE
Um9vdENBLmNybDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJl
ZElEUm9vdENBLmNybDAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwggGzBgNVHSAEggGq
MIIBpjCCAaIGCmCGSAGG/WwAAgQwggGSMCgGCCsGAQUFBwIBFhxodHRwczovL3d3dy5kaWdpY2Vy
dC5jb20vQ1BTMIIBZAYIKwYBBQUHAgIwggFWHoIBUgBBAG4AeQAgAHUAcwBlACAAbwBmACAAdABo
AGkAcwAgAEMAZQByAHQAaQBmAGkAYwBhAHQAZQAgAGMAbwBuAHMAdABpAHQAdQB0AGUAcwAgAGEA
YwBjAGUAcAB0AGEAbgBjAGUAIABvAGYAIAB0AGgAZQAgAEQAaQBnAGkAQwBlAHIAdAAgAEMAUAAv
AEMAUABTACAAYQBuAGQAIAB0AGgAZQAgAFIAZQBsAHkAaQBuAGcAIABQAGEAcgB0AHkAIABBAGcA
cgBlAGUAbQBlAG4AdAAgAHcAaABpAGMAaAAgAGwAaQBtAGkAdAAgAGwAaQBhAGIAaQBsAGkAdAB5
ACAAYQBuAGQAIABhAHIAZQAgAGkAbgBjAG8AcgBwAG8AcgBhAHQAZQBkACAAaABlAHIAZQBpAG4A
IABiAHkAIAByAGUAZgBlAHIAZQBuAGMAZQAuMB0GA1UdDgQWBBTnAiOAAE/Y17yUC9k/dDlJMjyK
eTAfBgNVHSMEGDAWgBRF66Kv9JLLgjEtUYunpyGd823IDzANBgkqhkiG9w0BAQsFAAOCAQEATtSJ
J7n9HYd3fg8oBZDxCi/JOz69k5yQxq/6kVGHMlRr6MrBcVFcmY61+uBiGZmmB5p8Eyfb5QKihBLZ
FfYKRFfENI9tcx861qABPd7jguRFa7LrJf2AXh05kL5bQvbOkWDj+aBWDEgQzjNoe82Tq/Bqy09Y
D7l7XRsEgZ6nIuJXSSfukpMIvmkIUwI6Ll3IGfRQgE4C2bBdkbSTh/mWloFVQI5m7YLYuyhf7Uxh
7QZYKBlTEUS8RyApsgRs2IlUmTt122d4LB6SeMZVPVgSETJuvUMMTTTbe8ZC2+y+q5thTAaS447f
ISpQVwTAYKI11SSeZjcJSc/V+GWz4OJuwjCCA7cwggKfoAMCAQICEAzn4OUX2Eb+j+Vg/BvwMDkw
DQYJKoZIhvcNAQEFBQAwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcG
A1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQgQXNzdXJlZCBJRCBSb290
IENBMB4XDTA2MTExMDAwMDAwMFoXDTMxMTExMDAwMDAwMFowZTELMAkGA1UEBhMCVVMxFTATBgNV
BAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGln
aUNlcnQgQXNzdXJlZCBJRCBSb290IENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
rQ4VzuRDgFyxh/O3YPlxEqWu3CaUiKr0zvUgOShYYAz4gNqpFZUyYTy1sSiEiorcnwoMgxd6j5Cs
iud5U1wxhCr2D5gyNnbM3t08qKLvavsh8lJh358g1x/isdn+GGTSEltf+VgYNbxHzaE2+Wt/1LA4
PsEbw4wz2dgvGP4oD7Ong9bDbkTAYTWWFv5ZnIt2bdfxoksNK/8LctqeYNCOkDXGeFWHIKHP5W0K
yEl8MZgzbCLph9AyWqK6E4IR7TkXnZk6cqHm+qTZ1Rcxda6FfSKuPwFGhvYoecix2uRXF8R+HA6w
tJKmVrO9spftqqfwt8WoP5UW0P+hlusIXxh3TwIDAQABo2MwYTAOBgNVHQ8BAf8EBAMCAYYwDwYD
VR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUReuir/SSy4IxLVGLp6chnfNtyA8wHwYDVR0jBBgwFoAU
Reuir/SSy4IxLVGLp6chnfNtyA8wDQYJKoZIhvcNAQEFBQADggEBAKIOvN/i7fDjcnN6ZJS/93Jm
2DLkQnVirofr8tXZ3lazn8zOFCi5DZdgXBJMWOTTPYNJRViXNWkaqEfqVsZ5qxLYZ4GE338JPJTm
uCYsIL09syiJ91//IuKXhB/pZe+H4N/BZ0mzXeuyCSrrJu14vn0/K/O3JjVtX4kBtklbnwEFm6s9
JcHMtn/C8W+GxvpkaOuBLZTrQrf6jB7dYvG+UGe3bL3z8R9rDDYHFn83fKlbbXrxEkZgg9cnBL5L
zpe+w2cqaBHfgOcMM2a/Ew0UbvN/H2MQHvqNGyVtbI+lt2EBsdKjJqEQcZ2t4sP5w5lRtysHCM4u
5lCyp/oKRS+i8PIwggUZMIIEAaADAgECAhABmeiIGxb92d1jHUeNPLJ7MA0GCSqGSIb3DQEBCwUA
MGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
Y2VydC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IFNIQTIgQXNzdXJlZCBJRCBDQTAeFw0yMTEwMjkw
MDAwMDBaFw0yMzEwMjcyMzU5NTlaMEAxGzAZBgNVBAMMEmFrdXN0ZXJAbXZpc3RhLmNvbTEhMB8G
CSqGSIb3DQEJARYSYWt1c3RlckBtdmlzdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
CgKCAQEA60Rtp117FyjzKFRYeZrx5QdhlSA7VUEQxYtnCtN656+u6Vjq/R0I4KAIMaAEOlS3Purp
DrHBMf1gqCKZHdzCkmj5L8GtBkB6yT1NoJnBTH83TgLbRFPB3WnTFmWTSnBkFyyrkoc8JKIzu/p0
CM/+pHHH9IR5lmzdraoKnHx9ZUwaNltEPZpDWo7zxqQXS+uToztNNuhYPOZhMQmGBVOzczliElcm
+DOgmn89Va8QVYqzPglbvjsYSIk2kzaKVffLxyY2p0yvWY8w7CAEYk2gLfPuZiqIdXGYmEyKH86H
27AP1uMrYQjEw1R9VY4JrpDLehuUs/RGYWyMAjfo1NDh0QIDAQABo4IB6DCCAeQwHwYDVR0jBBgw
FoAU5wIjgABP2Ne8lAvZP3Q5STI8inkwHQYDVR0OBBYEFL0akMb3LmLy7bKAAO6QDtKy8WI7MAwG
A1UdEwEB/wQCMAAwHQYDVR0RBBYwFIESYWt1c3RlckBtdmlzdGEuY29tMA4GA1UdDwEB/wQEAwIF
oDAdBgNVHSUEFjAUBggrBgEFBQcDBAYIKwYBBQUHAwIwQwYDVR0gBDwwOjA4BgpghkgBhv1sBAEB
MCowKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3LmRpZ2ljZXJ0LmNvbS9DUFMwgYUGA1UdHwR+MHww
PKA6oDiGNmh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJBc3N1cmVkSURDQS0x
LmNybDA8oDqgOIY2aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0U0hBMkFzc3VyZWRJ
RENBLTEuY3JsMHkGCCsGAQUFBwEBBG0wazAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNl
cnQuY29tMEMGCCsGAQUFBzAChjdodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRT
SEEyQXNzdXJlZElEQ0EuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQCUY9qc+vTg/KOKUB9htYLvs1km
5XF3yyLnIoMBvbmx4zatz0YddFP7UT0esHLGDEW2suAlq44A6SRd2fTUe0tyjGAxsblGwxKp0ypw
p6xjYeJAkp0nEemsYGxGSOf1HP9BIT1bFT9CHHCoX26wxtf7RF2fePncJ4wPBxFzJdecBcKgL8uN
yQnDtPyJ0DC4bVz9Z67nEFJcFTyrzbvo4sk9A8QKYANnjmCYPSEIlis8o7zERwxC/xNTgzAXzlDS
8mJM7ja9otySdENt1tyty90IOWryaSvfeHDffO0YCDvbAVCcisvjni5esAu0sDrJr+ODF4laEVBF
z4PNrDvNN2gGMYICezCCAncCAQEweTBlMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQg
SW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMSQwIgYDVQQDExtEaWdpQ2VydCBTSEEyIEFz
c3VyZWQgSUQgQ0ECEAGZ6IgbFv3Z3WMdR408snswDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcN
AQkEMSIEIJTs+06/hqj1f1adga1qIdv02DRJcV4zWcZEAUDijOpIMBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIzMDYyMjE0MTAwM1owaQYJKoZIhvcNAQkPMVwwWjAL
BglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG
9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQB81o8tw4G1
wlBG7lzBJ87JC3bfQAtuYBdIgh3BVH4yWG1/dXk4OknnHgbBG2E1xkBZjNZ20784fKTnPp6Kcj7r
JI0lEhHd53r6NIEYFu/dYVccG8E+OPH2I2YBnJgZ7mFPC5WCBtr2HAkUa0w83xXYqucsaG72qGBT
jBC5XioeKFGhV5vD40hfM0QdXJql+w8i+mxBo8sd0qf2W3rc9+7byyakiDLYdtP95ri8Q7ysAsLH
/oqfK8cT06QcMtS/3JzbLK9NDmtMTbg03gtNt6FCpi5fYEwHi9y0FG7TfgixE5btN49dU3yx8Vny
lcHF7tyHxxYqZIqEyFcUFgrGw7oz
--000000000000d2f61005feb87045--

