Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5165C4332F
	for <webhook@archiver.kernel.org>; Thu,  3 Feb 2022 09:00:42 +0000 (UTC)
Received: from mailout07.t-online.de (mailout07.t-online.de [194.25.134.83])
 by mx.groups.io with SMTP id smtpd.web12.6837.1643878841504899644
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 01:00:42 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.83,
 mailfrom: f_l_k@t-online.de)
Received: from fwd76.dcpf.telekom.de (fwd76.aul.t-online.de [10.223.144.102])
	by mailout07.t-online.de (Postfix) with SMTP id 83E9E2CF7;
	Thu,  3 Feb 2022 10:00:39 +0100 (CET)
Received: from [192.168.178.83] ([84.163.40.152]) by fwd76.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1nFXyp-3qSQVM0; Thu, 3 Feb 2022 10:00:39 +0100
Date: Thu, 03 Feb 2022 10:00:33 +0100
From: f_l_k@t-online.de
Subject: Re: [yocto] wget - The certificate has not yet been activated
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: yocto@lists.yoctoproject.org
Message-Id: <X01Q6R.S8ABK0BAEBQW2@t-online.de>
In-Reply-To: 
	<AM0PR10MB3107FA2B22E2F87535D4896C99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
	<AM0PR10MB3107FA2B22E2F87535D4896C99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-RYrtOGBZijTZkDMrEiKm"
X-TOI-EXPURGATEID: 150726::1643878839-0001619A-4BB28853/0/0 CLEAN NORMAL
X-TOI-MSGID: 08ac0915-e2d7-4f0d-8378-29c2a67f8089
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Feb 2022 09:00:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56051

--=-RYrtOGBZijTZkDMrEiKm
Content-Type: text/plain; charset=us-ascii; format=flowed

Hi Matthias,

check if busybox is built with this option

CONFIG_FEATURE_WGET_OPENSSL=y



On Thu, Feb 3 2022 at 06:37:01 AM +0000, Matthias Klein 
<matthias.klein@optimeas.de> wrote:
> Hello,
> 
> I have with the current master branch in a IMX6 Yocto the problem 
> that with wget no HTTPS downloads work:
> 
> # wget -4 <https://speed.hetzner.de/100MB.bin>
> --2022-02-03 06:23:25--  <https://speed.hetzner.de/100MB.bin>
> SSL_INIT
> Resolving speed.hetzner.de... 88.198.248.254
> Connecting to speed.hetzner.de|88.198.248.254|:443... connected.
> The certificate has not yet been activated
> 
> I do not understand why the validation of the certificate does not 
> work.
> With curl it works. It is also not due to the time of the system.
> I use my own kernel based on the mainline kernel 5.10.47 with 
> PREEMPT_RT.
> 
> TARGET_SYS           = "arm-poky-linux-gnueabi"
> TUNE_FEATURES        = "arm vfp cortexa9 neon thumb 
> callconvention-hard"
> TARGET_FPU           = "hard"
> 
> Can it be that something is missing in the kernel configuration?
> Does anyone have any idea what the problem could be?
> 
> # wget --version
> GNU Wget 1.21.2 built on linux-gnueabi.
> 
> -cares +digest -gpgme +https +ipv6 -iri +large-file -metalink +nls
> +ntlm +opie -psl +ssl/gnutls
> 
> Wgetrc:
>     /etc/wgetrc (system)
> Locale:
>     /usr/share/locale
> Compile:
>     arm-poky-linux-gnueabi-gcc -mthumb -mfpu=neon -mfloat-abi=hard
>     -mcpu=cortex-a9 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2
>     -Wformat -Wformat-security -Werror=format-security -DHAVE_CONFIG_H
>     -DSYSTEM_WGETRC="/etc/wgetrc" -DLOCALEDIR="/usr/share/locale" -I.
>     -I../../wget-1.21.2/src -I../lib -I../../wget-1.21.2/lib -DNDEBUG
>     -O2 -pipe -g -feliminate-unused-debug-types
> Link:
>     arm-poky-linux-gnueabi-gcc -mthumb -mfpu=neon -mfloat-abi=hard
>     -mcpu=cortex-a9 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2
>     -Wformat -Wformat-security -Werror=format-security -DNDEBUG -O2
>     -pipe -g -feliminate-unused-debug-types -Wl,-O1
>     -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-z,relro,-z,now -lpcre
>     -lnettle -lgnutls -lz ftp-opie.o gnutls.o http-ntlm.o
>     ../lib/libgnu.a -lunistring
> 
> Copyright (C) 2015 Free Software Foundation, Inc.
> License GPLv3+: GNU GPL version 3 or later
> <http://www.gnu.org/licenses/gpl.html>.
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.
> 
> Originally written by Hrvoje Niksic <mailto:hniksic@xemacs.org>.
> Please send bug reports and questions to <mailto:bug-wget@gnu.org>.
> 
> A test with gnutls-cli seems to work though:
> 
> root@smartrail-8037:~# gnutls-cli -d 1 imap.gmail.com -p 993
> Processed 127 CA certificate(s).
> Resolving 'imap.gmail.com:993'...
> Connecting to '2a00:1450:4013:c02::6d:993'...
> - Certificate type: X.509
> - Got a certificate list of 3 certificates.
> - Certificate[0] info:
>  - subject `CN=imap.gmail.com', issuer `CN=GTS CA 1C3,O=Google Trust 
> Services LLC,C=US', serial 0x65fa03b5a71a05070a000000012e04f6, 
> EC/ECDSA key 256 bits, signed using RSA-SHA256, activated `2022-01-10 
> 03:07:10 UTC', expires `2022-04-04 03:07:09 UTC', 
> pin-sha256="ZrSVXSwpcGu6oCbquwHwx6H2FM7DjzANRxMjQUC/Ng8="
>         Public Key ID:
>                 sha1:ae10ac489504779956e7acfc17631471be3e20d6
>                 
> sha256:66b4955d2c29706bbaa026eabb01f0c7a1f614cec38f300d4713234140bf360f
>         Public Key PIN:
>                 
> pin-sha256:ZrSVXSwpcGu6oCbquwHwx6H2FM7DjzANRxMjQUC/Ng8=
> 
> - Certificate[1] info:
>  - subject `CN=GTS CA 1C3,O=Google Trust Services LLC,C=US', issuer 
> `CN=GTS Root R1,O=Google Trust Services LLC,C=US', serial 
> 0x0203bc53596b34c718f5015066, RSA key 2048 bits, signed using 
> RSA-SHA256, activated `2020-08-13 00:00:42 UTC', expires `2027-09-30 
> 00:00:42 UTC', 
> pin-sha256="zCTnfLwLKbS9S2sbp+uFz4KZOocFvXxkV06Ce9O5M2w="
> - Certificate[2] info:
>  - subject `CN=GTS Root R1,O=Google Trust Services LLC,C=US', issuer 
> `CN=GlobalSign Root CA,OU=Root CA,O=GlobalSign nv-sa,C=BE', serial 
> 0x77bd0d6cdb36f91aea210fc4f058d30d, RSA key 4096 bits, signed using 
> RSA-SHA256, activated `2020-06-19 00:00:42 UTC', expires `2028-01-28 
> 00:00:42 UTC', 
> pin-sha256="hxqRlPTu1bMS/0DITB1SSu0vd4u/8l8TjPgfaAp63Gc="
> - Status: The certificate is trusted.
> - Description: 
> (TLS1.3-X.509)-(ECDHE-X25519)-(ECDSA-SECP256R1-SHA256)-(AES-256-GCM)
> - Session ID: 
> FB:E7:27:9D:B0:8F:4C:2D:0C:5C:E9:17:0F:5C:9B:28:EE:3F:C0:38:0C:43:15:8D:9B:73:A7:AA:BD:AA:F9:87
> - Options:
> - Handshake was completed
> 
> - Simple Client Mode:
> 
> * OK Gimap ready for requests from 
> 2a02:908:4c16:7960:20c:c6ff:fe81:e7fa k10mb249481499edf
> 
> Best regargds,
> Matthias
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56050): 
> <https://lists.yoctoproject.org/g/yocto/message/56050>
> Mute This Topic: <https://lists.yoctoproject.org/mt/88878285/3618223>
> Group Owner: yocto+owner@lists.yoctoproject.org 
> <mailto:yocto+owner@lists.yoctoproject.org>
> Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub> 
> [f_l_k@t-online.de <mailto:f_l_k@t-online.de>]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


--=-RYrtOGBZijTZkDMrEiKm
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto"><div>Hi Matthias,</div><div><br></div><div>check if busybox is built with this option</div><div><br></div><div><span style="color: rgb(114, 255, 114); font-family: monospace; font-size: 13.3333px; font-variant-ligatures: normal; orphans: 2; white-space: pre; widows: 2; background-color: rgb(24, 26, 27); text-decoration-thickness: initial;">CONFIG_FEATURE_WGET_OPENSSL=y</span></div><div><br></div><div><br></div></div><div id="geary-quote" dir="auto"><br>On Thu, Feb 3 2022 at 06:37:01 AM +0000, Matthias Klein &lt;matthias.klein@optimeas.de&gt; wrote:<br><blockquote type="cite"><div class="plaintext" style="white-space: break-spaces;">Hello,

I have with the current master branch in a IMX6 Yocto the problem that with wget no HTTPS downloads work:

# wget -4 <a href="https://speed.hetzner.de/100MB.bin">https://speed.hetzner.de/100MB.bin</a>
--2022-02-03 06:23:25--  <a href="https://speed.hetzner.de/100MB.bin">https://speed.hetzner.de/100MB.bin</a>
SSL_INIT
Resolving speed.hetzner.de... 88.198.248.254
Connecting to speed.hetzner.de|88.198.248.254|:443... connected.
The certificate has not yet been activated

I do not understand why the validation of the certificate does not work.
With curl it works. It is also not due to the time of the system.
I use my own kernel based on the mainline kernel 5.10.47 with PREEMPT_RT.

TARGET_SYS           = "arm-poky-linux-gnueabi"
TUNE_FEATURES        = "arm vfp cortexa9 neon thumb callconvention-hard"
TARGET_FPU           = "hard"

Can it be that something is missing in the kernel configuration?
Does anyone have any idea what the problem could be?

# wget --version
GNU Wget 1.21.2 built on linux-gnueabi.

-cares +digest -gpgme +https +ipv6 -iri +large-file -metalink +nls
+ntlm +opie -psl +ssl/gnutls

Wgetrc:
    /etc/wgetrc (system)
Locale:
    /usr/share/locale
Compile:
    arm-poky-linux-gnueabi-gcc -mthumb -mfpu=neon -mfloat-abi=hard
    -mcpu=cortex-a9 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2
    -Wformat -Wformat-security -Werror=format-security -DHAVE_CONFIG_H
    -DSYSTEM_WGETRC="/etc/wgetrc" -DLOCALEDIR="/usr/share/locale" -I.
    -I../../wget-1.21.2/src -I../lib -I../../wget-1.21.2/lib -DNDEBUG
    -O2 -pipe -g -feliminate-unused-debug-types
Link:
    arm-poky-linux-gnueabi-gcc -mthumb -mfpu=neon -mfloat-abi=hard
    -mcpu=cortex-a9 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2
    -Wformat -Wformat-security -Werror=format-security -DNDEBUG -O2
    -pipe -g -feliminate-unused-debug-types -Wl,-O1
    -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-z,relro,-z,now -lpcre
    -lnettle -lgnutls -lz ftp-opie.o gnutls.o http-ntlm.o
    ../lib/libgnu.a -lunistring

Copyright (C) 2015 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<a href="http://www.gnu.org/licenses/gpl.html">http://www.gnu.org/licenses/gpl.html</a>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Originally written by Hrvoje Niksic <a href="mailto:hniksic@xemacs.org">mailto:hniksic@xemacs.org</a>.
Please send bug reports and questions to <a href="mailto:bug-wget@gnu.org">mailto:bug-wget@gnu.org</a>.

A test with gnutls-cli seems to work though:

root@smartrail-8037:~# gnutls-cli -d 1 imap.gmail.com -p 993
Processed 127 CA certificate(s).
Resolving 'imap.gmail.com:993'...
Connecting to '2a00:1450:4013:c02::6d:993'...
- Certificate type: X.509
- Got a certificate list of 3 certificates.
- Certificate[0] info:
 - subject `CN=imap.gmail.com', issuer `CN=GTS CA 1C3,O=Google Trust Services LLC,C=US', serial 0x65fa03b5a71a05070a000000012e04f6, EC/ECDSA key 256 bits, signed using RSA-SHA256, activated `2022-01-10 03:07:10 UTC', expires `2022-04-04 03:07:09 UTC', pin-sha256="ZrSVXSwpcGu6oCbquwHwx6H2FM7DjzANRxMjQUC/Ng8="
        Public Key ID:
                sha1:ae10ac489504779956e7acfc17631471be3e20d6
                sha256:66b4955d2c29706bbaa026eabb01f0c7a1f614cec38f300d4713234140bf360f
        Public Key PIN:
                pin-sha256:ZrSVXSwpcGu6oCbquwHwx6H2FM7DjzANRxMjQUC/Ng8=

- Certificate[1] info:
 - subject `CN=GTS CA 1C3,O=Google Trust Services LLC,C=US', issuer `CN=GTS Root R1,O=Google Trust Services LLC,C=US', serial 0x0203bc53596b34c718f5015066, RSA key 2048 bits, signed using RSA-SHA256, activated `2020-08-13 00:00:42 UTC', expires `2027-09-30 00:00:42 UTC', pin-sha256="zCTnfLwLKbS9S2sbp+uFz4KZOocFvXxkV06Ce9O5M2w="
- Certificate[2] info:
 - subject `CN=GTS Root R1,O=Google Trust Services LLC,C=US', issuer `CN=GlobalSign Root CA,OU=Root CA,O=GlobalSign nv-sa,C=BE', serial 0x77bd0d6cdb36f91aea210fc4f058d30d, RSA key 4096 bits, signed using RSA-SHA256, activated `2020-06-19 00:00:42 UTC', expires `2028-01-28 00:00:42 UTC', pin-sha256="hxqRlPTu1bMS/0DITB1SSu0vd4u/8l8TjPgfaAp63Gc="
- Status: The certificate is trusted.
- Description: (TLS1.3-X.509)-(ECDHE-X25519)-(ECDSA-SECP256R1-SHA256)-(AES-256-GCM)
- Session ID: FB:E7:27:9D:B0:8F:4C:2D:0C:5C:E9:17:0F:5C:9B:28:EE:3F:C0:38:0C:43:15:8D:9B:73:A7:AA:BD:AA:F9:87
- Options:
- Handshake was completed

- Simple Client Mode:

* OK Gimap ready for requests from 2a02:908:4c16:7960:20c:c6ff:fe81:e7fa k10mb249481499edf

Best regargds,
Matthias


</div><div class="plaintext" style="white-space: break-spaces;">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#56050): <a href="https://lists.yoctoproject.org/g/yocto/message/56050">https://lists.yoctoproject.org/g/yocto/message/56050</a>
Mute This Topic: <a href="https://lists.yoctoproject.org/mt/88878285/3618223">https://lists.yoctoproject.org/mt/88878285/3618223</a>
Group Owner: <a href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href="mailto:f_l_k@t-online.de">f_l_k@t-online.de</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</div></blockquote></div>
--=-RYrtOGBZijTZkDMrEiKm--


