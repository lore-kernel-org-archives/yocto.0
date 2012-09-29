Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13C3BE01400
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2012 15:10:00 -0700 (PDT)
Received: by pabkp12 with SMTP id kp12so4194146pab.35
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2012 15:09:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type:x-gm-message-state;
	bh=XZs8ltjTGFSquej8yBw6Zm1faFItnzpXT9rELhofHRA=;
	b=QSMD6bEX3FJVaq4smJvIerCCfD/Na4m3oZtk0BzuIEWvokwAE2nolbQt0+MWxfEAXC
	+V75G1PuzEX3osuK3P5YyPeZq+hhjuBvVN4bVLfBpgQHApBQg0VutuNxDQ629l5eSN5H
	/6ssxUuFH/IQWkOlq42kxSxT3eKv0/0e9BpiTP4HUGbJ+PYUKj9pgwLBf/QEbFLDNPpd
	x7kJ9iYbxyvirV9dUN7+UcHZTw8f7zcNkZc5359igJ7uqxapNVojSMk7t1ORubozrq/D
	MbEQRMoAglwc06STwYx7OOfPmHBVP14LBclvFTEZMjZ/L+a2+HqQCF+2X11S4gVz6w8R
	oasg==
Received: by 10.68.135.33 with SMTP id pp1mr30565438pbb.5.1348956586635;
	Sat, 29 Sep 2012 15:09:46 -0700 (PDT)
Received: from [192.168.1.66] (static-50-43-38-79.bvtn.or.frontiernet.net.
	[50.43.38.79])
	by mx.google.com with ESMTPS id f9sm7740205paz.1.2012.09.29.15.09.42
	(version=SSLv3 cipher=OTHER); Sat, 29 Sep 2012 15:09:45 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <506771B1.5040500@yoctoproject.org>
Date: Sat, 29 Sep 2012 15:09:53 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto-announce@yoctoproject.org, 
	Yocto Project Discussion <yocto@yoctoproject.org>
X-Enigmail-Version: 1.4.4
X-Gm-Message-State: ALoCoQmDg8Vi+Cz4Cfqls4s7gInHqg25IbQmzzI95vKfwn+pBCV1SIRc5V6z1QAFK5sYQ31KBIC+
Subject: [ANNOUNCEMENT] Yocto 1.3 Milestone 4 Released
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
X-List-Received-Date: Sat, 29 Sep 2012 22:10:01 -0000
X-Groupsio-MsgNum: 9711
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms080802090606090004010601"

--------------ms080802090606090004010601
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

We are pleased to announce the fourth milestone of the coming release
of Yocto 1.3. This milestone release is available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m4/=
poky-yocto-1.3-m4.tar.bz2
or
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m4/poky-yocto-=
1.3-m4.tar.bz2

Additional tarballs for meta-qt3 and the eclipse plugin are available at:=


http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m4/=
eclipse-poky-yocto-1.3-m4.tar.bz2
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m4/=
meta-qt3-yocto-1.3-m4.tar.bz2

with mirror locations at:

http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m4/eclipse-pok=
y-yocto-1.3-m4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m4/meta-qt3-yo=
cto-1.3-m4.tar.bz2

For information on 1.3 M4 test results see:

https://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_Report

Thank you everyone for all your hard work.

Michael Halstead
Yocto Project / Sys Admin
<michael@yoctoproject.org>

- --------------------
yocto-1.3-m4 Errata
- --------------------

Release Name: eclipse-poky-yocto-1.3-m4
Branch: 1.3_M4
Tag: 1.3_M4.final
Hash: cd7e7664dc342b6f52fbdc797845c1c19408f895
md5: 8631dd8988a217b8be1026e5862eb1fb eclipse-poky-yocto-1.3-m4.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m4/=
eclipse-poky-yocto-1.3-m4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m4/eclipse-pok=
y-yocto-1.3-m4.tar.bz2



Release Name: meta-qt3-yocto-1.3-m4
Branch: 1.3_M4
Tag: 1.3_M4.final
Hash: 8730326c902e6fb256b5dea77a6dde28d813c424
md5: de551c0781b418827f366b156dfd49a7 meta-qt3-yocto-1.3-m4.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m4/=
meta-qt3-yocto-1.3-m4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m4/meta-qt3-yo=
cto-1.3-m4.tar.bz2



Release Name: poky-yocto-1.3-m4
Branch: 1.3_M4
Tag: 1.3_M4.final
Hash: e5c3513ca8abb21eb5e9b8c19d1b9199b14ae07c
md5: 94c63c3f437b182c9754984fa32f2758 poky-yocto-1.3-m4.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m4/=
poky-yocto-1.3-m4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m4/poky-yocto-=
1.3-m4.tar.bz2



- --------------------
Features
- --------------------

* Complete kernel upgrade to 3.4.9 and real time kernel support and
upgrade to kernel 3.4.9-rt17.

* Bring meta-yocto to conform with the Yocto Project compliance
criteria by separating out the hardware support components into
meta-yocto-bsp
and leaving policy configuration in meta-yocto.

* Rename =91task=92 to =91packagegroup=92. Evaluate, refactor and clean u=
p
existing packagegroup (task) recipes including naming, description,
structure,
etc.

* Switch to using =91nativesdk=92 as a prefix instead of a suffix to make=

scaling nativesdk and others easier.

* Bitbake: fold Knotty2 into knotty and make it default, which handles
bitbake console output in a much nicer way.

* Re-locatable SDK: now SDK can be installed into user specified
location.

* Remove xserver-kdrive, and switch to X.org xserver for some BSPs.

* Drop qemu GL passthrough support to improve stability and reduce
maintenance issues.

* Various update to Yocto Project documents including the quick start
guide, development manual, BSP developer=92s guide, etc.

* Various fixes, cleanup and improvements to the yocto-bsp tool, bitbake,=

HOB, shared state cache, eglibc, uclibc, etc.

* Various package upgrade including webkit-gtk, wget, dhcp, subversion,
etc.

- --------------------
Known Issues
- --------------------

Bug 2878 pkgconfig is missing from sato-sdk image - installing and then
trying
to removing it leads to rpm crashes/assertions

Bug 2399 gdk-pixbuf: hundreds of warnings on boot

Bug 2415 connman doesn't provide a 3g configuration utility

Bug 2694 [QEMU-X86_64]zypper refresh fail

Bug 3047 do_rootfs: ERROR: tried running useradd command 10 times

Bug 3116 sstate-cache-management.sh prints some error message when runnin=
g

Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk

Bug 2918 lib64-core-image-sato-sdk fails due to do_rootfs issue

Bug 3100 autoreconf run failed on x86-64 gmae-toolchain

Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0

Bug 2695 [HOB]toolchain arch in settings is not saved

Please see
https://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_Report
for detail.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJQZ1R/AAoJEEyK+E/MEkQPA4wIALe8rSbopGL0zAaOqLR6z6+8
J1XjvzQzY3qk5iWB6CeDK28/ZrhjaeI3sOwiB8CovFAYX9nFlr5vBQ3S3Zm56zad
Etn2O2g5HQMORxeudDfNwJpRaTWSDz859ZOtgaSLDqh15UCmslCAtuYlDhG2lS9L
cGarU9PDNo6vQRuO2KBc7oKnrUQyTscjfx4WhyiHyhYSBYAzXYQno3OXx4eSLYGs
tR+pd60vXuRDfXdHsMOl+dlZxU6ukslvpDF4Z5lyVqKtqrvUzXDXymS7iN5qZvZn
ieGVC0fpGSxKqN6ZGpWeeyH4teUmJj3BdtLwBgkcdLnv0qxideZrkglIjMrzl6U=3D
=3D+ZPO
-----END PGP SIGNATURE-----


--------------ms080802090606090004010601
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
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEyMDkyOTIyMDk1M1owIwYJKoZIhvcN
AQkEMRYEFD7PrJv7iTUDAcNUf3KvQxcRSeqkMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEAjSrger3tuP9jK2sV9RSLOlfg3yS8
Rj06WhHI0rh8cKIbzIWBcbEqZ35aGAt9wdATsCbC7fA6MzLQrDgRJR/y7CtPfDkVjtZ1MUSxaPsh
cvnK6EcSfJzLe9+aorDX8fdEipXdHhRPkki0lqzuUYvQnBWEHTdjh/8PkeYwnXFwwYcYGKaJFymZ
KGYhOTzJjvXVTYnMX7oPtwpTEatIKI4tOEC6CZMTh4op3TbZpyHWEO57XOhquWksLCXeXVgf0jDj
GvjD9nAO8JQ8CBgioypCA1crShR2HYhzhMzBlpfvt44JJMzwkizQGfAHQkw5dur/uaRojEepGWKs
RpdBVwn1oAAAAAAAAA==

--------------ms080802090606090004010601--
