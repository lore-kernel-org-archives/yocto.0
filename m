Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-da0-f45.google.com (mail-da0-f45.google.com
	[209.85.210.45]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 34807E01484
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2013 19:45:17 -0800 (PST)
Received: by mail-da0-f45.google.com with SMTP id w4so2547563dam.4
	for <yocto@yoctoproject.org>; Sun, 10 Feb 2013 19:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:subject:x-enigmail-version:content-type;
	bh=/DP/K0W4OYgTpskPdA0Os1yOb7o0tL8B0ZAgi06RUTE=;
	b=Dj6QO5cBZYr9yNyCK9roiC4FBpbDPm0SMX+PAwtXirumLaUOPzTgVrRB0HF9sqZx4y
	PIAMqEF0gr/NqmgSTaD3v7/ektBpH0wjlOYdX0y6LVgYlL8TmYdVHxyxd1a6FmmEidT1
	wShxlGkCnChKze/uz+G2RzcPY6p7YAiDs6KkQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:subject:x-enigmail-version:content-type:x-gm-message-state;
	bh=/DP/K0W4OYgTpskPdA0Os1yOb7o0tL8B0ZAgi06RUTE=;
	b=fWkA7AzMw/UR1svQNUzMEG43jG8kc39hayXz/4cYUDsKp/7rua47+yaNTgANxf44oj
	86VVJvH0qDI5g6E+2dW7DtuIqvLML+95XPfFe9/Em/lFTs103RoT2YWJ1+w7vAHj2KPO
	EbN2/i+BIRCGtHc8EB6CJUYKjdPrb5X7fWkpCvl6IPB+4B3ppfKUNXFHauxxiCO1zdLk
	rJQaTqIkxbl8i0G2P+jsaWzDLE43E2KghvNBLDsVDxbSqSvNPHZ8ic1FtrYijC7IcRKs
	p+OfssiDvG+hZmw8zgDYPQTOF2Al8C5fXlbMzeDCukdwjH0Hhjbk89LyXLImAUwFhzIj
	4UqA==
X-Received: by 10.66.76.41 with SMTP id h9mr38475866paw.1.1360554316099;
	Sun, 10 Feb 2013 19:45:16 -0800 (PST)
Received: from [192.168.1.66] (static-50-43-37-91.bvtn.or.frontiernet.net.
	[50.43.37.91])
	by mx.google.com with ESMTPS id x8sm6231578pbj.32.2013.02.10.19.45.11
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 10 Feb 2013 19:45:12 -0800 (PST)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <51186943.4020100@yoctoproject.org>
Date: Sun, 10 Feb 2013 19:45:07 -0800
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	yocto-announce@yoctoproject.org
X-Enigmail-Version: 1.4.6
X-Gm-Message-State: ALoCoQm8okL40qG8xotiLzAIjmJrY49Jz5Nf9K+VW4MbdFevtkKFAX0mMAgJpOzR8Jk/flwb8l0k
Subject: Yocto Project 1.4 milestone 3 released
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 11 Feb 2013 03:45:17 -0000
X-Groupsio-MsgNum: 12054
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms090708030800060508090400"

--------------ms090708030800060508090400
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

The third milestone for the upcoming Yocto Project 1.4 release is now
available at:

 =20
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m3/=
poky-yocto-1.4-m3.tar.bz2

Due to holiday scheduling the Yocto Project CCB approved merging the seco=
nd
and third milestones together. There is no separate 1.4_M2 release.

Thanks to everyone for all their hard work.

Michael Halstead
Yocto Project / System Administrator
<michael@yoctoproject.org>

- - --------------------
yocto-1.4-m3 Errata
- - --------------------

Release Name: eclipse-poky-yocto-1.4-m3=20
Branch:  1.4_M3
Tag:  1.4_M3.rc2
Hash:  65f1b736b719ad5284281ccd88a33a5a92724da2
md5:  7869868e366c4df96a0fbc08e815881a  eclipse-poky-yocto-1.4-m3.tar.bz2=

Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m3/=
eclipse-poky-yocto-1.4-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m3/eclipse-pok=
y-yocto-1.4-m3.tar.bz2


Release Name: meta-intel-yocto-1.4-m3=20
Branch:  1.4_M3
Tag:  1.4_M3.rc2
Hash:  4f676959c35cbd0ed9ac6a1817993d38611859e1
md5:  12db3fe2246a023778fdfdae4537495b  meta-intel-yocto-1.4-m3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m3/=
meta-intel-yocto-1.4-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m3/meta-intel-=
yocto-1.4-m3.tar.bz2


Release Name: meta-qt3-yocto-1.4-m3=20
Branch:  1.4_M3
Tag:  1.4_M3.rc2
Hash:  06e2fe600de962cdba53c23de1207501439a9c9f
md5:  30ee9daddfb1720112f6b69d2b315482  meta-qt3-yocto-1.4-m3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m3/=
meta-qt3-yocto-1.4-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m3/meta-qt3-yo=
cto-1.4-m3.tar.bz2


Release Name: poky-yocto-1.4-m3=20
Branch:  1.4_M3
Tag:  1.4_M3.rc2
Hash:  3ae1a4ba972cfc17ff3f2fda632da8ecc3414885
md5:  cec6355a03d5a48408d1f96f3b3c8f9e  poky-yocto-1.4-m3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m3/=
poky-yocto-1.4-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.4-m3/poky-yocto-=
1.4-m3.tar.bz2



- - -------------------- Features --------------------

- - -- Integrated Wayland support.

- - -- Update to LTSI 3.4 Linux kernel.

- - -- 'ptest' feature to create packages containing the test suite of
packages
for running on the target, which enables more automated package testing.

- - -- Track and display variable setting history in the build process
to greatly
enhance debugging/analyzing capability.

- - -- Systemd support for core-image-minimal.

- - -- Run postinstalls at do_rootfs time for pango, update-modules,
matchbox-keyboard, busybox-syslog, etc.

- - -- yocto-bsp improvement to support customized kernel via
linux-yocto-custom

- - -- New yocto-layer tool to create generic layers and list their input=

properties.

- - -- HOB improvements and fixes including parser warning message
display, UI
fixes, etc.

- - -- Package updates including boost, gtk+, dbus, iptables, eglibc,
mesa, etc.
and bug fixes.

- - -------------------- Known Issues --------------------

Bug 3745 Bitbake remake/remake-native check error

Bug 2918 lib64 sato and sato-sdk do_rootfs fails

Bug 3756 Crosstap script fails

Bug 3338 iptables-1.4.15: autoreconf run failed on gmae-toolchain

Bug 3758 Package gtk+-2.0 missing from the userbuilt toolchain

Bug 3805 PAM support: missing pam_systemd.so

Bug 3804 connman offline mode doesn't work on qemu images

Bug 3768 smart: --yaml option doesn't work

Bug 3656 rpm2cpio: Segmentation fault

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJRF3bIAAoJEEyK+E/MEkQPmxYH/1J5u2Ur/cAgoNEnl7quN1CE
q0bL8bPTPkMu/WJSybhCktg+S0boXUU/da4kUrEzz7Zon5t5OByRk0jOBbCQLPX/
Q0+S0WXvnLta6dvew7RzF4Aw3/tL6agnvZ/FIt1KmidQ19NnuVWQXXAU10uKkagF
J1m47HuFk/xW14AWk4IpXb7iIz0nbDbkXfYXA0dC70JZktLP+hbkCX4icdtY6Pp5
LBZZOr/XRkUh+LkZT4cBddMyDLqSrr4Jf7ZesF4tOiA68LskOrreXt6YwVOS8F9Y
4YOfpUTt+U8v/Pv3uWbH34on7wC0ypxNdECjRATcmjYcadhtjaOz8tBQyJBr3EU=3D
=3D1Qwy
-----END PGP SIGNATURE-----

--=20
Michael Halstead
Yocto Project / System Administrator



--------------ms090708030800060508090400
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIINjDCCBjQw
ggQcoAMCAQICASAwDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0
Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxKTAn
BgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MTAyNDIxMDI1NVoX
DTE3MTAyNDIxMDI1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSsw
KQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFy
dENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAMsohUWcASz7GfKrpTOMKqANy9BV7V0igWdGxA8IU77L3aTxErQ+
fcxtDYZ36Z6GH0YFn7fq5RADteP0AYzrCA+EQTfi8q1+kA3m0nwtwXG94M5sIqsvs7lRP1aycBke
/s5g9hJHryZ2acScnzczjBCAo7X1v5G3yw8MDP2m2RCye0KfgZ4nODerZJVzhAlOD9YejvAXZqHk
sw56HzElVIoYSZ3q4+RJuPXXfIoyby+Y2m1E+YzX5iCZXBx05gk6MKAW1vaw4/v2OOLy6FZH3XHH
tOkzUreG//CsFnB9+uaYSlR65cdGzTsmoIK8WH1ygoXhRBm98SD7Hf/r3FELNvUCAwEAAaOCAa0w
ggGpMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBSuVYNv7DHKufcd
+q9rMfPIHeOsuzAfBgNVHSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRa
MFgwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYh
aHR0cDovL3d3dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6
Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5j
b20vc2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBADqpJw3I07QW
ke9plNBpxUxcffc7nUrIQpJHDci91DFG7fVhHRkMZ1J+BKg5UNUxIFJ2Z9B90Micc/NXcs7kPBRd
n6XGO/vPc87Y6R+cWS9Nc9+fp3Enmsm94OxOwI9wn8qnr/6o3mD4noP9JphwUPTXwHovjavRnhUQ
HLfo/i2NG0XXgTHXS2Xm0kVUozXqpYpAdumMiB/vezj1QHQJDmUdPYMcp+reg9901zkyT3fDW/iv
JVv6pWtkh6Pw2ytZT7mvg7YhX3V50Nv860cV11mocUVcqBLv0gcT+HBDYtbuvexNftwNQKD5193A
7zN4vG7CTYkXxytSjKuXrpEatEiFPxWgb84nVj25SU5q/r1Xhwby6mLhkbaXslkVtwEWT3Van49r
KjlK4XrUKYYWtnfzq6aSak5u0Vpxd1rY79tWhD3EdCvOhNz/QplNa+VkIsrcp7+8ZhP1l1b2U6Ma
xIVteuVMD3X0vziIwr7jxYae9FZjbxlpUemqXjcC0QaFfN7qI0JsQMALL7iGRBg7K0CoOBzECdD3
fuZil5kU/LP9cr1BK31U0Uy651bFnAMMMkqhAChIbn0ei72VnbpSsrrSdF0BAGYQ8vyHae5aCg+H
75dVCV33K6FuxZrf09yTz+Vx/PkdRUYkXmZz/OTfyJXsUOUXrym6KvI2rYpccSk5MIIHUDCCBjig
AwIBAgICIgMwDQYJKoZIhvcNAQEFBQAwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENv
bSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYD
VQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTAeFw0x
MjA2MTMwNDU5MjlaFw0xNDA2MTQxNjE4MzBaMIGRMRkwFwYDVQQNExBnMDFwWTYwMWJGM1BrRTY3
MQswCQYDVQQGEwJVUzEPMA0GA1UECBMGT3JlZ29uMRIwEAYDVQQHEwlIaWxsc2Jvcm8xGTAXBgNV
BAMTEE1pY2hhZWwgSGFsc3RlYWQxJzAlBgkqhkiG9w0BCQEWGG1pY2hhZWxAeW9jdG9wcm9qZWN0
Lm9yZzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMFZ+GW0VKdiyuQy3hlOvwcHxcm0
8ZwNGGah4zipYky5wVFZO7p9LjJfyF6rvd24xdkaTluxTMmd9pfq2cOVQ6c3RsPufv1yBUbytk6F
4Wk+qD0qEGjuHh5FfakcLIEsHiSn3nzaQZHaolS/yzx/A3coQS8pQrshZYqAF/ME5OxMyL8KDdtk
xatt1reDPqzvI5rKYdeEbmHsTYgd9WWHvs8MfZFHidZoAXMXU+PcsKCUxEYhgP/h9NKcTApu/Mhd
IPKn11pD+gfDM+ochGu1uxuW/t1tNJyRYDVQSDV+rpliQ7mrimSmyktIKkow02pUk4Xw3OqdYq7/
/HpVOUs5nk8CAwEAAaOCA7MwggOvMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdJQQWMBQG
CCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUcZFNotb1OfDmPE6GQ6MQIBh7meUwHwYDVR0j
BBgwFoAUrlWDb+wxyrn3HfqvazHzyB3jrLswIwYDVR0RBBwwGoEYbWljaGFlbEB5b2N0b3Byb2pl
Y3Qub3JnMIICIQYDVR0gBIICGDCCAhQwggIQBgsrBgEEAYG1NwECAjCCAf8wLgYIKwYBBQUHAgEW
Imh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93
d3cuc3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwgfcGCCsGAQUFBwICMIHqMCcWIFN0YXJ0
Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MAMCAQEagb5UaGlzIGNlcnRpZmljYXRlIHdhcyBp
c3N1ZWQgYWNjb3JkaW5nIHRvIHRoZSBDbGFzcyAyIFZhbGlkYXRpb24gcmVxdWlyZW1lbnRzIG9m
IHRoZSBTdGFydENvbSBDQSBwb2xpY3ksIHJlbGlhbmNlIG9ubHkgZm9yIHRoZSBpbnRlbmRlZCBw
dXJwb3NlIGluIGNvbXBsaWFuY2Ugb2YgdGhlIHJlbHlpbmcgcGFydHkgb2JsaWdhdGlvbnMuMIGc
BggrBgEFBQcCAjCBjzAnFiBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTADAgECGmRM
aWFiaWxpdHkgYW5kIHdhcnJhbnRpZXMgYXJlIGxpbWl0ZWQhIFNlZSBzZWN0aW9uICJMZWdhbCBh
bmQgTGltaXRhdGlvbnMiIG9mIHRoZSBTdGFydENvbSBDQSBwb2xpY3kuMDYGA1UdHwQvMC0wK6Ap
oCeGJWh0dHA6Ly9jcmwuc3RhcnRzc2wuY29tL2NydHUyLWNybC5jcmwwgY4GCCsGAQUFBwEBBIGB
MH8wOQYIKwYBBQUHMAGGLWh0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9zdWIvY2xhc3MyL2NsaWVu
dC9jYTBCBggrBgEFBQcwAoY2aHR0cDovL2FpYS5zdGFydHNzbC5jb20vY2VydHMvc3ViLmNsYXNz
Mi5jbGllbnQuY2EuY3J0MCMGA1UdEgQcMBqGGGh0dHA6Ly93d3cuc3RhcnRzc2wuY29tLzANBgkq
hkiG9w0BAQUFAAOCAQEANR/d6M8GHL/rkx3Kz9ILDxYMcekmFgefaDXNQMicUHiUw5TsIl5af1pS
Y2AvbKlA2/FZnyG8w42FuK6ZQBZJxs4/N10NW8qDmuuFTi6TyJgurj73tx9RogW50miDHMZLoMRe
avB1h8zy99L2lRPZSebpSFkrQdYDHaGRVhYMjEcWNW9cLxhR8BaAEw/KlpERv3hUQpwGMppYOE66
M7KJ3HpeR7DXfa4njL9W2hukTQNsskdWtzejHp5iQ65+5Mv+NXLmYP4uLJcR9AbttgNhwStc0P1b
LxnQkElGeUzATOBq+QsVZ7Fo6sSS7kqrhpfaPibqpj83m/wSgpKVsbZJ3DGCA9owggPWAgEBMIGT
MIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJl
IERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMiBQ
cmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAiIDMAkGBSsOAwIaBQCgggIbMBgGCSqGSIb3
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEzMDIxMTAzNDUwN1owIwYJKoZIhvcN
AQkEMRYEFJ+Ll6AU4IEDoM1r4CkXzKn2bVOmMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEASMh+u/oMiHhbvavaOC5DuYlmNZbk
Q6sl+M35xJ2kabUC0YmTYlpqU/OKBTrjAwstjuIVcyxWZk0yRMy6lCSSxasTJ7lhrQPs4RcAH0ph
Ibtki7aLRwTyQmieqasyLUKmarBfr7Ul3yRllvjQq7bKo8TcqXhshGDX/jtJ8eRTIEBjxScMr4mF
OT/yiSWEdYylRtheFpcAderwEyYm1QKkgTBIg49OXAieXcLkFi0kbRAS/c6fdLoLj2z8fM6qeJVo
87dFj5q+uiW5BOtFgj9Lput8aUOsIQSWyG+L5DDJ99yQaC7RtcFgsIVTtxBgg0SC1mJUBnGNThkr
rgBm7DZ1MAAAAAAAAA==

--------------ms090708030800060508090400--
